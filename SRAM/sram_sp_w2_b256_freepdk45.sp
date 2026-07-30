**************************************************
* OpenRAM generated memory.
* Words: 256
* Data bits: 2
* Banks: 1
* Column mux: 8:1
**************************************************
* File: DFFPOSX1.pex.netlist
* Created: Wed Jan  2 18:36:24 2008
* Program "Calibre xRC"
* Version "v2007.2_34.24"
*
.subckt dff D Q clk vdd gnd
*
MM21 Q a_66_6# gnd gnd NMOS_VTG L=5e-08 W=5e-07
MM19 a_76_6# a_2_6# a_66_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM20 gnd Q a_76_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM18 a_66_6# clk a_61_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM17 a_61_6# a_34_4# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM10 gnd clk a_2_6# gnd NMOS_VTG L=5e-08 W=5e-07
MM16 a_34_4# a_22_6# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM15 gnd a_34_4# a_31_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM14 a_31_6# clk a_22_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM13 a_22_6# a_2_6# a_17_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM12 a_17_6# D gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM11 Q a_66_6# vdd vdd PMOS_VTG L=5e-08 W=1e-06
MM9 vdd Q a_76_84# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM8 a_76_84# clk a_66_6# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM7 a_66_6# a_2_6# a_61_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM6 a_61_74# a_34_4# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM0 vdd clk a_2_6# vdd PMOS_VTG L=5e-08 W=1e-06
MM5 a_34_4# a_22_6# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM4 vdd a_34_4# a_31_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM3 a_31_74# a_2_6# a_22_6# vdd PMOS_VTG L=5e-08 W=5e-07
MM2 a_22_6# clk a_17_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM1 a_17_74# D vdd vdd PMOS_VTG L=5e-08 W=5e-07
* c_9 a_66_6# 0 0.271997f
* c_20 clk 0 0.350944f
* c_27 Q 0 0.202617f
* c_32 a_76_84# 0 0.0210573f
* c_38 a_76_6# 0 0.0204911f
* c_45 a_34_4# 0 0.172306f
* c_55 a_2_6# 0 0.283119f
* c_59 a_22_6# 0 0.157312f
* c_64 D 0 0.0816386f
* c_73 gnd 0 0.254131f
* c_81 vdd 0 0.23624f
*
*.include "dff.pex.netlist.dff.pxi"
*
.ends
*
*

.SUBCKT row_addr_dff din_0 din_1 din_2 din_3 din_4 dout_0 dout_1 dout_2 dout_3 dout_4 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 5 cols: 1
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r1_c0 din_1 dout_1 clk vdd gnd dff
Xdff_r2_c0 din_2 dout_2 clk vdd gnd dff
Xdff_r3_c0 din_3 dout_3 clk vdd gnd dff
Xdff_r4_c0 din_4 dout_4 clk vdd gnd dff
.ENDS row_addr_dff

.SUBCKT col_addr_dff din_0 din_1 din_2 dout_0 dout_1 dout_2 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 3
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r0_c1 din_1 dout_1 clk vdd gnd dff
Xdff_r0_c2 din_2 dout_2 clk vdd gnd dff
.ENDS col_addr_dff

.SUBCKT data_dff din_0 din_1 dout_0 dout_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 2
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r0_c1 din_1 dout_1 clk vdd gnd dff
.ENDS data_dff

* ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT precharge_0 bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS precharge_0

.SUBCKT precharge_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* INPUT : en_bar 
* POWER : vdd 
* cols: 17 size: 1 bl: bl br: br
Xpre_column_0 bl_0 br_0 en_bar vdd precharge_0
Xpre_column_1 bl_1 br_1 en_bar vdd precharge_0
Xpre_column_2 bl_2 br_2 en_bar vdd precharge_0
Xpre_column_3 bl_3 br_3 en_bar vdd precharge_0
Xpre_column_4 bl_4 br_4 en_bar vdd precharge_0
Xpre_column_5 bl_5 br_5 en_bar vdd precharge_0
Xpre_column_6 bl_6 br_6 en_bar vdd precharge_0
Xpre_column_7 bl_7 br_7 en_bar vdd precharge_0
Xpre_column_8 bl_8 br_8 en_bar vdd precharge_0
Xpre_column_9 bl_9 br_9 en_bar vdd precharge_0
Xpre_column_10 bl_10 br_10 en_bar vdd precharge_0
Xpre_column_11 bl_11 br_11 en_bar vdd precharge_0
Xpre_column_12 bl_12 br_12 en_bar vdd precharge_0
Xpre_column_13 bl_13 br_13 en_bar vdd precharge_0
Xpre_column_14 bl_14 br_14 en_bar vdd precharge_0
Xpre_column_15 bl_15 br_15 en_bar vdd precharge_0
Xpre_column_16 bl_16 br_16 en_bar vdd precharge_0
.ENDS precharge_array_0

.SUBCKT sense_amp bl br dout en vdd gnd
M_1 dout net_1 vdd vdd pmos_vtg w=540.0n l=50.0n
M_3 net_1 dout vdd vdd pmos_vtg w=540.0n l=50.0n
M_2 dout net_1 net_2 gnd nmos_vtg w=270.0n l=50.0n
M_8 net_1 dout net_2 gnd nmos_vtg w=270.0n l=50.0n
M_5 bl en dout vdd pmos_vtg w=720.0n l=50.0n
M_6 br en net_1 vdd pmos_vtg w=720.0n l=50.0n
M_7 net_2 en gnd gnd nmos_vtg w=270.0n l=50.0n
.ENDS sense_amp


.SUBCKT sense_amp_array_0 data_0 bl_0 br_0 data_1 bl_1 br_1 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* words_per_row: 8
Xsa_d0 bl_0 br_0 data_0 en vdd gnd sense_amp
Xsa_d1 bl_1 br_1 data_1 en vdd gnd sense_amp
.ENDS sense_amp_array_0

* ptx M{0} {1} nmos_vtg m=1 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p

.SUBCKT single_level_column_mux_0 bl br bl_out br_out sel gnd
* INOUT : bl 
* INOUT : br 
* INOUT : bl_out 
* INOUT : br_out 
* INOUT : sel 
* INOUT : gnd 
Mmux_tx1 bl sel bl_out gnd nmos_vtg m=1 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p
Mmux_tx2 br sel br_out gnd nmos_vtg m=1 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p
.ENDS single_level_column_mux_0

.SUBCKT single_level_column_mux_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 sel_0 sel_1 sel_2 sel_3 sel_4 sel_5 sel_6 sel_7 bl_out_0 br_out_0 bl_out_1 br_out_1 gnd
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : sel_0 
* INOUT : sel_1 
* INOUT : sel_2 
* INOUT : sel_3 
* INOUT : sel_4 
* INOUT : sel_5 
* INOUT : sel_6 
* INOUT : sel_7 
* INOUT : bl_out_0 
* INOUT : br_out_0 
* INOUT : bl_out_1 
* INOUT : br_out_1 
* INOUT : gnd 
* cols: 16 word_size: 2 bl: bl br: br
XXMUX0 bl_0 br_0 bl_out_0 br_out_0 sel_0 gnd single_level_column_mux_0
XXMUX1 bl_1 br_1 bl_out_0 br_out_0 sel_1 gnd single_level_column_mux_0
XXMUX2 bl_2 br_2 bl_out_0 br_out_0 sel_2 gnd single_level_column_mux_0
XXMUX3 bl_3 br_3 bl_out_0 br_out_0 sel_3 gnd single_level_column_mux_0
XXMUX4 bl_4 br_4 bl_out_0 br_out_0 sel_4 gnd single_level_column_mux_0
XXMUX5 bl_5 br_5 bl_out_0 br_out_0 sel_5 gnd single_level_column_mux_0
XXMUX6 bl_6 br_6 bl_out_0 br_out_0 sel_6 gnd single_level_column_mux_0
XXMUX7 bl_7 br_7 bl_out_0 br_out_0 sel_7 gnd single_level_column_mux_0
XXMUX8 bl_8 br_8 bl_out_1 br_out_1 sel_0 gnd single_level_column_mux_0
XXMUX9 bl_9 br_9 bl_out_1 br_out_1 sel_1 gnd single_level_column_mux_0
XXMUX10 bl_10 br_10 bl_out_1 br_out_1 sel_2 gnd single_level_column_mux_0
XXMUX11 bl_11 br_11 bl_out_1 br_out_1 sel_3 gnd single_level_column_mux_0
XXMUX12 bl_12 br_12 bl_out_1 br_out_1 sel_4 gnd single_level_column_mux_0
XXMUX13 bl_13 br_13 bl_out_1 br_out_1 sel_5 gnd single_level_column_mux_0
XXMUX14 bl_14 br_14 bl_out_1 br_out_1 sel_6 gnd single_level_column_mux_0
XXMUX15 bl_15 br_15 bl_out_1 br_out_1 sel_7 gnd single_level_column_mux_0
.ENDS single_level_column_mux_array_0

.SUBCKT write_driver din bl br en vdd gnd
*inverters for enable and data input
minP bl_bar din vdd vdd pmos_vtg w=360.000000n l=50.000000n
minN bl_bar din gnd gnd nmos_vtg w=180.000000n l=50.000000n
moutP en_bar en vdd vdd pmos_vtg w=360.000000n l=50.000000n
moutN en_bar en gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BL
mout0P int1 bl_bar vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout0P2 bl en_bar int1 vdd pmos_vtg w=360.000000n l=50.000000n
mout0N bl en int2 gnd nmos_vtg w=180.000000n l=50.000000n
mout0N2 int2 bl_bar gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BR
mout1P int3 din vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout1P2 br en_bar int3 vdd pmos_vtg w=360.000000n l=50.000000n
mout1N br en int4 gnd nmos_vtg w=180.000000n l=50.000000n
mout1N2 int4 din gnd gnd nmos_vtg w=180.000000n l=50.000000n
.ENDS write_driver


.SUBCKT write_driver_array_0 data_0 data_1 bl_0 br_0 bl_1 br_1 en vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 2
Xwrite_driver0 data_0 bl_0 br_0 en vdd gnd write_driver
Xwrite_driver8 data_1 bl_1 br_1 en vdd gnd write_driver
.ENDS write_driver_array_0

.SUBCKT port_data_0 rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 dout_0 dout_1 din_0 din_1 sel_0 sel_1 sel_2 sel_3 sel_4 sel_5 sel_6 sel_7 s_en p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : sel_0 
* INPUT : sel_1 
* INPUT : sel_2 
* INPUT : sel_3 
* INPUT : sel_4 
* INPUT : sel_5 
* INPUT : sel_6 
* INPUT : sel_7 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0 rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 p_en_bar vdd precharge_array_0
Xsense_amp_array0 dout_0 bl_out_0 br_out_0 dout_1 bl_out_1 br_out_1 s_en vdd gnd sense_amp_array_0
Xwrite_driver_array0 din_0 din_1 bl_out_0 br_out_0 bl_out_1 br_out_1 w_en vdd gnd write_driver_array_0
Xcolumn_mux_array0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 sel_0 sel_1 sel_2 sel_3 sel_4 sel_5 sel_6 sel_7 bl_out_0 br_out_0 bl_out_1 br_out_1 gnd single_level_column_mux_array_0
.ENDS port_data_0

* ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

* ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT pinv_0 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_0

* ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT pnand2_0 A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pnand2_0

.SUBCKT pnand3_0 A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pnand3_0

.SUBCKT hierarchical_predecode2x4_0 in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv_0
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv_0
Xpre_nand_inv_0 Z_0 out_0 vdd gnd pinv_0
Xpre_nand_inv_1 Z_1 out_1 vdd gnd pinv_0
Xpre_nand_inv_2 Z_2 out_2 vdd gnd pinv_0
Xpre_nand_inv_3 Z_3 out_3 vdd gnd pinv_0
XXpre2x4_nand_0 inbar_0 inbar_1 Z_0 vdd gnd pnand2_0
XXpre2x4_nand_1 in_0 inbar_1 Z_1 vdd gnd pnand2_0
XXpre2x4_nand_2 inbar_0 in_1 Z_2 vdd gnd pnand2_0
XXpre2x4_nand_3 in_0 in_1 Z_3 vdd gnd pnand2_0
.ENDS hierarchical_predecode2x4_0

