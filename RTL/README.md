# SNPC Architecture — RTL Design Description

## Top-level hierarchy

```
SNN_top                          — AXI4 slave wrapper (host interface)
├── axi_slave_if                 — AXI4 slave FSM (read/write, burst)
└── SNPC_head (via SNN_wrapper)  — top wrapper mapping to SNPC_top

SNPC_top                         — 3-layer SNN core
├── REP_CNTRL                    — Repetition controller (ifdef __REPETITION__)
├── SNPC0 (L0)                   — 784 inputs → 256 hidden
├── SNPC1 (L1)                   — 256 inputs → 256 hidden
└── SNPC2 (L2)                   — 256 inputs → 10 output

SNPC                             — one compute layer
├── SNPC_cntrl                   — FSM controller
├── xbar_snn (crossbar)          — spike routing + weight SRAM
├── LIF_neuron × N               — parallel LIF neurons (generate loop)
└── LB                           — learning block (ifdef __NO_LEARNING__ off)
```

## Module descriptions

### Layer configuration

| Layer | Input width | Output width | Weight source |
|-------|-------------|--------------|---------------|
| L0    | 784         | 256          | `address_1` / `data_1` |
| L1    | 256         | 256          | `address_2` / `data_2` |
| L2    | 256         | 10           | `address_3` / `data_3` |

Each weight bus is 32-bit — carries 4 weight bytes per word (8-bit per synapse). SRAM banks (`sp_ram1024x8`) are instantiated per output neuron inside the crossbar, one bank per neuron.

### SNPC_cntrl — FSM

6 states controlled by compile-time `STATE_WIDTH` (=3):

| State | Action |
|-------|--------|
| `ST_IDLE` (0) | Wait for `i_start` |
| `ST_DOWNLD_SPIKE` (1) | Load input spike vector |
| `ST_GENSPK_A_COM` (2) | Weighted-sum computation: one-hot iterate active input spikes, read weights from SRAM, accumulate in LIF |
| `ST_LEAK` (3) | Subtract leak current from membrane voltages |
| `ST_FIRE` (4) | Compare voltage ≥ threshold → spike, reset to 0 |
| `ST_UPLD_SPIKE` (5) | Emit output spikes to next layer |

`w_next_State` is combinatorial; `r_State` is sequential (posedge clk, negedge rst_n).

Key transitions:
- `ST_DOWNLD_SPIKE` → `ST_GENSPK_A_COM` after `i_io_svalid` asserts
- `ST_GENSPK_A_COM` → `ST_LEAK` when `i_xbar_last_spk` fires (all input spikes consumed)
- `ST_GENSPK_A_COM` → `ST_IDLE` (re-download) if `i_xbar_last_spk` fires immediately (no active spikes → skip)

### xbar_snn — Crossbar with weight SRAM

**Key architectural choices:**
- **One-hot priority encoder** (LSB priority): prefix-AND tree over input spike vector `r_spk_arry` extracts one active spike per clock
- Weight address = one-hot index → reads from SRAM bank per output neuron
- **256 SRAM banks** (`GEN_RAM` generate loop), each `sp_ram1024x8` (1024-depth × 8-bit)
- **32-bit bus packing**: `NEURON_PER_WORD` = 4 weight bytes. Address bits `[NEURON_GRP_W-1:0]` select neuron group, upper bits select row
- `o_last_spk` asserted when `r_swvalid && ~w_have_spk` — no more unprocessed spikes
- Updated spike vector: `r_spk_arry = r_spk_arry XOR w_onehot_spk` removes processed spike

### LIF_neuron — Leaky Integrate-and-Fire

**Signed arithmetic** (version 1.2):

- Accumulation: `r_acc_V = r_acc_V + i_wspike` (during `ST_GENSPK_A_COM`)
- Overflow clamping on both sum and leak stages
- Leak: `r_acc_V = r_acc_V + LIF_INV_LEAK` (during `ST_LEAK`); currently 0 (no-op, configurable in `LIF.v`)
- Fire: `r_acc_V ≥ LIF_THRESHOLD` (128) during `ST_FIRE` → spike=1, reset to 0
- Reset value: 0 (`LIF_RESET_V`)
- Optional output register bypass (if `OUTPUT_REG=0`, direct wire; else registered)

### REP_CNTRL — Repetition controller

