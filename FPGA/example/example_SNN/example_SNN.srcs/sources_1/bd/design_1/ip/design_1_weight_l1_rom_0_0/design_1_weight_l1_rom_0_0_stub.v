// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Mon Jul 24 17:02:02 2023
// Host        : Doanh-Ngo running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/doanh/Work/SNN_Undervoltage_Stack_SRAM/FPGA/example/example_SNN/example_SNN.srcs/sources_1/bd/design_1/ip/design_1_weight_l1_rom_0_0/design_1_weight_l1_rom_0_0_stub.v
// Design      : design_1_weight_l1_rom_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "weight_l1_rom,Vivado 2017.1" *)
module design_1_weight_l1_rom_0_0(clk, rst_n, data_out, addr_out, cs, we, oe)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,data_out[383:0],addr_out[9:0],cs,we,oe" */;
  input clk;
  input rst_n;
  output [383:0]data_out;
  output [9:0]addr_out;
  output cs;
  output we;
  output oe;
endmodule