.SUBCKT hierarchical_predecode3x8_0 in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv_0
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv_0
Xpre_inv_2 in_2 inbar_2 vdd gnd pinv_0
Xpre_nand_inv_0 Z_0 out_0 vdd gnd pinv_0
Xpre_nand_inv_1 Z_1 out_1 vdd gnd pinv_0
Xpre_nand_inv_2 Z_2 out_2 vdd gnd pinv_0
Xpre_nand_inv_3 Z_3 out_3 vdd gnd pinv_0
Xpre_nand_inv_4 Z_4 out_4 vdd gnd pinv_0
Xpre_nand_inv_5 Z_5 out_5 vdd gnd pinv_0
Xpre_nand_inv_6 Z_6 out_6 vdd gnd pinv_0
Xpre_nand_inv_7 Z_7 out_7 vdd gnd pinv_0
XXpre3x8_nand_0 inbar_0 inbar_1 inbar_2 Z_0 vdd gnd pnand3_0
XXpre3x8_nand_1 in_0 inbar_1 inbar_2 Z_1 vdd gnd pnand3_0
XXpre3x8_nand_2 inbar_0 in_1 inbar_2 Z_2 vdd gnd pnand3_0
XXpre3x8_nand_3 in_0 in_1 inbar_2 Z_3 vdd gnd pnand3_0
XXpre3x8_nand_4 inbar_0 inbar_1 in_2 Z_4 vdd gnd pnand3_0
XXpre3x8_nand_5 in_0 inbar_1 in_2 Z_5 vdd gnd pnand3_0
XXpre3x8_nand_6 inbar_0 in_1 in_2 Z_6 vdd gnd pnand3_0
XXpre3x8_nand_7 in_0 in_1 in_2 Z_7 vdd gnd pnand3_0
.ENDS hierarchical_predecode3x8_0

.SUBCKT hierarchical_decoder_0 addr_0 addr_1 addr_2 addr_3 addr_4 decode_0 decode_1 decode_2 decode_3 decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10 decode_11 decode_12 decode_13 decode_14 decode_15 decode_16 decode_17 decode_18 decode_19 decode_20 decode_21 decode_22 decode_23 decode_24 decode_25 decode_26 decode_27 decode_28 decode_29 decode_30 decode_31 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* OUTPUT: decode_16 
* OUTPUT: decode_17 
* OUTPUT: decode_18 
* OUTPUT: decode_19 
* OUTPUT: decode_20 
* OUTPUT: decode_21 
* OUTPUT: decode_22 
* OUTPUT: decode_23 
* OUTPUT: decode_24 
* OUTPUT: decode_25 
* OUTPUT: decode_26 
* OUTPUT: decode_27 
* OUTPUT: decode_28 
* OUTPUT: decode_29 
* OUTPUT: decode_30 
* OUTPUT: decode_31 
* POWER : vdd 
* GROUND: gnd 
Xpre_0 addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd hierarchical_predecode2x4_0
Xpre3x8_0 addr_2 addr_3 addr_4 out_4 out_5 out_6 out_7 out_8 out_9 out_10 out_11 vdd gnd hierarchical_predecode3x8_0
XDEC_NAND_0 out_0 out_4 Z_0 vdd gnd pnand2_0
XDEC_NAND_4 out_0 out_5 Z_4 vdd gnd pnand2_0
XDEC_NAND_8 out_0 out_6 Z_8 vdd gnd pnand2_0
XDEC_NAND_12 out_0 out_7 Z_12 vdd gnd pnand2_0
XDEC_NAND_16 out_0 out_8 Z_16 vdd gnd pnand2_0
XDEC_NAND_20 out_0 out_9 Z_20 vdd gnd pnand2_0
XDEC_NAND_24 out_0 out_10 Z_24 vdd gnd pnand2_0
XDEC_NAND_28 out_0 out_11 Z_28 vdd gnd pnand2_0
XDEC_NAND_1 out_1 out_4 Z_1 vdd gnd pnand2_0
XDEC_NAND_5 out_1 out_5 Z_5 vdd gnd pnand2_0
XDEC_NAND_9 out_1 out_6 Z_9 vdd gnd pnand2_0
XDEC_NAND_13 out_1 out_7 Z_13 vdd gnd pnand2_0
XDEC_NAND_17 out_1 out_8 Z_17 vdd gnd pnand2_0
XDEC_NAND_21 out_1 out_9 Z_21 vdd gnd pnand2_0
XDEC_NAND_25 out_1 out_10 Z_25 vdd gnd pnand2_0
XDEC_NAND_29 out_1 out_11 Z_29 vdd gnd pnand2_0
XDEC_NAND_2 out_2 out_4 Z_2 vdd gnd pnand2_0
XDEC_NAND_6 out_2 out_5 Z_6 vdd gnd pnand2_0
XDEC_NAND_10 out_2 out_6 Z_10 vdd gnd pnand2_0
XDEC_NAND_14 out_2 out_7 Z_14 vdd gnd pnand2_0
XDEC_NAND_18 out_2 out_8 Z_18 vdd gnd pnand2_0
XDEC_NAND_22 out_2 out_9 Z_22 vdd gnd pnand2_0
XDEC_NAND_26 out_2 out_10 Z_26 vdd gnd pnand2_0
XDEC_NAND_30 out_2 out_11 Z_30 vdd gnd pnand2_0
XDEC_NAND_3 out_3 out_4 Z_3 vdd gnd pnand2_0
XDEC_NAND_7 out_3 out_5 Z_7 vdd gnd pnand2_0
XDEC_NAND_11 out_3 out_6 Z_11 vdd gnd pnand2_0
XDEC_NAND_15 out_3 out_7 Z_15 vdd gnd pnand2_0
XDEC_NAND_19 out_3 out_8 Z_19 vdd gnd pnand2_0
XDEC_NAND_23 out_3 out_9 Z_23 vdd gnd pnand2_0
XDEC_NAND_27 out_3 out_10 Z_27 vdd gnd pnand2_0
XDEC_NAND_31 out_3 out_11 Z_31 vdd gnd pnand2_0
XDEC_INV_0 Z_0 decode_0 vdd gnd pinv_0
XDEC_INV_1 Z_1 decode_1 vdd gnd pinv_0
XDEC_INV_2 Z_2 decode_2 vdd gnd pinv_0
XDEC_INV_3 Z_3 decode_3 vdd gnd pinv_0
XDEC_INV_4 Z_4 decode_4 vdd gnd pinv_0
XDEC_INV_5 Z_5 decode_5 vdd gnd pinv_0
XDEC_INV_6 Z_6 decode_6 vdd gnd pinv_0
XDEC_INV_7 Z_7 decode_7 vdd gnd pinv_0
XDEC_INV_8 Z_8 decode_8 vdd gnd pinv_0
XDEC_INV_9 Z_9 decode_9 vdd gnd pinv_0
XDEC_INV_10 Z_10 decode_10 vdd gnd pinv_0
XDEC_INV_11 Z_11 decode_11 vdd gnd pinv_0
XDEC_INV_12 Z_12 decode_12 vdd gnd pinv_0
XDEC_INV_13 Z_13 decode_13 vdd gnd pinv_0
XDEC_INV_14 Z_14 decode_14 vdd gnd pinv_0
XDEC_INV_15 Z_15 decode_15 vdd gnd pinv_0
XDEC_INV_16 Z_16 decode_16 vdd gnd pinv_0
XDEC_INV_17 Z_17 decode_17 vdd gnd pinv_0
XDEC_INV_18 Z_18 decode_18 vdd gnd pinv_0
XDEC_INV_19 Z_19 decode_19 vdd gnd pinv_0
XDEC_INV_20 Z_20 decode_20 vdd gnd pinv_0
XDEC_INV_21 Z_21 decode_21 vdd gnd pinv_0
XDEC_INV_22 Z_22 decode_22 vdd gnd pinv_0
XDEC_INV_23 Z_23 decode_23 vdd gnd pinv_0
XDEC_INV_24 Z_24 decode_24 vdd gnd pinv_0
XDEC_INV_25 Z_25 decode_25 vdd gnd pinv_0
XDEC_INV_26 Z_26 decode_26 vdd gnd pinv_0
XDEC_INV_27 Z_27 decode_27 vdd gnd pinv_0
XDEC_INV_28 Z_28 decode_28 vdd gnd pinv_0
XDEC_INV_29 Z_29 decode_29 vdd gnd pinv_0
XDEC_INV_30 Z_30 decode_30 vdd gnd pinv_0
XDEC_INV_31 Z_31 decode_31 vdd gnd pinv_0
.ENDS hierarchical_decoder_0

.SUBCKT pinv_1 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_1

* ptx M{0} {1} nmos_vtg m=2 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

* ptx M{0} {1} pmos_vtg m=2 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT pinv_2 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_2

* ptx M{0} {1} nmos_vtg m=4 w=0.1125u l=0.05u pd=0.33u ps=0.33u as=0.01p ad=0.01p

* ptx M{0} {1} pmos_vtg m=4 w=0.3375u l=0.05u pd=0.78u ps=0.78u as=0.04p ad=0.04p

.SUBCKT pinv_3 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.3375u l=0.05u pd=0.78u ps=0.78u as=0.04p ad=0.04p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.1125u l=0.05u pd=0.33u ps=0.33u as=0.01p ad=0.01p
.ENDS pinv_3

.SUBCKT pdriver_0 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 2, 5]
Xbuf_inv1 A Zb1_int vdd gnd pinv_1
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_2
Xbuf_inv3 Zb2_int Z vdd gnd pinv_3
.ENDS pdriver_0

.SUBCKT pinv_4 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_4

.SUBCKT pnand2 A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pnand2

.SUBCKT wordline_driver_0 in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12 in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23 in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* INPUT : in_16 
* INPUT : in_17 
* INPUT : in_18 
* INPUT : in_19 
* INPUT : in_20 
* INPUT : in_21 
* INPUT : in_22 
* INPUT : in_23 
* INPUT : in_24 
* INPUT : in_25 
* INPUT : in_26 
* INPUT : in_27 
* INPUT : in_28 
* INPUT : in_29 
* INPUT : in_30 
* INPUT : in_31 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 16
Xwl_driver_nand0 en in_0 wl_bar_0 vdd gnd pnand2
Xwl_driver_inv0 wl_bar_0 wl_0 vdd gnd pdriver_0
Xwl_driver_nand1 en in_1 wl_bar_1 vdd gnd pnand2
Xwl_driver_inv1 wl_bar_1 wl_1 vdd gnd pdriver_0
Xwl_driver_nand2 en in_2 wl_bar_2 vdd gnd pnand2
Xwl_driver_inv2 wl_bar_2 wl_2 vdd gnd pdriver_0
Xwl_driver_nand3 en in_3 wl_bar_3 vdd gnd pnand2
Xwl_driver_inv3 wl_bar_3 wl_3 vdd gnd pdriver_0
Xwl_driver_nand4 en in_4 wl_bar_4 vdd gnd pnand2
Xwl_driver_inv4 wl_bar_4 wl_4 vdd gnd pdriver_0
Xwl_driver_nand5 en in_5 wl_bar_5 vdd gnd pnand2
Xwl_driver_inv5 wl_bar_5 wl_5 vdd gnd pdriver_0
Xwl_driver_nand6 en in_6 wl_bar_6 vdd gnd pnand2
Xwl_driver_inv6 wl_bar_6 wl_6 vdd gnd pdriver_0
Xwl_driver_nand7 en in_7 wl_bar_7 vdd gnd pnand2
Xwl_driver_inv7 wl_bar_7 wl_7 vdd gnd pdriver_0
Xwl_driver_nand8 en in_8 wl_bar_8 vdd gnd pnand2
Xwl_driver_inv8 wl_bar_8 wl_8 vdd gnd pdriver_0
Xwl_driver_nand9 en in_9 wl_bar_9 vdd gnd pnand2
Xwl_driver_inv9 wl_bar_9 wl_9 vdd gnd pdriver_0
Xwl_driver_nand10 en in_10 wl_bar_10 vdd gnd pnand2
Xwl_driver_inv10 wl_bar_10 wl_10 vdd gnd pdriver_0
Xwl_driver_nand11 en in_11 wl_bar_11 vdd gnd pnand2
Xwl_driver_inv11 wl_bar_11 wl_11 vdd gnd pdriver_0
Xwl_driver_nand12 en in_12 wl_bar_12 vdd gnd pnand2
Xwl_driver_inv12 wl_bar_12 wl_12 vdd gnd pdriver_0
Xwl_driver_nand13 en in_13 wl_bar_13 vdd gnd pnand2
Xwl_driver_inv13 wl_bar_13 wl_13 vdd gnd pdriver_0
Xwl_driver_nand14 en in_14 wl_bar_14 vdd gnd pnand2
Xwl_driver_inv14 wl_bar_14 wl_14 vdd gnd pdriver_0
Xwl_driver_nand15 en in_15 wl_bar_15 vdd gnd pnand2
Xwl_driver_inv15 wl_bar_15 wl_15 vdd gnd pdriver_0
Xwl_driver_nand16 en in_16 wl_bar_16 vdd gnd pnand2
Xwl_driver_inv16 wl_bar_16 wl_16 vdd gnd pdriver_0
Xwl_driver_nand17 en in_17 wl_bar_17 vdd gnd pnand2
Xwl_driver_inv17 wl_bar_17 wl_17 vdd gnd pdriver_0
Xwl_driver_nand18 en in_18 wl_bar_18 vdd gnd pnand2
Xwl_driver_inv18 wl_bar_18 wl_18 vdd gnd pdriver_0
Xwl_driver_nand19 en in_19 wl_bar_19 vdd gnd pnand2
Xwl_driver_inv19 wl_bar_19 wl_19 vdd gnd pdriver_0
Xwl_driver_nand20 en in_20 wl_bar_20 vdd gnd pnand2
Xwl_driver_inv20 wl_bar_20 wl_20 vdd gnd pdriver_0
Xwl_driver_nand21 en in_21 wl_bar_21 vdd gnd pnand2
Xwl_driver_inv21 wl_bar_21 wl_21 vdd gnd pdriver_0
Xwl_driver_nand22 en in_22 wl_bar_22 vdd gnd pnand2
Xwl_driver_inv22 wl_bar_22 wl_22 vdd gnd pdriver_0
Xwl_driver_nand23 en in_23 wl_bar_23 vdd gnd pnand2
Xwl_driver_inv23 wl_bar_23 wl_23 vdd gnd pdriver_0
Xwl_driver_nand24 en in_24 wl_bar_24 vdd gnd pnand2
Xwl_driver_inv24 wl_bar_24 wl_24 vdd gnd pdriver_0
Xwl_driver_nand25 en in_25 wl_bar_25 vdd gnd pnand2
Xwl_driver_inv25 wl_bar_25 wl_25 vdd gnd pdriver_0
Xwl_driver_nand26 en in_26 wl_bar_26 vdd gnd pnand2
Xwl_driver_inv26 wl_bar_26 wl_26 vdd gnd pdriver_0
Xwl_driver_nand27 en in_27 wl_bar_27 vdd gnd pnand2
Xwl_driver_inv27 wl_bar_27 wl_27 vdd gnd pdriver_0
Xwl_driver_nand28 en in_28 wl_bar_28 vdd gnd pnand2
Xwl_driver_inv28 wl_bar_28 wl_28 vdd gnd pdriver_0
Xwl_driver_nand29 en in_29 wl_bar_29 vdd gnd pnand2
Xwl_driver_inv29 wl_bar_29 wl_29 vdd gnd pdriver_0
Xwl_driver_nand30 en in_30 wl_bar_30 vdd gnd pnand2
Xwl_driver_inv30 wl_bar_30 wl_30 vdd gnd pdriver_0
Xwl_driver_nand31 en in_31 wl_bar_31 vdd gnd pnand2
Xwl_driver_inv31 wl_bar_31 wl_31 vdd gnd pdriver_0
.ENDS wordline_driver_0

