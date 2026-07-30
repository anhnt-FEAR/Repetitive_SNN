/*
 * Project: NASH
 * Module: xbar_snn (32-bit bus version)
 * Version: 2.0
 */

`include "common.v"
`include "LIF.v"
//`include "ram_model.v"

module xbar_snn #(
    parameter WEIGHT_WIDTH       = 8,
    parameter SPK_ARRAY_WIDTH    = 784,
    parameter NEURAL_ARRAY_WIDTH = 48,
    parameter STATE_WIDTH        = `STATE_WIDTH,
    parameter WEIGHT_ADDR_WIDTH  = 10, 
    parameter OUTPUT_REG = 0
)(
    input  wire                                       clk,
    input  wire                                       rst_n,

    // Spike interface
    input  wire [SPK_ARRAY_WIDTH-1:0]                 i_spk_arry,
    input  wire                                       i_svalid,
    input  wire [STATE_WIDTH-1:0]                     i_State,

    output wire [WEIGHT_WIDTH*NEURAL_ARRAY_WIDTH-1:0] o_wspike,
    output wire                                       o_svalid,
    output wire                                       o_last_spk,

    // SoC bus (32-bit)
    input  wire [WEIGHT_ADDR_WIDTH-1:0]               address_1,
    input  wire                                       we_1,
    input  wire [31:0]                                data_1,
    input  wire                                       i_en_SRAM
);

  // ============================================================================
  // Local parameters
  // ============================================================================
  localparam NEURON_PER_WORD = 32 / WEIGHT_WIDTH; // = 4
  localparam N_GROUP         = NEURAL_ARRAY_WIDTH / NEURON_PER_WORD; // = 12
  localparam NEURON_GRP_W    = $clog2(N_GROUP);

  // ============================================================================
  // Spike handling
  // ============================================================================
  reg  [SPK_ARRAY_WIDTH-1:0] r_spk_arry;
  wire [SPK_ARRAY_WIDTH-1:0] w_not_acc_spk_arry;
  wire [SPK_ARRAY_WIDTH-1:0] w_onehot_spk;
  wire [SPK_ARRAY_WIDTH-1:0] w_upd_spk_arry;
  wire                       w_have_spk;

  reg  [WEIGHT_ADDR_WIDTH-NEURON_GRP_W-1:0] w_weight_addr;
  reg                        r_swvalid;

  assign w_upd_spk_arry = r_spk_arry ^ w_onehot_spk;
  assign w_have_spk     = (i_State == `ST_GENSPK_A_COM) ? |r_spk_arry : 1'b0;

  assign o_svalid   = r_swvalid;
  assign o_last_spk = r_swvalid & ~w_have_spk;

  // ============================================================================
  // One-hot generator (LSB priority)
  // ============================================================================
  genvar gi;
  integer i;

  assign w_not_acc_spk_arry[0] = ~r_spk_arry[0];
  generate
    for (gi = 1; gi < SPK_ARRAY_WIDTH; gi = gi + 1) begin
      assign w_not_acc_spk_arry[gi] =
        ~r_spk_arry[gi] & w_not_acc_spk_arry[gi-1];
    end
  endgenerate

  assign w_onehot_spk[0] = r_spk_arry[0];
  generate
    for (gi = 1; gi < SPK_ARRAY_WIDTH; gi = gi + 1) begin
      assign w_onehot_spk[gi] =
        r_spk_arry[gi] & w_not_acc_spk_arry[gi-1];
    end
  endgenerate

  // Address from one-hot
  always @(*) begin
    w_weight_addr = '0;
    for (i = 0; i < SPK_ARRAY_WIDTH; i = i + 1)
      if (w_onehot_spk[i])
        w_weight_addr = i;
  end

  // ============================================================================
  // Sequential logic
  // ============================================================================
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      r_spk_arry <= '0;
    else if (i_svalid)
      r_spk_arry <= i_spk_arry;
    else if (i_State == `ST_GENSPK_A_COM)
      r_spk_arry <= w_upd_spk_arry;
  end

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      r_swvalid <= 1'b0;
    else
      r_swvalid <= w_have_spk;
  end

  // ============================================================================
  // SoC bus decode
  // ============================================================================
  wire [NEURON_GRP_W-1:0] neuron_group;
  wire [WEIGHT_ADDR_WIDTH-NEURON_GRP_W-1:0] weight_addr_bus;

  assign neuron_group    = address_1[NEURON_GRP_W-1:0];
  assign weight_addr_bus = address_1[WEIGHT_ADDR_WIDTH-1:NEURON_GRP_W];

  // ============================================================================
  // SRAM address select
  // ============================================================================
  wire [WEIGHT_ADDR_WIDTH-NEURON_GRP_W-1:0] addr0;

  assign addr0 = (i_State == `ST_GENSPK_A_COM) ? w_weight_addr : weight_addr_bus;

  // ============================================================================
  // SRAM banks (48 banks, 8-bit each)
  // ============================================================================
  generate
    for (gi = 0; gi < NEURAL_ARRAY_WIDTH; gi = gi + 1) begin : GEN_RAM

      wire [WEIGHT_WIDTH-1:0] weight_byte;
      wire we_bank;
      assign weight_byte = data_1[(gi % NEURON_PER_WORD)*WEIGHT_WIDTH +: WEIGHT_WIDTH];
      assign we_bank = we_1 & (i_State != `ST_GENSPK_A_COM) & ((gi / NEURON_PER_WORD) == neuron_group);

      sp_ram1024x8 R0 (
        .clk0  ( clk ),
        .csb0  ( i_en_SRAM ),
        .web0  ( ~we_bank ),
        .addr0 ( addr0 ),
        .din0  ( weight_byte ),
        .dout0 ( o_wspike[(gi+1)*WEIGHT_WIDTH-1 : gi*WEIGHT_WIDTH] )
      );

    end
  endgenerate

endmodule
