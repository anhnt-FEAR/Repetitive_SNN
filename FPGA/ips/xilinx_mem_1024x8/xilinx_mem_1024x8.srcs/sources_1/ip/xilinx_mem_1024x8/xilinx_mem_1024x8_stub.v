// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Mon Jul 17 16:10:11 2023
// Host        : Doanh-Ngo running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/doanh/Work/SNN_Undervoltage_Stack_SRAM/FPGA/ips/xilinx_mem_1024x8/xilinx_mem_1024x8.srcs/sources_1/ip/xilinx_mem_1024x8/xilinx_mem_1024x8_stub.v
// Design      : xilinx_mem_1024x8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *)
module xilinx_mem_1024x8(clka, rsta, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[0:0],addra[9:0],dina[7:0],douta[7:0]" */;
  input clka;
  input rsta;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [7:0]dina;
  output [7:0]douta;
endmodule