.SUBCKT port_address_0 addr_0 addr_1 addr_2 addr_3 addr_4 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder addr_0 addr_1 addr_2 addr_3 addr_4 dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31 vdd gnd hierarchical_decoder_0
Xwordline_driver dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_en vdd gnd wordline_driver_0
.ENDS port_address_0

.SUBCKT cell_6t bl br wl vdd gnd
* Inverter 1
MM0 Qbar Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 Qbar Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q Qbar gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Qbar vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl Qbar gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_6t


.SUBCKT bitcell_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 vdd gnd
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INPUT : wl_0 
* INPUT : wl_1 
* INPUT : wl_2 
* INPUT : wl_3 
* INPUT : wl_4 
* INPUT : wl_5 
* INPUT : wl_6 
* INPUT : wl_7 
* INPUT : wl_8 
* INPUT : wl_9 
* INPUT : wl_10 
* INPUT : wl_11 
* INPUT : wl_12 
* INPUT : wl_13 
* INPUT : wl_14 
* INPUT : wl_15 
* INPUT : wl_16 
* INPUT : wl_17 
* INPUT : wl_18 
* INPUT : wl_19 
* INPUT : wl_20 
* INPUT : wl_21 
* INPUT : wl_22 
* INPUT : wl_23 
* INPUT : wl_24 
* INPUT : wl_25 
* INPUT : wl_26 
* INPUT : wl_27 
* INPUT : wl_28 
* INPUT : wl_29 
* INPUT : wl_30 
* INPUT : wl_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 16
Xbit_r0_c0 bl_0 br_0 wl_0 vdd gnd cell_6t
Xbit_r1_c0 bl_0 br_0 wl_1 vdd gnd cell_6t
Xbit_r2_c0 bl_0 br_0 wl_2 vdd gnd cell_6t
Xbit_r3_c0 bl_0 br_0 wl_3 vdd gnd cell_6t
Xbit_r4_c0 bl_0 br_0 wl_4 vdd gnd cell_6t
Xbit_r5_c0 bl_0 br_0 wl_5 vdd gnd cell_6t
Xbit_r6_c0 bl_0 br_0 wl_6 vdd gnd cell_6t
Xbit_r7_c0 bl_0 br_0 wl_7 vdd gnd cell_6t
Xbit_r8_c0 bl_0 br_0 wl_8 vdd gnd cell_6t
Xbit_r9_c0 bl_0 br_0 wl_9 vdd gnd cell_6t
Xbit_r10_c0 bl_0 br_0 wl_10 vdd gnd cell_6t
Xbit_r11_c0 bl_0 br_0 wl_11 vdd gnd cell_6t
Xbit_r12_c0 bl_0 br_0 wl_12 vdd gnd cell_6t
Xbit_r13_c0 bl_0 br_0 wl_13 vdd gnd cell_6t
Xbit_r14_c0 bl_0 br_0 wl_14 vdd gnd cell_6t
Xbit_r15_c0 bl_0 br_0 wl_15 vdd gnd cell_6t
Xbit_r16_c0 bl_0 br_0 wl_16 vdd gnd cell_6t
Xbit_r17_c0 bl_0 br_0 wl_17 vdd gnd cell_6t
Xbit_r18_c0 bl_0 br_0 wl_18 vdd gnd cell_6t
Xbit_r19_c0 bl_0 br_0 wl_19 vdd gnd cell_6t
Xbit_r20_c0 bl_0 br_0 wl_20 vdd gnd cell_6t
Xbit_r21_c0 bl_0 br_0 wl_21 vdd gnd cell_6t
Xbit_r22_c0 bl_0 br_0 wl_22 vdd gnd cell_6t
Xbit_r23_c0 bl_0 br_0 wl_23 vdd gnd cell_6t
Xbit_r24_c0 bl_0 br_0 wl_24 vdd gnd cell_6t
Xbit_r25_c0 bl_0 br_0 wl_25 vdd gnd cell_6t
Xbit_r26_c0 bl_0 br_0 wl_26 vdd gnd cell_6t
Xbit_r27_c0 bl_0 br_0 wl_27 vdd gnd cell_6t
Xbit_r28_c0 bl_0 br_0 wl_28 vdd gnd cell_6t
Xbit_r29_c0 bl_0 br_0 wl_29 vdd gnd cell_6t
Xbit_r30_c0 bl_0 br_0 wl_30 vdd gnd cell_6t
Xbit_r31_c0 bl_0 br_0 wl_31 vdd gnd cell_6t
Xbit_r0_c1 bl_1 br_1 wl_0 vdd gnd cell_6t
Xbit_r1_c1 bl_1 br_1 wl_1 vdd gnd cell_6t
Xbit_r2_c1 bl_1 br_1 wl_2 vdd gnd cell_6t
Xbit_r3_c1 bl_1 br_1 wl_3 vdd gnd cell_6t
Xbit_r4_c1 bl_1 br_1 wl_4 vdd gnd cell_6t
Xbit_r5_c1 bl_1 br_1 wl_5 vdd gnd cell_6t
Xbit_r6_c1 bl_1 br_1 wl_6 vdd gnd cell_6t
Xbit_r7_c1 bl_1 br_1 wl_7 vdd gnd cell_6t
Xbit_r8_c1 bl_1 br_1 wl_8 vdd gnd cell_6t
Xbit_r9_c1 bl_1 br_1 wl_9 vdd gnd cell_6t
Xbit_r10_c1 bl_1 br_1 wl_10 vdd gnd cell_6t
Xbit_r11_c1 bl_1 br_1 wl_11 vdd gnd cell_6t
Xbit_r12_c1 bl_1 br_1 wl_12 vdd gnd cell_6t
Xbit_r13_c1 bl_1 br_1 wl_13 vdd gnd cell_6t
Xbit_r14_c1 bl_1 br_1 wl_14 vdd gnd cell_6t
Xbit_r15_c1 bl_1 br_1 wl_15 vdd gnd cell_6t
Xbit_r16_c1 bl_1 br_1 wl_16 vdd gnd cell_6t
Xbit_r17_c1 bl_1 br_1 wl_17 vdd gnd cell_6t
Xbit_r18_c1 bl_1 br_1 wl_18 vdd gnd cell_6t
Xbit_r19_c1 bl_1 br_1 wl_19 vdd gnd cell_6t
Xbit_r20_c1 bl_1 br_1 wl_20 vdd gnd cell_6t
Xbit_r21_c1 bl_1 br_1 wl_21 vdd gnd cell_6t
Xbit_r22_c1 bl_1 br_1 wl_22 vdd gnd cell_6t
Xbit_r23_c1 bl_1 br_1 wl_23 vdd gnd cell_6t
Xbit_r24_c1 bl_1 br_1 wl_24 vdd gnd cell_6t
Xbit_r25_c1 bl_1 br_1 wl_25 vdd gnd cell_6t
Xbit_r26_c1 bl_1 br_1 wl_26 vdd gnd cell_6t
Xbit_r27_c1 bl_1 br_1 wl_27 vdd gnd cell_6t
Xbit_r28_c1 bl_1 br_1 wl_28 vdd gnd cell_6t
Xbit_r29_c1 bl_1 br_1 wl_29 vdd gnd cell_6t
Xbit_r30_c1 bl_1 br_1 wl_30 vdd gnd cell_6t
Xbit_r31_c1 bl_1 br_1 wl_31 vdd gnd cell_6t
Xbit_r0_c2 bl_2 br_2 wl_0 vdd gnd cell_6t
Xbit_r1_c2 bl_2 br_2 wl_1 vdd gnd cell_6t
Xbit_r2_c2 bl_2 br_2 wl_2 vdd gnd cell_6t
Xbit_r3_c2 bl_2 br_2 wl_3 vdd gnd cell_6t
Xbit_r4_c2 bl_2 br_2 wl_4 vdd gnd cell_6t
Xbit_r5_c2 bl_2 br_2 wl_5 vdd gnd cell_6t
Xbit_r6_c2 bl_2 br_2 wl_6 vdd gnd cell_6t
Xbit_r7_c2 bl_2 br_2 wl_7 vdd gnd cell_6t
Xbit_r8_c2 bl_2 br_2 wl_8 vdd gnd cell_6t
Xbit_r9_c2 bl_2 br_2 wl_9 vdd gnd cell_6t
Xbit_r10_c2 bl_2 br_2 wl_10 vdd gnd cell_6t
Xbit_r11_c2 bl_2 br_2 wl_11 vdd gnd cell_6t
Xbit_r12_c2 bl_2 br_2 wl_12 vdd gnd cell_6t
Xbit_r13_c2 bl_2 br_2 wl_13 vdd gnd cell_6t
Xbit_r14_c2 bl_2 br_2 wl_14 vdd gnd cell_6t
Xbit_r15_c2 bl_2 br_2 wl_15 vdd gnd cell_6t
Xbit_r16_c2 bl_2 br_2 wl_16 vdd gnd cell_6t
Xbit_r17_c2 bl_2 br_2 wl_17 vdd gnd cell_6t
Xbit_r18_c2 bl_2 br_2 wl_18 vdd gnd cell_6t
Xbit_r19_c2 bl_2 br_2 wl_19 vdd gnd cell_6t
Xbit_r20_c2 bl_2 br_2 wl_20 vdd gnd cell_6t
Xbit_r21_c2 bl_2 br_2 wl_21 vdd gnd cell_6t
Xbit_r22_c2 bl_2 br_2 wl_22 vdd gnd cell_6t
Xbit_r23_c2 bl_2 br_2 wl_23 vdd gnd cell_6t
Xbit_r24_c2 bl_2 br_2 wl_24 vdd gnd cell_6t
Xbit_r25_c2 bl_2 br_2 wl_25 vdd gnd cell_6t
Xbit_r26_c2 bl_2 br_2 wl_26 vdd gnd cell_6t
Xbit_r27_c2 bl_2 br_2 wl_27 vdd gnd cell_6t
Xbit_r28_c2 bl_2 br_2 wl_28 vdd gnd cell_6t
Xbit_r29_c2 bl_2 br_2 wl_29 vdd gnd cell_6t
Xbit_r30_c2 bl_2 br_2 wl_30 vdd gnd cell_6t
Xbit_r31_c2 bl_2 br_2 wl_31 vdd gnd cell_6t
Xbit_r0_c3 bl_3 br_3 wl_0 vdd gnd cell_6t
Xbit_r1_c3 bl_3 br_3 wl_1 vdd gnd cell_6t
Xbit_r2_c3 bl_3 br_3 wl_2 vdd gnd cell_6t
Xbit_r3_c3 bl_3 br_3 wl_3 vdd gnd cell_6t
Xbit_r4_c3 bl_3 br_3 wl_4 vdd gnd cell_6t
Xbit_r5_c3 bl_3 br_3 wl_5 vdd gnd cell_6t
Xbit_r6_c3 bl_3 br_3 wl_6 vdd gnd cell_6t
Xbit_r7_c3 bl_3 br_3 wl_7 vdd gnd cell_6t
Xbit_r8_c3 bl_3 br_3 wl_8 vdd gnd cell_6t
Xbit_r9_c3 bl_3 br_3 wl_9 vdd gnd cell_6t
Xbit_r10_c3 bl_3 br_3 wl_10 vdd gnd cell_6t
Xbit_r11_c3 bl_3 br_3 wl_11 vdd gnd cell_6t
Xbit_r12_c3 bl_3 br_3 wl_12 vdd gnd cell_6t
Xbit_r13_c3 bl_3 br_3 wl_13 vdd gnd cell_6t
Xbit_r14_c3 bl_3 br_3 wl_14 vdd gnd cell_6t
Xbit_r15_c3 bl_3 br_3 wl_15 vdd gnd cell_6t
Xbit_r16_c3 bl_3 br_3 wl_16 vdd gnd cell_6t
Xbit_r17_c3 bl_3 br_3 wl_17 vdd gnd cell_6t
Xbit_r18_c3 bl_3 br_3 wl_18 vdd gnd cell_6t
Xbit_r19_c3 bl_3 br_3 wl_19 vdd gnd cell_6t
Xbit_r20_c3 bl_3 br_3 wl_20 vdd gnd cell_6t
Xbit_r21_c3 bl_3 br_3 wl_21 vdd gnd cell_6t
Xbit_r22_c3 bl_3 br_3 wl_22 vdd gnd cell_6t
Xbit_r23_c3 bl_3 br_3 wl_23 vdd gnd cell_6t
Xbit_r24_c3 bl_3 br_3 wl_24 vdd gnd cell_6t
Xbit_r25_c3 bl_3 br_3 wl_25 vdd gnd cell_6t
Xbit_r26_c3 bl_3 br_3 wl_26 vdd gnd cell_6t
Xbit_r27_c3 bl_3 br_3 wl_27 vdd gnd cell_6t
Xbit_r28_c3 bl_3 br_3 wl_28 vdd gnd cell_6t
Xbit_r29_c3 bl_3 br_3 wl_29 vdd gnd cell_6t
Xbit_r30_c3 bl_3 br_3 wl_30 vdd gnd cell_6t
Xbit_r31_c3 bl_3 br_3 wl_31 vdd gnd cell_6t
Xbit_r0_c4 bl_4 br_4 wl_0 vdd gnd cell_6t
Xbit_r1_c4 bl_4 br_4 wl_1 vdd gnd cell_6t
Xbit_r2_c4 bl_4 br_4 wl_2 vdd gnd cell_6t
Xbit_r3_c4 bl_4 br_4 wl_3 vdd gnd cell_6t
Xbit_r4_c4 bl_4 br_4 wl_4 vdd gnd cell_6t
Xbit_r5_c4 bl_4 br_4 wl_5 vdd gnd cell_6t
Xbit_r6_c4 bl_4 br_4 wl_6 vdd gnd cell_6t
Xbit_r7_c4 bl_4 br_4 wl_7 vdd gnd cell_6t
Xbit_r8_c4 bl_4 br_4 wl_8 vdd gnd cell_6t
Xbit_r9_c4 bl_4 br_4 wl_9 vdd gnd cell_6t
Xbit_r10_c4 bl_4 br_4 wl_10 vdd gnd cell_6t
Xbit_r11_c4 bl_4 br_4 wl_11 vdd gnd cell_6t
Xbit_r12_c4 bl_4 br_4 wl_12 vdd gnd cell_6t
Xbit_r13_c4 bl_4 br_4 wl_13 vdd gnd cell_6t
Xbit_r14_c4 bl_4 br_4 wl_14 vdd gnd cell_6t
Xbit_r15_c4 bl_4 br_4 wl_15 vdd gnd cell_6t
Xbit_r16_c4 bl_4 br_4 wl_16 vdd gnd cell_6t
Xbit_r17_c4 bl_4 br_4 wl_17 vdd gnd cell_6t
Xbit_r18_c4 bl_4 br_4 wl_18 vdd gnd cell_6t
Xbit_r19_c4 bl_4 br_4 wl_19 vdd gnd cell_6t
Xbit_r20_c4 bl_4 br_4 wl_20 vdd gnd cell_6t
Xbit_r21_c4 bl_4 br_4 wl_21 vdd gnd cell_6t
Xbit_r22_c4 bl_4 br_4 wl_22 vdd gnd cell_6t
Xbit_r23_c4 bl_4 br_4 wl_23 vdd gnd cell_6t
Xbit_r24_c4 bl_4 br_4 wl_24 vdd gnd cell_6t
Xbit_r25_c4 bl_4 br_4 wl_25 vdd gnd cell_6t
Xbit_r26_c4 bl_4 br_4 wl_26 vdd gnd cell_6t
Xbit_r27_c4 bl_4 br_4 wl_27 vdd gnd cell_6t
Xbit_r28_c4 bl_4 br_4 wl_28 vdd gnd cell_6t
Xbit_r29_c4 bl_4 br_4 wl_29 vdd gnd cell_6t
Xbit_r30_c4 bl_4 br_4 wl_30 vdd gnd cell_6t
Xbit_r31_c4 bl_4 br_4 wl_31 vdd gnd cell_6t
Xbit_r0_c5 bl_5 br_5 wl_0 vdd gnd cell_6t
Xbit_r1_c5 bl_5 br_5 wl_1 vdd gnd cell_6t
Xbit_r2_c5 bl_5 br_5 wl_2 vdd gnd cell_6t
Xbit_r3_c5 bl_5 br_5 wl_3 vdd gnd cell_6t
Xbit_r4_c5 bl_5 br_5 wl_4 vdd gnd cell_6t
Xbit_r5_c5 bl_5 br_5 wl_5 vdd gnd cell_6t
Xbit_r6_c5 bl_5 br_5 wl_6 vdd gnd cell_6t
Xbit_r7_c5 bl_5 br_5 wl_7 vdd gnd cell_6t
Xbit_r8_c5 bl_5 br_5 wl_8 vdd gnd cell_6t
Xbit_r9_c5 bl_5 br_5 wl_9 vdd gnd cell_6t
Xbit_r10_c5 bl_5 br_5 wl_10 vdd gnd cell_6t
Xbit_r11_c5 bl_5 br_5 wl_11 vdd gnd cell_6t
Xbit_r12_c5 bl_5 br_5 wl_12 vdd gnd cell_6t
Xbit_r13_c5 bl_5 br_5 wl_13 vdd gnd cell_6t
Xbit_r14_c5 bl_5 br_5 wl_14 vdd gnd cell_6t
Xbit_r15_c5 bl_5 br_5 wl_15 vdd gnd cell_6t
Xbit_r16_c5 bl_5 br_5 wl_16 vdd gnd cell_6t
Xbit_r17_c5 bl_5 br_5 wl_17 vdd gnd cell_6t
Xbit_r18_c5 bl_5 br_5 wl_18 vdd gnd cell_6t
Xbit_r19_c5 bl_5 br_5 wl_19 vdd gnd cell_6t
Xbit_r20_c5 bl_5 br_5 wl_20 vdd gnd cell_6t
Xbit_r21_c5 bl_5 br_5 wl_21 vdd gnd cell_6t
Xbit_r22_c5 bl_5 br_5 wl_22 vdd gnd cell_6t
Xbit_r23_c5 bl_5 br_5 wl_23 vdd gnd cell_6t
Xbit_r24_c5 bl_5 br_5 wl_24 vdd gnd cell_6t
Xbit_r25_c5 bl_5 br_5 wl_25 vdd gnd cell_6t
Xbit_r26_c5 bl_5 br_5 wl_26 vdd gnd cell_6t
Xbit_r27_c5 bl_5 br_5 wl_27 vdd gnd cell_6t
Xbit_r28_c5 bl_5 br_5 wl_28 vdd gnd cell_6t
Xbit_r29_c5 bl_5 br_5 wl_29 vdd gnd cell_6t
Xbit_r30_c5 bl_5 br_5 wl_30 vdd gnd cell_6t
Xbit_r31_c5 bl_5 br_5 wl_31 vdd gnd cell_6t
Xbit_r0_c6 bl_6 br_6 wl_0 vdd gnd cell_6t
Xbit_r1_c6 bl_6 br_6 wl_1 vdd gnd cell_6t
Xbit_r2_c6 bl_6 br_6 wl_2 vdd gnd cell_6t
Xbit_r3_c6 bl_6 br_6 wl_3 vdd gnd cell_6t
Xbit_r4_c6 bl_6 br_6 wl_4 vdd gnd cell_6t
Xbit_r5_c6 bl_6 br_6 wl_5 vdd gnd cell_6t
Xbit_r6_c6 bl_6 br_6 wl_6 vdd gnd cell_6t
Xbit_r7_c6 bl_6 br_6 wl_7 vdd gnd cell_6t
Xbit_r8_c6 bl_6 br_6 wl_8 vdd gnd cell_6t
Xbit_r9_c6 bl_6 br_6 wl_9 vdd gnd cell_6t
Xbit_r10_c6 bl_6 br_6 wl_10 vdd gnd cell_6t
Xbit_r11_c6 bl_6 br_6 wl_11 vdd gnd cell_6t
Xbit_r12_c6 bl_6 br_6 wl_12 vdd gnd cell_6t
Xbit_r13_c6 bl_6 br_6 wl_13 vdd gnd cell_6t
Xbit_r14_c6 bl_6 br_6 wl_14 vdd gnd cell_6t
Xbit_r15_c6 bl_6 br_6 wl_15 vdd gnd cell_6t
Xbit_r16_c6 bl_6 br_6 wl_16 vdd gnd cell_6t
Xbit_r17_c6 bl_6 br_6 wl_17 vdd gnd cell_6t
Xbit_r18_c6 bl_6 br_6 wl_18 vdd gnd cell_6t
Xbit_r19_c6 bl_6 br_6 wl_19 vdd gnd cell_6t
Xbit_r20_c6 bl_6 br_6 wl_20 vdd gnd cell_6t
Xbit_r21_c6 bl_6 br_6 wl_21 vdd gnd cell_6t
Xbit_r22_c6 bl_6 br_6 wl_22 vdd gnd cell_6t
Xbit_r23_c6 bl_6 br_6 wl_23 vdd gnd cell_6t
Xbit_r24_c6 bl_6 br_6 wl_24 vdd gnd cell_6t
Xbit_r25_c6 bl_6 br_6 wl_25 vdd gnd cell_6t
Xbit_r26_c6 bl_6 br_6 wl_26 vdd gnd cell_6t
Xbit_r27_c6 bl_6 br_6 wl_27 vdd gnd cell_6t
Xbit_r28_c6 bl_6 br_6 wl_28 vdd gnd cell_6t
Xbit_r29_c6 bl_6 br_6 wl_29 vdd gnd cell_6t
Xbit_r30_c6 bl_6 br_6 wl_30 vdd gnd cell_6t
Xbit_r31_c6 bl_6 br_6 wl_31 vdd gnd cell_6t
Xbit_r0_c7 bl_7 br_7 wl_0 vdd gnd cell_6t
Xbit_r1_c7 bl_7 br_7 wl_1 vdd gnd cell_6t
Xbit_r2_c7 bl_7 br_7 wl_2 vdd gnd cell_6t
Xbit_r3_c7 bl_7 br_7 wl_3 vdd gnd cell_6t
Xbit_r4_c7 bl_7 br_7 wl_4 vdd gnd cell_6t
Xbit_r5_c7 bl_7 br_7 wl_5 vdd gnd cell_6t
Xbit_r6_c7 bl_7 br_7 wl_6 vdd gnd cell_6t
Xbit_r7_c7 bl_7 br_7 wl_7 vdd gnd cell_6t
Xbit_r8_c7 bl_7 br_7 wl_8 vdd gnd cell_6t
Xbit_r9_c7 bl_7 br_7 wl_9 vdd gnd cell_6t
Xbit_r10_c7 bl_7 br_7 wl_10 vdd gnd cell_6t
Xbit_r11_c7 bl_7 br_7 wl_11 vdd gnd cell_6t
Xbit_r12_c7 bl_7 br_7 wl_12 vdd gnd cell_6t
Xbit_r13_c7 bl_7 br_7 wl_13 vdd gnd cell_6t
Xbit_r14_c7 bl_7 br_7 wl_14 vdd gnd cell_6t
Xbit_r15_c7 bl_7 br_7 wl_15 vdd gnd cell_6t
Xbit_r16_c7 bl_7 br_7 wl_16 vdd gnd cell_6t
Xbit_r17_c7 bl_7 br_7 wl_17 vdd gnd cell_6t
Xbit_r18_c7 bl_7 br_7 wl_18 vdd gnd cell_6t
Xbit_r19_c7 bl_7 br_7 wl_19 vdd gnd cell_6t
Xbit_r20_c7 bl_7 br_7 wl_20 vdd gnd cell_6t
Xbit_r21_c7 bl_7 br_7 wl_21 vdd gnd cell_6t
Xbit_r22_c7 bl_7 br_7 wl_22 vdd gnd cell_6t
Xbit_r23_c7 bl_7 br_7 wl_23 vdd gnd cell_6t
Xbit_r24_c7 bl_7 br_7 wl_24 vdd gnd cell_6t
Xbit_r25_c7 bl_7 br_7 wl_25 vdd gnd cell_6t
Xbit_r26_c7 bl_7 br_7 wl_26 vdd gnd cell_6t
Xbit_r27_c7 bl_7 br_7 wl_27 vdd gnd cell_6t
Xbit_r28_c7 bl_7 br_7 wl_28 vdd gnd cell_6t
Xbit_r29_c7 bl_7 br_7 wl_29 vdd gnd cell_6t
Xbit_r30_c7 bl_7 br_7 wl_30 vdd gnd cell_6t
Xbit_r31_c7 bl_7 br_7 wl_31 vdd gnd cell_6t
Xbit_r0_c8 bl_8 br_8 wl_0 vdd gnd cell_6t
Xbit_r1_c8 bl_8 br_8 wl_1 vdd gnd cell_6t
Xbit_r2_c8 bl_8 br_8 wl_2 vdd gnd cell_6t
Xbit_r3_c8 bl_8 br_8 wl_3 vdd gnd cell_6t
Xbit_r4_c8 bl_8 br_8 wl_4 vdd gnd cell_6t
Xbit_r5_c8 bl_8 br_8 wl_5 vdd gnd cell_6t
Xbit_r6_c8 bl_8 br_8 wl_6 vdd gnd cell_6t
Xbit_r7_c8 bl_8 br_8 wl_7 vdd gnd cell_6t
Xbit_r8_c8 bl_8 br_8 wl_8 vdd gnd cell_6t
Xbit_r9_c8 bl_8 br_8 wl_9 vdd gnd cell_6t
Xbit_r10_c8 bl_8 br_8 wl_10 vdd gnd cell_6t
Xbit_r11_c8 bl_8 br_8 wl_11 vdd gnd cell_6t
Xbit_r12_c8 bl_8 br_8 wl_12 vdd gnd cell_6t
Xbit_r13_c8 bl_8 br_8 wl_13 vdd gnd cell_6t
Xbit_r14_c8 bl_8 br_8 wl_14 vdd gnd cell_6t
Xbit_r15_c8 bl_8 br_8 wl_15 vdd gnd cell_6t
Xbit_r16_c8 bl_8 br_8 wl_16 vdd gnd cell_6t
Xbit_r17_c8 bl_8 br_8 wl_17 vdd gnd cell_6t
Xbit_r18_c8 bl_8 br_8 wl_18 vdd gnd cell_6t
Xbit_r19_c8 bl_8 br_8 wl_19 vdd gnd cell_6t
Xbit_r20_c8 bl_8 br_8 wl_20 vdd gnd cell_6t
Xbit_r21_c8 bl_8 br_8 wl_21 vdd gnd cell_6t
Xbit_r22_c8 bl_8 br_8 wl_22 vdd gnd cell_6t
Xbit_r23_c8 bl_8 br_8 wl_23 vdd gnd cell_6t
Xbit_r24_c8 bl_8 br_8 wl_24 vdd gnd cell_6t
Xbit_r25_c8 bl_8 br_8 wl_25 vdd gnd cell_6t
Xbit_r26_c8 bl_8 br_8 wl_26 vdd gnd cell_6t
Xbit_r27_c8 bl_8 br_8 wl_27 vdd gnd cell_6t
Xbit_r28_c8 bl_8 br_8 wl_28 vdd gnd cell_6t
Xbit_r29_c8 bl_8 br_8 wl_29 vdd gnd cell_6t
Xbit_r30_c8 bl_8 br_8 wl_30 vdd gnd cell_6t
Xbit_r31_c8 bl_8 br_8 wl_31 vdd gnd cell_6t
Xbit_r0_c9 bl_9 br_9 wl_0 vdd gnd cell_6t
Xbit_r1_c9 bl_9 br_9 wl_1 vdd gnd cell_6t
Xbit_r2_c9 bl_9 br_9 wl_2 vdd gnd cell_6t
Xbit_r3_c9 bl_9 br_9 wl_3 vdd gnd cell_6t
Xbit_r4_c9 bl_9 br_9 wl_4 vdd gnd cell_6t
Xbit_r5_c9 bl_9 br_9 wl_5 vdd gnd cell_6t
Xbit_r6_c9 bl_9 br_9 wl_6 vdd gnd cell_6t
Xbit_r7_c9 bl_9 br_9 wl_7 vdd gnd cell_6t
Xbit_r8_c9 bl_9 br_9 wl_8 vdd gnd cell_6t
Xbit_r9_c9 bl_9 br_9 wl_9 vdd gnd cell_6t
Xbit_r10_c9 bl_9 br_9 wl_10 vdd gnd cell_6t
Xbit_r11_c9 bl_9 br_9 wl_11 vdd gnd cell_6t
Xbit_r12_c9 bl_9 br_9 wl_12 vdd gnd cell_6t
Xbit_r13_c9 bl_9 br_9 wl_13 vdd gnd cell_6t
Xbit_r14_c9 bl_9 br_9 wl_14 vdd gnd cell_6t
Xbit_r15_c9 bl_9 br_9 wl_15 vdd gnd cell_6t
Xbit_r16_c9 bl_9 br_9 wl_16 vdd gnd cell_6t
Xbit_r17_c9 bl_9 br_9 wl_17 vdd gnd cell_6t
Xbit_r18_c9 bl_9 br_9 wl_18 vdd gnd cell_6t
Xbit_r19_c9 bl_9 br_9 wl_19 vdd gnd cell_6t
Xbit_r20_c9 bl_9 br_9 wl_20 vdd gnd cell_6t
Xbit_r21_c9 bl_9 br_9 wl_21 vdd gnd cell_6t
Xbit_r22_c9 bl_9 br_9 wl_22 vdd gnd cell_6t
Xbit_r23_c9 bl_9 br_9 wl_23 vdd gnd cell_6t
Xbit_r24_c9 bl_9 br_9 wl_24 vdd gnd cell_6t
Xbit_r25_c9 bl_9 br_9 wl_25 vdd gnd cell_6t
Xbit_r26_c9 bl_9 br_9 wl_26 vdd gnd cell_6t
Xbit_r27_c9 bl_9 br_9 wl_27 vdd gnd cell_6t
Xbit_r28_c9 bl_9 br_9 wl_28 vdd gnd cell_6t
Xbit_r29_c9 bl_9 br_9 wl_29 vdd gnd cell_6t
Xbit_r30_c9 bl_9 br_9 wl_30 vdd gnd cell_6t
Xbit_r31_c9 bl_9 br_9 wl_31 vdd gnd cell_6t
Xbit_r0_c10 bl_10 br_10 wl_0 vdd gnd cell_6t
Xbit_r1_c10 bl_10 br_10 wl_1 vdd gnd cell_6t
Xbit_r2_c10 bl_10 br_10 wl_2 vdd gnd cell_6t
Xbit_r3_c10 bl_10 br_10 wl_3 vdd gnd cell_6t
Xbit_r4_c10 bl_10 br_10 wl_4 vdd gnd cell_6t
Xbit_r5_c10 bl_10 br_10 wl_5 vdd gnd cell_6t
Xbit_r6_c10 bl_10 br_10 wl_6 vdd gnd cell_6t
Xbit_r7_c10 bl_10 br_10 wl_7 vdd gnd cell_6t
Xbit_r8_c10 bl_10 br_10 wl_8 vdd gnd cell_6t
Xbit_r9_c10 bl_10 br_10 wl_9 vdd gnd cell_6t
Xbit_r10_c10 bl_10 br_10 wl_10 vdd gnd cell_6t
Xbit_r11_c10 bl_10 br_10 wl_11 vdd gnd cell_6t
Xbit_r12_c10 bl_10 br_10 wl_12 vdd gnd cell_6t
Xbit_r13_c10 bl_10 br_10 wl_13 vdd gnd cell_6t
Xbit_r14_c10 bl_10 br_10 wl_14 vdd gnd cell_6t
Xbit_r15_c10 bl_10 br_10 wl_15 vdd gnd cell_6t
Xbit_r16_c10 bl_10 br_10 wl_16 vdd gnd cell_6t
Xbit_r17_c10 bl_10 br_10 wl_17 vdd gnd cell_6t
Xbit_r18_c10 bl_10 br_10 wl_18 vdd gnd cell_6t
Xbit_r19_c10 bl_10 br_10 wl_19 vdd gnd cell_6t
Xbit_r20_c10 bl_10 br_10 wl_20 vdd gnd cell_6t
Xbit_r21_c10 bl_10 br_10 wl_21 vdd gnd cell_6t
Xbit_r22_c10 bl_10 br_10 wl_22 vdd gnd cell_6t
Xbit_r23_c10 bl_10 br_10 wl_23 vdd gnd cell_6t
Xbit_r24_c10 bl_10 br_10 wl_24 vdd gnd cell_6t
Xbit_r25_c10 bl_10 br_10 wl_25 vdd gnd cell_6t
Xbit_r26_c10 bl_10 br_10 wl_26 vdd gnd cell_6t
Xbit_r27_c10 bl_10 br_10 wl_27 vdd gnd cell_6t
Xbit_r28_c10 bl_10 br_10 wl_28 vdd gnd cell_6t
Xbit_r29_c10 bl_10 br_10 wl_29 vdd gnd cell_6t
Xbit_r30_c10 bl_10 br_10 wl_30 vdd gnd cell_6t
Xbit_r31_c10 bl_10 br_10 wl_31 vdd gnd cell_6t
Xbit_r0_c11 bl_11 br_11 wl_0 vdd gnd cell_6t
Xbit_r1_c11 bl_11 br_11 wl_1 vdd gnd cell_6t
Xbit_r2_c11 bl_11 br_11 wl_2 vdd gnd cell_6t
Xbit_r3_c11 bl_11 br_11 wl_3 vdd gnd cell_6t
Xbit_r4_c11 bl_11 br_11 wl_4 vdd gnd cell_6t
Xbit_r5_c11 bl_11 br_11 wl_5 vdd gnd cell_6t
Xbit_r6_c11 bl_11 br_11 wl_6 vdd gnd cell_6t
Xbit_r7_c11 bl_11 br_11 wl_7 vdd gnd cell_6t
Xbit_r8_c11 bl_11 br_11 wl_8 vdd gnd cell_6t
Xbit_r9_c11 bl_11 br_11 wl_9 vdd gnd cell_6t
Xbit_r10_c11 bl_11 br_11 wl_10 vdd gnd cell_6t
Xbit_r11_c11 bl_11 br_11 wl_11 vdd gnd cell_6t
Xbit_r12_c11 bl_11 br_11 wl_12 vdd gnd cell_6t
Xbit_r13_c11 bl_11 br_11 wl_13 vdd gnd cell_6t
Xbit_r14_c11 bl_11 br_11 wl_14 vdd gnd cell_6t
Xbit_r15_c11 bl_11 br_11 wl_15 vdd gnd cell_6t
Xbit_r16_c11 bl_11 br_11 wl_16 vdd gnd cell_6t
Xbit_r17_c11 bl_11 br_11 wl_17 vdd gnd cell_6t
Xbit_r18_c11 bl_11 br_11 wl_18 vdd gnd cell_6t
Xbit_r19_c11 bl_11 br_11 wl_19 vdd gnd cell_6t
Xbit_r20_c11 bl_11 br_11 wl_20 vdd gnd cell_6t
Xbit_r21_c11 bl_11 br_11 wl_21 vdd gnd cell_6t
Xbit_r22_c11 bl_11 br_11 wl_22 vdd gnd cell_6t
Xbit_r23_c11 bl_11 br_11 wl_23 vdd gnd cell_6t
Xbit_r24_c11 bl_11 br_11 wl_24 vdd gnd cell_6t
Xbit_r25_c11 bl_11 br_11 wl_25 vdd gnd cell_6t
Xbit_r26_c11 bl_11 br_11 wl_26 vdd gnd cell_6t
Xbit_r27_c11 bl_11 br_11 wl_27 vdd gnd cell_6t
Xbit_r28_c11 bl_11 br_11 wl_28 vdd gnd cell_6t
Xbit_r29_c11 bl_11 br_11 wl_29 vdd gnd cell_6t
Xbit_r30_c11 bl_11 br_11 wl_30 vdd gnd cell_6t
Xbit_r31_c11 bl_11 br_11 wl_31 vdd gnd cell_6t
Xbit_r0_c12 bl_12 br_12 wl_0 vdd gnd cell_6t
Xbit_r1_c12 bl_12 br_12 wl_1 vdd gnd cell_6t
Xbit_r2_c12 bl_12 br_12 wl_2 vdd gnd cell_6t
Xbit_r3_c12 bl_12 br_12 wl_3 vdd gnd cell_6t
Xbit_r4_c12 bl_12 br_12 wl_4 vdd gnd cell_6t
Xbit_r5_c12 bl_12 br_12 wl_5 vdd gnd cell_6t
Xbit_r6_c12 bl_12 br_12 wl_6 vdd gnd cell_6t
Xbit_r7_c12 bl_12 br_12 wl_7 vdd gnd cell_6t
Xbit_r8_c12 bl_12 br_12 wl_8 vdd gnd cell_6t
Xbit_r9_c12 bl_12 br_12 wl_9 vdd gnd cell_6t
Xbit_r10_c12 bl_12 br_12 wl_10 vdd gnd cell_6t
Xbit_r11_c12 bl_12 br_12 wl_11 vdd gnd cell_6t
Xbit_r12_c12 bl_12 br_12 wl_12 vdd gnd cell_6t
Xbit_r13_c12 bl_12 br_12 wl_13 vdd gnd cell_6t
Xbit_r14_c12 bl_12 br_12 wl_14 vdd gnd cell_6t
Xbit_r15_c12 bl_12 br_12 wl_15 vdd gnd cell_6t
Xbit_r16_c12 bl_12 br_12 wl_16 vdd gnd cell_6t
Xbit_r17_c12 bl_12 br_12 wl_17 vdd gnd cell_6t
Xbit_r18_c12 bl_12 br_12 wl_18 vdd gnd cell_6t
Xbit_r19_c12 bl_12 br_12 wl_19 vdd gnd cell_6t
Xbit_r20_c12 bl_12 br_12 wl_20 vdd gnd cell_6t
Xbit_r21_c12 bl_12 br_12 wl_21 vdd gnd cell_6t
Xbit_r22_c12 bl_12 br_12 wl_22 vdd gnd cell_6t
Xbit_r23_c12 bl_12 br_12 wl_23 vdd gnd cell_6t
Xbit_r24_c12 bl_12 br_12 wl_24 vdd gnd cell_6t
Xbit_r25_c12 bl_12 br_12 wl_25 vdd gnd cell_6t
Xbit_r26_c12 bl_12 br_12 wl_26 vdd gnd cell_6t
Xbit_r27_c12 bl_12 br_12 wl_27 vdd gnd cell_6t
Xbit_r28_c12 bl_12 br_12 wl_28 vdd gnd cell_6t
Xbit_r29_c12 bl_12 br_12 wl_29 vdd gnd cell_6t
Xbit_r30_c12 bl_12 br_12 wl_30 vdd gnd cell_6t
Xbit_r31_c12 bl_12 br_12 wl_31 vdd gnd cell_6t
Xbit_r0_c13 bl_13 br_13 wl_0 vdd gnd cell_6t
Xbit_r1_c13 bl_13 br_13 wl_1 vdd gnd cell_6t
Xbit_r2_c13 bl_13 br_13 wl_2 vdd gnd cell_6t
Xbit_r3_c13 bl_13 br_13 wl_3 vdd gnd cell_6t
Xbit_r4_c13 bl_13 br_13 wl_4 vdd gnd cell_6t
Xbit_r5_c13 bl_13 br_13 wl_5 vdd gnd cell_6t
Xbit_r6_c13 bl_13 br_13 wl_6 vdd gnd cell_6t
Xbit_r7_c13 bl_13 br_13 wl_7 vdd gnd cell_6t
Xbit_r8_c13 bl_13 br_13 wl_8 vdd gnd cell_6t
Xbit_r9_c13 bl_13 br_13 wl_9 vdd gnd cell_6t
Xbit_r10_c13 bl_13 br_13 wl_10 vdd gnd cell_6t
Xbit_r11_c13 bl_13 br_13 wl_11 vdd gnd cell_6t
Xbit_r12_c13 bl_13 br_13 wl_12 vdd gnd cell_6t
Xbit_r13_c13 bl_13 br_13 wl_13 vdd gnd cell_6t
Xbit_r14_c13 bl_13 br_13 wl_14 vdd gnd cell_6t
Xbit_r15_c13 bl_13 br_13 wl_15 vdd gnd cell_6t
Xbit_r16_c13 bl_13 br_13 wl_16 vdd gnd cell_6t
Xbit_r17_c13 bl_13 br_13 wl_17 vdd gnd cell_6t
Xbit_r18_c13 bl_13 br_13 wl_18 vdd gnd cell_6t
Xbit_r19_c13 bl_13 br_13 wl_19 vdd gnd cell_6t
Xbit_r20_c13 bl_13 br_13 wl_20 vdd gnd cell_6t
Xbit_r21_c13 bl_13 br_13 wl_21 vdd gnd cell_6t
Xbit_r22_c13 bl_13 br_13 wl_22 vdd gnd cell_6t
Xbit_r23_c13 bl_13 br_13 wl_23 vdd gnd cell_6t
Xbit_r24_c13 bl_13 br_13 wl_24 vdd gnd cell_6t
Xbit_r25_c13 bl_13 br_13 wl_25 vdd gnd cell_6t
Xbit_r26_c13 bl_13 br_13 wl_26 vdd gnd cell_6t
Xbit_r27_c13 bl_13 br_13 wl_27 vdd gnd cell_6t
Xbit_r28_c13 bl_13 br_13 wl_28 vdd gnd cell_6t
Xbit_r29_c13 bl_13 br_13 wl_29 vdd gnd cell_6t
Xbit_r30_c13 bl_13 br_13 wl_30 vdd gnd cell_6t
Xbit_r31_c13 bl_13 br_13 wl_31 vdd gnd cell_6t
Xbit_r0_c14 bl_14 br_14 wl_0 vdd gnd cell_6t
Xbit_r1_c14 bl_14 br_14 wl_1 vdd gnd cell_6t
Xbit_r2_c14 bl_14 br_14 wl_2 vdd gnd cell_6t
Xbit_r3_c14 bl_14 br_14 wl_3 vdd gnd cell_6t
Xbit_r4_c14 bl_14 br_14 wl_4 vdd gnd cell_6t
Xbit_r5_c14 bl_14 br_14 wl_5 vdd gnd cell_6t
Xbit_r6_c14 bl_14 br_14 wl_6 vdd gnd cell_6t
Xbit_r7_c14 bl_14 br_14 wl_7 vdd gnd cell_6t
Xbit_r8_c14 bl_14 br_14 wl_8 vdd gnd cell_6t
Xbit_r9_c14 bl_14 br_14 wl_9 vdd gnd cell_6t
Xbit_r10_c14 bl_14 br_14 wl_10 vdd gnd cell_6t
Xbit_r11_c14 bl_14 br_14 wl_11 vdd gnd cell_6t
Xbit_r12_c14 bl_14 br_14 wl_12 vdd gnd cell_6t
Xbit_r13_c14 bl_14 br_14 wl_13 vdd gnd cell_6t
Xbit_r14_c14 bl_14 br_14 wl_14 vdd gnd cell_6t
Xbit_r15_c14 bl_14 br_14 wl_15 vdd gnd cell_6t
Xbit_r16_c14 bl_14 br_14 wl_16 vdd gnd cell_6t
Xbit_r17_c14 bl_14 br_14 wl_17 vdd gnd cell_6t
Xbit_r18_c14 bl_14 br_14 wl_18 vdd gnd cell_6t
Xbit_r19_c14 bl_14 br_14 wl_19 vdd gnd cell_6t
Xbit_r20_c14 bl_14 br_14 wl_20 vdd gnd cell_6t
Xbit_r21_c14 bl_14 br_14 wl_21 vdd gnd cell_6t
Xbit_r22_c14 bl_14 br_14 wl_22 vdd gnd cell_6t
Xbit_r23_c14 bl_14 br_14 wl_23 vdd gnd cell_6t
Xbit_r24_c14 bl_14 br_14 wl_24 vdd gnd cell_6t
Xbit_r25_c14 bl_14 br_14 wl_25 vdd gnd cell_6t
Xbit_r26_c14 bl_14 br_14 wl_26 vdd gnd cell_6t
Xbit_r27_c14 bl_14 br_14 wl_27 vdd gnd cell_6t
Xbit_r28_c14 bl_14 br_14 wl_28 vdd gnd cell_6t
Xbit_r29_c14 bl_14 br_14 wl_29 vdd gnd cell_6t
Xbit_r30_c14 bl_14 br_14 wl_30 vdd gnd cell_6t
Xbit_r31_c14 bl_14 br_14 wl_31 vdd gnd cell_6t
Xbit_r0_c15 bl_15 br_15 wl_0 vdd gnd cell_6t
Xbit_r1_c15 bl_15 br_15 wl_1 vdd gnd cell_6t
Xbit_r2_c15 bl_15 br_15 wl_2 vdd gnd cell_6t
Xbit_r3_c15 bl_15 br_15 wl_3 vdd gnd cell_6t
Xbit_r4_c15 bl_15 br_15 wl_4 vdd gnd cell_6t
Xbit_r5_c15 bl_15 br_15 wl_5 vdd gnd cell_6t
Xbit_r6_c15 bl_15 br_15 wl_6 vdd gnd cell_6t
Xbit_r7_c15 bl_15 br_15 wl_7 vdd gnd cell_6t
Xbit_r8_c15 bl_15 br_15 wl_8 vdd gnd cell_6t
Xbit_r9_c15 bl_15 br_15 wl_9 vdd gnd cell_6t
Xbit_r10_c15 bl_15 br_15 wl_10 vdd gnd cell_6t
Xbit_r11_c15 bl_15 br_15 wl_11 vdd gnd cell_6t
Xbit_r12_c15 bl_15 br_15 wl_12 vdd gnd cell_6t
Xbit_r13_c15 bl_15 br_15 wl_13 vdd gnd cell_6t
Xbit_r14_c15 bl_15 br_15 wl_14 vdd gnd cell_6t
Xbit_r15_c15 bl_15 br_15 wl_15 vdd gnd cell_6t
Xbit_r16_c15 bl_15 br_15 wl_16 vdd gnd cell_6t
Xbit_r17_c15 bl_15 br_15 wl_17 vdd gnd cell_6t
Xbit_r18_c15 bl_15 br_15 wl_18 vdd gnd cell_6t
Xbit_r19_c15 bl_15 br_15 wl_19 vdd gnd cell_6t
Xbit_r20_c15 bl_15 br_15 wl_20 vdd gnd cell_6t
Xbit_r21_c15 bl_15 br_15 wl_21 vdd gnd cell_6t
Xbit_r22_c15 bl_15 br_15 wl_22 vdd gnd cell_6t
Xbit_r23_c15 bl_15 br_15 wl_23 vdd gnd cell_6t
Xbit_r24_c15 bl_15 br_15 wl_24 vdd gnd cell_6t
Xbit_r25_c15 bl_15 br_15 wl_25 vdd gnd cell_6t
Xbit_r26_c15 bl_15 br_15 wl_26 vdd gnd cell_6t
Xbit_r27_c15 bl_15 br_15 wl_27 vdd gnd cell_6t
Xbit_r28_c15 bl_15 br_15 wl_28 vdd gnd cell_6t
Xbit_r29_c15 bl_15 br_15 wl_29 vdd gnd cell_6t
Xbit_r30_c15 bl_15 br_15 wl_30 vdd gnd cell_6t
Xbit_r31_c15 bl_15 br_15 wl_31 vdd gnd cell_6t
.ENDS bitcell_array_0

