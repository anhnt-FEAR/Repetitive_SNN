// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Wed Aug 30 14:53:42 2023
// Host        : Doanh-Ngo running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub snn_stub.v
// Design      : SNN_top
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module SNN_top(clk, rst_n, data_1, address_1, cs_1, we_1, oe_1, 
  data_2, address_2, cs_2, we_2, oe_2, i_spk_arry, i_svalid, o_start, s_axi_awvalid, s_axi_awid, 
  s_axi_awlen, s_axi_awaddr, s_axi_awuser, s_axi_awready, s_axi_wvalid, s_axi_wdata, 
  s_axi_wstrb, s_axi_wlast, s_axi_wuser, s_axi_wready, s_axi_bvalid, s_axi_bid, s_axi_bresp, 
  s_axi_buser, s_axi_bready, s_axi_arvalid, s_axi_arid, s_axi_arlen, s_axi_araddr, 
  s_axi_aruser, s_axi_arready, s_axi_rvalid, s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, 
  s_axi_ruser, s_axi_rready, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, 
  s_axi_awprot, s_axi_awregion, s_axi_awqos, s_axi_arsize, s_axi_arburst, s_axi_arlock, 
  s_axi_arcache, s_axi_arprot, s_axi_arregion, s_axi_arqos)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,data_1[383:0],address_1[9:0],cs_1,we_1,oe_1,data_2[79:0],address_2[9:0],cs_2,we_2,oe_2,i_spk_arry[783:0],i_svalid,o_start,s_axi_awvalid,s_axi_awid[15:0],s_axi_awlen[7:0],s_axi_awaddr[31:0],s_axi_awuser[3:0],s_axi_awready,s_axi_wvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wuser[3:0],s_axi_wready,s_axi_bvalid,s_axi_bid[15:0],s_axi_bresp[1:0],s_axi_buser[3:0],s_axi_bready,s_axi_arvalid,s_axi_arid[15:0],s_axi_arlen[7:0],s_axi_araddr[31:0],s_axi_aruser[3:0],s_axi_arready,s_axi_rvalid,s_axi_rid[15:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_ruser[3:0],s_axi_rready,s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock,s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awregion[3:0],s_axi_awqos[3:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock,s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arregion[3:0],s_axi_arqos[3:0]" */;
  input clk;
  input rst_n;
  input [383:0]data_1;
  input [9:0]address_1;
  input cs_1;
  input we_1;
  input oe_1;
  input [79:0]data_2;
  input [9:0]address_2;
  input cs_2;
  input we_2;
  input oe_2;
  input [783:0]i_spk_arry;
  input i_svalid;
  output o_start;
  input s_axi_awvalid;
  input [15:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awuser;
  output s_axi_awready;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [3:0]s_axi_wuser;
  output s_axi_wready;
  output s_axi_bvalid;
  output [15:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [3:0]s_axi_buser;
  input s_axi_bready;
  input s_axi_arvalid;
  input [15:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_aruser;
  output s_axi_arready;
  output s_axi_rvalid;
  output [15:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [3:0]s_axi_ruser;
  input s_axi_rready;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
endmodule