Compiled in via `` `define __REPETITION__ 1 `` in `common.v`.

Adds temporal repetition for time-stepped SNN inference:

| State | Action |
|-------|--------|
| `ST_REP_IDLE` (0) | Wait for `i_start` |
| `ST_CHECK` (1) | Branch on `i_core_ts` vs `i_rep_ts` |
| `ST_CORE` (2) | Core time step: compute all layers |
| `ST_SKIP` (3) | Skip: `i_not_skip_com` → compute, `i_skip_com` → bypass |
| `ST_NOT_COMPUTE` (5) | Bypass: output previous stored result |
| `ST_COMPUTE` (4) | Run SNPC computation |
| `ST_LOAD_DATA` (6) | Store result to output register |

Per-layer gating via `i_rep_layer2/3/4` selects repetition behavior:
- **Repetition layers**: `o_start` only during `ST_COMPUTE`; `o_svalid` only during `ST_LOAD_DATA`; store output only on core time step
- **Non-repetition layers**: `o_start` during `ST_SKIP` or `ST_COMPUTE`; `o_svalid` during `ST_NOT_COMPUTE` or `ST_LOAD_DATA`

SRAM enable gating: `o_en_SRAM` asserted only when repetition + skip mode (to hold SRAM contents across time steps), gated off during core time step.

### AXI4 slave interface (`axi_slave_if.sv`)

- Full AXI4 read/write FSM with burst support (single and burst modes)
- Register map:
  - `REG_STATUS` (4'h0, read-only): holds SNN classification result
  - `REG_CONFIG` (4'h1, write-only): bit 0 = `o_snn_config` start signal
- Write FSM: `IDLE → SINGLE|BURST → BURST_RESP` (with `WAIT_WDATA_*` for split transactions)
- Read FSM: `IDLE → SINGLE|BURST` with pipelining
- 32-bit data bus, 32-bit address bus, 16-bit ID

### `transform_spike.v` — Output decoder

Counts spike frequency per digit class (0-9) over 40 time steps (`8'h27`):
- 10 counters (`number_reg_0` through `number_reg_9`), each incremented on one-hot spike input
- Running argmax tracker: when a counter exceeds `tmp_reg`, update `result_reg` with the new class
- `o_done` asserted at time step 40, counters reset

### `aw_ram_dp_sr_sw.v` — Behavioral dual-port RAM

- Synchronous read/write, tri-state data bus
- Used for spike/mem initialization via `$fread` from binary files
- Two independent ports with separate address/we/cs/oe

## Parameter configuration

### `common.v` — Global defines

| Define | Function |
|--------|----------|
| `__NO_LEARNING__` | Disables learning block (default: on) |
| `__TSMC65__` | Targets TSMC 65nm library |
| `__REPETITION__` | Enables temporal repetition controller |
| `__SPLIT_RAM__` | 4x2-bit SRAM mode vs 1x8-bit |
| `__EXT_RAM_INF__` | External weight RAM interface |
| `STATE_WIDTH` = 3 | FSM state encoding width |
| `ST_REP_WIDTH` = 3 | Repetition FSM state encoding width |
| `SPK_ARRAY_WIDTH` = 784 | Input spike vector width |
| `NEURAL_ARRAY_WIDTH` = 256 | Hidden layer size |
| `OUTPUT_ARRAY_WIDTH` = 10 | Output class count |
| `WEIGHT_ADDR_WIDTH` = 10 | Weight SRAM address width |

### `LIF.v` — Neuron parameters

| Parameter | Value |
|-----------|-------|
| `LIF_WEIGHT_WIDTH` | 8 |
| `LIF_NEURON_OVRFL_WIDTH` | 8 |
| `LIF_RESET_V` | 0 |
| `LIF_LEAK` | 0 |
| `LIF_INV_LEAK` | 0 |
| `LIF_THRESHOLD` | 128 |

## Inference dataflow (MNIST classification)

```
Host (AXI4 write REG_CONFIG=1)
  → SNN_top starts
    → i_spk_arry (784-bit input spike pattern) loaded
    → L0 SNPC: crossbar one-hot iterates active input spikes
      → each active spike reads weights from 256 SRAM banks
      → 256 LIF neurons accumulate, leak, fire
      → output spike vector (256-bit) → L1 SNPC
    → L1 SNPC: same process, 256→256
      → output spike vector (256-bit) → L2 SNPC
    → L2 SNPC: same process, 256→10
      → 10-bit result → AXI4 REG_STATUS
  → transform_spike accumulates over time steps, output argmax
```

## File inventory

| File | Role |
|------|------|
| `SNN_top.v` | Top-level AXI4 wrapper |
| `SNPC_top.v` | 3-layer SNPC with repetition |
| `SNPC.v` | Single-layer compute engine |
| `SNPC_cntrl.v` | 6-state FSM |
| `xbar_snn_test.v` | Crossbar + weight SRAM banks |
| `xbar.v` | Alternative crossbar (used by `test_compile` target) |
| `LIF_neuron.v` | LIF neuron with signed arithmetic |
| `LIF.v` | Neuron parameter defines |
| `common.v` | Global defines and state encoding |
| `repetition_cntrl.v` | Temporal repetition FSM |
| `axi_slave_if.sv` | AXI4 slave interface (SystemVerilog) |
| `transform_spike.v` | Output spike-to-class decoder |
| `aw_ram_dp_sr_sw.v` | Behavioral dual-port RAM model |
| `spike_rom.v` | Spike data ROM |
| `weights_l1_rom.v` | L1 weight ROM |
| `weights_l2_rom.v` | L2 weight ROM |
| `SNN_wrapper.v` | Wrapper for full SNN testbench |