.SUBCKT replica_cell_6t bl br wl vdd gnd
* Inverter 1
MM0 vdd Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 vdd Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q vdd gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q vdd vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br wl vdd gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_6t


.SUBCKT dummy_cell_6t bl br wl vdd gnd
* Inverter 1
MM0 Qbar Q gnd gnd NMOS_VTG W=205.00n L=50n
MM4 Qbar Q vdd vdd PMOS_VTG W=90n L=50n

* Inverer 2
MM1 Q Qbar gnd gnd NMOS_VTG W=205.00n L=50n
MM5 Q Qbar vdd vdd PMOS_VTG W=90n L=50n

* Access transistors
MM3 bl_noconn wl Q gnd NMOS_VTG W=135.00n L=50n
MM2 br_noconn wl Qbar gnd NMOS_VTG W=135.00n L=50n
.ENDS cell_6t


.SUBCKT replica_column_0 bl_0 br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 vdd gnd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* INPUT : wl_0 
* INPUT : wl_1 
* INPUT : wl_2 
* INPUT : wl_3 
* INPUT : wl_4 
* INPUT : wl_5 
* INPUT : wl_6 
* INPUT : wl_7 
* INPUT : wl_8 
* INPUT : wl_9 
* INPUT : wl_10 
* INPUT : wl_11 
* INPUT : wl_12 
* INPUT : wl_13 
* INPUT : wl_14 
* INPUT : wl_15 
* INPUT : wl_16 
* INPUT : wl_17 
* INPUT : wl_18 
* INPUT : wl_19 
* INPUT : wl_20 
* INPUT : wl_21 
* INPUT : wl_22 
* INPUT : wl_23 
* INPUT : wl_24 
* INPUT : wl_25 
* INPUT : wl_26 
* INPUT : wl_27 
* INPUT : wl_28 
* INPUT : wl_29 
* INPUT : wl_30 
* INPUT : wl_31 
* INPUT : wl_32 
* INPUT : wl_33 
* INPUT : wl_34 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0 bl_0 br_0 wl_0 vdd gnd dummy_cell_6t
Xrbc_1 bl_0 br_0 wl_1 vdd gnd replica_cell_6t
Xrbc_2 bl_0 br_0 wl_2 vdd gnd replica_cell_6t
Xrbc_3 bl_0 br_0 wl_3 vdd gnd replica_cell_6t
Xrbc_4 bl_0 br_0 wl_4 vdd gnd replica_cell_6t
Xrbc_5 bl_0 br_0 wl_5 vdd gnd replica_cell_6t
Xrbc_6 bl_0 br_0 wl_6 vdd gnd replica_cell_6t
Xrbc_7 bl_0 br_0 wl_7 vdd gnd replica_cell_6t
Xrbc_8 bl_0 br_0 wl_8 vdd gnd replica_cell_6t
Xrbc_9 bl_0 br_0 wl_9 vdd gnd replica_cell_6t
Xrbc_10 bl_0 br_0 wl_10 vdd gnd replica_cell_6t
Xrbc_11 bl_0 br_0 wl_11 vdd gnd replica_cell_6t
Xrbc_12 bl_0 br_0 wl_12 vdd gnd replica_cell_6t
Xrbc_13 bl_0 br_0 wl_13 vdd gnd replica_cell_6t
Xrbc_14 bl_0 br_0 wl_14 vdd gnd replica_cell_6t
Xrbc_15 bl_0 br_0 wl_15 vdd gnd replica_cell_6t
Xrbc_16 bl_0 br_0 wl_16 vdd gnd replica_cell_6t
Xrbc_17 bl_0 br_0 wl_17 vdd gnd replica_cell_6t
Xrbc_18 bl_0 br_0 wl_18 vdd gnd replica_cell_6t
Xrbc_19 bl_0 br_0 wl_19 vdd gnd replica_cell_6t
Xrbc_20 bl_0 br_0 wl_20 vdd gnd replica_cell_6t
Xrbc_21 bl_0 br_0 wl_21 vdd gnd replica_cell_6t
Xrbc_22 bl_0 br_0 wl_22 vdd gnd replica_cell_6t
Xrbc_23 bl_0 br_0 wl_23 vdd gnd replica_cell_6t
Xrbc_24 bl_0 br_0 wl_24 vdd gnd replica_cell_6t
Xrbc_25 bl_0 br_0 wl_25 vdd gnd replica_cell_6t
Xrbc_26 bl_0 br_0 wl_26 vdd gnd replica_cell_6t
Xrbc_27 bl_0 br_0 wl_27 vdd gnd replica_cell_6t
Xrbc_28 bl_0 br_0 wl_28 vdd gnd replica_cell_6t
Xrbc_29 bl_0 br_0 wl_29 vdd gnd replica_cell_6t
Xrbc_30 bl_0 br_0 wl_30 vdd gnd replica_cell_6t
Xrbc_31 bl_0 br_0 wl_31 vdd gnd replica_cell_6t
Xrbc_32 bl_0 br_0 wl_32 vdd gnd replica_cell_6t
Xrbc_33 bl_0 br_0 wl_33 vdd gnd replica_cell_6t
Xrbc_34 bl_0 br_0 wl_34 vdd gnd dummy_cell_6t
.ENDS replica_column_0

