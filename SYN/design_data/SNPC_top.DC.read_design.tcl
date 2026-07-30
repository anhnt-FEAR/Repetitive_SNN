file mkdir WORK
define_design_lib work -path ./WORK

analyze -format verilog ../RTL/common.v
analyze -format verilog ../RTL/LIF.v
analyze -format verilog ../RTL/LIF_neuron.v
analyze -format verilog ../RTL/xbar.v
analyze -format verilog ../RTL/SNPC_cntrl.v
analyze -format verilog ../RTL/SNPC.v
analyze -format verilog ../RTL/SNPC_top.v

elaborate -work work ${DESIGN_NAME}
