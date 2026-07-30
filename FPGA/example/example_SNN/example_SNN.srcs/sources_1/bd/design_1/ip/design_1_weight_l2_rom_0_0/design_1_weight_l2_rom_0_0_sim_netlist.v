// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Mon Jul 24 17:01:42 2023
// Host        : Doanh-Ngo running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/doanh/Work/SNN_Undervoltage_Stack_SRAM/FPGA/example/example_SNN/example_SNN.srcs/sources_1/bd/design_1/ip/design_1_weight_l2_rom_0_0/design_1_weight_l2_rom_0_0_sim_netlist.v
// Design      : design_1_weight_l2_rom_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_weight_l2_rom_0_0,weight_l2_rom,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "weight_l2_rom,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module design_1_weight_l2_rom_0_0
   (clk,
    rst_n,
    data_out,
    addr_out,
    cs,
    we,
    oe);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) input rst_n;
  output [79:0]data_out;
  output [9:0]addr_out;
  output cs;
  output we;
  output oe;

  wire \<const0> ;
  wire [9:0]addr_out;
  wire clk;
  wire [79:0]data_out;
  wire rst_n;
  wire we;

  assign cs = we;
  assign oe = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_weight_l2_rom_0_0_weight_l2_rom inst
       (.addr_out(addr_out),
        .clk(clk),
        .data_out(data_out),
        .rst_n(rst_n),
        .we(we));
endmodule