.SUBCKT dummy_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 wl_0 vdd gnd
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INPUT : wl_0 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 16
Xbit_r0_c0 bl_0 br_0 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c1 bl_1 br_1 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c2 bl_2 br_2 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c3 bl_3 br_3 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c4 bl_4 br_4 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c5 bl_5 br_5 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c6 bl_6 br_6 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c7 bl_7 br_7 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c8 bl_8 br_8 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c9 bl_9 br_9 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c10 bl_10 br_10 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c11 bl_11 br_11 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c12 bl_12 br_12 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c13 bl_13 br_13 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c14 bl_14 br_14 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c15 bl_15 br_15 wl_0 vdd gnd dummy_cell_6t
.ENDS dummy_array_0

.SUBCKT dummy_array_1 bl_0 br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 vdd gnd
* INOUT : bl_0 
* INOUT : br_0 
* INPUT : wl_0 
* INPUT : wl_1 
* INPUT : wl_2 
* INPUT : wl_3 
* INPUT : wl_4 
* INPUT : wl_5 
* INPUT : wl_6 
* INPUT : wl_7 
* INPUT : wl_8 
* INPUT : wl_9 
* INPUT : wl_10 
* INPUT : wl_11 
* INPUT : wl_12 
* INPUT : wl_13 
* INPUT : wl_14 
* INPUT : wl_15 
* INPUT : wl_16 
* INPUT : wl_17 
* INPUT : wl_18 
* INPUT : wl_19 
* INPUT : wl_20 
* INPUT : wl_21 
* INPUT : wl_22 
* INPUT : wl_23 
* INPUT : wl_24 
* INPUT : wl_25 
* INPUT : wl_26 
* INPUT : wl_27 
* INPUT : wl_28 
* INPUT : wl_29 
* INPUT : wl_30 
* INPUT : wl_31 
* INPUT : wl_32 
* INPUT : wl_33 
* INPUT : wl_34 
* POWER : vdd 
* GROUND: gnd 
* rows: 35 cols: 1
Xbit_r0_c0 bl_0 br_0 wl_0 vdd gnd dummy_cell_6t
Xbit_r1_c0 bl_0 br_0 wl_1 vdd gnd dummy_cell_6t
Xbit_r2_c0 bl_0 br_0 wl_2 vdd gnd dummy_cell_6t
Xbit_r3_c0 bl_0 br_0 wl_3 vdd gnd dummy_cell_6t
Xbit_r4_c0 bl_0 br_0 wl_4 vdd gnd dummy_cell_6t
Xbit_r5_c0 bl_0 br_0 wl_5 vdd gnd dummy_cell_6t
Xbit_r6_c0 bl_0 br_0 wl_6 vdd gnd dummy_cell_6t
Xbit_r7_c0 bl_0 br_0 wl_7 vdd gnd dummy_cell_6t
Xbit_r8_c0 bl_0 br_0 wl_8 vdd gnd dummy_cell_6t
Xbit_r9_c0 bl_0 br_0 wl_9 vdd gnd dummy_cell_6t
Xbit_r10_c0 bl_0 br_0 wl_10 vdd gnd dummy_cell_6t
Xbit_r11_c0 bl_0 br_0 wl_11 vdd gnd dummy_cell_6t
Xbit_r12_c0 bl_0 br_0 wl_12 vdd gnd dummy_cell_6t
Xbit_r13_c0 bl_0 br_0 wl_13 vdd gnd dummy_cell_6t
Xbit_r14_c0 bl_0 br_0 wl_14 vdd gnd dummy_cell_6t
Xbit_r15_c0 bl_0 br_0 wl_15 vdd gnd dummy_cell_6t
Xbit_r16_c0 bl_0 br_0 wl_16 vdd gnd dummy_cell_6t
Xbit_r17_c0 bl_0 br_0 wl_17 vdd gnd dummy_cell_6t
Xbit_r18_c0 bl_0 br_0 wl_18 vdd gnd dummy_cell_6t
Xbit_r19_c0 bl_0 br_0 wl_19 vdd gnd dummy_cell_6t
Xbit_r20_c0 bl_0 br_0 wl_20 vdd gnd dummy_cell_6t
Xbit_r21_c0 bl_0 br_0 wl_21 vdd gnd dummy_cell_6t
Xbit_r22_c0 bl_0 br_0 wl_22 vdd gnd dummy_cell_6t
Xbit_r23_c0 bl_0 br_0 wl_23 vdd gnd dummy_cell_6t
Xbit_r24_c0 bl_0 br_0 wl_24 vdd gnd dummy_cell_6t
Xbit_r25_c0 bl_0 br_0 wl_25 vdd gnd dummy_cell_6t
Xbit_r26_c0 bl_0 br_0 wl_26 vdd gnd dummy_cell_6t
Xbit_r27_c0 bl_0 br_0 wl_27 vdd gnd dummy_cell_6t
Xbit_r28_c0 bl_0 br_0 wl_28 vdd gnd dummy_cell_6t
Xbit_r29_c0 bl_0 br_0 wl_29 vdd gnd dummy_cell_6t
Xbit_r30_c0 bl_0 br_0 wl_30 vdd gnd dummy_cell_6t
Xbit_r31_c0 bl_0 br_0 wl_31 vdd gnd dummy_cell_6t
Xbit_r32_c0 bl_0 br_0 wl_32 vdd gnd dummy_cell_6t
Xbit_r33_c0 bl_0 br_0 wl_33 vdd gnd dummy_cell_6t
Xbit_r34_c0 bl_0 br_0 wl_34 vdd gnd dummy_cell_6t
.ENDS dummy_array_1

.SUBCKT replica_bitcell_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 rbl_bl_0 rbl_br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 rbl_wl_0 vdd gnd
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* OUTPUT: rbl_bl_0 
* OUTPUT: rbl_br_0 
* INPUT : wl_0 
* INPUT : wl_1 
* INPUT : wl_2 
* INPUT : wl_3 
* INPUT : wl_4 
* INPUT : wl_5 
* INPUT : wl_6 
* INPUT : wl_7 
* INPUT : wl_8 
* INPUT : wl_9 
* INPUT : wl_10 
* INPUT : wl_11 
* INPUT : wl_12 
* INPUT : wl_13 
* INPUT : wl_14 
* INPUT : wl_15 
* INPUT : wl_16 
* INPUT : wl_17 
* INPUT : wl_18 
* INPUT : wl_19 
* INPUT : wl_20 
* INPUT : wl_21 
* INPUT : wl_22 
* INPUT : wl_23 
* INPUT : wl_24 
* INPUT : wl_25 
* INPUT : wl_26 
* INPUT : wl_27 
* INPUT : wl_28 
* INPUT : wl_29 
* INPUT : wl_30 
* INPUT : wl_31 
* INPUT : rbl_wl_0 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 16
Xbitcell_array bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 vdd gnd bitcell_array_0
Xreplica_col_0 rbl_bl_0 rbl_br_0 dummy_wl_bot rbl_wl_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 dummy_wl_top vdd gnd replica_column_0
Xdummy_row_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 rbl_wl_0 vdd gnd dummy_array_0
Xdummy_row_bot bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 dummy_wl_bot vdd gnd dummy_array_0
Xdummy_row_top bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 dummy_wl_top vdd gnd dummy_array_0
Xdummy_col_left dummy_bl_left dummy_br_left dummy_wl_bot rbl_wl_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 dummy_wl_top vdd gnd dummy_array_1
Xdummy_col_right dummy_bl_right dummy_br_right dummy_wl_bot rbl_wl_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 dummy_wl_top vdd gnd dummy_array_1
.ENDS replica_bitcell_array_0