(* ORIG_REF_NAME = "weight_l2_rom" *) 
module design_1_weight_l2_rom_0_0_weight_l2_rom
   (addr_out,
    data_out,
    we,
    clk,
    rst_n);
  output [9:0]addr_out;
  output [79:0]data_out;
  output we;
  input clk;
  input rst_n;

  wire [9:0]addr_out;
  wire \addr_out[0]_i_1_n_0 ;
  wire \addr_out[5]_i_2_n_0 ;
  wire \addr_out[9]_i_2_n_0 ;
  wire \addr_out[9]_i_3_n_0 ;
  wire clk;
  wire [79:0]data_out;
  wire \data_out[79]_i_1_n_0 ;
  wire g0_b0_n_0;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b12_n_0;
  wire g0_b13_n_0;
  wire g0_b14_n_0;
  wire g0_b15_n_0;
  wire g0_b16_n_0;
  wire g0_b17_n_0;
  wire g0_b18_n_0;
  wire g0_b19_n_0;
  wire g0_b1_n_0;
  wire g0_b20_n_0;
  wire g0_b21_n_0;
  wire g0_b22_n_0;
  wire g0_b23_n_0;
  wire g0_b24_n_0;
  wire g0_b25_n_0;
  wire g0_b26_n_0;
  wire g0_b27_n_0;
  wire g0_b28_n_0;
  wire g0_b29_n_0;
  wire g0_b2_n_0;
  wire g0_b30_n_0;
  wire g0_b31_n_0;
  wire g0_b32_n_0;
  wire g0_b33_n_0;
  wire g0_b34_n_0;
  wire g0_b35_n_0;
  wire g0_b36_n_0;
  wire g0_b37_n_0;
  wire g0_b38_n_0;
  wire g0_b39_n_0;
  wire g0_b3_n_0;
  wire g0_b40_n_0;
  wire g0_b41_n_0;
  wire g0_b42_n_0;
  wire g0_b43_n_0;
  wire g0_b44_n_0;
  wire g0_b45_n_0;
  wire g0_b46_n_0;
  wire g0_b47_n_0;
  wire g0_b48_n_0;
  wire g0_b49_n_0;
  wire g0_b4_n_0;
  wire g0_b50_n_0;
  wire g0_b51_n_0;
  wire g0_b52_n_0;
  wire g0_b53_n_0;
  wire g0_b54_n_0;
  wire g0_b55_n_0;
  wire g0_b56_n_0;
  wire g0_b57_n_0;
  wire g0_b58_n_0;
  wire g0_b59_n_0;
  wire g0_b5_n_0;
  wire g0_b60_n_0;
  wire g0_b61_n_0;
  wire g0_b62_n_0;
  wire g0_b63_n_0;
  wire g0_b64_n_0;
  wire g0_b65_n_0;
  wire g0_b66_n_0;
  wire g0_b67_n_0;
  wire g0_b68_n_0;
  wire g0_b69_n_0;
  wire g0_b6_n_0;
  wire g0_b70_n_0;
  wire g0_b71_n_0;
  wire g0_b72_n_0;
  wire g0_b73_n_0;
  wire g0_b74_n_0;
  wire g0_b75_n_0;
  wire g0_b76_n_0;
  wire g0_b77_n_0;
  wire g0_b78_n_0;
  wire g0_b79_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;
  wire \i[0]_i_2_n_0 ;
  wire \i[0]_i_3_n_0 ;
  wire \i[0]_i_4_n_0 ;
  wire \i[0]_i_5_n_0 ;
  wire \i[0]_i_6_n_0 ;
  wire \i[12]_i_2_n_0 ;
  wire \i[12]_i_3_n_0 ;
  wire \i[12]_i_4_n_0 ;
  wire \i[12]_i_5_n_0 ;
  wire \i[16]_i_2_n_0 ;
  wire \i[16]_i_3_n_0 ;
  wire \i[16]_i_4_n_0 ;
  wire \i[16]_i_5_n_0 ;
  wire \i[20]_i_2_n_0 ;
  wire \i[20]_i_3_n_0 ;
  wire \i[20]_i_4_n_0 ;
  wire \i[20]_i_5_n_0 ;
  wire \i[24]_i_2_n_0 ;
  wire \i[24]_i_3_n_0 ;
  wire \i[24]_i_4_n_0 ;
  wire \i[24]_i_5_n_0 ;
  wire \i[28]_i_2_n_0 ;
  wire \i[28]_i_3_n_0 ;
  wire \i[28]_i_4_n_0 ;
  wire \i[28]_i_5_n_0 ;
  wire \i[4]_i_2_n_0 ;
  wire \i[4]_i_3_n_0 ;
  wire \i[4]_i_4_n_0 ;
  wire \i[4]_i_5_n_0 ;
  wire \i[8]_i_2_n_0 ;
  wire \i[8]_i_3_n_0 ;
  wire \i[8]_i_4_n_0 ;
  wire \i[8]_i_5_n_0 ;
  wire [5:0]i_reg;
  wire \i_reg[0]_i_1_n_0 ;
  wire \i_reg[0]_i_1_n_1 ;
  wire \i_reg[0]_i_1_n_2 ;
  wire \i_reg[0]_i_1_n_3 ;
  wire \i_reg[0]_i_1_n_4 ;
  wire \i_reg[0]_i_1_n_5 ;
  wire \i_reg[0]_i_1_n_6 ;
  wire \i_reg[0]_i_1_n_7 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_1 ;
  wire \i_reg[28]_i_1_n_2 ;
  wire \i_reg[28]_i_1_n_3 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire [31:6]i_reg__0;
  wire [9:1]p_0_in;
  wire p_0_in__0;
  wire read_reg;
  wire read_reg1_carry__0_i_10_n_0;
  wire read_reg1_carry__0_i_11_n_0;
  wire read_reg1_carry__0_i_12_n_0;
  wire read_reg1_carry__0_i_13_n_0;
  wire read_reg1_carry__0_i_14_n_0;
  wire read_reg1_carry__0_i_15_n_0;
  wire read_reg1_carry__0_i_16_n_0;
  wire read_reg1_carry__0_i_17_n_0;
  wire read_reg1_carry__0_i_18_n_0;
  wire read_reg1_carry__0_i_19_n_0;
  wire read_reg1_carry__0_i_1_n_0;
  wire read_reg1_carry__0_i_2_n_0;
  wire read_reg1_carry__0_i_3_n_0;
  wire read_reg1_carry__0_i_4_n_0;
  wire read_reg1_carry__0_i_5_n_0;
  wire read_reg1_carry__0_i_5_n_1;
  wire read_reg1_carry__0_i_5_n_2;
  wire read_reg1_carry__0_i_5_n_3;
  wire read_reg1_carry__0_i_6_n_0;
  wire read_reg1_carry__0_i_6_n_1;
  wire read_reg1_carry__0_i_6_n_2;
  wire read_reg1_carry__0_i_6_n_3;
  wire read_reg1_carry__0_i_7_n_0;
  wire read_reg1_carry__0_i_7_n_1;
  wire read_reg1_carry__0_i_7_n_2;
  wire read_reg1_carry__0_i_7_n_3;
  wire read_reg1_carry__0_i_8_n_0;
  wire read_reg1_carry__0_i_9_n_0;
  wire read_reg1_carry__0_n_0;
  wire read_reg1_carry__0_n_1;
  wire read_reg1_carry__0_n_2;
  wire read_reg1_carry__0_n_3;
  wire read_reg1_carry__1_i_10_n_0;
  wire read_reg1_carry__1_i_11_n_0;
  wire read_reg1_carry__1_i_12_n_0;
  wire read_reg1_carry__1_i_1_n_0;
  wire read_reg1_carry__1_i_2_n_0;
  wire read_reg1_carry__1_i_3_n_0;
  wire read_reg1_carry__1_i_4_n_2;
  wire read_reg1_carry__1_i_4_n_3;
  wire read_reg1_carry__1_i_5_n_0;
  wire read_reg1_carry__1_i_5_n_1;
  wire read_reg1_carry__1_i_5_n_2;
  wire read_reg1_carry__1_i_5_n_3;
  wire read_reg1_carry__1_i_6_n_0;
  wire read_reg1_carry__1_i_7_n_0;
  wire read_reg1_carry__1_i_8_n_0;
  wire read_reg1_carry__1_i_9_n_0;
  wire read_reg1_carry__1_n_1;
  wire read_reg1_carry__1_n_2;
  wire read_reg1_carry__1_n_3;
  wire read_reg1_carry_i_10_n_0;
  wire read_reg1_carry_i_11_n_0;
  wire read_reg1_carry_i_12_n_0;
  wire read_reg1_carry_i_13_n_0;
  wire read_reg1_carry_i_14_n_0;
  wire read_reg1_carry_i_15_n_0;
  wire read_reg1_carry_i_16_n_0;
  wire read_reg1_carry_i_17_n_0;
  wire read_reg1_carry_i_18_n_0;
  wire read_reg1_carry_i_19_n_0;
  wire read_reg1_carry_i_1_n_0;
  wire read_reg1_carry_i_2_n_0;
  wire read_reg1_carry_i_3_n_0;
  wire read_reg1_carry_i_4_n_0;
  wire read_reg1_carry_i_5_n_0;
  wire read_reg1_carry_i_5_n_1;
  wire read_reg1_carry_i_5_n_2;
  wire read_reg1_carry_i_5_n_3;
  wire read_reg1_carry_i_6_n_0;
  wire read_reg1_carry_i_6_n_1;
  wire read_reg1_carry_i_6_n_2;
  wire read_reg1_carry_i_6_n_3;
  wire read_reg1_carry_i_7_n_0;
  wire read_reg1_carry_i_7_n_1;
  wire read_reg1_carry_i_7_n_2;
  wire read_reg1_carry_i_7_n_3;
  wire read_reg1_carry_i_8_n_0;
  wire read_reg1_carry_i_9_n_0;
  wire read_reg1_carry_n_0;
  wire read_reg1_carry_n_1;
  wire read_reg1_carry_n_2;
  wire read_reg1_carry_n_3;
  wire [31:1]read_reg2;
  wire read_reg_i_1_n_0;
  wire rst_n;
  wire we;
  wire [3:3]\NLW_i_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_read_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_read_reg1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_read_reg1_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_read_reg1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_read_reg1_carry__1_i_4_CO_UNCONNECTED;
  wire [3:3]NLW_read_reg1_carry__1_i_4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_out[0]_i_1 
       (.I0(read_reg),
        .I1(addr_out[0]),
        .O(\addr_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_out[1]_i_1 
       (.I0(addr_out[1]),
        .I1(addr_out[0]),
        .I2(read_reg),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_out[2]_i_1 
       (.I0(addr_out[2]),
        .I1(addr_out[1]),
        .I2(addr_out[0]),
        .I3(read_reg),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_out[3]_i_1 
       (.I0(addr_out[3]),
        .I1(addr_out[2]),
        .I2(addr_out[0]),
        .I3(addr_out[1]),
        .I4(read_reg),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \addr_out[4]_i_1 
       (.I0(addr_out[4]),
        .I1(addr_out[3]),
        .I2(addr_out[1]),
        .I3(addr_out[0]),
        .I4(addr_out[2]),
        .I5(read_reg),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_out[5]_i_1 
       (.I0(addr_out[5]),
        .I1(\addr_out[5]_i_2_n_0 ),
        .I2(read_reg),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \addr_out[5]_i_2 
       (.I0(addr_out[4]),
        .I1(addr_out[2]),
        .I2(addr_out[0]),
        .I3(addr_out[1]),
        .I4(addr_out[3]),
        .O(\addr_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \addr_out[6]_i_1 
       (.I0(addr_out[6]),
        .I1(\addr_out[9]_i_3_n_0 ),
        .I2(read_reg),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \addr_out[7]_i_1 
       (.I0(addr_out[7]),
        .I1(addr_out[6]),
        .I2(\addr_out[9]_i_3_n_0 ),
        .I3(read_reg),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \addr_out[8]_i_1 
       (.I0(addr_out[8]),
        .I1(addr_out[7]),
        .I2(\addr_out[9]_i_3_n_0 ),
        .I3(addr_out[6]),
        .I4(read_reg),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \addr_out[9]_i_1 
       (.I0(addr_out[9]),
        .I1(addr_out[8]),
        .I2(addr_out[6]),
        .I3(\addr_out[9]_i_3_n_0 ),
        .I4(addr_out[7]),
        .I5(read_reg),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_out[9]_i_2 
       (.I0(rst_n),
        .O(\addr_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addr_out[9]_i_3 
       (.I0(addr_out[5]),
        .I1(addr_out[3]),
        .I2(addr_out[1]),
        .I3(addr_out[0]),
        .I4(addr_out[2]),
        .I5(addr_out[4]),
        .O(\addr_out[9]_i_3_n_0 ));
  FDCE \addr_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(\addr_out[0]_i_1_n_0 ),
        .Q(addr_out[0]));
  FDCE \addr_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(addr_out[1]));
  FDCE \addr_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(addr_out[2]));
  FDCE \addr_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(addr_out[3]));
  FDCE \addr_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(addr_out[4]));
  FDCE \addr_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(addr_out[5]));
  FDCE \addr_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(addr_out[6]));
  FDCE \addr_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(addr_out[7]));
  FDCE \addr_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(addr_out[8]));
  FDCE \addr_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(addr_out[9]));
  FDCE cs_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\addr_out[9]_i_2_n_0 ),
        .D(read_reg),
        .Q(we));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[79]_i_1 
       (.I0(rst_n),
        .I1(read_reg),
        .O(\data_out[79]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b0_n_0),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[10] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b10_n_0),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_out_reg[11] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b11_n_0),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_out_reg[12] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b12_n_0),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_out_reg[13] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b13_n_0),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_out_reg[14] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b14_n_0),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_out_reg[15] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b15_n_0),
        .Q(data_out[15]),
        .R(1'b0));
  FDRE \data_out_reg[16] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b16_n_0),
        .Q(data_out[16]),
        .R(1'b0));
  FDRE \data_out_reg[17] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b17_n_0),
        .Q(data_out[17]),
        .R(1'b0));
  FDRE \data_out_reg[18] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b18_n_0),
        .Q(data_out[18]),
        .R(1'b0));
  FDRE \data_out_reg[19] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b19_n_0),
        .Q(data_out[19]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b1_n_0),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[20] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b20_n_0),
        .Q(data_out[20]),
        .R(1'b0));
  FDRE \data_out_reg[21] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b21_n_0),
        .Q(data_out[21]),
        .R(1'b0));
  FDRE \data_out_reg[22] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b22_n_0),
        .Q(data_out[22]),
        .R(1'b0));
  FDRE \data_out_reg[23] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b23_n_0),
        .Q(data_out[23]),
        .R(1'b0));
  FDRE \data_out_reg[24] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b24_n_0),
        .Q(data_out[24]),
        .R(1'b0));
  FDRE \data_out_reg[25] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b25_n_0),
        .Q(data_out[25]),
        .R(1'b0));
  FDRE \data_out_reg[26] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b26_n_0),
        .Q(data_out[26]),
        .R(1'b0));
  FDRE \data_out_reg[27] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b27_n_0),
        .Q(data_out[27]),
        .R(1'b0));
  FDRE \data_out_reg[28] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b28_n_0),
        .Q(data_out[28]),
        .R(1'b0));
  FDRE \data_out_reg[29] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b29_n_0),
        .Q(data_out[29]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b2_n_0),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[30] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b30_n_0),
        .Q(data_out[30]),
        .R(1'b0));
  FDRE \data_out_reg[31] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b31_n_0),
        .Q(data_out[31]),
        .R(1'b0));
  FDRE \data_out_reg[32] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b32_n_0),
        .Q(data_out[32]),
        .R(1'b0));
  FDRE \data_out_reg[33] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b33_n_0),
        .Q(data_out[33]),
        .R(1'b0));
  FDRE \data_out_reg[34] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b34_n_0),
        .Q(data_out[34]),
        .R(1'b0));
  FDRE \data_out_reg[35] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b35_n_0),
        .Q(data_out[35]),
        .R(1'b0));
  FDRE \data_out_reg[36] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b36_n_0),
        .Q(data_out[36]),
        .R(1'b0));
  FDRE \data_out_reg[37] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b37_n_0),
        .Q(data_out[37]),
        .R(1'b0));
  FDRE \data_out_reg[38] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b38_n_0),
        .Q(data_out[38]),
        .R(1'b0));
  FDRE \data_out_reg[39] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b39_n_0),
        .Q(data_out[39]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b3_n_0),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[40] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b40_n_0),
        .Q(data_out[40]),
        .R(1'b0));
  FDRE \data_out_reg[41] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b41_n_0),
        .Q(data_out[41]),
        .R(1'b0));
  FDRE \data_out_reg[42] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b42_n_0),
        .Q(data_out[42]),
        .R(1'b0));
  FDRE \data_out_reg[43] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b43_n_0),
        .Q(data_out[43]),
        .R(1'b0));
  FDRE \data_out_reg[44] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b44_n_0),
        .Q(data_out[44]),
        .R(1'b0));
  FDRE \data_out_reg[45] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b45_n_0),
        .Q(data_out[45]),
        .R(1'b0));
  FDRE \data_out_reg[46] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b46_n_0),
        .Q(data_out[46]),
        .R(1'b0));
  FDRE \data_out_reg[47] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b47_n_0),
        .Q(data_out[47]),
        .R(1'b0));
  FDRE \data_out_reg[48] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b48_n_0),
        .Q(data_out[48]),
        .R(1'b0));
  FDRE \data_out_reg[49] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b49_n_0),
        .Q(data_out[49]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b4_n_0),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[50] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b50_n_0),
        .Q(data_out[50]),
        .R(1'b0));
  FDRE \data_out_reg[51] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b51_n_0),
        .Q(data_out[51]),
        .R(1'b0));
  FDRE \data_out_reg[52] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b52_n_0),
        .Q(data_out[52]),
        .R(1'b0));
  FDRE \data_out_reg[53] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b53_n_0),
        .Q(data_out[53]),
        .R(1'b0));
  FDRE \data_out_reg[54] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b54_n_0),
        .Q(data_out[54]),
        .R(1'b0));
  FDRE \data_out_reg[55] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b55_n_0),
        .Q(data_out[55]),
        .R(1'b0));
  FDRE \data_out_reg[56] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b56_n_0),
        .Q(data_out[56]),
        .R(1'b0));
  FDRE \data_out_reg[57] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b57_n_0),
        .Q(data_out[57]),
        .R(1'b0));
  FDRE \data_out_reg[58] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b58_n_0),
        .Q(data_out[58]),
        .R(1'b0));
  FDRE \data_out_reg[59] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b59_n_0),
        .Q(data_out[59]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b5_n_0),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[60] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b60_n_0),
        .Q(data_out[60]),
        .R(1'b0));
  FDRE \data_out_reg[61] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b61_n_0),
        .Q(data_out[61]),
        .R(1'b0));
  FDRE \data_out_reg[62] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b62_n_0),
        .Q(data_out[62]),
        .R(1'b0));
  FDRE \data_out_reg[63] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b63_n_0),
        .Q(data_out[63]),
        .R(1'b0));
  FDRE \data_out_reg[64] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b64_n_0),
        .Q(data_out[64]),
        .R(1'b0));
  FDRE \data_out_reg[65] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b65_n_0),
        .Q(data_out[65]),
        .R(1'b0));
  FDRE \data_out_reg[66] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b66_n_0),
        .Q(data_out[66]),
        .R(1'b0));
  FDRE \data_out_reg[67] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b67_n_0),
        .Q(data_out[67]),
        .R(1'b0));
  FDRE \data_out_reg[68] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b68_n_0),
        .Q(data_out[68]),
        .R(1'b0));
  FDRE \data_out_reg[69] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b69_n_0),
        .Q(data_out[69]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b6_n_0),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[70] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b70_n_0),
        .Q(data_out[70]),
        .R(1'b0));
  FDRE \data_out_reg[71] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b71_n_0),
        .Q(data_out[71]),
        .R(1'b0));
  FDRE \data_out_reg[72] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b72_n_0),
        .Q(data_out[72]),
        .R(1'b0));
  FDRE \data_out_reg[73] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b73_n_0),
        .Q(data_out[73]),
        .R(1'b0));
  FDRE \data_out_reg[74] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b74_n_0),
        .Q(data_out[74]),
        .R(1'b0));
  FDRE \data_out_reg[75] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b75_n_0),
        .Q(data_out[75]),
        .R(1'b0));
  FDRE \data_out_reg[76] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b76_n_0),
        .Q(data_out[76]),
        .R(1'b0));
  FDRE \data_out_reg[77] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b77_n_0),
        .Q(data_out[77]),
        .R(1'b0));
  FDRE \data_out_reg[78] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b78_n_0),
        .Q(data_out[78]),
        .R(1'b0));
  FDRE \data_out_reg[79] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b79_n_0),
        .Q(data_out[79]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b7_n_0),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_out_reg[8] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b8_n_0),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_out_reg[9] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(g0_b9_n_0),
        .Q(data_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000816FC561C7BD)) 
    g0_b0
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h0000073059F64359)) 
    g0_b1
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h0000B7A187B1C144)) 
    g0_b10
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b10_n_0));
  LUT6 #(
    .INIT(64'h0000E5483064784E)) 
    g0_b11
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b11_n_0));
  LUT6 #(
    .INIT(64'h0000C1DB9A1BB8BB)) 
    g0_b12
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b12_n_0));
  LUT6 #(
    .INIT(64'h00003D2C19204C89)) 
    g0_b13
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b13_n_0));
  LUT6 #(
    .INIT(64'h000022164CC25130)) 
    g0_b14
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b14_n_0));
  LUT6 #(
    .INIT(64'h0000A33E5EE25BFD)) 
    g0_b15
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b15_n_0));
  LUT6 #(
    .INIT(64'h0000A027B579ECE2)) 
    g0_b16
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b16_n_0));
  LUT6 #(
    .INIT(64'h0000C1039C7A5441)) 
    g0_b17
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b17_n_0));
  LUT6 #(
    .INIT(64'h000042DEA0EB261F)) 
    g0_b18
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b18_n_0));
  LUT6 #(
    .INIT(64'h000011F124860146)) 
    g0_b19
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b19_n_0));
  LUT6 #(
    .INIT(64'h00008C358B3DE3BA)) 
    g0_b2
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h0000F4BB9F953D88)) 
    g0_b20
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b20_n_0));
  LUT6 #(
    .INIT(64'h0000060CC56B30A0)) 
    g0_b21
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b21_n_0));
  LUT6 #(
    .INIT(64'h0000A04178E35F9D)) 
    g0_b22
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b22_n_0));
  LUT6 #(
    .INIT(64'h0000B449FDE37F9D)) 
    g0_b23
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b23_n_0));
  LUT6 #(
    .INIT(64'h00003D534AAA8AD9)) 
    g0_b24
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b24_n_0));
  LUT6 #(
    .INIT(64'h000079434D50F796)) 
    g0_b25
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b25_n_0));
  LUT6 #(
    .INIT(64'h00007F63BA0988A5)) 
    g0_b26
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b26_n_0));
  LUT6 #(
    .INIT(64'h0000AAABB0A0F9F5)) 
    g0_b27
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b27_n_0));
  LUT6 #(
    .INIT(64'h0000DA91DDA6DA53)) 
    g0_b28
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b28_n_0));
  LUT6 #(
    .INIT(64'h0000B46C6B4C4D8C)) 
    g0_b29
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b29_n_0));
  LUT6 #(
    .INIT(64'h0000090D42711D5A)) 
    g0_b3
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h0000887453AE7EDC)) 
    g0_b30
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b30_n_0));
  LUT6 #(
    .INIT(64'h0000BC745BAE7FDC)) 
    g0_b31
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b31_n_0));
  LUT6 #(
    .INIT(64'h0000A6A48BC2ACDD)) 
    g0_b32
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b32_n_0));
  LUT6 #(
    .INIT(64'h00002E6F1F854AB1)) 
    g0_b33
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b33_n_0));
  LUT6 #(
    .INIT(64'h0000090359761523)) 
    g0_b34
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b34_n_0));
  LUT6 #(
    .INIT(64'h00005D5D56D60A22)) 
    g0_b35
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b35_n_0));
  LUT6 #(
    .INIT(64'h000033E1DA77969D)) 
    g0_b36
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b36_n_0));
  LUT6 #(
    .INIT(64'h0000E71048786740)) 
    g0_b37
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b37_n_0));
  LUT6 #(
    .INIT(64'h0000941B4188BCB4)) 
    g0_b38
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b38_n_0));
  LUT6 #(
    .INIT(64'h0000F79F49FCBEB4)) 
    g0_b39
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b39_n_0));
  LUT6 #(
    .INIT(64'h00002F02495F90B8)) 
    g0_b4
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h0000114FDDD07A1D)) 
    g0_b40
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b40_n_0));
  LUT6 #(
    .INIT(64'h0000FCDB38EF86C7)) 
    g0_b41
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b41_n_0));
  LUT6 #(
    .INIT(64'h0000271C43294582)) 
    g0_b42
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b42_n_0));
  LUT6 #(
    .INIT(64'h00002618DFA1D0A4)) 
    g0_b43
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b43_n_0));
  LUT6 #(
    .INIT(64'h0000DC189EB15CE5)) 
    g0_b44
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b44_n_0));
  LUT6 #(
    .INIT(64'h000094622254B37E)) 
    g0_b45
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b45_n_0));
  LUT6 #(
    .INIT(64'h0000EADA8BD7557E)) 
    g0_b46
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b46_n_0));
  LUT6 #(
    .INIT(64'h0000EEDA8BD7557E)) 
    g0_b47
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b47_n_0));
  LUT6 #(
    .INIT(64'h000039AB51BD41F8)) 
    g0_b48
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b48_n_0));
  LUT6 #(
    .INIT(64'h00000E2B4393A546)) 
    g0_b49
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b49_n_0));
  LUT6 #(
    .INIT(64'h00008C6581F24409)) 
    g0_b5
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h00008A2E1B94852D)) 
    g0_b50
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b50_n_0));
  LUT6 #(
    .INIT(64'h0000EFE4DA3F2F53)) 
    g0_b51
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b51_n_0));
  LUT6 #(
    .INIT(64'h00009F410BB48EE2)) 
    g0_b52
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b52_n_0));
  LUT6 #(
    .INIT(64'h000054B800B43114)) 
    g0_b53
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b53_n_0));
  LUT6 #(
    .INIT(64'h000031674AA24191)) 
    g0_b54
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b54_n_0));
  LUT6 #(
    .INIT(64'h000077EFEFF64991)) 
    g0_b55
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b55_n_0));
  LUT6 #(
    .INIT(64'h0000CC96F6B19F6E)) 
    g0_b56
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b56_n_0));
  LUT6 #(
    .INIT(64'h0000004D0D9D1813)) 
    g0_b57
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b57_n_0));
  LUT6 #(
    .INIT(64'h0000F93B0B8E4A00)) 
    g0_b58
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b58_n_0));
  LUT6 #(
    .INIT(64'h0000691F1DE9632B)) 
    g0_b59
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b59_n_0));
  LUT6 #(
    .INIT(64'h0000943002090E0E)) 
    g0_b6
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h0000F19AFBE27F02)) 
    g0_b60
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b60_n_0));
  LUT6 #(
    .INIT(64'h0000097E001416F0)) 
    g0_b61
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b61_n_0));
  LUT6 #(
    .INIT(64'h00003C673E28E663)) 
    g0_b62
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b62_n_0));
  LUT6 #(
    .INIT(64'h00003D7F3E28F663)) 
    g0_b63
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b63_n_0));
  LUT6 #(
    .INIT(64'h0000180E07B5D483)) 
    g0_b64
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b64_n_0));
  LUT6 #(
    .INIT(64'h0000A33DAAF58C75)) 
    g0_b65
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b65_n_0));
  LUT6 #(
    .INIT(64'h00002A7F87D5E1AF)) 
    g0_b66
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b66_n_0));
  LUT6 #(
    .INIT(64'h00005E87CD456F30)) 
    g0_b67
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b67_n_0));
  LUT6 #(
    .INIT(64'h00004C0B26F58251)) 
    g0_b68
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b68_n_0));
  LUT6 #(
    .INIT(64'h0000E5C8782CD14A)) 
    g0_b69
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b69_n_0));
  LUT6 #(
    .INIT(64'h0000DCFDA7FF6E1F)) 
    g0_b7
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h00009A308140A6E4)) 
    g0_b70
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b70_n_0));
  LUT6 #(
    .INIT(64'h0000FEBCAFE6E7FC)) 
    g0_b71
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b71_n_0));
  LUT6 #(
    .INIT(64'h00003A67F2FA3FE2)) 
    g0_b72
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b72_n_0));
  LUT6 #(
    .INIT(64'h0000294AFD71BBA9)) 
    g0_b73
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b73_n_0));
  LUT6 #(
    .INIT(64'h0000BA280FC1DA10)) 
    g0_b74
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b74_n_0));
  LUT6 #(
    .INIT(64'h0000324364C2C69A)) 
    g0_b75
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b75_n_0));
  LUT6 #(
    .INIT(64'h00002A4740699BD1)) 
    g0_b76
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b76_n_0));
  LUT6 #(
    .INIT(64'h00008F240BD87680)) 
    g0_b77
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b77_n_0));
  LUT6 #(
    .INIT(64'h000035091860A322)) 
    g0_b78
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b78_n_0));
  LUT6 #(
    .INIT(64'h00007FBD18FCF3B6)) 
    g0_b79
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b79_n_0));
  LUT6 #(
    .INIT(64'h0000B84B88F0B3D1)) 
    g0_b8
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b8_n_0));
  LUT6 #(
    .INIT(64'h0000513C64A602D3)) 
    g0_b9
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(g0_b9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg[0]),
        .O(\i[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg[3]),
        .O(\i[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg[2]),
        .O(\i[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg[1]),
        .O(\i[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \i[0]_i_6 
       (.I0(i_reg[0]),
        .I1(p_0_in__0),
        .O(\i[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[15]),
        .O(\i[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[14]),
        .O(\i[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg__0[13]),
        .O(\i[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg__0[12]),
        .O(\i[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[19]),
        .O(\i[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[18]),
        .O(\i[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg__0[17]),
        .O(\i[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg__0[16]),
        .O(\i[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[23]),
        .O(\i[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[22]),
        .O(\i[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg__0[21]),
        .O(\i[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg__0[20]),
        .O(\i[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[27]),
        .O(\i[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[26]),
        .O(\i[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg__0[25]),
        .O(\i[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg__0[24]),
        .O(\i[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[31]),
        .O(\i[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[30]),
        .O(\i[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg__0[29]),
        .O(\i[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg__0[28]),
        .O(\i[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[7]),
        .O(\i[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[6]),
        .O(\i[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg[5]),
        .O(\i[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg[4]),
        .O(\i[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_2 
       (.I0(p_0_in__0),
        .I1(i_reg__0[11]),
        .O(\i[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_3 
       (.I0(p_0_in__0),
        .I1(i_reg__0[10]),
        .O(\i[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_4 
       (.I0(p_0_in__0),
        .I1(i_reg__0[9]),
        .O(\i[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_5 
       (.I0(p_0_in__0),
        .I1(i_reg__0[8]),
        .O(\i[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[0]_i_1_n_7 ),
        .Q(i_reg[0]),
        .R(1'b0));
  CARRY4 \i_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_1_n_0 ,\i_reg[0]_i_1_n_1 ,\i_reg[0]_i_1_n_2 ,\i_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\i[0]_i_2_n_0 }),
        .O({\i_reg[0]_i_1_n_4 ,\i_reg[0]_i_1_n_5 ,\i_reg[0]_i_1_n_6 ,\i_reg[0]_i_1_n_7 }),
        .S({\i[0]_i_3_n_0 ,\i[0]_i_4_n_0 ,\i[0]_i_5_n_0 ,\i[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg__0[12]),
        .R(1'b0));
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S({\i[12]_i_2_n_0 ,\i[12]_i_3_n_0 ,\i[12]_i_4_n_0 ,\i[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg__0[16]),
        .R(1'b0));
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S({\i[16]_i_2_n_0 ,\i[16]_i_3_n_0 ,\i[16]_i_4_n_0 ,\i[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[0]_i_1_n_6 ),
        .Q(i_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg__0[20]),
        .R(1'b0));
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S({\i[20]_i_2_n_0 ,\i[20]_i_3_n_0 ,\i[20]_i_4_n_0 ,\i[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg__0[24]),
        .R(1'b0));
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S({\i[24]_i_2_n_0 ,\i[24]_i_3_n_0 ,\i[24]_i_4_n_0 ,\i[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg__0[28]),
        .R(1'b0));
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO({\NLW_i_reg[28]_i_1_CO_UNCONNECTED [3],\i_reg[28]_i_1_n_1 ,\i_reg[28]_i_1_n_2 ,\i_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S({\i[28]_i_2_n_0 ,\i[28]_i_3_n_0 ,\i[28]_i_4_n_0 ,\i[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[0]_i_1_n_5 ),
        .Q(i_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[0]_i_1_n_4 ),
        .Q(i_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(1'b0));
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_1_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S({\i[4]_i_2_n_0 ,\i[4]_i_3_n_0 ,\i[4]_i_4_n_0 ,\i[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg__0[8]),
        .R(1'b0));
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S({\i[8]_i_2_n_0 ,\i[8]_i_3_n_0 ,\i[8]_i_4_n_0 ,\i[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk),
        .CE(\data_out[79]_i_1_n_0 ),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg__0[9]),
        .R(1'b0));
  CARRY4 read_reg1_carry
       (.CI(1'b0),
        .CO({read_reg1_carry_n_0,read_reg1_carry_n_1,read_reg1_carry_n_2,read_reg1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_read_reg1_carry_O_UNCONNECTED[3:0]),
        .S({read_reg1_carry_i_1_n_0,read_reg1_carry_i_2_n_0,read_reg1_carry_i_3_n_0,read_reg1_carry_i_4_n_0}));
  CARRY4 read_reg1_carry__0
       (.CI(read_reg1_carry_n_0),
        .CO({read_reg1_carry__0_n_0,read_reg1_carry__0_n_1,read_reg1_carry__0_n_2,read_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_read_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({read_reg1_carry__0_i_1_n_0,read_reg1_carry__0_i_2_n_0,read_reg1_carry__0_i_3_n_0,read_reg1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry__0_i_1
       (.I0(read_reg2[23]),
        .I1(read_reg2[22]),
        .I2(read_reg2[21]),
        .O(read_reg1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_10
       (.I0(i_reg__0[22]),
        .O(read_reg1_carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_11
       (.I0(i_reg__0[21]),
        .O(read_reg1_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_12
       (.I0(i_reg__0[20]),
        .O(read_reg1_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_13
       (.I0(i_reg__0[19]),
        .O(read_reg1_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_14
       (.I0(i_reg__0[18]),
        .O(read_reg1_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_15
       (.I0(i_reg__0[17]),
        .O(read_reg1_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_16
       (.I0(i_reg__0[16]),
        .O(read_reg1_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_17
       (.I0(i_reg__0[15]),
        .O(read_reg1_carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_18
       (.I0(i_reg__0[14]),
        .O(read_reg1_carry__0_i_18_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_19
       (.I0(i_reg__0[13]),
        .O(read_reg1_carry__0_i_19_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry__0_i_2
       (.I0(read_reg2[20]),
        .I1(read_reg2[19]),
        .I2(read_reg2[18]),
        .O(read_reg1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry__0_i_3
       (.I0(read_reg2[17]),
        .I1(read_reg2[16]),
        .I2(read_reg2[15]),
        .O(read_reg1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry__0_i_4
       (.I0(read_reg2[14]),
        .I1(read_reg2[13]),
        .I2(read_reg2[12]),
        .O(read_reg1_carry__0_i_4_n_0));
  CARRY4 read_reg1_carry__0_i_5
       (.CI(read_reg1_carry__0_i_6_n_0),
        .CO({read_reg1_carry__0_i_5_n_0,read_reg1_carry__0_i_5_n_1,read_reg1_carry__0_i_5_n_2,read_reg1_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[24:21]),
        .S({read_reg1_carry__0_i_8_n_0,read_reg1_carry__0_i_9_n_0,read_reg1_carry__0_i_10_n_0,read_reg1_carry__0_i_11_n_0}));
  CARRY4 read_reg1_carry__0_i_6
       (.CI(read_reg1_carry__0_i_7_n_0),
        .CO({read_reg1_carry__0_i_6_n_0,read_reg1_carry__0_i_6_n_1,read_reg1_carry__0_i_6_n_2,read_reg1_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[20:17]),
        .S({read_reg1_carry__0_i_12_n_0,read_reg1_carry__0_i_13_n_0,read_reg1_carry__0_i_14_n_0,read_reg1_carry__0_i_15_n_0}));
  CARRY4 read_reg1_carry__0_i_7
       (.CI(read_reg1_carry_i_5_n_0),
        .CO({read_reg1_carry__0_i_7_n_0,read_reg1_carry__0_i_7_n_1,read_reg1_carry__0_i_7_n_2,read_reg1_carry__0_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[16:13]),
        .S({read_reg1_carry__0_i_16_n_0,read_reg1_carry__0_i_17_n_0,read_reg1_carry__0_i_18_n_0,read_reg1_carry__0_i_19_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_8
       (.I0(i_reg__0[24]),
        .O(read_reg1_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__0_i_9
       (.I0(i_reg__0[23]),
        .O(read_reg1_carry__0_i_9_n_0));
  CARRY4 read_reg1_carry__1
       (.CI(read_reg1_carry__0_n_0),
        .CO({NLW_read_reg1_carry__1_CO_UNCONNECTED[3],read_reg1_carry__1_n_1,read_reg1_carry__1_n_2,read_reg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in__0,NLW_read_reg1_carry__1_O_UNCONNECTED[2:0]}),
        .S({1'b1,read_reg1_carry__1_i_1_n_0,read_reg1_carry__1_i_2_n_0,read_reg1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    read_reg1_carry__1_i_1
       (.I0(read_reg2[30]),
        .I1(read_reg2[31]),
        .O(read_reg1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_10
       (.I0(i_reg__0[27]),
        .O(read_reg1_carry__1_i_10_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_11
       (.I0(i_reg__0[26]),
        .O(read_reg1_carry__1_i_11_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_12
       (.I0(i_reg__0[25]),
        .O(read_reg1_carry__1_i_12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry__1_i_2
       (.I0(read_reg2[29]),
        .I1(read_reg2[28]),
        .I2(read_reg2[27]),
        .O(read_reg1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry__1_i_3
       (.I0(read_reg2[26]),
        .I1(read_reg2[25]),
        .I2(read_reg2[24]),
        .O(read_reg1_carry__1_i_3_n_0));
  CARRY4 read_reg1_carry__1_i_4
       (.CI(read_reg1_carry__1_i_5_n_0),
        .CO({NLW_read_reg1_carry__1_i_4_CO_UNCONNECTED[3:2],read_reg1_carry__1_i_4_n_2,read_reg1_carry__1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_read_reg1_carry__1_i_4_O_UNCONNECTED[3],read_reg2[31:29]}),
        .S({1'b0,read_reg1_carry__1_i_6_n_0,read_reg1_carry__1_i_7_n_0,read_reg1_carry__1_i_8_n_0}));
  CARRY4 read_reg1_carry__1_i_5
       (.CI(read_reg1_carry__0_i_5_n_0),
        .CO({read_reg1_carry__1_i_5_n_0,read_reg1_carry__1_i_5_n_1,read_reg1_carry__1_i_5_n_2,read_reg1_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[28:25]),
        .S({read_reg1_carry__1_i_9_n_0,read_reg1_carry__1_i_10_n_0,read_reg1_carry__1_i_11_n_0,read_reg1_carry__1_i_12_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_6
       (.I0(i_reg__0[31]),
        .O(read_reg1_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_7
       (.I0(i_reg__0[30]),
        .O(read_reg1_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_8
       (.I0(i_reg__0[29]),
        .O(read_reg1_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry__1_i_9
       (.I0(i_reg__0[28]),
        .O(read_reg1_carry__1_i_9_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry_i_1
       (.I0(read_reg2[11]),
        .I1(read_reg2[10]),
        .I2(read_reg2[9]),
        .O(read_reg1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_10
       (.I0(i_reg__0[10]),
        .O(read_reg1_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_11
       (.I0(i_reg__0[9]),
        .O(read_reg1_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_12
       (.I0(i_reg__0[8]),
        .O(read_reg1_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_13
       (.I0(i_reg__0[7]),
        .O(read_reg1_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_14
       (.I0(i_reg__0[6]),
        .O(read_reg1_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_15
       (.I0(i_reg[5]),
        .O(read_reg1_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_16
       (.I0(i_reg[4]),
        .O(read_reg1_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_17
       (.I0(i_reg[3]),
        .O(read_reg1_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_18
       (.I0(i_reg[2]),
        .O(read_reg1_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_19
       (.I0(i_reg[1]),
        .O(read_reg1_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    read_reg1_carry_i_2
       (.I0(read_reg2[8]),
        .I1(read_reg2[7]),
        .I2(read_reg2[6]),
        .O(read_reg1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    read_reg1_carry_i_3
       (.I0(read_reg2[5]),
        .I1(read_reg2[4]),
        .I2(read_reg2[3]),
        .O(read_reg1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    read_reg1_carry_i_4
       (.I0(i_reg[0]),
        .I1(read_reg2[2]),
        .I2(read_reg2[1]),
        .O(read_reg1_carry_i_4_n_0));
  CARRY4 read_reg1_carry_i_5
       (.CI(read_reg1_carry_i_6_n_0),
        .CO({read_reg1_carry_i_5_n_0,read_reg1_carry_i_5_n_1,read_reg1_carry_i_5_n_2,read_reg1_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[12:9]),
        .S({read_reg1_carry_i_8_n_0,read_reg1_carry_i_9_n_0,read_reg1_carry_i_10_n_0,read_reg1_carry_i_11_n_0}));
  CARRY4 read_reg1_carry_i_6
       (.CI(read_reg1_carry_i_7_n_0),
        .CO({read_reg1_carry_i_6_n_0,read_reg1_carry_i_6_n_1,read_reg1_carry_i_6_n_2,read_reg1_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[8:5]),
        .S({read_reg1_carry_i_12_n_0,read_reg1_carry_i_13_n_0,read_reg1_carry_i_14_n_0,read_reg1_carry_i_15_n_0}));
  CARRY4 read_reg1_carry_i_7
       (.CI(1'b0),
        .CO({read_reg1_carry_i_7_n_0,read_reg1_carry_i_7_n_1,read_reg1_carry_i_7_n_2,read_reg1_carry_i_7_n_3}),
        .CYINIT(i_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_reg2[4:1]),
        .S({read_reg1_carry_i_16_n_0,read_reg1_carry_i_17_n_0,read_reg1_carry_i_18_n_0,read_reg1_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_8
       (.I0(i_reg__0[12]),
        .O(read_reg1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    read_reg1_carry_i_9
       (.I0(i_reg__0[11]),
        .O(read_reg1_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    read_reg_i_1
       (.I0(read_reg),
        .I1(p_0_in__0),
        .O(read_reg_i_1_n_0));
  FDPE read_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_reg_i_1_n_0),
        .PRE(\addr_out[9]_i_2_n_0 ),
        .Q(read_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