.SUBCKT pinv_5 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_5

.SUBCKT pnand3_1 A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pnand3_1

.SUBCKT hierarchical_predecode3x8_1 in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv_5
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv_5
Xpre_inv_2 in_2 inbar_2 vdd gnd pinv_5
Xpre_nand_inv_0 Z_0 out_0 vdd gnd pinv_5
Xpre_nand_inv_1 Z_1 out_1 vdd gnd pinv_5
Xpre_nand_inv_2 Z_2 out_2 vdd gnd pinv_5
Xpre_nand_inv_3 Z_3 out_3 vdd gnd pinv_5
Xpre_nand_inv_4 Z_4 out_4 vdd gnd pinv_5
Xpre_nand_inv_5 Z_5 out_5 vdd gnd pinv_5
Xpre_nand_inv_6 Z_6 out_6 vdd gnd pinv_5
Xpre_nand_inv_7 Z_7 out_7 vdd gnd pinv_5
XXpre3x8_nand_0 inbar_0 inbar_1 inbar_2 Z_0 vdd gnd pnand3_1
XXpre3x8_nand_1 in_0 inbar_1 inbar_2 Z_1 vdd gnd pnand3_1
XXpre3x8_nand_2 inbar_0 in_1 inbar_2 Z_2 vdd gnd pnand3_1
XXpre3x8_nand_3 in_0 in_1 inbar_2 Z_3 vdd gnd pnand3_1
XXpre3x8_nand_4 inbar_0 inbar_1 in_2 Z_4 vdd gnd pnand3_1
XXpre3x8_nand_5 in_0 inbar_1 in_2 Z_5 vdd gnd pnand3_1
XXpre3x8_nand_6 inbar_0 in_1 in_2 Z_6 vdd gnd pnand3_1
XXpre3x8_nand_7 in_0 in_1 in_2 Z_7 vdd gnd pnand3_1
.ENDS hierarchical_predecode3x8_1

.SUBCKT bank dout0_0 dout0_1 rbl_bl_0 din0_0 din0_1 addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: rbl_bl_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : addr0_5 
* INPUT : addr0_6 
* INPUT : addr0_7 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xreplica_bitcell_array bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 rbl_bl_0 rbl_br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_en0 vdd gnd replica_bitcell_array_0
Xport_data0 rbl_bl_0 rbl_br_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 dout0_0 dout0_1 din0_0 din0_1 sel0_0 sel0_1 sel0_2 sel0_3 sel0_4 sel0_5 sel0_6 sel0_7 s_en0 p_en_bar0 w_en0 vdd gnd port_data_0
Xport_address0 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7 wl_en0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 vdd gnd port_address_0
Xcol_address_decoder0 addr0_0 addr0_1 addr0_2 sel0_0 sel0_1 sel0_2 sel0_3 sel0_4 sel0_5 sel0_6 sel0_7 vdd gnd hierarchical_predecode3x8_1
.ENDS bank

* ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT pinv_6 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pinv_6

* ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT pinv_7 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pinv_7

.SUBCKT dff_buf_0 D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff D qint clk vdd gnd dff
Xdff_buf_inv1 qint Qb vdd gnd pinv_6
Xdff_buf_inv2 Qb Q vdd gnd pinv_7
.ENDS dff_buf_0

.SUBCKT dff_buf_array_0 din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_r0_c0 din_0 dout_0 dout_bar_0 clk vdd gnd dff_buf_0
Xdff_r1_c0 din_1 dout_1 dout_bar_1 clk vdd gnd dff_buf_0
.ENDS dff_buf_array_0

.SUBCKT pnand2_1 A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pnand2_1

.SUBCKT pinv_8 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_8

.SUBCKT pdriver_1 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 4]
Xbuf_inv1 A Zb1_int vdd gnd pinv_8
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_8
Xbuf_inv3 Zb2_int Z vdd gnd pinv_7
.ENDS pdriver_1

.SUBCKT pand2_0 A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand2_nand A B zb_int vdd gnd pnand2_1
Xpand2_inv zb_int Z vdd gnd pdriver_1
.ENDS pand2_0

* ptx M{0} {1} nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p

* ptx M{0} {1} pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p

.SUBCKT pinv_9 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS pinv_9

.SUBCKT pbuf_0 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xbuf_inv1 A zb_int vdd gnd pinv_7
Xbuf_inv2 zb_int Z vdd gnd pinv_9
.ENDS pbuf_0

* ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT pinv_10 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS pinv_10

* ptx M{0} {1} nmos_vtg m=3 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=3 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT pinv_11 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS pinv_11

* ptx M{0} {1} nmos_vtg m=9 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=9 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT pinv_12 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=9 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=9 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS pinv_12

.SUBCKT pdriver_2 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 3, 9, 27]
Xbuf_inv1 A Zb1_int vdd gnd pinv_8
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_10
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_11
Xbuf_inv4 Zb3_int Z vdd gnd pinv_12
.ENDS pdriver_2

* ptx M{0} {1} nmos_vtg m=4 w=0.2475u l=0.05u pd=0.59u ps=0.59u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=4 w=0.7425u l=0.05u pd=1.59u ps=1.59u as=0.09p ad=0.09p

.SUBCKT pinv_13 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.7425u l=0.05u pd=1.59u ps=1.59u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.2475u l=0.05u pd=0.59u ps=0.59u as=0.03p ad=0.03p
.ENDS pinv_13

.SUBCKT pdriver_3 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 4, 11]
Xbuf_inv1 A Zb1_int vdd gnd pinv_8
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_8
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_7
Xbuf_inv4 Zb3_int Z vdd gnd pinv_13
.ENDS pdriver_3

* ptx M{0} {1} nmos_vtg m=3 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

* ptx M{0} {1} pmos_vtg m=3 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p

.SUBCKT pinv_14 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p
.ENDS pinv_14

.SUBCKT pand3_0 A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand A B C zb_int vdd gnd pnand3_1
Xpand3_inv zb_int Z vdd gnd pinv_14
.ENDS pand3_0

.SUBCKT pand3_1 A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand A B C zb_int vdd gnd pnand3_1
Xpand3_inv zb_int Z vdd gnd pinv_6
.ENDS pand3_1

* ptx M{0} {1} nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p

.SUBCKT pinv_15 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p
.ENDS pinv_15

.SUBCKT pdriver_4 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 2, 5]
Xbuf_inv1 A Zb1_int vdd gnd pinv_8
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_8
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_6
Xbuf_inv4 Zb3_int Z vdd gnd pinv_15
.ENDS pdriver_4

.SUBCKT delay_chain_0 in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0 in dout_1 vdd gnd pinv_4
Xdload_0_0 dout_1 n_0_0 vdd gnd pinv_4
Xdload_0_1 dout_1 n_0_1 vdd gnd pinv_4
Xdload_0_2 dout_1 n_0_2 vdd gnd pinv_4
Xdload_0_3 dout_1 n_0_3 vdd gnd pinv_4
Xdinv1 dout_1 dout_2 vdd gnd pinv_4
Xdload_1_0 dout_2 n_1_0 vdd gnd pinv_4
Xdload_1_1 dout_2 n_1_1 vdd gnd pinv_4
Xdload_1_2 dout_2 n_1_2 vdd gnd pinv_4
Xdload_1_3 dout_2 n_1_3 vdd gnd pinv_4
Xdinv2 dout_2 dout_3 vdd gnd pinv_4
Xdload_2_0 dout_3 n_2_0 vdd gnd pinv_4
Xdload_2_1 dout_3 n_2_1 vdd gnd pinv_4
Xdload_2_2 dout_3 n_2_2 vdd gnd pinv_4
Xdload_2_3 dout_3 n_2_3 vdd gnd pinv_4
Xdinv3 dout_3 dout_4 vdd gnd pinv_4
Xdload_3_0 dout_4 n_3_0 vdd gnd pinv_4
Xdload_3_1 dout_4 n_3_1 vdd gnd pinv_4
Xdload_3_2 dout_4 n_3_2 vdd gnd pinv_4
Xdload_3_3 dout_4 n_3_3 vdd gnd pinv_4
Xdinv4 dout_4 dout_5 vdd gnd pinv_4
Xdload_4_0 dout_5 n_4_0 vdd gnd pinv_4
Xdload_4_1 dout_5 n_4_1 vdd gnd pinv_4
Xdload_4_2 dout_5 n_4_2 vdd gnd pinv_4
Xdload_4_3 dout_5 n_4_3 vdd gnd pinv_4
Xdinv5 dout_5 dout_6 vdd gnd pinv_4
Xdload_5_0 dout_6 n_5_0 vdd gnd pinv_4
Xdload_5_1 dout_6 n_5_1 vdd gnd pinv_4
Xdload_5_2 dout_6 n_5_2 vdd gnd pinv_4
Xdload_5_3 dout_6 n_5_3 vdd gnd pinv_4
Xdinv6 dout_6 dout_7 vdd gnd pinv_4
Xdload_6_0 dout_7 n_6_0 vdd gnd pinv_4
Xdload_6_1 dout_7 n_6_1 vdd gnd pinv_4
Xdload_6_2 dout_7 n_6_2 vdd gnd pinv_4
Xdload_6_3 dout_7 n_6_3 vdd gnd pinv_4
Xdinv7 dout_7 dout_8 vdd gnd pinv_4
Xdload_7_0 dout_8 n_7_0 vdd gnd pinv_4
Xdload_7_1 dout_8 n_7_1 vdd gnd pinv_4
Xdload_7_2 dout_8 n_7_2 vdd gnd pinv_4
Xdload_7_3 dout_8 n_7_3 vdd gnd pinv_4
Xdinv8 dout_8 out vdd gnd pinv_4
Xdload_8_0 out n_8_0 vdd gnd pinv_4
Xdload_8_1 out n_8_1 vdd gnd pinv_4
Xdload_8_2 out n_8_2 vdd gnd pinv_4
Xdload_8_3 out n_8_3 vdd gnd pinv_4
.ENDS delay_chain_0

.SUBCKT control_logic_rw csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* word_size 2
Xctrl_dffs csb web cs_bar cs we_bar we clk_buf vdd gnd dff_buf_array_0
Xclkbuf clk clk_buf vdd gnd pdriver_2
Xinv_clk_bar clk_buf clk_bar vdd gnd pinv_8
Xand2_gated_clk_bar cs clk_bar gated_clk_bar vdd gnd pand2_0
Xand2_gated_clk_buf clk_buf cs gated_clk_buf vdd gnd pand2_0
Xbuf_wl_en gated_clk_bar wl_en vdd gnd pdriver_3
Xrbl_bl_delay_inv rbl_bl_delay rbl_bl_delay_bar vdd gnd pinv_8
Xw_en_and we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd pand3_0
Xbuf_s_en_and rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd pand3_1
Xdelay_chain rbl_bl rbl_bl_delay vdd gnd delay_chain_0
Xnand_p_en_bar gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd pnand2_1
Xbuf_p_en_bar p_en_bar_unbuf p_en_bar vdd gnd pdriver_4
.ENDS control_logic_rw

.SUBCKT sram_sp_w2_b256_freepdk45 din0[0] din0[1] addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] addr0[5] addr0[6] addr0[7] csb0 web0 clk0 dout0[0] dout0[1] vdd gnd
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : addr0[5] 
* INPUT : addr0[6] 
* INPUT : addr0[7] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* POWER : vdd 
* GROUND: gnd 
Xbank0 dout0[0] dout0[1] rbl_bl0 bank_din0[0] bank_din0[1] a0[0] a0[1] a0[2] a0[3] a0[4] a0[5] a0[6] a0[7] s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd bank
Xcontrol0 csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd control_logic_rw
Xrow_address0 addr0[3] addr0[4] addr0[5] addr0[6] addr0[7] a0[3] a0[4] a0[5] a0[6] a0[7] clk_buf0 vdd gnd row_addr_dff
Xcol_address0 addr0[0] addr0[1] addr0[2] a0[0] a0[1] a0[2] clk_buf0 vdd gnd col_addr_dff
Xdata_dff0 din0[0] din0[1] bank_din0[0] bank_din0[1] clk_buf0 vdd gnd data_dff
.ENDS sram_sp_w2_b256_freepdk45
