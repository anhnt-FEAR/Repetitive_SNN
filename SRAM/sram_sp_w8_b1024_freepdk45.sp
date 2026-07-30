**************************************************
* OpenRAM generated memory.
* Words: 1024
* Data bits: 8
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

.SUBCKT row_addr_dff din_0 din_1 din_2 din_3 din_4 din_5 din_6 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 7 cols: 1
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r1_c0 din_1 dout_1 clk vdd gnd dff
Xdff_r2_c0 din_2 dout_2 clk vdd gnd dff
Xdff_r3_c0 din_3 dout_3 clk vdd gnd dff
Xdff_r4_c0 din_4 dout_4 clk vdd gnd dff
Xdff_r5_c0 din_5 dout_5 clk vdd gnd dff
Xdff_r6_c0 din_6 dout_6 clk vdd gnd dff
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

.SUBCKT data_dff din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 8
Xdff_r0_c0 din_0 dout_0 clk vdd gnd dff
Xdff_r0_c1 din_1 dout_1 clk vdd gnd dff
Xdff_r0_c2 din_2 dout_2 clk vdd gnd dff
Xdff_r0_c3 din_3 dout_3 clk vdd gnd dff
Xdff_r0_c4 din_4 dout_4 clk vdd gnd dff
Xdff_r0_c5 din_5 dout_5 clk vdd gnd dff
Xdff_r0_c6 din_6 dout_6 clk vdd gnd dff
Xdff_r0_c7 din_7 dout_7 clk vdd gnd dff
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

.SUBCKT precharge_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 en_bar vdd
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
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* OUTPUT: bl_34 
* OUTPUT: br_34 
* OUTPUT: bl_35 
* OUTPUT: br_35 
* OUTPUT: bl_36 
* OUTPUT: br_36 
* OUTPUT: bl_37 
* OUTPUT: br_37 
* OUTPUT: bl_38 
* OUTPUT: br_38 
* OUTPUT: bl_39 
* OUTPUT: br_39 
* OUTPUT: bl_40 
* OUTPUT: br_40 
* OUTPUT: bl_41 
* OUTPUT: br_41 
* OUTPUT: bl_42 
* OUTPUT: br_42 
* OUTPUT: bl_43 
* OUTPUT: br_43 
* OUTPUT: bl_44 
* OUTPUT: br_44 
* OUTPUT: bl_45 
* OUTPUT: br_45 
* OUTPUT: bl_46 
* OUTPUT: br_46 
* OUTPUT: bl_47 
* OUTPUT: br_47 
* OUTPUT: bl_48 
* OUTPUT: br_48 
* OUTPUT: bl_49 
* OUTPUT: br_49 
* OUTPUT: bl_50 
* OUTPUT: br_50 
* OUTPUT: bl_51 
* OUTPUT: br_51 
* OUTPUT: bl_52 
* OUTPUT: br_52 
* OUTPUT: bl_53 
* OUTPUT: br_53 
* OUTPUT: bl_54 
* OUTPUT: br_54 
* OUTPUT: bl_55 
* OUTPUT: br_55 
* OUTPUT: bl_56 
* OUTPUT: br_56 
* OUTPUT: bl_57 
* OUTPUT: br_57 
* OUTPUT: bl_58 
* OUTPUT: br_58 
* OUTPUT: bl_59 
* OUTPUT: br_59 
* OUTPUT: bl_60 
* OUTPUT: br_60 
* OUTPUT: bl_61 
* OUTPUT: br_61 
* OUTPUT: bl_62 
* OUTPUT: br_62 
* OUTPUT: bl_63 
* OUTPUT: br_63 
* OUTPUT: bl_64 
* OUTPUT: br_64 
* INPUT : en_bar 
* POWER : vdd 
* cols: 65 size: 1 bl: bl br: br
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
Xpre_column_17 bl_17 br_17 en_bar vdd precharge_0
Xpre_column_18 bl_18 br_18 en_bar vdd precharge_0
Xpre_column_19 bl_19 br_19 en_bar vdd precharge_0
Xpre_column_20 bl_20 br_20 en_bar vdd precharge_0
Xpre_column_21 bl_21 br_21 en_bar vdd precharge_0
Xpre_column_22 bl_22 br_22 en_bar vdd precharge_0
Xpre_column_23 bl_23 br_23 en_bar vdd precharge_0
Xpre_column_24 bl_24 br_24 en_bar vdd precharge_0
Xpre_column_25 bl_25 br_25 en_bar vdd precharge_0
Xpre_column_26 bl_26 br_26 en_bar vdd precharge_0
Xpre_column_27 bl_27 br_27 en_bar vdd precharge_0
Xpre_column_28 bl_28 br_28 en_bar vdd precharge_0
Xpre_column_29 bl_29 br_29 en_bar vdd precharge_0
Xpre_column_30 bl_30 br_30 en_bar vdd precharge_0
Xpre_column_31 bl_31 br_31 en_bar vdd precharge_0
Xpre_column_32 bl_32 br_32 en_bar vdd precharge_0
Xpre_column_33 bl_33 br_33 en_bar vdd precharge_0
Xpre_column_34 bl_34 br_34 en_bar vdd precharge_0
Xpre_column_35 bl_35 br_35 en_bar vdd precharge_0
Xpre_column_36 bl_36 br_36 en_bar vdd precharge_0
Xpre_column_37 bl_37 br_37 en_bar vdd precharge_0
Xpre_column_38 bl_38 br_38 en_bar vdd precharge_0
Xpre_column_39 bl_39 br_39 en_bar vdd precharge_0
Xpre_column_40 bl_40 br_40 en_bar vdd precharge_0
Xpre_column_41 bl_41 br_41 en_bar vdd precharge_0
Xpre_column_42 bl_42 br_42 en_bar vdd precharge_0
Xpre_column_43 bl_43 br_43 en_bar vdd precharge_0
Xpre_column_44 bl_44 br_44 en_bar vdd precharge_0
Xpre_column_45 bl_45 br_45 en_bar vdd precharge_0
Xpre_column_46 bl_46 br_46 en_bar vdd precharge_0
Xpre_column_47 bl_47 br_47 en_bar vdd precharge_0
Xpre_column_48 bl_48 br_48 en_bar vdd precharge_0
Xpre_column_49 bl_49 br_49 en_bar vdd precharge_0
Xpre_column_50 bl_50 br_50 en_bar vdd precharge_0
Xpre_column_51 bl_51 br_51 en_bar vdd precharge_0
Xpre_column_52 bl_52 br_52 en_bar vdd precharge_0
Xpre_column_53 bl_53 br_53 en_bar vdd precharge_0
Xpre_column_54 bl_54 br_54 en_bar vdd precharge_0
Xpre_column_55 bl_55 br_55 en_bar vdd precharge_0
Xpre_column_56 bl_56 br_56 en_bar vdd precharge_0
Xpre_column_57 bl_57 br_57 en_bar vdd precharge_0
Xpre_column_58 bl_58 br_58 en_bar vdd precharge_0
Xpre_column_59 bl_59 br_59 en_bar vdd precharge_0
Xpre_column_60 bl_60 br_60 en_bar vdd precharge_0
Xpre_column_61 bl_61 br_61 en_bar vdd precharge_0
Xpre_column_62 bl_62 br_62 en_bar vdd precharge_0
Xpre_column_63 bl_63 br_63 en_bar vdd precharge_0
Xpre_column_64 bl_64 br_64 en_bar vdd precharge_0
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


.SUBCKT sense_amp_array_0 data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3 data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* words_per_row: 8
Xsa_d0 bl_0 br_0 data_0 en vdd gnd sense_amp
Xsa_d1 bl_1 br_1 data_1 en vdd gnd sense_amp
Xsa_d2 bl_2 br_2 data_2 en vdd gnd sense_amp
Xsa_d3 bl_3 br_3 data_3 en vdd gnd sense_amp
Xsa_d4 bl_4 br_4 data_4 en vdd gnd sense_amp
Xsa_d5 bl_5 br_5 data_5 en vdd gnd sense_amp
Xsa_d6 bl_6 br_6 data_6 en vdd gnd sense_amp
Xsa_d7 bl_7 br_7 data_7 en vdd gnd sense_amp
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

.SUBCKT single_level_column_mux_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 sel_0 sel_1 sel_2 sel_3 sel_4 sel_5 sel_6 sel_7 bl_out_0 br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3 bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7 br_out_7 gnd
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
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
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
* INOUT : bl_out_2 
* INOUT : br_out_2 
* INOUT : bl_out_3 
* INOUT : br_out_3 
* INOUT : bl_out_4 
* INOUT : br_out_4 
* INOUT : bl_out_5 
* INOUT : br_out_5 
* INOUT : bl_out_6 
* INOUT : br_out_6 
* INOUT : bl_out_7 
* INOUT : br_out_7 
* INOUT : gnd 
* cols: 64 word_size: 8 bl: bl br: br
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
XXMUX16 bl_16 br_16 bl_out_2 br_out_2 sel_0 gnd single_level_column_mux_0
XXMUX17 bl_17 br_17 bl_out_2 br_out_2 sel_1 gnd single_level_column_mux_0
XXMUX18 bl_18 br_18 bl_out_2 br_out_2 sel_2 gnd single_level_column_mux_0
XXMUX19 bl_19 br_19 bl_out_2 br_out_2 sel_3 gnd single_level_column_mux_0
XXMUX20 bl_20 br_20 bl_out_2 br_out_2 sel_4 gnd single_level_column_mux_0
XXMUX21 bl_21 br_21 bl_out_2 br_out_2 sel_5 gnd single_level_column_mux_0
XXMUX22 bl_22 br_22 bl_out_2 br_out_2 sel_6 gnd single_level_column_mux_0
XXMUX23 bl_23 br_23 bl_out_2 br_out_2 sel_7 gnd single_level_column_mux_0
XXMUX24 bl_24 br_24 bl_out_3 br_out_3 sel_0 gnd single_level_column_mux_0
XXMUX25 bl_25 br_25 bl_out_3 br_out_3 sel_1 gnd single_level_column_mux_0
XXMUX26 bl_26 br_26 bl_out_3 br_out_3 sel_2 gnd single_level_column_mux_0
XXMUX27 bl_27 br_27 bl_out_3 br_out_3 sel_3 gnd single_level_column_mux_0
XXMUX28 bl_28 br_28 bl_out_3 br_out_3 sel_4 gnd single_level_column_mux_0
XXMUX29 bl_29 br_29 bl_out_3 br_out_3 sel_5 gnd single_level_column_mux_0
XXMUX30 bl_30 br_30 bl_out_3 br_out_3 sel_6 gnd single_level_column_mux_0
XXMUX31 bl_31 br_31 bl_out_3 br_out_3 sel_7 gnd single_level_column_mux_0
XXMUX32 bl_32 br_32 bl_out_4 br_out_4 sel_0 gnd single_level_column_mux_0
XXMUX33 bl_33 br_33 bl_out_4 br_out_4 sel_1 gnd single_level_column_mux_0
XXMUX34 bl_34 br_34 bl_out_4 br_out_4 sel_2 gnd single_level_column_mux_0
XXMUX35 bl_35 br_35 bl_out_4 br_out_4 sel_3 gnd single_level_column_mux_0
XXMUX36 bl_36 br_36 bl_out_4 br_out_4 sel_4 gnd single_level_column_mux_0
XXMUX37 bl_37 br_37 bl_out_4 br_out_4 sel_5 gnd single_level_column_mux_0
XXMUX38 bl_38 br_38 bl_out_4 br_out_4 sel_6 gnd single_level_column_mux_0
XXMUX39 bl_39 br_39 bl_out_4 br_out_4 sel_7 gnd single_level_column_mux_0
XXMUX40 bl_40 br_40 bl_out_5 br_out_5 sel_0 gnd single_level_column_mux_0
XXMUX41 bl_41 br_41 bl_out_5 br_out_5 sel_1 gnd single_level_column_mux_0
XXMUX42 bl_42 br_42 bl_out_5 br_out_5 sel_2 gnd single_level_column_mux_0
XXMUX43 bl_43 br_43 bl_out_5 br_out_5 sel_3 gnd single_level_column_mux_0
XXMUX44 bl_44 br_44 bl_out_5 br_out_5 sel_4 gnd single_level_column_mux_0
XXMUX45 bl_45 br_45 bl_out_5 br_out_5 sel_5 gnd single_level_column_mux_0
XXMUX46 bl_46 br_46 bl_out_5 br_out_5 sel_6 gnd single_level_column_mux_0
XXMUX47 bl_47 br_47 bl_out_5 br_out_5 sel_7 gnd single_level_column_mux_0
XXMUX48 bl_48 br_48 bl_out_6 br_out_6 sel_0 gnd single_level_column_mux_0
XXMUX49 bl_49 br_49 bl_out_6 br_out_6 sel_1 gnd single_level_column_mux_0
XXMUX50 bl_50 br_50 bl_out_6 br_out_6 sel_2 gnd single_level_column_mux_0
XXMUX51 bl_51 br_51 bl_out_6 br_out_6 sel_3 gnd single_level_column_mux_0
XXMUX52 bl_52 br_52 bl_out_6 br_out_6 sel_4 gnd single_level_column_mux_0
XXMUX53 bl_53 br_53 bl_out_6 br_out_6 sel_5 gnd single_level_column_mux_0
XXMUX54 bl_54 br_54 bl_out_6 br_out_6 sel_6 gnd single_level_column_mux_0
XXMUX55 bl_55 br_55 bl_out_6 br_out_6 sel_7 gnd single_level_column_mux_0
XXMUX56 bl_56 br_56 bl_out_7 br_out_7 sel_0 gnd single_level_column_mux_0
XXMUX57 bl_57 br_57 bl_out_7 br_out_7 sel_1 gnd single_level_column_mux_0
XXMUX58 bl_58 br_58 bl_out_7 br_out_7 sel_2 gnd single_level_column_mux_0
XXMUX59 bl_59 br_59 bl_out_7 br_out_7 sel_3 gnd single_level_column_mux_0
XXMUX60 bl_60 br_60 bl_out_7 br_out_7 sel_4 gnd single_level_column_mux_0
XXMUX61 bl_61 br_61 bl_out_7 br_out_7 sel_5 gnd single_level_column_mux_0
XXMUX62 bl_62 br_62 bl_out_7 br_out_7 sel_6 gnd single_level_column_mux_0
XXMUX63 bl_63 br_63 bl_out_7 br_out_7 sel_7 gnd single_level_column_mux_0
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


.SUBCKT write_driver_array_0 data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 en vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
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
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 8
Xwrite_driver0 data_0 bl_0 br_0 en vdd gnd write_driver
Xwrite_driver8 data_1 bl_1 br_1 en vdd gnd write_driver
Xwrite_driver16 data_2 bl_2 br_2 en vdd gnd write_driver
Xwrite_driver24 data_3 bl_3 br_3 en vdd gnd write_driver
Xwrite_driver32 data_4 bl_4 br_4 en vdd gnd write_driver
Xwrite_driver40 data_5 bl_5 br_5 en vdd gnd write_driver
Xwrite_driver48 data_6 bl_6 br_6 en vdd gnd write_driver
Xwrite_driver56 data_7 bl_7 br_7 en vdd gnd write_driver
.ENDS write_driver_array_0

.SUBCKT port_data_0 rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 sel_0 sel_1 sel_2 sel_3 sel_4 sel_5 sel_6 sel_7 s_en p_en_bar w_en vdd gnd
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
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
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
Xprecharge_array0 rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 p_en_bar vdd precharge_array_0
Xsense_amp_array0 dout_0 bl_out_0 br_out_0 dout_1 bl_out_1 br_out_1 dout_2 bl_out_2 br_out_2 dout_3 bl_out_3 br_out_3 dout_4 bl_out_4 br_out_4 dout_5 bl_out_5 br_out_5 dout_6 bl_out_6 br_out_6 dout_7 bl_out_7 br_out_7 s_en vdd gnd sense_amp_array_0
Xwrite_driver_array0 din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 bl_out_0 br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3 bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7 br_out_7 w_en vdd gnd write_driver_array_0
Xcolumn_mux_array0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 sel_0 sel_1 sel_2 sel_3 sel_4 sel_5 sel_6 sel_7 bl_out_0 br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3 bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7 br_out_7 gnd single_level_column_mux_array_0
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

.SUBCKT hierarchical_decoder_0 addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 addr_6 decode_0 decode_1 decode_2 decode_3 decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10 decode_11 decode_12 decode_13 decode_14 decode_15 decode_16 decode_17 decode_18 decode_19 decode_20 decode_21 decode_22 decode_23 decode_24 decode_25 decode_26 decode_27 decode_28 decode_29 decode_30 decode_31 decode_32 decode_33 decode_34 decode_35 decode_36 decode_37 decode_38 decode_39 decode_40 decode_41 decode_42 decode_43 decode_44 decode_45 decode_46 decode_47 decode_48 decode_49 decode_50 decode_51 decode_52 decode_53 decode_54 decode_55 decode_56 decode_57 decode_58 decode_59 decode_60 decode_61 decode_62 decode_63 decode_64 decode_65 decode_66 decode_67 decode_68 decode_69 decode_70 decode_71 decode_72 decode_73 decode_74 decode_75 decode_76 decode_77 decode_78 decode_79 decode_80 decode_81 decode_82 decode_83 decode_84 decode_85 decode_86 decode_87 decode_88 decode_89 decode_90 decode_91 decode_92 decode_93 decode_94 decode_95 decode_96 decode_97 decode_98 decode_99 decode_100 decode_101 decode_102 decode_103 decode_104 decode_105 decode_106 decode_107 decode_108 decode_109 decode_110 decode_111 decode_112 decode_113 decode_114 decode_115 decode_116 decode_117 decode_118 decode_119 decode_120 decode_121 decode_122 decode_123 decode_124 decode_125 decode_126 decode_127 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* INPUT : addr_6 
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
* OUTPUT: decode_32 
* OUTPUT: decode_33 
* OUTPUT: decode_34 
* OUTPUT: decode_35 
* OUTPUT: decode_36 
* OUTPUT: decode_37 
* OUTPUT: decode_38 
* OUTPUT: decode_39 
* OUTPUT: decode_40 
* OUTPUT: decode_41 
* OUTPUT: decode_42 
* OUTPUT: decode_43 
* OUTPUT: decode_44 
* OUTPUT: decode_45 
* OUTPUT: decode_46 
* OUTPUT: decode_47 
* OUTPUT: decode_48 
* OUTPUT: decode_49 
* OUTPUT: decode_50 
* OUTPUT: decode_51 
* OUTPUT: decode_52 
* OUTPUT: decode_53 
* OUTPUT: decode_54 
* OUTPUT: decode_55 
* OUTPUT: decode_56 
* OUTPUT: decode_57 
* OUTPUT: decode_58 
* OUTPUT: decode_59 
* OUTPUT: decode_60 
* OUTPUT: decode_61 
* OUTPUT: decode_62 
* OUTPUT: decode_63 
* OUTPUT: decode_64 
* OUTPUT: decode_65 
* OUTPUT: decode_66 
* OUTPUT: decode_67 
* OUTPUT: decode_68 
* OUTPUT: decode_69 
* OUTPUT: decode_70 
* OUTPUT: decode_71 
* OUTPUT: decode_72 
* OUTPUT: decode_73 
* OUTPUT: decode_74 
* OUTPUT: decode_75 
* OUTPUT: decode_76 
* OUTPUT: decode_77 
* OUTPUT: decode_78 
* OUTPUT: decode_79 
* OUTPUT: decode_80 
* OUTPUT: decode_81 
* OUTPUT: decode_82 
* OUTPUT: decode_83 
* OUTPUT: decode_84 
* OUTPUT: decode_85 
* OUTPUT: decode_86 
* OUTPUT: decode_87 
* OUTPUT: decode_88 
* OUTPUT: decode_89 
* OUTPUT: decode_90 
* OUTPUT: decode_91 
* OUTPUT: decode_92 
* OUTPUT: decode_93 
* OUTPUT: decode_94 
* OUTPUT: decode_95 
* OUTPUT: decode_96 
* OUTPUT: decode_97 
* OUTPUT: decode_98 
* OUTPUT: decode_99 
* OUTPUT: decode_100 
* OUTPUT: decode_101 
* OUTPUT: decode_102 
* OUTPUT: decode_103 
* OUTPUT: decode_104 
* OUTPUT: decode_105 
* OUTPUT: decode_106 
* OUTPUT: decode_107 
* OUTPUT: decode_108 
* OUTPUT: decode_109 
* OUTPUT: decode_110 
* OUTPUT: decode_111 
* OUTPUT: decode_112 
* OUTPUT: decode_113 
* OUTPUT: decode_114 
* OUTPUT: decode_115 
* OUTPUT: decode_116 
* OUTPUT: decode_117 
* OUTPUT: decode_118 
* OUTPUT: decode_119 
* OUTPUT: decode_120 
* OUTPUT: decode_121 
* OUTPUT: decode_122 
* OUTPUT: decode_123 
* OUTPUT: decode_124 
* OUTPUT: decode_125 
* OUTPUT: decode_126 
* OUTPUT: decode_127 
* POWER : vdd 
* GROUND: gnd 
Xpre_0 addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd hierarchical_predecode2x4_0
Xpre_1 addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd hierarchical_predecode2x4_0
Xpre3x8_0 addr_4 addr_5 addr_6 out_8 out_9 out_10 out_11 out_12 out_13 out_14 out_15 vdd gnd hierarchical_predecode3x8_0
XDEC_NAND_0 out_0 out_4 out_8 Z_0 vdd gnd pnand3_0
XDEC_NAND_16 out_0 out_4 out_9 Z_16 vdd gnd pnand3_0
XDEC_NAND_32 out_0 out_4 out_10 Z_32 vdd gnd pnand3_0
XDEC_NAND_48 out_0 out_4 out_11 Z_48 vdd gnd pnand3_0
XDEC_NAND_64 out_0 out_4 out_12 Z_64 vdd gnd pnand3_0
XDEC_NAND_80 out_0 out_4 out_13 Z_80 vdd gnd pnand3_0
XDEC_NAND_96 out_0 out_4 out_14 Z_96 vdd gnd pnand3_0
XDEC_NAND_112 out_0 out_4 out_15 Z_112 vdd gnd pnand3_0
XDEC_NAND_4 out_0 out_5 out_8 Z_4 vdd gnd pnand3_0
XDEC_NAND_20 out_0 out_5 out_9 Z_20 vdd gnd pnand3_0
XDEC_NAND_36 out_0 out_5 out_10 Z_36 vdd gnd pnand3_0
XDEC_NAND_52 out_0 out_5 out_11 Z_52 vdd gnd pnand3_0
XDEC_NAND_68 out_0 out_5 out_12 Z_68 vdd gnd pnand3_0
XDEC_NAND_84 out_0 out_5 out_13 Z_84 vdd gnd pnand3_0
XDEC_NAND_100 out_0 out_5 out_14 Z_100 vdd gnd pnand3_0
XDEC_NAND_116 out_0 out_5 out_15 Z_116 vdd gnd pnand3_0
XDEC_NAND_8 out_0 out_6 out_8 Z_8 vdd gnd pnand3_0
XDEC_NAND_24 out_0 out_6 out_9 Z_24 vdd gnd pnand3_0
XDEC_NAND_40 out_0 out_6 out_10 Z_40 vdd gnd pnand3_0
XDEC_NAND_56 out_0 out_6 out_11 Z_56 vdd gnd pnand3_0
XDEC_NAND_72 out_0 out_6 out_12 Z_72 vdd gnd pnand3_0
XDEC_NAND_88 out_0 out_6 out_13 Z_88 vdd gnd pnand3_0
XDEC_NAND_104 out_0 out_6 out_14 Z_104 vdd gnd pnand3_0
XDEC_NAND_120 out_0 out_6 out_15 Z_120 vdd gnd pnand3_0
XDEC_NAND_12 out_0 out_7 out_8 Z_12 vdd gnd pnand3_0
XDEC_NAND_28 out_0 out_7 out_9 Z_28 vdd gnd pnand3_0
XDEC_NAND_44 out_0 out_7 out_10 Z_44 vdd gnd pnand3_0
XDEC_NAND_60 out_0 out_7 out_11 Z_60 vdd gnd pnand3_0
XDEC_NAND_76 out_0 out_7 out_12 Z_76 vdd gnd pnand3_0
XDEC_NAND_92 out_0 out_7 out_13 Z_92 vdd gnd pnand3_0
XDEC_NAND_108 out_0 out_7 out_14 Z_108 vdd gnd pnand3_0
XDEC_NAND_124 out_0 out_7 out_15 Z_124 vdd gnd pnand3_0
XDEC_NAND_1 out_1 out_4 out_8 Z_1 vdd gnd pnand3_0
XDEC_NAND_17 out_1 out_4 out_9 Z_17 vdd gnd pnand3_0
XDEC_NAND_33 out_1 out_4 out_10 Z_33 vdd gnd pnand3_0
XDEC_NAND_49 out_1 out_4 out_11 Z_49 vdd gnd pnand3_0
XDEC_NAND_65 out_1 out_4 out_12 Z_65 vdd gnd pnand3_0
XDEC_NAND_81 out_1 out_4 out_13 Z_81 vdd gnd pnand3_0
XDEC_NAND_97 out_1 out_4 out_14 Z_97 vdd gnd pnand3_0
XDEC_NAND_113 out_1 out_4 out_15 Z_113 vdd gnd pnand3_0
XDEC_NAND_5 out_1 out_5 out_8 Z_5 vdd gnd pnand3_0
XDEC_NAND_21 out_1 out_5 out_9 Z_21 vdd gnd pnand3_0
XDEC_NAND_37 out_1 out_5 out_10 Z_37 vdd gnd pnand3_0
XDEC_NAND_53 out_1 out_5 out_11 Z_53 vdd gnd pnand3_0
XDEC_NAND_69 out_1 out_5 out_12 Z_69 vdd gnd pnand3_0
XDEC_NAND_85 out_1 out_5 out_13 Z_85 vdd gnd pnand3_0
XDEC_NAND_101 out_1 out_5 out_14 Z_101 vdd gnd pnand3_0
XDEC_NAND_117 out_1 out_5 out_15 Z_117 vdd gnd pnand3_0
XDEC_NAND_9 out_1 out_6 out_8 Z_9 vdd gnd pnand3_0
XDEC_NAND_25 out_1 out_6 out_9 Z_25 vdd gnd pnand3_0
XDEC_NAND_41 out_1 out_6 out_10 Z_41 vdd gnd pnand3_0
XDEC_NAND_57 out_1 out_6 out_11 Z_57 vdd gnd pnand3_0
XDEC_NAND_73 out_1 out_6 out_12 Z_73 vdd gnd pnand3_0
XDEC_NAND_89 out_1 out_6 out_13 Z_89 vdd gnd pnand3_0
XDEC_NAND_105 out_1 out_6 out_14 Z_105 vdd gnd pnand3_0
XDEC_NAND_121 out_1 out_6 out_15 Z_121 vdd gnd pnand3_0
XDEC_NAND_13 out_1 out_7 out_8 Z_13 vdd gnd pnand3_0
XDEC_NAND_29 out_1 out_7 out_9 Z_29 vdd gnd pnand3_0
XDEC_NAND_45 out_1 out_7 out_10 Z_45 vdd gnd pnand3_0
XDEC_NAND_61 out_1 out_7 out_11 Z_61 vdd gnd pnand3_0
XDEC_NAND_77 out_1 out_7 out_12 Z_77 vdd gnd pnand3_0
XDEC_NAND_93 out_1 out_7 out_13 Z_93 vdd gnd pnand3_0
XDEC_NAND_109 out_1 out_7 out_14 Z_109 vdd gnd pnand3_0
XDEC_NAND_125 out_1 out_7 out_15 Z_125 vdd gnd pnand3_0
XDEC_NAND_2 out_2 out_4 out_8 Z_2 vdd gnd pnand3_0
XDEC_NAND_18 out_2 out_4 out_9 Z_18 vdd gnd pnand3_0
XDEC_NAND_34 out_2 out_4 out_10 Z_34 vdd gnd pnand3_0
XDEC_NAND_50 out_2 out_4 out_11 Z_50 vdd gnd pnand3_0
XDEC_NAND_66 out_2 out_4 out_12 Z_66 vdd gnd pnand3_0
XDEC_NAND_82 out_2 out_4 out_13 Z_82 vdd gnd pnand3_0
XDEC_NAND_98 out_2 out_4 out_14 Z_98 vdd gnd pnand3_0
XDEC_NAND_114 out_2 out_4 out_15 Z_114 vdd gnd pnand3_0
XDEC_NAND_6 out_2 out_5 out_8 Z_6 vdd gnd pnand3_0
XDEC_NAND_22 out_2 out_5 out_9 Z_22 vdd gnd pnand3_0
XDEC_NAND_38 out_2 out_5 out_10 Z_38 vdd gnd pnand3_0
XDEC_NAND_54 out_2 out_5 out_11 Z_54 vdd gnd pnand3_0
XDEC_NAND_70 out_2 out_5 out_12 Z_70 vdd gnd pnand3_0
XDEC_NAND_86 out_2 out_5 out_13 Z_86 vdd gnd pnand3_0
XDEC_NAND_102 out_2 out_5 out_14 Z_102 vdd gnd pnand3_0
XDEC_NAND_118 out_2 out_5 out_15 Z_118 vdd gnd pnand3_0
XDEC_NAND_10 out_2 out_6 out_8 Z_10 vdd gnd pnand3_0
XDEC_NAND_26 out_2 out_6 out_9 Z_26 vdd gnd pnand3_0
XDEC_NAND_42 out_2 out_6 out_10 Z_42 vdd gnd pnand3_0
XDEC_NAND_58 out_2 out_6 out_11 Z_58 vdd gnd pnand3_0
XDEC_NAND_74 out_2 out_6 out_12 Z_74 vdd gnd pnand3_0
XDEC_NAND_90 out_2 out_6 out_13 Z_90 vdd gnd pnand3_0
XDEC_NAND_106 out_2 out_6 out_14 Z_106 vdd gnd pnand3_0
XDEC_NAND_122 out_2 out_6 out_15 Z_122 vdd gnd pnand3_0
XDEC_NAND_14 out_2 out_7 out_8 Z_14 vdd gnd pnand3_0
XDEC_NAND_30 out_2 out_7 out_9 Z_30 vdd gnd pnand3_0
XDEC_NAND_46 out_2 out_7 out_10 Z_46 vdd gnd pnand3_0
XDEC_NAND_62 out_2 out_7 out_11 Z_62 vdd gnd pnand3_0
XDEC_NAND_78 out_2 out_7 out_12 Z_78 vdd gnd pnand3_0
XDEC_NAND_94 out_2 out_7 out_13 Z_94 vdd gnd pnand3_0
XDEC_NAND_110 out_2 out_7 out_14 Z_110 vdd gnd pnand3_0
XDEC_NAND_126 out_2 out_7 out_15 Z_126 vdd gnd pnand3_0
XDEC_NAND_3 out_3 out_4 out_8 Z_3 vdd gnd pnand3_0
XDEC_NAND_19 out_3 out_4 out_9 Z_19 vdd gnd pnand3_0
XDEC_NAND_35 out_3 out_4 out_10 Z_35 vdd gnd pnand3_0
XDEC_NAND_51 out_3 out_4 out_11 Z_51 vdd gnd pnand3_0
XDEC_NAND_67 out_3 out_4 out_12 Z_67 vdd gnd pnand3_0
XDEC_NAND_83 out_3 out_4 out_13 Z_83 vdd gnd pnand3_0
XDEC_NAND_99 out_3 out_4 out_14 Z_99 vdd gnd pnand3_0
XDEC_NAND_115 out_3 out_4 out_15 Z_115 vdd gnd pnand3_0
XDEC_NAND_7 out_3 out_5 out_8 Z_7 vdd gnd pnand3_0
XDEC_NAND_23 out_3 out_5 out_9 Z_23 vdd gnd pnand3_0
XDEC_NAND_39 out_3 out_5 out_10 Z_39 vdd gnd pnand3_0
XDEC_NAND_55 out_3 out_5 out_11 Z_55 vdd gnd pnand3_0
XDEC_NAND_71 out_3 out_5 out_12 Z_71 vdd gnd pnand3_0
XDEC_NAND_87 out_3 out_5 out_13 Z_87 vdd gnd pnand3_0
XDEC_NAND_103 out_3 out_5 out_14 Z_103 vdd gnd pnand3_0
XDEC_NAND_119 out_3 out_5 out_15 Z_119 vdd gnd pnand3_0
XDEC_NAND_11 out_3 out_6 out_8 Z_11 vdd gnd pnand3_0
XDEC_NAND_27 out_3 out_6 out_9 Z_27 vdd gnd pnand3_0
XDEC_NAND_43 out_3 out_6 out_10 Z_43 vdd gnd pnand3_0
XDEC_NAND_59 out_3 out_6 out_11 Z_59 vdd gnd pnand3_0
XDEC_NAND_75 out_3 out_6 out_12 Z_75 vdd gnd pnand3_0
XDEC_NAND_91 out_3 out_6 out_13 Z_91 vdd gnd pnand3_0
XDEC_NAND_107 out_3 out_6 out_14 Z_107 vdd gnd pnand3_0
XDEC_NAND_123 out_3 out_6 out_15 Z_123 vdd gnd pnand3_0
XDEC_NAND_15 out_3 out_7 out_8 Z_15 vdd gnd pnand3_0
XDEC_NAND_31 out_3 out_7 out_9 Z_31 vdd gnd pnand3_0
XDEC_NAND_47 out_3 out_7 out_10 Z_47 vdd gnd pnand3_0
XDEC_NAND_63 out_3 out_7 out_11 Z_63 vdd gnd pnand3_0
XDEC_NAND_79 out_3 out_7 out_12 Z_79 vdd gnd pnand3_0
XDEC_NAND_95 out_3 out_7 out_13 Z_95 vdd gnd pnand3_0
XDEC_NAND_111 out_3 out_7 out_14 Z_111 vdd gnd pnand3_0
XDEC_NAND_127 out_3 out_7 out_15 Z_127 vdd gnd pnand3_0
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
XDEC_INV_32 Z_32 decode_32 vdd gnd pinv_0
XDEC_INV_33 Z_33 decode_33 vdd gnd pinv_0
XDEC_INV_34 Z_34 decode_34 vdd gnd pinv_0
XDEC_INV_35 Z_35 decode_35 vdd gnd pinv_0
XDEC_INV_36 Z_36 decode_36 vdd gnd pinv_0
XDEC_INV_37 Z_37 decode_37 vdd gnd pinv_0
XDEC_INV_38 Z_38 decode_38 vdd gnd pinv_0
XDEC_INV_39 Z_39 decode_39 vdd gnd pinv_0
XDEC_INV_40 Z_40 decode_40 vdd gnd pinv_0
XDEC_INV_41 Z_41 decode_41 vdd gnd pinv_0
XDEC_INV_42 Z_42 decode_42 vdd gnd pinv_0
XDEC_INV_43 Z_43 decode_43 vdd gnd pinv_0
XDEC_INV_44 Z_44 decode_44 vdd gnd pinv_0
XDEC_INV_45 Z_45 decode_45 vdd gnd pinv_0
XDEC_INV_46 Z_46 decode_46 vdd gnd pinv_0
XDEC_INV_47 Z_47 decode_47 vdd gnd pinv_0
XDEC_INV_48 Z_48 decode_48 vdd gnd pinv_0
XDEC_INV_49 Z_49 decode_49 vdd gnd pinv_0
XDEC_INV_50 Z_50 decode_50 vdd gnd pinv_0
XDEC_INV_51 Z_51 decode_51 vdd gnd pinv_0
XDEC_INV_52 Z_52 decode_52 vdd gnd pinv_0
XDEC_INV_53 Z_53 decode_53 vdd gnd pinv_0
XDEC_INV_54 Z_54 decode_54 vdd gnd pinv_0
XDEC_INV_55 Z_55 decode_55 vdd gnd pinv_0
XDEC_INV_56 Z_56 decode_56 vdd gnd pinv_0
XDEC_INV_57 Z_57 decode_57 vdd gnd pinv_0
XDEC_INV_58 Z_58 decode_58 vdd gnd pinv_0
XDEC_INV_59 Z_59 decode_59 vdd gnd pinv_0
XDEC_INV_60 Z_60 decode_60 vdd gnd pinv_0
XDEC_INV_61 Z_61 decode_61 vdd gnd pinv_0
XDEC_INV_62 Z_62 decode_62 vdd gnd pinv_0
XDEC_INV_63 Z_63 decode_63 vdd gnd pinv_0
XDEC_INV_64 Z_64 decode_64 vdd gnd pinv_0
XDEC_INV_65 Z_65 decode_65 vdd gnd pinv_0
XDEC_INV_66 Z_66 decode_66 vdd gnd pinv_0
XDEC_INV_67 Z_67 decode_67 vdd gnd pinv_0
XDEC_INV_68 Z_68 decode_68 vdd gnd pinv_0
XDEC_INV_69 Z_69 decode_69 vdd gnd pinv_0
XDEC_INV_70 Z_70 decode_70 vdd gnd pinv_0
XDEC_INV_71 Z_71 decode_71 vdd gnd pinv_0
XDEC_INV_72 Z_72 decode_72 vdd gnd pinv_0
XDEC_INV_73 Z_73 decode_73 vdd gnd pinv_0
XDEC_INV_74 Z_74 decode_74 vdd gnd pinv_0
XDEC_INV_75 Z_75 decode_75 vdd gnd pinv_0
XDEC_INV_76 Z_76 decode_76 vdd gnd pinv_0
XDEC_INV_77 Z_77 decode_77 vdd gnd pinv_0
XDEC_INV_78 Z_78 decode_78 vdd gnd pinv_0
XDEC_INV_79 Z_79 decode_79 vdd gnd pinv_0
XDEC_INV_80 Z_80 decode_80 vdd gnd pinv_0
XDEC_INV_81 Z_81 decode_81 vdd gnd pinv_0
XDEC_INV_82 Z_82 decode_82 vdd gnd pinv_0
XDEC_INV_83 Z_83 decode_83 vdd gnd pinv_0
XDEC_INV_84 Z_84 decode_84 vdd gnd pinv_0
XDEC_INV_85 Z_85 decode_85 vdd gnd pinv_0
XDEC_INV_86 Z_86 decode_86 vdd gnd pinv_0
XDEC_INV_87 Z_87 decode_87 vdd gnd pinv_0
XDEC_INV_88 Z_88 decode_88 vdd gnd pinv_0
XDEC_INV_89 Z_89 decode_89 vdd gnd pinv_0
XDEC_INV_90 Z_90 decode_90 vdd gnd pinv_0
XDEC_INV_91 Z_91 decode_91 vdd gnd pinv_0
XDEC_INV_92 Z_92 decode_92 vdd gnd pinv_0
XDEC_INV_93 Z_93 decode_93 vdd gnd pinv_0
XDEC_INV_94 Z_94 decode_94 vdd gnd pinv_0
XDEC_INV_95 Z_95 decode_95 vdd gnd pinv_0
XDEC_INV_96 Z_96 decode_96 vdd gnd pinv_0
XDEC_INV_97 Z_97 decode_97 vdd gnd pinv_0
XDEC_INV_98 Z_98 decode_98 vdd gnd pinv_0
XDEC_INV_99 Z_99 decode_99 vdd gnd pinv_0
XDEC_INV_100 Z_100 decode_100 vdd gnd pinv_0
XDEC_INV_101 Z_101 decode_101 vdd gnd pinv_0
XDEC_INV_102 Z_102 decode_102 vdd gnd pinv_0
XDEC_INV_103 Z_103 decode_103 vdd gnd pinv_0
XDEC_INV_104 Z_104 decode_104 vdd gnd pinv_0
XDEC_INV_105 Z_105 decode_105 vdd gnd pinv_0
XDEC_INV_106 Z_106 decode_106 vdd gnd pinv_0
XDEC_INV_107 Z_107 decode_107 vdd gnd pinv_0
XDEC_INV_108 Z_108 decode_108 vdd gnd pinv_0
XDEC_INV_109 Z_109 decode_109 vdd gnd pinv_0
XDEC_INV_110 Z_110 decode_110 vdd gnd pinv_0
XDEC_INV_111 Z_111 decode_111 vdd gnd pinv_0
XDEC_INV_112 Z_112 decode_112 vdd gnd pinv_0
XDEC_INV_113 Z_113 decode_113 vdd gnd pinv_0
XDEC_INV_114 Z_114 decode_114 vdd gnd pinv_0
XDEC_INV_115 Z_115 decode_115 vdd gnd pinv_0
XDEC_INV_116 Z_116 decode_116 vdd gnd pinv_0
XDEC_INV_117 Z_117 decode_117 vdd gnd pinv_0
XDEC_INV_118 Z_118 decode_118 vdd gnd pinv_0
XDEC_INV_119 Z_119 decode_119 vdd gnd pinv_0
XDEC_INV_120 Z_120 decode_120 vdd gnd pinv_0
XDEC_INV_121 Z_121 decode_121 vdd gnd pinv_0
XDEC_INV_122 Z_122 decode_122 vdd gnd pinv_0
XDEC_INV_123 Z_123 decode_123 vdd gnd pinv_0
XDEC_INV_124 Z_124 decode_124 vdd gnd pinv_0
XDEC_INV_125 Z_125 decode_125 vdd gnd pinv_0
XDEC_INV_126 Z_126 decode_126 vdd gnd pinv_0
XDEC_INV_127 Z_127 decode_127 vdd gnd pinv_0
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

* ptx M{0} {1} nmos_vtg m=6 w=0.105u l=0.05u pd=0.31u ps=0.31u as=0.01p ad=0.01p

* ptx M{0} {1} pmos_vtg m=6 w=0.315u l=0.05u pd=0.73u ps=0.73u as=0.04p ad=0.04p

.SUBCKT pinv_3 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=6 w=0.315u l=0.05u pd=0.73u ps=0.73u as=0.04p ad=0.04p
Mpinv_nmos Z A gnd gnd nmos_vtg m=6 w=0.105u l=0.05u pd=0.31u ps=0.31u as=0.01p ad=0.01p
.ENDS pinv_3

* ptx M{0} {1} nmos_vtg m=17 w=0.11u l=0.05u pd=0.32u ps=0.32u as=0.01p ad=0.01p

* ptx M{0} {1} pmos_vtg m=17 w=0.3325u l=0.05u pd=0.77u ps=0.77u as=0.04p ad=0.04p

.SUBCKT pinv_4 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=17 w=0.3325u l=0.05u pd=0.77u ps=0.77u as=0.04p ad=0.04p
Mpinv_nmos Z A gnd gnd nmos_vtg m=17 w=0.11u l=0.05u pd=0.32u ps=0.32u as=0.01p ad=0.01p
.ENDS pinv_4

.SUBCKT pdriver_0 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 2, 7, 21]
Xbuf_inv1 A Zb1_int vdd gnd pinv_1
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_1
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_2
Xbuf_inv4 Zb3_int Zb4_int vdd gnd pinv_3
Xbuf_inv5 Zb4_int Z vdd gnd pinv_4
.ENDS pdriver_0

.SUBCKT pinv_5 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_5

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

.SUBCKT wordline_driver_0 in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12 in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23 in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 in_32 in_33 in_34 in_35 in_36 in_37 in_38 in_39 in_40 in_41 in_42 in_43 in_44 in_45 in_46 in_47 in_48 in_49 in_50 in_51 in_52 in_53 in_54 in_55 in_56 in_57 in_58 in_59 in_60 in_61 in_62 in_63 in_64 in_65 in_66 in_67 in_68 in_69 in_70 in_71 in_72 in_73 in_74 in_75 in_76 in_77 in_78 in_79 in_80 in_81 in_82 in_83 in_84 in_85 in_86 in_87 in_88 in_89 in_90 in_91 in_92 in_93 in_94 in_95 in_96 in_97 in_98 in_99 in_100 in_101 in_102 in_103 in_104 in_105 in_106 in_107 in_108 in_109 in_110 in_111 in_112 in_113 in_114 in_115 in_116 in_117 in_118 in_119 in_120 in_121 in_122 in_123 in_124 in_125 in_126 in_127 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 en vdd gnd
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
* INPUT : in_32 
* INPUT : in_33 
* INPUT : in_34 
* INPUT : in_35 
* INPUT : in_36 
* INPUT : in_37 
* INPUT : in_38 
* INPUT : in_39 
* INPUT : in_40 
* INPUT : in_41 
* INPUT : in_42 
* INPUT : in_43 
* INPUT : in_44 
* INPUT : in_45 
* INPUT : in_46 
* INPUT : in_47 
* INPUT : in_48 
* INPUT : in_49 
* INPUT : in_50 
* INPUT : in_51 
* INPUT : in_52 
* INPUT : in_53 
* INPUT : in_54 
* INPUT : in_55 
* INPUT : in_56 
* INPUT : in_57 
* INPUT : in_58 
* INPUT : in_59 
* INPUT : in_60 
* INPUT : in_61 
* INPUT : in_62 
* INPUT : in_63 
* INPUT : in_64 
* INPUT : in_65 
* INPUT : in_66 
* INPUT : in_67 
* INPUT : in_68 
* INPUT : in_69 
* INPUT : in_70 
* INPUT : in_71 
* INPUT : in_72 
* INPUT : in_73 
* INPUT : in_74 
* INPUT : in_75 
* INPUT : in_76 
* INPUT : in_77 
* INPUT : in_78 
* INPUT : in_79 
* INPUT : in_80 
* INPUT : in_81 
* INPUT : in_82 
* INPUT : in_83 
* INPUT : in_84 
* INPUT : in_85 
* INPUT : in_86 
* INPUT : in_87 
* INPUT : in_88 
* INPUT : in_89 
* INPUT : in_90 
* INPUT : in_91 
* INPUT : in_92 
* INPUT : in_93 
* INPUT : in_94 
* INPUT : in_95 
* INPUT : in_96 
* INPUT : in_97 
* INPUT : in_98 
* INPUT : in_99 
* INPUT : in_100 
* INPUT : in_101 
* INPUT : in_102 
* INPUT : in_103 
* INPUT : in_104 
* INPUT : in_105 
* INPUT : in_106 
* INPUT : in_107 
* INPUT : in_108 
* INPUT : in_109 
* INPUT : in_110 
* INPUT : in_111 
* INPUT : in_112 
* INPUT : in_113 
* INPUT : in_114 
* INPUT : in_115 
* INPUT : in_116 
* INPUT : in_117 
* INPUT : in_118 
* INPUT : in_119 
* INPUT : in_120 
* INPUT : in_121 
* INPUT : in_122 
* INPUT : in_123 
* INPUT : in_124 
* INPUT : in_125 
* INPUT : in_126 
* INPUT : in_127 
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
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* OUTPUT: wl_64 
* OUTPUT: wl_65 
* OUTPUT: wl_66 
* OUTPUT: wl_67 
* OUTPUT: wl_68 
* OUTPUT: wl_69 
* OUTPUT: wl_70 
* OUTPUT: wl_71 
* OUTPUT: wl_72 
* OUTPUT: wl_73 
* OUTPUT: wl_74 
* OUTPUT: wl_75 
* OUTPUT: wl_76 
* OUTPUT: wl_77 
* OUTPUT: wl_78 
* OUTPUT: wl_79 
* OUTPUT: wl_80 
* OUTPUT: wl_81 
* OUTPUT: wl_82 
* OUTPUT: wl_83 
* OUTPUT: wl_84 
* OUTPUT: wl_85 
* OUTPUT: wl_86 
* OUTPUT: wl_87 
* OUTPUT: wl_88 
* OUTPUT: wl_89 
* OUTPUT: wl_90 
* OUTPUT: wl_91 
* OUTPUT: wl_92 
* OUTPUT: wl_93 
* OUTPUT: wl_94 
* OUTPUT: wl_95 
* OUTPUT: wl_96 
* OUTPUT: wl_97 
* OUTPUT: wl_98 
* OUTPUT: wl_99 
* OUTPUT: wl_100 
* OUTPUT: wl_101 
* OUTPUT: wl_102 
* OUTPUT: wl_103 
* OUTPUT: wl_104 
* OUTPUT: wl_105 
* OUTPUT: wl_106 
* OUTPUT: wl_107 
* OUTPUT: wl_108 
* OUTPUT: wl_109 
* OUTPUT: wl_110 
* OUTPUT: wl_111 
* OUTPUT: wl_112 
* OUTPUT: wl_113 
* OUTPUT: wl_114 
* OUTPUT: wl_115 
* OUTPUT: wl_116 
* OUTPUT: wl_117 
* OUTPUT: wl_118 
* OUTPUT: wl_119 
* OUTPUT: wl_120 
* OUTPUT: wl_121 
* OUTPUT: wl_122 
* OUTPUT: wl_123 
* OUTPUT: wl_124 
* OUTPUT: wl_125 
* OUTPUT: wl_126 
* OUTPUT: wl_127 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 128 cols: 64
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
Xwl_driver_nand32 en in_32 wl_bar_32 vdd gnd pnand2
Xwl_driver_inv32 wl_bar_32 wl_32 vdd gnd pdriver_0
Xwl_driver_nand33 en in_33 wl_bar_33 vdd gnd pnand2
Xwl_driver_inv33 wl_bar_33 wl_33 vdd gnd pdriver_0
Xwl_driver_nand34 en in_34 wl_bar_34 vdd gnd pnand2
Xwl_driver_inv34 wl_bar_34 wl_34 vdd gnd pdriver_0
Xwl_driver_nand35 en in_35 wl_bar_35 vdd gnd pnand2
Xwl_driver_inv35 wl_bar_35 wl_35 vdd gnd pdriver_0
Xwl_driver_nand36 en in_36 wl_bar_36 vdd gnd pnand2
Xwl_driver_inv36 wl_bar_36 wl_36 vdd gnd pdriver_0
Xwl_driver_nand37 en in_37 wl_bar_37 vdd gnd pnand2
Xwl_driver_inv37 wl_bar_37 wl_37 vdd gnd pdriver_0
Xwl_driver_nand38 en in_38 wl_bar_38 vdd gnd pnand2
Xwl_driver_inv38 wl_bar_38 wl_38 vdd gnd pdriver_0
Xwl_driver_nand39 en in_39 wl_bar_39 vdd gnd pnand2
Xwl_driver_inv39 wl_bar_39 wl_39 vdd gnd pdriver_0
Xwl_driver_nand40 en in_40 wl_bar_40 vdd gnd pnand2
Xwl_driver_inv40 wl_bar_40 wl_40 vdd gnd pdriver_0
Xwl_driver_nand41 en in_41 wl_bar_41 vdd gnd pnand2
Xwl_driver_inv41 wl_bar_41 wl_41 vdd gnd pdriver_0
Xwl_driver_nand42 en in_42 wl_bar_42 vdd gnd pnand2
Xwl_driver_inv42 wl_bar_42 wl_42 vdd gnd pdriver_0
Xwl_driver_nand43 en in_43 wl_bar_43 vdd gnd pnand2
Xwl_driver_inv43 wl_bar_43 wl_43 vdd gnd pdriver_0
Xwl_driver_nand44 en in_44 wl_bar_44 vdd gnd pnand2
Xwl_driver_inv44 wl_bar_44 wl_44 vdd gnd pdriver_0
Xwl_driver_nand45 en in_45 wl_bar_45 vdd gnd pnand2
Xwl_driver_inv45 wl_bar_45 wl_45 vdd gnd pdriver_0
Xwl_driver_nand46 en in_46 wl_bar_46 vdd gnd pnand2
Xwl_driver_inv46 wl_bar_46 wl_46 vdd gnd pdriver_0
Xwl_driver_nand47 en in_47 wl_bar_47 vdd gnd pnand2
Xwl_driver_inv47 wl_bar_47 wl_47 vdd gnd pdriver_0
Xwl_driver_nand48 en in_48 wl_bar_48 vdd gnd pnand2
Xwl_driver_inv48 wl_bar_48 wl_48 vdd gnd pdriver_0
Xwl_driver_nand49 en in_49 wl_bar_49 vdd gnd pnand2
Xwl_driver_inv49 wl_bar_49 wl_49 vdd gnd pdriver_0
Xwl_driver_nand50 en in_50 wl_bar_50 vdd gnd pnand2
Xwl_driver_inv50 wl_bar_50 wl_50 vdd gnd pdriver_0
Xwl_driver_nand51 en in_51 wl_bar_51 vdd gnd pnand2
Xwl_driver_inv51 wl_bar_51 wl_51 vdd gnd pdriver_0
Xwl_driver_nand52 en in_52 wl_bar_52 vdd gnd pnand2
Xwl_driver_inv52 wl_bar_52 wl_52 vdd gnd pdriver_0
Xwl_driver_nand53 en in_53 wl_bar_53 vdd gnd pnand2
Xwl_driver_inv53 wl_bar_53 wl_53 vdd gnd pdriver_0
Xwl_driver_nand54 en in_54 wl_bar_54 vdd gnd pnand2
Xwl_driver_inv54 wl_bar_54 wl_54 vdd gnd pdriver_0
Xwl_driver_nand55 en in_55 wl_bar_55 vdd gnd pnand2
Xwl_driver_inv55 wl_bar_55 wl_55 vdd gnd pdriver_0
Xwl_driver_nand56 en in_56 wl_bar_56 vdd gnd pnand2
Xwl_driver_inv56 wl_bar_56 wl_56 vdd gnd pdriver_0
Xwl_driver_nand57 en in_57 wl_bar_57 vdd gnd pnand2
Xwl_driver_inv57 wl_bar_57 wl_57 vdd gnd pdriver_0
Xwl_driver_nand58 en in_58 wl_bar_58 vdd gnd pnand2
Xwl_driver_inv58 wl_bar_58 wl_58 vdd gnd pdriver_0
Xwl_driver_nand59 en in_59 wl_bar_59 vdd gnd pnand2
Xwl_driver_inv59 wl_bar_59 wl_59 vdd gnd pdriver_0
Xwl_driver_nand60 en in_60 wl_bar_60 vdd gnd pnand2
Xwl_driver_inv60 wl_bar_60 wl_60 vdd gnd pdriver_0
Xwl_driver_nand61 en in_61 wl_bar_61 vdd gnd pnand2
Xwl_driver_inv61 wl_bar_61 wl_61 vdd gnd pdriver_0
Xwl_driver_nand62 en in_62 wl_bar_62 vdd gnd pnand2
Xwl_driver_inv62 wl_bar_62 wl_62 vdd gnd pdriver_0
Xwl_driver_nand63 en in_63 wl_bar_63 vdd gnd pnand2
Xwl_driver_inv63 wl_bar_63 wl_63 vdd gnd pdriver_0
Xwl_driver_nand64 en in_64 wl_bar_64 vdd gnd pnand2
Xwl_driver_inv64 wl_bar_64 wl_64 vdd gnd pdriver_0
Xwl_driver_nand65 en in_65 wl_bar_65 vdd gnd pnand2
Xwl_driver_inv65 wl_bar_65 wl_65 vdd gnd pdriver_0
Xwl_driver_nand66 en in_66 wl_bar_66 vdd gnd pnand2
Xwl_driver_inv66 wl_bar_66 wl_66 vdd gnd pdriver_0
Xwl_driver_nand67 en in_67 wl_bar_67 vdd gnd pnand2
Xwl_driver_inv67 wl_bar_67 wl_67 vdd gnd pdriver_0
Xwl_driver_nand68 en in_68 wl_bar_68 vdd gnd pnand2
Xwl_driver_inv68 wl_bar_68 wl_68 vdd gnd pdriver_0
Xwl_driver_nand69 en in_69 wl_bar_69 vdd gnd pnand2
Xwl_driver_inv69 wl_bar_69 wl_69 vdd gnd pdriver_0
Xwl_driver_nand70 en in_70 wl_bar_70 vdd gnd pnand2
Xwl_driver_inv70 wl_bar_70 wl_70 vdd gnd pdriver_0
Xwl_driver_nand71 en in_71 wl_bar_71 vdd gnd pnand2
Xwl_driver_inv71 wl_bar_71 wl_71 vdd gnd pdriver_0
Xwl_driver_nand72 en in_72 wl_bar_72 vdd gnd pnand2
Xwl_driver_inv72 wl_bar_72 wl_72 vdd gnd pdriver_0
Xwl_driver_nand73 en in_73 wl_bar_73 vdd gnd pnand2
Xwl_driver_inv73 wl_bar_73 wl_73 vdd gnd pdriver_0
Xwl_driver_nand74 en in_74 wl_bar_74 vdd gnd pnand2
Xwl_driver_inv74 wl_bar_74 wl_74 vdd gnd pdriver_0
Xwl_driver_nand75 en in_75 wl_bar_75 vdd gnd pnand2
Xwl_driver_inv75 wl_bar_75 wl_75 vdd gnd pdriver_0
Xwl_driver_nand76 en in_76 wl_bar_76 vdd gnd pnand2
Xwl_driver_inv76 wl_bar_76 wl_76 vdd gnd pdriver_0
Xwl_driver_nand77 en in_77 wl_bar_77 vdd gnd pnand2
Xwl_driver_inv77 wl_bar_77 wl_77 vdd gnd pdriver_0
Xwl_driver_nand78 en in_78 wl_bar_78 vdd gnd pnand2
Xwl_driver_inv78 wl_bar_78 wl_78 vdd gnd pdriver_0
Xwl_driver_nand79 en in_79 wl_bar_79 vdd gnd pnand2
Xwl_driver_inv79 wl_bar_79 wl_79 vdd gnd pdriver_0
Xwl_driver_nand80 en in_80 wl_bar_80 vdd gnd pnand2
Xwl_driver_inv80 wl_bar_80 wl_80 vdd gnd pdriver_0
Xwl_driver_nand81 en in_81 wl_bar_81 vdd gnd pnand2
Xwl_driver_inv81 wl_bar_81 wl_81 vdd gnd pdriver_0
Xwl_driver_nand82 en in_82 wl_bar_82 vdd gnd pnand2
Xwl_driver_inv82 wl_bar_82 wl_82 vdd gnd pdriver_0
Xwl_driver_nand83 en in_83 wl_bar_83 vdd gnd pnand2
Xwl_driver_inv83 wl_bar_83 wl_83 vdd gnd pdriver_0
Xwl_driver_nand84 en in_84 wl_bar_84 vdd gnd pnand2
Xwl_driver_inv84 wl_bar_84 wl_84 vdd gnd pdriver_0
Xwl_driver_nand85 en in_85 wl_bar_85 vdd gnd pnand2
Xwl_driver_inv85 wl_bar_85 wl_85 vdd gnd pdriver_0
Xwl_driver_nand86 en in_86 wl_bar_86 vdd gnd pnand2
Xwl_driver_inv86 wl_bar_86 wl_86 vdd gnd pdriver_0
Xwl_driver_nand87 en in_87 wl_bar_87 vdd gnd pnand2
Xwl_driver_inv87 wl_bar_87 wl_87 vdd gnd pdriver_0
Xwl_driver_nand88 en in_88 wl_bar_88 vdd gnd pnand2
Xwl_driver_inv88 wl_bar_88 wl_88 vdd gnd pdriver_0
Xwl_driver_nand89 en in_89 wl_bar_89 vdd gnd pnand2
Xwl_driver_inv89 wl_bar_89 wl_89 vdd gnd pdriver_0
Xwl_driver_nand90 en in_90 wl_bar_90 vdd gnd pnand2
Xwl_driver_inv90 wl_bar_90 wl_90 vdd gnd pdriver_0
Xwl_driver_nand91 en in_91 wl_bar_91 vdd gnd pnand2
Xwl_driver_inv91 wl_bar_91 wl_91 vdd gnd pdriver_0
Xwl_driver_nand92 en in_92 wl_bar_92 vdd gnd pnand2
Xwl_driver_inv92 wl_bar_92 wl_92 vdd gnd pdriver_0
Xwl_driver_nand93 en in_93 wl_bar_93 vdd gnd pnand2
Xwl_driver_inv93 wl_bar_93 wl_93 vdd gnd pdriver_0
Xwl_driver_nand94 en in_94 wl_bar_94 vdd gnd pnand2
Xwl_driver_inv94 wl_bar_94 wl_94 vdd gnd pdriver_0
Xwl_driver_nand95 en in_95 wl_bar_95 vdd gnd pnand2
Xwl_driver_inv95 wl_bar_95 wl_95 vdd gnd pdriver_0
Xwl_driver_nand96 en in_96 wl_bar_96 vdd gnd pnand2
Xwl_driver_inv96 wl_bar_96 wl_96 vdd gnd pdriver_0
Xwl_driver_nand97 en in_97 wl_bar_97 vdd gnd pnand2
Xwl_driver_inv97 wl_bar_97 wl_97 vdd gnd pdriver_0
Xwl_driver_nand98 en in_98 wl_bar_98 vdd gnd pnand2
Xwl_driver_inv98 wl_bar_98 wl_98 vdd gnd pdriver_0
Xwl_driver_nand99 en in_99 wl_bar_99 vdd gnd pnand2
Xwl_driver_inv99 wl_bar_99 wl_99 vdd gnd pdriver_0
Xwl_driver_nand100 en in_100 wl_bar_100 vdd gnd pnand2
Xwl_driver_inv100 wl_bar_100 wl_100 vdd gnd pdriver_0
Xwl_driver_nand101 en in_101 wl_bar_101 vdd gnd pnand2
Xwl_driver_inv101 wl_bar_101 wl_101 vdd gnd pdriver_0
Xwl_driver_nand102 en in_102 wl_bar_102 vdd gnd pnand2
Xwl_driver_inv102 wl_bar_102 wl_102 vdd gnd pdriver_0
Xwl_driver_nand103 en in_103 wl_bar_103 vdd gnd pnand2
Xwl_driver_inv103 wl_bar_103 wl_103 vdd gnd pdriver_0
Xwl_driver_nand104 en in_104 wl_bar_104 vdd gnd pnand2
Xwl_driver_inv104 wl_bar_104 wl_104 vdd gnd pdriver_0
Xwl_driver_nand105 en in_105 wl_bar_105 vdd gnd pnand2
Xwl_driver_inv105 wl_bar_105 wl_105 vdd gnd pdriver_0
Xwl_driver_nand106 en in_106 wl_bar_106 vdd gnd pnand2
Xwl_driver_inv106 wl_bar_106 wl_106 vdd gnd pdriver_0
Xwl_driver_nand107 en in_107 wl_bar_107 vdd gnd pnand2
Xwl_driver_inv107 wl_bar_107 wl_107 vdd gnd pdriver_0
Xwl_driver_nand108 en in_108 wl_bar_108 vdd gnd pnand2
Xwl_driver_inv108 wl_bar_108 wl_108 vdd gnd pdriver_0
Xwl_driver_nand109 en in_109 wl_bar_109 vdd gnd pnand2
Xwl_driver_inv109 wl_bar_109 wl_109 vdd gnd pdriver_0
Xwl_driver_nand110 en in_110 wl_bar_110 vdd gnd pnand2
Xwl_driver_inv110 wl_bar_110 wl_110 vdd gnd pdriver_0
Xwl_driver_nand111 en in_111 wl_bar_111 vdd gnd pnand2
Xwl_driver_inv111 wl_bar_111 wl_111 vdd gnd pdriver_0
Xwl_driver_nand112 en in_112 wl_bar_112 vdd gnd pnand2
Xwl_driver_inv112 wl_bar_112 wl_112 vdd gnd pdriver_0
Xwl_driver_nand113 en in_113 wl_bar_113 vdd gnd pnand2
Xwl_driver_inv113 wl_bar_113 wl_113 vdd gnd pdriver_0
Xwl_driver_nand114 en in_114 wl_bar_114 vdd gnd pnand2
Xwl_driver_inv114 wl_bar_114 wl_114 vdd gnd pdriver_0
Xwl_driver_nand115 en in_115 wl_bar_115 vdd gnd pnand2
Xwl_driver_inv115 wl_bar_115 wl_115 vdd gnd pdriver_0
Xwl_driver_nand116 en in_116 wl_bar_116 vdd gnd pnand2
Xwl_driver_inv116 wl_bar_116 wl_116 vdd gnd pdriver_0
Xwl_driver_nand117 en in_117 wl_bar_117 vdd gnd pnand2
Xwl_driver_inv117 wl_bar_117 wl_117 vdd gnd pdriver_0
Xwl_driver_nand118 en in_118 wl_bar_118 vdd gnd pnand2
Xwl_driver_inv118 wl_bar_118 wl_118 vdd gnd pdriver_0
Xwl_driver_nand119 en in_119 wl_bar_119 vdd gnd pnand2
Xwl_driver_inv119 wl_bar_119 wl_119 vdd gnd pdriver_0
Xwl_driver_nand120 en in_120 wl_bar_120 vdd gnd pnand2
Xwl_driver_inv120 wl_bar_120 wl_120 vdd gnd pdriver_0
Xwl_driver_nand121 en in_121 wl_bar_121 vdd gnd pnand2
Xwl_driver_inv121 wl_bar_121 wl_121 vdd gnd pdriver_0
Xwl_driver_nand122 en in_122 wl_bar_122 vdd gnd pnand2
Xwl_driver_inv122 wl_bar_122 wl_122 vdd gnd pdriver_0
Xwl_driver_nand123 en in_123 wl_bar_123 vdd gnd pnand2
Xwl_driver_inv123 wl_bar_123 wl_123 vdd gnd pdriver_0
Xwl_driver_nand124 en in_124 wl_bar_124 vdd gnd pnand2
Xwl_driver_inv124 wl_bar_124 wl_124 vdd gnd pdriver_0
Xwl_driver_nand125 en in_125 wl_bar_125 vdd gnd pnand2
Xwl_driver_inv125 wl_bar_125 wl_125 vdd gnd pdriver_0
Xwl_driver_nand126 en in_126 wl_bar_126 vdd gnd pnand2
Xwl_driver_inv126 wl_bar_126 wl_126 vdd gnd pdriver_0
Xwl_driver_nand127 en in_127 wl_bar_127 vdd gnd pnand2
Xwl_driver_inv127 wl_bar_127 wl_127 vdd gnd pdriver_0
.ENDS wordline_driver_0

.SUBCKT port_address_0 addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 addr_6 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* INPUT : addr_6 
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
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* OUTPUT: wl_64 
* OUTPUT: wl_65 
* OUTPUT: wl_66 
* OUTPUT: wl_67 
* OUTPUT: wl_68 
* OUTPUT: wl_69 
* OUTPUT: wl_70 
* OUTPUT: wl_71 
* OUTPUT: wl_72 
* OUTPUT: wl_73 
* OUTPUT: wl_74 
* OUTPUT: wl_75 
* OUTPUT: wl_76 
* OUTPUT: wl_77 
* OUTPUT: wl_78 
* OUTPUT: wl_79 
* OUTPUT: wl_80 
* OUTPUT: wl_81 
* OUTPUT: wl_82 
* OUTPUT: wl_83 
* OUTPUT: wl_84 
* OUTPUT: wl_85 
* OUTPUT: wl_86 
* OUTPUT: wl_87 
* OUTPUT: wl_88 
* OUTPUT: wl_89 
* OUTPUT: wl_90 
* OUTPUT: wl_91 
* OUTPUT: wl_92 
* OUTPUT: wl_93 
* OUTPUT: wl_94 
* OUTPUT: wl_95 
* OUTPUT: wl_96 
* OUTPUT: wl_97 
* OUTPUT: wl_98 
* OUTPUT: wl_99 
* OUTPUT: wl_100 
* OUTPUT: wl_101 
* OUTPUT: wl_102 
* OUTPUT: wl_103 
* OUTPUT: wl_104 
* OUTPUT: wl_105 
* OUTPUT: wl_106 
* OUTPUT: wl_107 
* OUTPUT: wl_108 
* OUTPUT: wl_109 
* OUTPUT: wl_110 
* OUTPUT: wl_111 
* OUTPUT: wl_112 
* OUTPUT: wl_113 
* OUTPUT: wl_114 
* OUTPUT: wl_115 
* OUTPUT: wl_116 
* OUTPUT: wl_117 
* OUTPUT: wl_118 
* OUTPUT: wl_119 
* OUTPUT: wl_120 
* OUTPUT: wl_121 
* OUTPUT: wl_122 
* OUTPUT: wl_123 
* OUTPUT: wl_124 
* OUTPUT: wl_125 
* OUTPUT: wl_126 
* OUTPUT: wl_127 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 addr_6 dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31 dec_out_32 dec_out_33 dec_out_34 dec_out_35 dec_out_36 dec_out_37 dec_out_38 dec_out_39 dec_out_40 dec_out_41 dec_out_42 dec_out_43 dec_out_44 dec_out_45 dec_out_46 dec_out_47 dec_out_48 dec_out_49 dec_out_50 dec_out_51 dec_out_52 dec_out_53 dec_out_54 dec_out_55 dec_out_56 dec_out_57 dec_out_58 dec_out_59 dec_out_60 dec_out_61 dec_out_62 dec_out_63 dec_out_64 dec_out_65 dec_out_66 dec_out_67 dec_out_68 dec_out_69 dec_out_70 dec_out_71 dec_out_72 dec_out_73 dec_out_74 dec_out_75 dec_out_76 dec_out_77 dec_out_78 dec_out_79 dec_out_80 dec_out_81 dec_out_82 dec_out_83 dec_out_84 dec_out_85 dec_out_86 dec_out_87 dec_out_88 dec_out_89 dec_out_90 dec_out_91 dec_out_92 dec_out_93 dec_out_94 dec_out_95 dec_out_96 dec_out_97 dec_out_98 dec_out_99 dec_out_100 dec_out_101 dec_out_102 dec_out_103 dec_out_104 dec_out_105 dec_out_106 dec_out_107 dec_out_108 dec_out_109 dec_out_110 dec_out_111 dec_out_112 dec_out_113 dec_out_114 dec_out_115 dec_out_116 dec_out_117 dec_out_118 dec_out_119 dec_out_120 dec_out_121 dec_out_122 dec_out_123 dec_out_124 dec_out_125 dec_out_126 dec_out_127 vdd gnd hierarchical_decoder_0
Xwordline_driver dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31 dec_out_32 dec_out_33 dec_out_34 dec_out_35 dec_out_36 dec_out_37 dec_out_38 dec_out_39 dec_out_40 dec_out_41 dec_out_42 dec_out_43 dec_out_44 dec_out_45 dec_out_46 dec_out_47 dec_out_48 dec_out_49 dec_out_50 dec_out_51 dec_out_52 dec_out_53 dec_out_54 dec_out_55 dec_out_56 dec_out_57 dec_out_58 dec_out_59 dec_out_60 dec_out_61 dec_out_62 dec_out_63 dec_out_64 dec_out_65 dec_out_66 dec_out_67 dec_out_68 dec_out_69 dec_out_70 dec_out_71 dec_out_72 dec_out_73 dec_out_74 dec_out_75 dec_out_76 dec_out_77 dec_out_78 dec_out_79 dec_out_80 dec_out_81 dec_out_82 dec_out_83 dec_out_84 dec_out_85 dec_out_86 dec_out_87 dec_out_88 dec_out_89 dec_out_90 dec_out_91 dec_out_92 dec_out_93 dec_out_94 dec_out_95 dec_out_96 dec_out_97 dec_out_98 dec_out_99 dec_out_100 dec_out_101 dec_out_102 dec_out_103 dec_out_104 dec_out_105 dec_out_106 dec_out_107 dec_out_108 dec_out_109 dec_out_110 dec_out_111 dec_out_112 dec_out_113 dec_out_114 dec_out_115 dec_out_116 dec_out_117 dec_out_118 dec_out_119 dec_out_120 dec_out_121 dec_out_122 dec_out_123 dec_out_124 dec_out_125 dec_out_126 dec_out_127 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 wl_en vdd gnd wordline_driver_0
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


.SUBCKT bitcell_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 vdd gnd
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
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
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
* INPUT : wl_35 
* INPUT : wl_36 
* INPUT : wl_37 
* INPUT : wl_38 
* INPUT : wl_39 
* INPUT : wl_40 
* INPUT : wl_41 
* INPUT : wl_42 
* INPUT : wl_43 
* INPUT : wl_44 
* INPUT : wl_45 
* INPUT : wl_46 
* INPUT : wl_47 
* INPUT : wl_48 
* INPUT : wl_49 
* INPUT : wl_50 
* INPUT : wl_51 
* INPUT : wl_52 
* INPUT : wl_53 
* INPUT : wl_54 
* INPUT : wl_55 
* INPUT : wl_56 
* INPUT : wl_57 
* INPUT : wl_58 
* INPUT : wl_59 
* INPUT : wl_60 
* INPUT : wl_61 
* INPUT : wl_62 
* INPUT : wl_63 
* INPUT : wl_64 
* INPUT : wl_65 
* INPUT : wl_66 
* INPUT : wl_67 
* INPUT : wl_68 
* INPUT : wl_69 
* INPUT : wl_70 
* INPUT : wl_71 
* INPUT : wl_72 
* INPUT : wl_73 
* INPUT : wl_74 
* INPUT : wl_75 
* INPUT : wl_76 
* INPUT : wl_77 
* INPUT : wl_78 
* INPUT : wl_79 
* INPUT : wl_80 
* INPUT : wl_81 
* INPUT : wl_82 
* INPUT : wl_83 
* INPUT : wl_84 
* INPUT : wl_85 
* INPUT : wl_86 
* INPUT : wl_87 
* INPUT : wl_88 
* INPUT : wl_89 
* INPUT : wl_90 
* INPUT : wl_91 
* INPUT : wl_92 
* INPUT : wl_93 
* INPUT : wl_94 
* INPUT : wl_95 
* INPUT : wl_96 
* INPUT : wl_97 
* INPUT : wl_98 
* INPUT : wl_99 
* INPUT : wl_100 
* INPUT : wl_101 
* INPUT : wl_102 
* INPUT : wl_103 
* INPUT : wl_104 
* INPUT : wl_105 
* INPUT : wl_106 
* INPUT : wl_107 
* INPUT : wl_108 
* INPUT : wl_109 
* INPUT : wl_110 
* INPUT : wl_111 
* INPUT : wl_112 
* INPUT : wl_113 
* INPUT : wl_114 
* INPUT : wl_115 
* INPUT : wl_116 
* INPUT : wl_117 
* INPUT : wl_118 
* INPUT : wl_119 
* INPUT : wl_120 
* INPUT : wl_121 
* INPUT : wl_122 
* INPUT : wl_123 
* INPUT : wl_124 
* INPUT : wl_125 
* INPUT : wl_126 
* INPUT : wl_127 
* POWER : vdd 
* GROUND: gnd 
* rows: 128 cols: 64
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
Xbit_r32_c0 bl_0 br_0 wl_32 vdd gnd cell_6t
Xbit_r33_c0 bl_0 br_0 wl_33 vdd gnd cell_6t
Xbit_r34_c0 bl_0 br_0 wl_34 vdd gnd cell_6t
Xbit_r35_c0 bl_0 br_0 wl_35 vdd gnd cell_6t
Xbit_r36_c0 bl_0 br_0 wl_36 vdd gnd cell_6t
Xbit_r37_c0 bl_0 br_0 wl_37 vdd gnd cell_6t
Xbit_r38_c0 bl_0 br_0 wl_38 vdd gnd cell_6t
Xbit_r39_c0 bl_0 br_0 wl_39 vdd gnd cell_6t
Xbit_r40_c0 bl_0 br_0 wl_40 vdd gnd cell_6t
Xbit_r41_c0 bl_0 br_0 wl_41 vdd gnd cell_6t
Xbit_r42_c0 bl_0 br_0 wl_42 vdd gnd cell_6t
Xbit_r43_c0 bl_0 br_0 wl_43 vdd gnd cell_6t
Xbit_r44_c0 bl_0 br_0 wl_44 vdd gnd cell_6t
Xbit_r45_c0 bl_0 br_0 wl_45 vdd gnd cell_6t
Xbit_r46_c0 bl_0 br_0 wl_46 vdd gnd cell_6t
Xbit_r47_c0 bl_0 br_0 wl_47 vdd gnd cell_6t
Xbit_r48_c0 bl_0 br_0 wl_48 vdd gnd cell_6t
Xbit_r49_c0 bl_0 br_0 wl_49 vdd gnd cell_6t
Xbit_r50_c0 bl_0 br_0 wl_50 vdd gnd cell_6t
Xbit_r51_c0 bl_0 br_0 wl_51 vdd gnd cell_6t
Xbit_r52_c0 bl_0 br_0 wl_52 vdd gnd cell_6t
Xbit_r53_c0 bl_0 br_0 wl_53 vdd gnd cell_6t
Xbit_r54_c0 bl_0 br_0 wl_54 vdd gnd cell_6t
Xbit_r55_c0 bl_0 br_0 wl_55 vdd gnd cell_6t
Xbit_r56_c0 bl_0 br_0 wl_56 vdd gnd cell_6t
Xbit_r57_c0 bl_0 br_0 wl_57 vdd gnd cell_6t
Xbit_r58_c0 bl_0 br_0 wl_58 vdd gnd cell_6t
Xbit_r59_c0 bl_0 br_0 wl_59 vdd gnd cell_6t
Xbit_r60_c0 bl_0 br_0 wl_60 vdd gnd cell_6t
Xbit_r61_c0 bl_0 br_0 wl_61 vdd gnd cell_6t
Xbit_r62_c0 bl_0 br_0 wl_62 vdd gnd cell_6t
Xbit_r63_c0 bl_0 br_0 wl_63 vdd gnd cell_6t
Xbit_r64_c0 bl_0 br_0 wl_64 vdd gnd cell_6t
Xbit_r65_c0 bl_0 br_0 wl_65 vdd gnd cell_6t
Xbit_r66_c0 bl_0 br_0 wl_66 vdd gnd cell_6t
Xbit_r67_c0 bl_0 br_0 wl_67 vdd gnd cell_6t
Xbit_r68_c0 bl_0 br_0 wl_68 vdd gnd cell_6t
Xbit_r69_c0 bl_0 br_0 wl_69 vdd gnd cell_6t
Xbit_r70_c0 bl_0 br_0 wl_70 vdd gnd cell_6t
Xbit_r71_c0 bl_0 br_0 wl_71 vdd gnd cell_6t
Xbit_r72_c0 bl_0 br_0 wl_72 vdd gnd cell_6t
Xbit_r73_c0 bl_0 br_0 wl_73 vdd gnd cell_6t
Xbit_r74_c0 bl_0 br_0 wl_74 vdd gnd cell_6t
Xbit_r75_c0 bl_0 br_0 wl_75 vdd gnd cell_6t
Xbit_r76_c0 bl_0 br_0 wl_76 vdd gnd cell_6t
Xbit_r77_c0 bl_0 br_0 wl_77 vdd gnd cell_6t
Xbit_r78_c0 bl_0 br_0 wl_78 vdd gnd cell_6t
Xbit_r79_c0 bl_0 br_0 wl_79 vdd gnd cell_6t
Xbit_r80_c0 bl_0 br_0 wl_80 vdd gnd cell_6t
Xbit_r81_c0 bl_0 br_0 wl_81 vdd gnd cell_6t
Xbit_r82_c0 bl_0 br_0 wl_82 vdd gnd cell_6t
Xbit_r83_c0 bl_0 br_0 wl_83 vdd gnd cell_6t
Xbit_r84_c0 bl_0 br_0 wl_84 vdd gnd cell_6t
Xbit_r85_c0 bl_0 br_0 wl_85 vdd gnd cell_6t
Xbit_r86_c0 bl_0 br_0 wl_86 vdd gnd cell_6t
Xbit_r87_c0 bl_0 br_0 wl_87 vdd gnd cell_6t
Xbit_r88_c0 bl_0 br_0 wl_88 vdd gnd cell_6t
Xbit_r89_c0 bl_0 br_0 wl_89 vdd gnd cell_6t
Xbit_r90_c0 bl_0 br_0 wl_90 vdd gnd cell_6t
Xbit_r91_c0 bl_0 br_0 wl_91 vdd gnd cell_6t
Xbit_r92_c0 bl_0 br_0 wl_92 vdd gnd cell_6t
Xbit_r93_c0 bl_0 br_0 wl_93 vdd gnd cell_6t
Xbit_r94_c0 bl_0 br_0 wl_94 vdd gnd cell_6t
Xbit_r95_c0 bl_0 br_0 wl_95 vdd gnd cell_6t
Xbit_r96_c0 bl_0 br_0 wl_96 vdd gnd cell_6t
Xbit_r97_c0 bl_0 br_0 wl_97 vdd gnd cell_6t
Xbit_r98_c0 bl_0 br_0 wl_98 vdd gnd cell_6t
Xbit_r99_c0 bl_0 br_0 wl_99 vdd gnd cell_6t
Xbit_r100_c0 bl_0 br_0 wl_100 vdd gnd cell_6t
Xbit_r101_c0 bl_0 br_0 wl_101 vdd gnd cell_6t
Xbit_r102_c0 bl_0 br_0 wl_102 vdd gnd cell_6t
Xbit_r103_c0 bl_0 br_0 wl_103 vdd gnd cell_6t
Xbit_r104_c0 bl_0 br_0 wl_104 vdd gnd cell_6t
Xbit_r105_c0 bl_0 br_0 wl_105 vdd gnd cell_6t
Xbit_r106_c0 bl_0 br_0 wl_106 vdd gnd cell_6t
Xbit_r107_c0 bl_0 br_0 wl_107 vdd gnd cell_6t
Xbit_r108_c0 bl_0 br_0 wl_108 vdd gnd cell_6t
Xbit_r109_c0 bl_0 br_0 wl_109 vdd gnd cell_6t
Xbit_r110_c0 bl_0 br_0 wl_110 vdd gnd cell_6t
Xbit_r111_c0 bl_0 br_0 wl_111 vdd gnd cell_6t
Xbit_r112_c0 bl_0 br_0 wl_112 vdd gnd cell_6t
Xbit_r113_c0 bl_0 br_0 wl_113 vdd gnd cell_6t
Xbit_r114_c0 bl_0 br_0 wl_114 vdd gnd cell_6t
Xbit_r115_c0 bl_0 br_0 wl_115 vdd gnd cell_6t
Xbit_r116_c0 bl_0 br_0 wl_116 vdd gnd cell_6t
Xbit_r117_c0 bl_0 br_0 wl_117 vdd gnd cell_6t
Xbit_r118_c0 bl_0 br_0 wl_118 vdd gnd cell_6t
Xbit_r119_c0 bl_0 br_0 wl_119 vdd gnd cell_6t
Xbit_r120_c0 bl_0 br_0 wl_120 vdd gnd cell_6t
Xbit_r121_c0 bl_0 br_0 wl_121 vdd gnd cell_6t
Xbit_r122_c0 bl_0 br_0 wl_122 vdd gnd cell_6t
Xbit_r123_c0 bl_0 br_0 wl_123 vdd gnd cell_6t
Xbit_r124_c0 bl_0 br_0 wl_124 vdd gnd cell_6t
Xbit_r125_c0 bl_0 br_0 wl_125 vdd gnd cell_6t
Xbit_r126_c0 bl_0 br_0 wl_126 vdd gnd cell_6t
Xbit_r127_c0 bl_0 br_0 wl_127 vdd gnd cell_6t
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
Xbit_r32_c1 bl_1 br_1 wl_32 vdd gnd cell_6t
Xbit_r33_c1 bl_1 br_1 wl_33 vdd gnd cell_6t
Xbit_r34_c1 bl_1 br_1 wl_34 vdd gnd cell_6t
Xbit_r35_c1 bl_1 br_1 wl_35 vdd gnd cell_6t
Xbit_r36_c1 bl_1 br_1 wl_36 vdd gnd cell_6t
Xbit_r37_c1 bl_1 br_1 wl_37 vdd gnd cell_6t
Xbit_r38_c1 bl_1 br_1 wl_38 vdd gnd cell_6t
Xbit_r39_c1 bl_1 br_1 wl_39 vdd gnd cell_6t
Xbit_r40_c1 bl_1 br_1 wl_40 vdd gnd cell_6t
Xbit_r41_c1 bl_1 br_1 wl_41 vdd gnd cell_6t
Xbit_r42_c1 bl_1 br_1 wl_42 vdd gnd cell_6t
Xbit_r43_c1 bl_1 br_1 wl_43 vdd gnd cell_6t
Xbit_r44_c1 bl_1 br_1 wl_44 vdd gnd cell_6t
Xbit_r45_c1 bl_1 br_1 wl_45 vdd gnd cell_6t
Xbit_r46_c1 bl_1 br_1 wl_46 vdd gnd cell_6t
Xbit_r47_c1 bl_1 br_1 wl_47 vdd gnd cell_6t
Xbit_r48_c1 bl_1 br_1 wl_48 vdd gnd cell_6t
Xbit_r49_c1 bl_1 br_1 wl_49 vdd gnd cell_6t
Xbit_r50_c1 bl_1 br_1 wl_50 vdd gnd cell_6t
Xbit_r51_c1 bl_1 br_1 wl_51 vdd gnd cell_6t
Xbit_r52_c1 bl_1 br_1 wl_52 vdd gnd cell_6t
Xbit_r53_c1 bl_1 br_1 wl_53 vdd gnd cell_6t
Xbit_r54_c1 bl_1 br_1 wl_54 vdd gnd cell_6t
Xbit_r55_c1 bl_1 br_1 wl_55 vdd gnd cell_6t
Xbit_r56_c1 bl_1 br_1 wl_56 vdd gnd cell_6t
Xbit_r57_c1 bl_1 br_1 wl_57 vdd gnd cell_6t
Xbit_r58_c1 bl_1 br_1 wl_58 vdd gnd cell_6t
Xbit_r59_c1 bl_1 br_1 wl_59 vdd gnd cell_6t
Xbit_r60_c1 bl_1 br_1 wl_60 vdd gnd cell_6t
Xbit_r61_c1 bl_1 br_1 wl_61 vdd gnd cell_6t
Xbit_r62_c1 bl_1 br_1 wl_62 vdd gnd cell_6t
Xbit_r63_c1 bl_1 br_1 wl_63 vdd gnd cell_6t
Xbit_r64_c1 bl_1 br_1 wl_64 vdd gnd cell_6t
Xbit_r65_c1 bl_1 br_1 wl_65 vdd gnd cell_6t
Xbit_r66_c1 bl_1 br_1 wl_66 vdd gnd cell_6t
Xbit_r67_c1 bl_1 br_1 wl_67 vdd gnd cell_6t
Xbit_r68_c1 bl_1 br_1 wl_68 vdd gnd cell_6t
Xbit_r69_c1 bl_1 br_1 wl_69 vdd gnd cell_6t
Xbit_r70_c1 bl_1 br_1 wl_70 vdd gnd cell_6t
Xbit_r71_c1 bl_1 br_1 wl_71 vdd gnd cell_6t
Xbit_r72_c1 bl_1 br_1 wl_72 vdd gnd cell_6t
Xbit_r73_c1 bl_1 br_1 wl_73 vdd gnd cell_6t
Xbit_r74_c1 bl_1 br_1 wl_74 vdd gnd cell_6t
Xbit_r75_c1 bl_1 br_1 wl_75 vdd gnd cell_6t
Xbit_r76_c1 bl_1 br_1 wl_76 vdd gnd cell_6t
Xbit_r77_c1 bl_1 br_1 wl_77 vdd gnd cell_6t
Xbit_r78_c1 bl_1 br_1 wl_78 vdd gnd cell_6t
Xbit_r79_c1 bl_1 br_1 wl_79 vdd gnd cell_6t
Xbit_r80_c1 bl_1 br_1 wl_80 vdd gnd cell_6t
Xbit_r81_c1 bl_1 br_1 wl_81 vdd gnd cell_6t
Xbit_r82_c1 bl_1 br_1 wl_82 vdd gnd cell_6t
Xbit_r83_c1 bl_1 br_1 wl_83 vdd gnd cell_6t
Xbit_r84_c1 bl_1 br_1 wl_84 vdd gnd cell_6t
Xbit_r85_c1 bl_1 br_1 wl_85 vdd gnd cell_6t
Xbit_r86_c1 bl_1 br_1 wl_86 vdd gnd cell_6t
Xbit_r87_c1 bl_1 br_1 wl_87 vdd gnd cell_6t
Xbit_r88_c1 bl_1 br_1 wl_88 vdd gnd cell_6t
Xbit_r89_c1 bl_1 br_1 wl_89 vdd gnd cell_6t
Xbit_r90_c1 bl_1 br_1 wl_90 vdd gnd cell_6t
Xbit_r91_c1 bl_1 br_1 wl_91 vdd gnd cell_6t
Xbit_r92_c1 bl_1 br_1 wl_92 vdd gnd cell_6t
Xbit_r93_c1 bl_1 br_1 wl_93 vdd gnd cell_6t
Xbit_r94_c1 bl_1 br_1 wl_94 vdd gnd cell_6t
Xbit_r95_c1 bl_1 br_1 wl_95 vdd gnd cell_6t
Xbit_r96_c1 bl_1 br_1 wl_96 vdd gnd cell_6t
Xbit_r97_c1 bl_1 br_1 wl_97 vdd gnd cell_6t
Xbit_r98_c1 bl_1 br_1 wl_98 vdd gnd cell_6t
Xbit_r99_c1 bl_1 br_1 wl_99 vdd gnd cell_6t
Xbit_r100_c1 bl_1 br_1 wl_100 vdd gnd cell_6t
Xbit_r101_c1 bl_1 br_1 wl_101 vdd gnd cell_6t
Xbit_r102_c1 bl_1 br_1 wl_102 vdd gnd cell_6t
Xbit_r103_c1 bl_1 br_1 wl_103 vdd gnd cell_6t
Xbit_r104_c1 bl_1 br_1 wl_104 vdd gnd cell_6t
Xbit_r105_c1 bl_1 br_1 wl_105 vdd gnd cell_6t
Xbit_r106_c1 bl_1 br_1 wl_106 vdd gnd cell_6t
Xbit_r107_c1 bl_1 br_1 wl_107 vdd gnd cell_6t
Xbit_r108_c1 bl_1 br_1 wl_108 vdd gnd cell_6t
Xbit_r109_c1 bl_1 br_1 wl_109 vdd gnd cell_6t
Xbit_r110_c1 bl_1 br_1 wl_110 vdd gnd cell_6t
Xbit_r111_c1 bl_1 br_1 wl_111 vdd gnd cell_6t
Xbit_r112_c1 bl_1 br_1 wl_112 vdd gnd cell_6t
Xbit_r113_c1 bl_1 br_1 wl_113 vdd gnd cell_6t
Xbit_r114_c1 bl_1 br_1 wl_114 vdd gnd cell_6t
Xbit_r115_c1 bl_1 br_1 wl_115 vdd gnd cell_6t
Xbit_r116_c1 bl_1 br_1 wl_116 vdd gnd cell_6t
Xbit_r117_c1 bl_1 br_1 wl_117 vdd gnd cell_6t
Xbit_r118_c1 bl_1 br_1 wl_118 vdd gnd cell_6t
Xbit_r119_c1 bl_1 br_1 wl_119 vdd gnd cell_6t
Xbit_r120_c1 bl_1 br_1 wl_120 vdd gnd cell_6t
Xbit_r121_c1 bl_1 br_1 wl_121 vdd gnd cell_6t
Xbit_r122_c1 bl_1 br_1 wl_122 vdd gnd cell_6t
Xbit_r123_c1 bl_1 br_1 wl_123 vdd gnd cell_6t
Xbit_r124_c1 bl_1 br_1 wl_124 vdd gnd cell_6t
Xbit_r125_c1 bl_1 br_1 wl_125 vdd gnd cell_6t
Xbit_r126_c1 bl_1 br_1 wl_126 vdd gnd cell_6t
Xbit_r127_c1 bl_1 br_1 wl_127 vdd gnd cell_6t
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
Xbit_r32_c2 bl_2 br_2 wl_32 vdd gnd cell_6t
Xbit_r33_c2 bl_2 br_2 wl_33 vdd gnd cell_6t
Xbit_r34_c2 bl_2 br_2 wl_34 vdd gnd cell_6t
Xbit_r35_c2 bl_2 br_2 wl_35 vdd gnd cell_6t
Xbit_r36_c2 bl_2 br_2 wl_36 vdd gnd cell_6t
Xbit_r37_c2 bl_2 br_2 wl_37 vdd gnd cell_6t
Xbit_r38_c2 bl_2 br_2 wl_38 vdd gnd cell_6t
Xbit_r39_c2 bl_2 br_2 wl_39 vdd gnd cell_6t
Xbit_r40_c2 bl_2 br_2 wl_40 vdd gnd cell_6t
Xbit_r41_c2 bl_2 br_2 wl_41 vdd gnd cell_6t
Xbit_r42_c2 bl_2 br_2 wl_42 vdd gnd cell_6t
Xbit_r43_c2 bl_2 br_2 wl_43 vdd gnd cell_6t
Xbit_r44_c2 bl_2 br_2 wl_44 vdd gnd cell_6t
Xbit_r45_c2 bl_2 br_2 wl_45 vdd gnd cell_6t
Xbit_r46_c2 bl_2 br_2 wl_46 vdd gnd cell_6t
Xbit_r47_c2 bl_2 br_2 wl_47 vdd gnd cell_6t
Xbit_r48_c2 bl_2 br_2 wl_48 vdd gnd cell_6t
Xbit_r49_c2 bl_2 br_2 wl_49 vdd gnd cell_6t
Xbit_r50_c2 bl_2 br_2 wl_50 vdd gnd cell_6t
Xbit_r51_c2 bl_2 br_2 wl_51 vdd gnd cell_6t
Xbit_r52_c2 bl_2 br_2 wl_52 vdd gnd cell_6t
Xbit_r53_c2 bl_2 br_2 wl_53 vdd gnd cell_6t
Xbit_r54_c2 bl_2 br_2 wl_54 vdd gnd cell_6t
Xbit_r55_c2 bl_2 br_2 wl_55 vdd gnd cell_6t
Xbit_r56_c2 bl_2 br_2 wl_56 vdd gnd cell_6t
Xbit_r57_c2 bl_2 br_2 wl_57 vdd gnd cell_6t
Xbit_r58_c2 bl_2 br_2 wl_58 vdd gnd cell_6t
Xbit_r59_c2 bl_2 br_2 wl_59 vdd gnd cell_6t
Xbit_r60_c2 bl_2 br_2 wl_60 vdd gnd cell_6t
Xbit_r61_c2 bl_2 br_2 wl_61 vdd gnd cell_6t
Xbit_r62_c2 bl_2 br_2 wl_62 vdd gnd cell_6t
Xbit_r63_c2 bl_2 br_2 wl_63 vdd gnd cell_6t
Xbit_r64_c2 bl_2 br_2 wl_64 vdd gnd cell_6t
Xbit_r65_c2 bl_2 br_2 wl_65 vdd gnd cell_6t
Xbit_r66_c2 bl_2 br_2 wl_66 vdd gnd cell_6t
Xbit_r67_c2 bl_2 br_2 wl_67 vdd gnd cell_6t
Xbit_r68_c2 bl_2 br_2 wl_68 vdd gnd cell_6t
Xbit_r69_c2 bl_2 br_2 wl_69 vdd gnd cell_6t
Xbit_r70_c2 bl_2 br_2 wl_70 vdd gnd cell_6t
Xbit_r71_c2 bl_2 br_2 wl_71 vdd gnd cell_6t
Xbit_r72_c2 bl_2 br_2 wl_72 vdd gnd cell_6t
Xbit_r73_c2 bl_2 br_2 wl_73 vdd gnd cell_6t
Xbit_r74_c2 bl_2 br_2 wl_74 vdd gnd cell_6t
Xbit_r75_c2 bl_2 br_2 wl_75 vdd gnd cell_6t
Xbit_r76_c2 bl_2 br_2 wl_76 vdd gnd cell_6t
Xbit_r77_c2 bl_2 br_2 wl_77 vdd gnd cell_6t
Xbit_r78_c2 bl_2 br_2 wl_78 vdd gnd cell_6t
Xbit_r79_c2 bl_2 br_2 wl_79 vdd gnd cell_6t
Xbit_r80_c2 bl_2 br_2 wl_80 vdd gnd cell_6t
Xbit_r81_c2 bl_2 br_2 wl_81 vdd gnd cell_6t
Xbit_r82_c2 bl_2 br_2 wl_82 vdd gnd cell_6t
Xbit_r83_c2 bl_2 br_2 wl_83 vdd gnd cell_6t
Xbit_r84_c2 bl_2 br_2 wl_84 vdd gnd cell_6t
Xbit_r85_c2 bl_2 br_2 wl_85 vdd gnd cell_6t
Xbit_r86_c2 bl_2 br_2 wl_86 vdd gnd cell_6t
Xbit_r87_c2 bl_2 br_2 wl_87 vdd gnd cell_6t
Xbit_r88_c2 bl_2 br_2 wl_88 vdd gnd cell_6t
Xbit_r89_c2 bl_2 br_2 wl_89 vdd gnd cell_6t
Xbit_r90_c2 bl_2 br_2 wl_90 vdd gnd cell_6t
Xbit_r91_c2 bl_2 br_2 wl_91 vdd gnd cell_6t
Xbit_r92_c2 bl_2 br_2 wl_92 vdd gnd cell_6t
Xbit_r93_c2 bl_2 br_2 wl_93 vdd gnd cell_6t
Xbit_r94_c2 bl_2 br_2 wl_94 vdd gnd cell_6t
Xbit_r95_c2 bl_2 br_2 wl_95 vdd gnd cell_6t
Xbit_r96_c2 bl_2 br_2 wl_96 vdd gnd cell_6t
Xbit_r97_c2 bl_2 br_2 wl_97 vdd gnd cell_6t
Xbit_r98_c2 bl_2 br_2 wl_98 vdd gnd cell_6t
Xbit_r99_c2 bl_2 br_2 wl_99 vdd gnd cell_6t
Xbit_r100_c2 bl_2 br_2 wl_100 vdd gnd cell_6t
Xbit_r101_c2 bl_2 br_2 wl_101 vdd gnd cell_6t
Xbit_r102_c2 bl_2 br_2 wl_102 vdd gnd cell_6t
Xbit_r103_c2 bl_2 br_2 wl_103 vdd gnd cell_6t
Xbit_r104_c2 bl_2 br_2 wl_104 vdd gnd cell_6t
Xbit_r105_c2 bl_2 br_2 wl_105 vdd gnd cell_6t
Xbit_r106_c2 bl_2 br_2 wl_106 vdd gnd cell_6t
Xbit_r107_c2 bl_2 br_2 wl_107 vdd gnd cell_6t
Xbit_r108_c2 bl_2 br_2 wl_108 vdd gnd cell_6t
Xbit_r109_c2 bl_2 br_2 wl_109 vdd gnd cell_6t
Xbit_r110_c2 bl_2 br_2 wl_110 vdd gnd cell_6t
Xbit_r111_c2 bl_2 br_2 wl_111 vdd gnd cell_6t
Xbit_r112_c2 bl_2 br_2 wl_112 vdd gnd cell_6t
Xbit_r113_c2 bl_2 br_2 wl_113 vdd gnd cell_6t
Xbit_r114_c2 bl_2 br_2 wl_114 vdd gnd cell_6t
Xbit_r115_c2 bl_2 br_2 wl_115 vdd gnd cell_6t
Xbit_r116_c2 bl_2 br_2 wl_116 vdd gnd cell_6t
Xbit_r117_c2 bl_2 br_2 wl_117 vdd gnd cell_6t
Xbit_r118_c2 bl_2 br_2 wl_118 vdd gnd cell_6t
Xbit_r119_c2 bl_2 br_2 wl_119 vdd gnd cell_6t
Xbit_r120_c2 bl_2 br_2 wl_120 vdd gnd cell_6t
Xbit_r121_c2 bl_2 br_2 wl_121 vdd gnd cell_6t
Xbit_r122_c2 bl_2 br_2 wl_122 vdd gnd cell_6t
Xbit_r123_c2 bl_2 br_2 wl_123 vdd gnd cell_6t
Xbit_r124_c2 bl_2 br_2 wl_124 vdd gnd cell_6t
Xbit_r125_c2 bl_2 br_2 wl_125 vdd gnd cell_6t
Xbit_r126_c2 bl_2 br_2 wl_126 vdd gnd cell_6t
Xbit_r127_c2 bl_2 br_2 wl_127 vdd gnd cell_6t
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
Xbit_r32_c3 bl_3 br_3 wl_32 vdd gnd cell_6t
Xbit_r33_c3 bl_3 br_3 wl_33 vdd gnd cell_6t
Xbit_r34_c3 bl_3 br_3 wl_34 vdd gnd cell_6t
Xbit_r35_c3 bl_3 br_3 wl_35 vdd gnd cell_6t
Xbit_r36_c3 bl_3 br_3 wl_36 vdd gnd cell_6t
Xbit_r37_c3 bl_3 br_3 wl_37 vdd gnd cell_6t
Xbit_r38_c3 bl_3 br_3 wl_38 vdd gnd cell_6t
Xbit_r39_c3 bl_3 br_3 wl_39 vdd gnd cell_6t
Xbit_r40_c3 bl_3 br_3 wl_40 vdd gnd cell_6t
Xbit_r41_c3 bl_3 br_3 wl_41 vdd gnd cell_6t
Xbit_r42_c3 bl_3 br_3 wl_42 vdd gnd cell_6t
Xbit_r43_c3 bl_3 br_3 wl_43 vdd gnd cell_6t
Xbit_r44_c3 bl_3 br_3 wl_44 vdd gnd cell_6t
Xbit_r45_c3 bl_3 br_3 wl_45 vdd gnd cell_6t
Xbit_r46_c3 bl_3 br_3 wl_46 vdd gnd cell_6t
Xbit_r47_c3 bl_3 br_3 wl_47 vdd gnd cell_6t
Xbit_r48_c3 bl_3 br_3 wl_48 vdd gnd cell_6t
Xbit_r49_c3 bl_3 br_3 wl_49 vdd gnd cell_6t
Xbit_r50_c3 bl_3 br_3 wl_50 vdd gnd cell_6t
Xbit_r51_c3 bl_3 br_3 wl_51 vdd gnd cell_6t
Xbit_r52_c3 bl_3 br_3 wl_52 vdd gnd cell_6t
Xbit_r53_c3 bl_3 br_3 wl_53 vdd gnd cell_6t
Xbit_r54_c3 bl_3 br_3 wl_54 vdd gnd cell_6t
Xbit_r55_c3 bl_3 br_3 wl_55 vdd gnd cell_6t
Xbit_r56_c3 bl_3 br_3 wl_56 vdd gnd cell_6t
Xbit_r57_c3 bl_3 br_3 wl_57 vdd gnd cell_6t
Xbit_r58_c3 bl_3 br_3 wl_58 vdd gnd cell_6t
Xbit_r59_c3 bl_3 br_3 wl_59 vdd gnd cell_6t
Xbit_r60_c3 bl_3 br_3 wl_60 vdd gnd cell_6t
Xbit_r61_c3 bl_3 br_3 wl_61 vdd gnd cell_6t
Xbit_r62_c3 bl_3 br_3 wl_62 vdd gnd cell_6t
Xbit_r63_c3 bl_3 br_3 wl_63 vdd gnd cell_6t
Xbit_r64_c3 bl_3 br_3 wl_64 vdd gnd cell_6t
Xbit_r65_c3 bl_3 br_3 wl_65 vdd gnd cell_6t
Xbit_r66_c3 bl_3 br_3 wl_66 vdd gnd cell_6t
Xbit_r67_c3 bl_3 br_3 wl_67 vdd gnd cell_6t
Xbit_r68_c3 bl_3 br_3 wl_68 vdd gnd cell_6t
Xbit_r69_c3 bl_3 br_3 wl_69 vdd gnd cell_6t
Xbit_r70_c3 bl_3 br_3 wl_70 vdd gnd cell_6t
Xbit_r71_c3 bl_3 br_3 wl_71 vdd gnd cell_6t
Xbit_r72_c3 bl_3 br_3 wl_72 vdd gnd cell_6t
Xbit_r73_c3 bl_3 br_3 wl_73 vdd gnd cell_6t
Xbit_r74_c3 bl_3 br_3 wl_74 vdd gnd cell_6t
Xbit_r75_c3 bl_3 br_3 wl_75 vdd gnd cell_6t
Xbit_r76_c3 bl_3 br_3 wl_76 vdd gnd cell_6t
Xbit_r77_c3 bl_3 br_3 wl_77 vdd gnd cell_6t
Xbit_r78_c3 bl_3 br_3 wl_78 vdd gnd cell_6t
Xbit_r79_c3 bl_3 br_3 wl_79 vdd gnd cell_6t
Xbit_r80_c3 bl_3 br_3 wl_80 vdd gnd cell_6t
Xbit_r81_c3 bl_3 br_3 wl_81 vdd gnd cell_6t
Xbit_r82_c3 bl_3 br_3 wl_82 vdd gnd cell_6t
Xbit_r83_c3 bl_3 br_3 wl_83 vdd gnd cell_6t
Xbit_r84_c3 bl_3 br_3 wl_84 vdd gnd cell_6t
Xbit_r85_c3 bl_3 br_3 wl_85 vdd gnd cell_6t
Xbit_r86_c3 bl_3 br_3 wl_86 vdd gnd cell_6t
Xbit_r87_c3 bl_3 br_3 wl_87 vdd gnd cell_6t
Xbit_r88_c3 bl_3 br_3 wl_88 vdd gnd cell_6t
Xbit_r89_c3 bl_3 br_3 wl_89 vdd gnd cell_6t
Xbit_r90_c3 bl_3 br_3 wl_90 vdd gnd cell_6t
Xbit_r91_c3 bl_3 br_3 wl_91 vdd gnd cell_6t
Xbit_r92_c3 bl_3 br_3 wl_92 vdd gnd cell_6t
Xbit_r93_c3 bl_3 br_3 wl_93 vdd gnd cell_6t
Xbit_r94_c3 bl_3 br_3 wl_94 vdd gnd cell_6t
Xbit_r95_c3 bl_3 br_3 wl_95 vdd gnd cell_6t
Xbit_r96_c3 bl_3 br_3 wl_96 vdd gnd cell_6t
Xbit_r97_c3 bl_3 br_3 wl_97 vdd gnd cell_6t
Xbit_r98_c3 bl_3 br_3 wl_98 vdd gnd cell_6t
Xbit_r99_c3 bl_3 br_3 wl_99 vdd gnd cell_6t
Xbit_r100_c3 bl_3 br_3 wl_100 vdd gnd cell_6t
Xbit_r101_c3 bl_3 br_3 wl_101 vdd gnd cell_6t
Xbit_r102_c3 bl_3 br_3 wl_102 vdd gnd cell_6t
Xbit_r103_c3 bl_3 br_3 wl_103 vdd gnd cell_6t
Xbit_r104_c3 bl_3 br_3 wl_104 vdd gnd cell_6t
Xbit_r105_c3 bl_3 br_3 wl_105 vdd gnd cell_6t
Xbit_r106_c3 bl_3 br_3 wl_106 vdd gnd cell_6t
Xbit_r107_c3 bl_3 br_3 wl_107 vdd gnd cell_6t
Xbit_r108_c3 bl_3 br_3 wl_108 vdd gnd cell_6t
Xbit_r109_c3 bl_3 br_3 wl_109 vdd gnd cell_6t
Xbit_r110_c3 bl_3 br_3 wl_110 vdd gnd cell_6t
Xbit_r111_c3 bl_3 br_3 wl_111 vdd gnd cell_6t
Xbit_r112_c3 bl_3 br_3 wl_112 vdd gnd cell_6t
Xbit_r113_c3 bl_3 br_3 wl_113 vdd gnd cell_6t
Xbit_r114_c3 bl_3 br_3 wl_114 vdd gnd cell_6t
Xbit_r115_c3 bl_3 br_3 wl_115 vdd gnd cell_6t
Xbit_r116_c3 bl_3 br_3 wl_116 vdd gnd cell_6t
Xbit_r117_c3 bl_3 br_3 wl_117 vdd gnd cell_6t
Xbit_r118_c3 bl_3 br_3 wl_118 vdd gnd cell_6t
Xbit_r119_c3 bl_3 br_3 wl_119 vdd gnd cell_6t
Xbit_r120_c3 bl_3 br_3 wl_120 vdd gnd cell_6t
Xbit_r121_c3 bl_3 br_3 wl_121 vdd gnd cell_6t
Xbit_r122_c3 bl_3 br_3 wl_122 vdd gnd cell_6t
Xbit_r123_c3 bl_3 br_3 wl_123 vdd gnd cell_6t
Xbit_r124_c3 bl_3 br_3 wl_124 vdd gnd cell_6t
Xbit_r125_c3 bl_3 br_3 wl_125 vdd gnd cell_6t
Xbit_r126_c3 bl_3 br_3 wl_126 vdd gnd cell_6t
Xbit_r127_c3 bl_3 br_3 wl_127 vdd gnd cell_6t
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
Xbit_r32_c4 bl_4 br_4 wl_32 vdd gnd cell_6t
Xbit_r33_c4 bl_4 br_4 wl_33 vdd gnd cell_6t
Xbit_r34_c4 bl_4 br_4 wl_34 vdd gnd cell_6t
Xbit_r35_c4 bl_4 br_4 wl_35 vdd gnd cell_6t
Xbit_r36_c4 bl_4 br_4 wl_36 vdd gnd cell_6t
Xbit_r37_c4 bl_4 br_4 wl_37 vdd gnd cell_6t
Xbit_r38_c4 bl_4 br_4 wl_38 vdd gnd cell_6t
Xbit_r39_c4 bl_4 br_4 wl_39 vdd gnd cell_6t
Xbit_r40_c4 bl_4 br_4 wl_40 vdd gnd cell_6t
Xbit_r41_c4 bl_4 br_4 wl_41 vdd gnd cell_6t
Xbit_r42_c4 bl_4 br_4 wl_42 vdd gnd cell_6t
Xbit_r43_c4 bl_4 br_4 wl_43 vdd gnd cell_6t
Xbit_r44_c4 bl_4 br_4 wl_44 vdd gnd cell_6t
Xbit_r45_c4 bl_4 br_4 wl_45 vdd gnd cell_6t
Xbit_r46_c4 bl_4 br_4 wl_46 vdd gnd cell_6t
Xbit_r47_c4 bl_4 br_4 wl_47 vdd gnd cell_6t
Xbit_r48_c4 bl_4 br_4 wl_48 vdd gnd cell_6t
Xbit_r49_c4 bl_4 br_4 wl_49 vdd gnd cell_6t
Xbit_r50_c4 bl_4 br_4 wl_50 vdd gnd cell_6t
Xbit_r51_c4 bl_4 br_4 wl_51 vdd gnd cell_6t
Xbit_r52_c4 bl_4 br_4 wl_52 vdd gnd cell_6t
Xbit_r53_c4 bl_4 br_4 wl_53 vdd gnd cell_6t
Xbit_r54_c4 bl_4 br_4 wl_54 vdd gnd cell_6t
Xbit_r55_c4 bl_4 br_4 wl_55 vdd gnd cell_6t
Xbit_r56_c4 bl_4 br_4 wl_56 vdd gnd cell_6t
Xbit_r57_c4 bl_4 br_4 wl_57 vdd gnd cell_6t
Xbit_r58_c4 bl_4 br_4 wl_58 vdd gnd cell_6t
Xbit_r59_c4 bl_4 br_4 wl_59 vdd gnd cell_6t
Xbit_r60_c4 bl_4 br_4 wl_60 vdd gnd cell_6t
Xbit_r61_c4 bl_4 br_4 wl_61 vdd gnd cell_6t
Xbit_r62_c4 bl_4 br_4 wl_62 vdd gnd cell_6t
Xbit_r63_c4 bl_4 br_4 wl_63 vdd gnd cell_6t
Xbit_r64_c4 bl_4 br_4 wl_64 vdd gnd cell_6t
Xbit_r65_c4 bl_4 br_4 wl_65 vdd gnd cell_6t
Xbit_r66_c4 bl_4 br_4 wl_66 vdd gnd cell_6t
Xbit_r67_c4 bl_4 br_4 wl_67 vdd gnd cell_6t
Xbit_r68_c4 bl_4 br_4 wl_68 vdd gnd cell_6t
Xbit_r69_c4 bl_4 br_4 wl_69 vdd gnd cell_6t
Xbit_r70_c4 bl_4 br_4 wl_70 vdd gnd cell_6t
Xbit_r71_c4 bl_4 br_4 wl_71 vdd gnd cell_6t
Xbit_r72_c4 bl_4 br_4 wl_72 vdd gnd cell_6t
Xbit_r73_c4 bl_4 br_4 wl_73 vdd gnd cell_6t
Xbit_r74_c4 bl_4 br_4 wl_74 vdd gnd cell_6t
Xbit_r75_c4 bl_4 br_4 wl_75 vdd gnd cell_6t
Xbit_r76_c4 bl_4 br_4 wl_76 vdd gnd cell_6t
Xbit_r77_c4 bl_4 br_4 wl_77 vdd gnd cell_6t
Xbit_r78_c4 bl_4 br_4 wl_78 vdd gnd cell_6t
Xbit_r79_c4 bl_4 br_4 wl_79 vdd gnd cell_6t
Xbit_r80_c4 bl_4 br_4 wl_80 vdd gnd cell_6t
Xbit_r81_c4 bl_4 br_4 wl_81 vdd gnd cell_6t
Xbit_r82_c4 bl_4 br_4 wl_82 vdd gnd cell_6t
Xbit_r83_c4 bl_4 br_4 wl_83 vdd gnd cell_6t
Xbit_r84_c4 bl_4 br_4 wl_84 vdd gnd cell_6t
Xbit_r85_c4 bl_4 br_4 wl_85 vdd gnd cell_6t
Xbit_r86_c4 bl_4 br_4 wl_86 vdd gnd cell_6t
Xbit_r87_c4 bl_4 br_4 wl_87 vdd gnd cell_6t
Xbit_r88_c4 bl_4 br_4 wl_88 vdd gnd cell_6t
Xbit_r89_c4 bl_4 br_4 wl_89 vdd gnd cell_6t
Xbit_r90_c4 bl_4 br_4 wl_90 vdd gnd cell_6t
Xbit_r91_c4 bl_4 br_4 wl_91 vdd gnd cell_6t
Xbit_r92_c4 bl_4 br_4 wl_92 vdd gnd cell_6t
Xbit_r93_c4 bl_4 br_4 wl_93 vdd gnd cell_6t
Xbit_r94_c4 bl_4 br_4 wl_94 vdd gnd cell_6t
Xbit_r95_c4 bl_4 br_4 wl_95 vdd gnd cell_6t
Xbit_r96_c4 bl_4 br_4 wl_96 vdd gnd cell_6t
Xbit_r97_c4 bl_4 br_4 wl_97 vdd gnd cell_6t
Xbit_r98_c4 bl_4 br_4 wl_98 vdd gnd cell_6t
Xbit_r99_c4 bl_4 br_4 wl_99 vdd gnd cell_6t
Xbit_r100_c4 bl_4 br_4 wl_100 vdd gnd cell_6t
Xbit_r101_c4 bl_4 br_4 wl_101 vdd gnd cell_6t
Xbit_r102_c4 bl_4 br_4 wl_102 vdd gnd cell_6t
Xbit_r103_c4 bl_4 br_4 wl_103 vdd gnd cell_6t
Xbit_r104_c4 bl_4 br_4 wl_104 vdd gnd cell_6t
Xbit_r105_c4 bl_4 br_4 wl_105 vdd gnd cell_6t
Xbit_r106_c4 bl_4 br_4 wl_106 vdd gnd cell_6t
Xbit_r107_c4 bl_4 br_4 wl_107 vdd gnd cell_6t
Xbit_r108_c4 bl_4 br_4 wl_108 vdd gnd cell_6t
Xbit_r109_c4 bl_4 br_4 wl_109 vdd gnd cell_6t
Xbit_r110_c4 bl_4 br_4 wl_110 vdd gnd cell_6t
Xbit_r111_c4 bl_4 br_4 wl_111 vdd gnd cell_6t
Xbit_r112_c4 bl_4 br_4 wl_112 vdd gnd cell_6t
Xbit_r113_c4 bl_4 br_4 wl_113 vdd gnd cell_6t
Xbit_r114_c4 bl_4 br_4 wl_114 vdd gnd cell_6t
Xbit_r115_c4 bl_4 br_4 wl_115 vdd gnd cell_6t
Xbit_r116_c4 bl_4 br_4 wl_116 vdd gnd cell_6t
Xbit_r117_c4 bl_4 br_4 wl_117 vdd gnd cell_6t
Xbit_r118_c4 bl_4 br_4 wl_118 vdd gnd cell_6t
Xbit_r119_c4 bl_4 br_4 wl_119 vdd gnd cell_6t
Xbit_r120_c4 bl_4 br_4 wl_120 vdd gnd cell_6t
Xbit_r121_c4 bl_4 br_4 wl_121 vdd gnd cell_6t
Xbit_r122_c4 bl_4 br_4 wl_122 vdd gnd cell_6t
Xbit_r123_c4 bl_4 br_4 wl_123 vdd gnd cell_6t
Xbit_r124_c4 bl_4 br_4 wl_124 vdd gnd cell_6t
Xbit_r125_c4 bl_4 br_4 wl_125 vdd gnd cell_6t
Xbit_r126_c4 bl_4 br_4 wl_126 vdd gnd cell_6t
Xbit_r127_c4 bl_4 br_4 wl_127 vdd gnd cell_6t
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
Xbit_r32_c5 bl_5 br_5 wl_32 vdd gnd cell_6t
Xbit_r33_c5 bl_5 br_5 wl_33 vdd gnd cell_6t
Xbit_r34_c5 bl_5 br_5 wl_34 vdd gnd cell_6t
Xbit_r35_c5 bl_5 br_5 wl_35 vdd gnd cell_6t
Xbit_r36_c5 bl_5 br_5 wl_36 vdd gnd cell_6t
Xbit_r37_c5 bl_5 br_5 wl_37 vdd gnd cell_6t
Xbit_r38_c5 bl_5 br_5 wl_38 vdd gnd cell_6t
Xbit_r39_c5 bl_5 br_5 wl_39 vdd gnd cell_6t
Xbit_r40_c5 bl_5 br_5 wl_40 vdd gnd cell_6t
Xbit_r41_c5 bl_5 br_5 wl_41 vdd gnd cell_6t
Xbit_r42_c5 bl_5 br_5 wl_42 vdd gnd cell_6t
Xbit_r43_c5 bl_5 br_5 wl_43 vdd gnd cell_6t
Xbit_r44_c5 bl_5 br_5 wl_44 vdd gnd cell_6t
Xbit_r45_c5 bl_5 br_5 wl_45 vdd gnd cell_6t
Xbit_r46_c5 bl_5 br_5 wl_46 vdd gnd cell_6t
Xbit_r47_c5 bl_5 br_5 wl_47 vdd gnd cell_6t
Xbit_r48_c5 bl_5 br_5 wl_48 vdd gnd cell_6t
Xbit_r49_c5 bl_5 br_5 wl_49 vdd gnd cell_6t
Xbit_r50_c5 bl_5 br_5 wl_50 vdd gnd cell_6t
Xbit_r51_c5 bl_5 br_5 wl_51 vdd gnd cell_6t
Xbit_r52_c5 bl_5 br_5 wl_52 vdd gnd cell_6t
Xbit_r53_c5 bl_5 br_5 wl_53 vdd gnd cell_6t
Xbit_r54_c5 bl_5 br_5 wl_54 vdd gnd cell_6t
Xbit_r55_c5 bl_5 br_5 wl_55 vdd gnd cell_6t
Xbit_r56_c5 bl_5 br_5 wl_56 vdd gnd cell_6t
Xbit_r57_c5 bl_5 br_5 wl_57 vdd gnd cell_6t
Xbit_r58_c5 bl_5 br_5 wl_58 vdd gnd cell_6t
Xbit_r59_c5 bl_5 br_5 wl_59 vdd gnd cell_6t
Xbit_r60_c5 bl_5 br_5 wl_60 vdd gnd cell_6t
Xbit_r61_c5 bl_5 br_5 wl_61 vdd gnd cell_6t
Xbit_r62_c5 bl_5 br_5 wl_62 vdd gnd cell_6t
Xbit_r63_c5 bl_5 br_5 wl_63 vdd gnd cell_6t
Xbit_r64_c5 bl_5 br_5 wl_64 vdd gnd cell_6t
Xbit_r65_c5 bl_5 br_5 wl_65 vdd gnd cell_6t
Xbit_r66_c5 bl_5 br_5 wl_66 vdd gnd cell_6t
Xbit_r67_c5 bl_5 br_5 wl_67 vdd gnd cell_6t
Xbit_r68_c5 bl_5 br_5 wl_68 vdd gnd cell_6t
Xbit_r69_c5 bl_5 br_5 wl_69 vdd gnd cell_6t
Xbit_r70_c5 bl_5 br_5 wl_70 vdd gnd cell_6t
Xbit_r71_c5 bl_5 br_5 wl_71 vdd gnd cell_6t
Xbit_r72_c5 bl_5 br_5 wl_72 vdd gnd cell_6t
Xbit_r73_c5 bl_5 br_5 wl_73 vdd gnd cell_6t
Xbit_r74_c5 bl_5 br_5 wl_74 vdd gnd cell_6t
Xbit_r75_c5 bl_5 br_5 wl_75 vdd gnd cell_6t
Xbit_r76_c5 bl_5 br_5 wl_76 vdd gnd cell_6t
Xbit_r77_c5 bl_5 br_5 wl_77 vdd gnd cell_6t
Xbit_r78_c5 bl_5 br_5 wl_78 vdd gnd cell_6t
Xbit_r79_c5 bl_5 br_5 wl_79 vdd gnd cell_6t
Xbit_r80_c5 bl_5 br_5 wl_80 vdd gnd cell_6t
Xbit_r81_c5 bl_5 br_5 wl_81 vdd gnd cell_6t
Xbit_r82_c5 bl_5 br_5 wl_82 vdd gnd cell_6t
Xbit_r83_c5 bl_5 br_5 wl_83 vdd gnd cell_6t
Xbit_r84_c5 bl_5 br_5 wl_84 vdd gnd cell_6t
Xbit_r85_c5 bl_5 br_5 wl_85 vdd gnd cell_6t
Xbit_r86_c5 bl_5 br_5 wl_86 vdd gnd cell_6t
Xbit_r87_c5 bl_5 br_5 wl_87 vdd gnd cell_6t
Xbit_r88_c5 bl_5 br_5 wl_88 vdd gnd cell_6t
Xbit_r89_c5 bl_5 br_5 wl_89 vdd gnd cell_6t
Xbit_r90_c5 bl_5 br_5 wl_90 vdd gnd cell_6t
Xbit_r91_c5 bl_5 br_5 wl_91 vdd gnd cell_6t
Xbit_r92_c5 bl_5 br_5 wl_92 vdd gnd cell_6t
Xbit_r93_c5 bl_5 br_5 wl_93 vdd gnd cell_6t
Xbit_r94_c5 bl_5 br_5 wl_94 vdd gnd cell_6t
Xbit_r95_c5 bl_5 br_5 wl_95 vdd gnd cell_6t
Xbit_r96_c5 bl_5 br_5 wl_96 vdd gnd cell_6t
Xbit_r97_c5 bl_5 br_5 wl_97 vdd gnd cell_6t
Xbit_r98_c5 bl_5 br_5 wl_98 vdd gnd cell_6t
Xbit_r99_c5 bl_5 br_5 wl_99 vdd gnd cell_6t
Xbit_r100_c5 bl_5 br_5 wl_100 vdd gnd cell_6t
Xbit_r101_c5 bl_5 br_5 wl_101 vdd gnd cell_6t
Xbit_r102_c5 bl_5 br_5 wl_102 vdd gnd cell_6t
Xbit_r103_c5 bl_5 br_5 wl_103 vdd gnd cell_6t
Xbit_r104_c5 bl_5 br_5 wl_104 vdd gnd cell_6t
Xbit_r105_c5 bl_5 br_5 wl_105 vdd gnd cell_6t
Xbit_r106_c5 bl_5 br_5 wl_106 vdd gnd cell_6t
Xbit_r107_c5 bl_5 br_5 wl_107 vdd gnd cell_6t
Xbit_r108_c5 bl_5 br_5 wl_108 vdd gnd cell_6t
Xbit_r109_c5 bl_5 br_5 wl_109 vdd gnd cell_6t
Xbit_r110_c5 bl_5 br_5 wl_110 vdd gnd cell_6t
Xbit_r111_c5 bl_5 br_5 wl_111 vdd gnd cell_6t
Xbit_r112_c5 bl_5 br_5 wl_112 vdd gnd cell_6t
Xbit_r113_c5 bl_5 br_5 wl_113 vdd gnd cell_6t
Xbit_r114_c5 bl_5 br_5 wl_114 vdd gnd cell_6t
Xbit_r115_c5 bl_5 br_5 wl_115 vdd gnd cell_6t
Xbit_r116_c5 bl_5 br_5 wl_116 vdd gnd cell_6t
Xbit_r117_c5 bl_5 br_5 wl_117 vdd gnd cell_6t
Xbit_r118_c5 bl_5 br_5 wl_118 vdd gnd cell_6t
Xbit_r119_c5 bl_5 br_5 wl_119 vdd gnd cell_6t
Xbit_r120_c5 bl_5 br_5 wl_120 vdd gnd cell_6t
Xbit_r121_c5 bl_5 br_5 wl_121 vdd gnd cell_6t
Xbit_r122_c5 bl_5 br_5 wl_122 vdd gnd cell_6t
Xbit_r123_c5 bl_5 br_5 wl_123 vdd gnd cell_6t
Xbit_r124_c5 bl_5 br_5 wl_124 vdd gnd cell_6t
Xbit_r125_c5 bl_5 br_5 wl_125 vdd gnd cell_6t
Xbit_r126_c5 bl_5 br_5 wl_126 vdd gnd cell_6t
Xbit_r127_c5 bl_5 br_5 wl_127 vdd gnd cell_6t
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
Xbit_r32_c6 bl_6 br_6 wl_32 vdd gnd cell_6t
Xbit_r33_c6 bl_6 br_6 wl_33 vdd gnd cell_6t
Xbit_r34_c6 bl_6 br_6 wl_34 vdd gnd cell_6t
Xbit_r35_c6 bl_6 br_6 wl_35 vdd gnd cell_6t
Xbit_r36_c6 bl_6 br_6 wl_36 vdd gnd cell_6t
Xbit_r37_c6 bl_6 br_6 wl_37 vdd gnd cell_6t
Xbit_r38_c6 bl_6 br_6 wl_38 vdd gnd cell_6t
Xbit_r39_c6 bl_6 br_6 wl_39 vdd gnd cell_6t
Xbit_r40_c6 bl_6 br_6 wl_40 vdd gnd cell_6t
Xbit_r41_c6 bl_6 br_6 wl_41 vdd gnd cell_6t
Xbit_r42_c6 bl_6 br_6 wl_42 vdd gnd cell_6t
Xbit_r43_c6 bl_6 br_6 wl_43 vdd gnd cell_6t
Xbit_r44_c6 bl_6 br_6 wl_44 vdd gnd cell_6t
Xbit_r45_c6 bl_6 br_6 wl_45 vdd gnd cell_6t
Xbit_r46_c6 bl_6 br_6 wl_46 vdd gnd cell_6t
Xbit_r47_c6 bl_6 br_6 wl_47 vdd gnd cell_6t
Xbit_r48_c6 bl_6 br_6 wl_48 vdd gnd cell_6t
Xbit_r49_c6 bl_6 br_6 wl_49 vdd gnd cell_6t
Xbit_r50_c6 bl_6 br_6 wl_50 vdd gnd cell_6t
Xbit_r51_c6 bl_6 br_6 wl_51 vdd gnd cell_6t
Xbit_r52_c6 bl_6 br_6 wl_52 vdd gnd cell_6t
Xbit_r53_c6 bl_6 br_6 wl_53 vdd gnd cell_6t
Xbit_r54_c6 bl_6 br_6 wl_54 vdd gnd cell_6t
Xbit_r55_c6 bl_6 br_6 wl_55 vdd gnd cell_6t
Xbit_r56_c6 bl_6 br_6 wl_56 vdd gnd cell_6t
Xbit_r57_c6 bl_6 br_6 wl_57 vdd gnd cell_6t
Xbit_r58_c6 bl_6 br_6 wl_58 vdd gnd cell_6t
Xbit_r59_c6 bl_6 br_6 wl_59 vdd gnd cell_6t
Xbit_r60_c6 bl_6 br_6 wl_60 vdd gnd cell_6t
Xbit_r61_c6 bl_6 br_6 wl_61 vdd gnd cell_6t
Xbit_r62_c6 bl_6 br_6 wl_62 vdd gnd cell_6t
Xbit_r63_c6 bl_6 br_6 wl_63 vdd gnd cell_6t
Xbit_r64_c6 bl_6 br_6 wl_64 vdd gnd cell_6t
Xbit_r65_c6 bl_6 br_6 wl_65 vdd gnd cell_6t
Xbit_r66_c6 bl_6 br_6 wl_66 vdd gnd cell_6t
Xbit_r67_c6 bl_6 br_6 wl_67 vdd gnd cell_6t
Xbit_r68_c6 bl_6 br_6 wl_68 vdd gnd cell_6t
Xbit_r69_c6 bl_6 br_6 wl_69 vdd gnd cell_6t
Xbit_r70_c6 bl_6 br_6 wl_70 vdd gnd cell_6t
Xbit_r71_c6 bl_6 br_6 wl_71 vdd gnd cell_6t
Xbit_r72_c6 bl_6 br_6 wl_72 vdd gnd cell_6t
Xbit_r73_c6 bl_6 br_6 wl_73 vdd gnd cell_6t
Xbit_r74_c6 bl_6 br_6 wl_74 vdd gnd cell_6t
Xbit_r75_c6 bl_6 br_6 wl_75 vdd gnd cell_6t
Xbit_r76_c6 bl_6 br_6 wl_76 vdd gnd cell_6t
Xbit_r77_c6 bl_6 br_6 wl_77 vdd gnd cell_6t
Xbit_r78_c6 bl_6 br_6 wl_78 vdd gnd cell_6t
Xbit_r79_c6 bl_6 br_6 wl_79 vdd gnd cell_6t
Xbit_r80_c6 bl_6 br_6 wl_80 vdd gnd cell_6t
Xbit_r81_c6 bl_6 br_6 wl_81 vdd gnd cell_6t
Xbit_r82_c6 bl_6 br_6 wl_82 vdd gnd cell_6t
Xbit_r83_c6 bl_6 br_6 wl_83 vdd gnd cell_6t
Xbit_r84_c6 bl_6 br_6 wl_84 vdd gnd cell_6t
Xbit_r85_c6 bl_6 br_6 wl_85 vdd gnd cell_6t
Xbit_r86_c6 bl_6 br_6 wl_86 vdd gnd cell_6t
Xbit_r87_c6 bl_6 br_6 wl_87 vdd gnd cell_6t
Xbit_r88_c6 bl_6 br_6 wl_88 vdd gnd cell_6t
Xbit_r89_c6 bl_6 br_6 wl_89 vdd gnd cell_6t
Xbit_r90_c6 bl_6 br_6 wl_90 vdd gnd cell_6t
Xbit_r91_c6 bl_6 br_6 wl_91 vdd gnd cell_6t
Xbit_r92_c6 bl_6 br_6 wl_92 vdd gnd cell_6t
Xbit_r93_c6 bl_6 br_6 wl_93 vdd gnd cell_6t
Xbit_r94_c6 bl_6 br_6 wl_94 vdd gnd cell_6t
Xbit_r95_c6 bl_6 br_6 wl_95 vdd gnd cell_6t
Xbit_r96_c6 bl_6 br_6 wl_96 vdd gnd cell_6t
Xbit_r97_c6 bl_6 br_6 wl_97 vdd gnd cell_6t
Xbit_r98_c6 bl_6 br_6 wl_98 vdd gnd cell_6t
Xbit_r99_c6 bl_6 br_6 wl_99 vdd gnd cell_6t
Xbit_r100_c6 bl_6 br_6 wl_100 vdd gnd cell_6t
Xbit_r101_c6 bl_6 br_6 wl_101 vdd gnd cell_6t
Xbit_r102_c6 bl_6 br_6 wl_102 vdd gnd cell_6t
Xbit_r103_c6 bl_6 br_6 wl_103 vdd gnd cell_6t
Xbit_r104_c6 bl_6 br_6 wl_104 vdd gnd cell_6t
Xbit_r105_c6 bl_6 br_6 wl_105 vdd gnd cell_6t
Xbit_r106_c6 bl_6 br_6 wl_106 vdd gnd cell_6t
Xbit_r107_c6 bl_6 br_6 wl_107 vdd gnd cell_6t
Xbit_r108_c6 bl_6 br_6 wl_108 vdd gnd cell_6t
Xbit_r109_c6 bl_6 br_6 wl_109 vdd gnd cell_6t
Xbit_r110_c6 bl_6 br_6 wl_110 vdd gnd cell_6t
Xbit_r111_c6 bl_6 br_6 wl_111 vdd gnd cell_6t
Xbit_r112_c6 bl_6 br_6 wl_112 vdd gnd cell_6t
Xbit_r113_c6 bl_6 br_6 wl_113 vdd gnd cell_6t
Xbit_r114_c6 bl_6 br_6 wl_114 vdd gnd cell_6t
Xbit_r115_c6 bl_6 br_6 wl_115 vdd gnd cell_6t
Xbit_r116_c6 bl_6 br_6 wl_116 vdd gnd cell_6t
Xbit_r117_c6 bl_6 br_6 wl_117 vdd gnd cell_6t
Xbit_r118_c6 bl_6 br_6 wl_118 vdd gnd cell_6t
Xbit_r119_c6 bl_6 br_6 wl_119 vdd gnd cell_6t
Xbit_r120_c6 bl_6 br_6 wl_120 vdd gnd cell_6t
Xbit_r121_c6 bl_6 br_6 wl_121 vdd gnd cell_6t
Xbit_r122_c6 bl_6 br_6 wl_122 vdd gnd cell_6t
Xbit_r123_c6 bl_6 br_6 wl_123 vdd gnd cell_6t
Xbit_r124_c6 bl_6 br_6 wl_124 vdd gnd cell_6t
Xbit_r125_c6 bl_6 br_6 wl_125 vdd gnd cell_6t
Xbit_r126_c6 bl_6 br_6 wl_126 vdd gnd cell_6t
Xbit_r127_c6 bl_6 br_6 wl_127 vdd gnd cell_6t
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
Xbit_r32_c7 bl_7 br_7 wl_32 vdd gnd cell_6t
Xbit_r33_c7 bl_7 br_7 wl_33 vdd gnd cell_6t
Xbit_r34_c7 bl_7 br_7 wl_34 vdd gnd cell_6t
Xbit_r35_c7 bl_7 br_7 wl_35 vdd gnd cell_6t
Xbit_r36_c7 bl_7 br_7 wl_36 vdd gnd cell_6t
Xbit_r37_c7 bl_7 br_7 wl_37 vdd gnd cell_6t
Xbit_r38_c7 bl_7 br_7 wl_38 vdd gnd cell_6t
Xbit_r39_c7 bl_7 br_7 wl_39 vdd gnd cell_6t
Xbit_r40_c7 bl_7 br_7 wl_40 vdd gnd cell_6t
Xbit_r41_c7 bl_7 br_7 wl_41 vdd gnd cell_6t
Xbit_r42_c7 bl_7 br_7 wl_42 vdd gnd cell_6t
Xbit_r43_c7 bl_7 br_7 wl_43 vdd gnd cell_6t
Xbit_r44_c7 bl_7 br_7 wl_44 vdd gnd cell_6t
Xbit_r45_c7 bl_7 br_7 wl_45 vdd gnd cell_6t
Xbit_r46_c7 bl_7 br_7 wl_46 vdd gnd cell_6t
Xbit_r47_c7 bl_7 br_7 wl_47 vdd gnd cell_6t
Xbit_r48_c7 bl_7 br_7 wl_48 vdd gnd cell_6t
Xbit_r49_c7 bl_7 br_7 wl_49 vdd gnd cell_6t
Xbit_r50_c7 bl_7 br_7 wl_50 vdd gnd cell_6t
Xbit_r51_c7 bl_7 br_7 wl_51 vdd gnd cell_6t
Xbit_r52_c7 bl_7 br_7 wl_52 vdd gnd cell_6t
Xbit_r53_c7 bl_7 br_7 wl_53 vdd gnd cell_6t
Xbit_r54_c7 bl_7 br_7 wl_54 vdd gnd cell_6t
Xbit_r55_c7 bl_7 br_7 wl_55 vdd gnd cell_6t
Xbit_r56_c7 bl_7 br_7 wl_56 vdd gnd cell_6t
Xbit_r57_c7 bl_7 br_7 wl_57 vdd gnd cell_6t
Xbit_r58_c7 bl_7 br_7 wl_58 vdd gnd cell_6t
Xbit_r59_c7 bl_7 br_7 wl_59 vdd gnd cell_6t
Xbit_r60_c7 bl_7 br_7 wl_60 vdd gnd cell_6t
Xbit_r61_c7 bl_7 br_7 wl_61 vdd gnd cell_6t
Xbit_r62_c7 bl_7 br_7 wl_62 vdd gnd cell_6t
Xbit_r63_c7 bl_7 br_7 wl_63 vdd gnd cell_6t
Xbit_r64_c7 bl_7 br_7 wl_64 vdd gnd cell_6t
Xbit_r65_c7 bl_7 br_7 wl_65 vdd gnd cell_6t
Xbit_r66_c7 bl_7 br_7 wl_66 vdd gnd cell_6t
Xbit_r67_c7 bl_7 br_7 wl_67 vdd gnd cell_6t
Xbit_r68_c7 bl_7 br_7 wl_68 vdd gnd cell_6t
Xbit_r69_c7 bl_7 br_7 wl_69 vdd gnd cell_6t
Xbit_r70_c7 bl_7 br_7 wl_70 vdd gnd cell_6t
Xbit_r71_c7 bl_7 br_7 wl_71 vdd gnd cell_6t
Xbit_r72_c7 bl_7 br_7 wl_72 vdd gnd cell_6t
Xbit_r73_c7 bl_7 br_7 wl_73 vdd gnd cell_6t
Xbit_r74_c7 bl_7 br_7 wl_74 vdd gnd cell_6t
Xbit_r75_c7 bl_7 br_7 wl_75 vdd gnd cell_6t
Xbit_r76_c7 bl_7 br_7 wl_76 vdd gnd cell_6t
Xbit_r77_c7 bl_7 br_7 wl_77 vdd gnd cell_6t
Xbit_r78_c7 bl_7 br_7 wl_78 vdd gnd cell_6t
Xbit_r79_c7 bl_7 br_7 wl_79 vdd gnd cell_6t
Xbit_r80_c7 bl_7 br_7 wl_80 vdd gnd cell_6t
Xbit_r81_c7 bl_7 br_7 wl_81 vdd gnd cell_6t
Xbit_r82_c7 bl_7 br_7 wl_82 vdd gnd cell_6t
Xbit_r83_c7 bl_7 br_7 wl_83 vdd gnd cell_6t
Xbit_r84_c7 bl_7 br_7 wl_84 vdd gnd cell_6t
Xbit_r85_c7 bl_7 br_7 wl_85 vdd gnd cell_6t
Xbit_r86_c7 bl_7 br_7 wl_86 vdd gnd cell_6t
Xbit_r87_c7 bl_7 br_7 wl_87 vdd gnd cell_6t
Xbit_r88_c7 bl_7 br_7 wl_88 vdd gnd cell_6t
Xbit_r89_c7 bl_7 br_7 wl_89 vdd gnd cell_6t
Xbit_r90_c7 bl_7 br_7 wl_90 vdd gnd cell_6t
Xbit_r91_c7 bl_7 br_7 wl_91 vdd gnd cell_6t
Xbit_r92_c7 bl_7 br_7 wl_92 vdd gnd cell_6t
Xbit_r93_c7 bl_7 br_7 wl_93 vdd gnd cell_6t
Xbit_r94_c7 bl_7 br_7 wl_94 vdd gnd cell_6t
Xbit_r95_c7 bl_7 br_7 wl_95 vdd gnd cell_6t
Xbit_r96_c7 bl_7 br_7 wl_96 vdd gnd cell_6t
Xbit_r97_c7 bl_7 br_7 wl_97 vdd gnd cell_6t
Xbit_r98_c7 bl_7 br_7 wl_98 vdd gnd cell_6t
Xbit_r99_c7 bl_7 br_7 wl_99 vdd gnd cell_6t
Xbit_r100_c7 bl_7 br_7 wl_100 vdd gnd cell_6t
Xbit_r101_c7 bl_7 br_7 wl_101 vdd gnd cell_6t
Xbit_r102_c7 bl_7 br_7 wl_102 vdd gnd cell_6t
Xbit_r103_c7 bl_7 br_7 wl_103 vdd gnd cell_6t
Xbit_r104_c7 bl_7 br_7 wl_104 vdd gnd cell_6t
Xbit_r105_c7 bl_7 br_7 wl_105 vdd gnd cell_6t
Xbit_r106_c7 bl_7 br_7 wl_106 vdd gnd cell_6t
Xbit_r107_c7 bl_7 br_7 wl_107 vdd gnd cell_6t
Xbit_r108_c7 bl_7 br_7 wl_108 vdd gnd cell_6t
Xbit_r109_c7 bl_7 br_7 wl_109 vdd gnd cell_6t
Xbit_r110_c7 bl_7 br_7 wl_110 vdd gnd cell_6t
Xbit_r111_c7 bl_7 br_7 wl_111 vdd gnd cell_6t
Xbit_r112_c7 bl_7 br_7 wl_112 vdd gnd cell_6t
Xbit_r113_c7 bl_7 br_7 wl_113 vdd gnd cell_6t
Xbit_r114_c7 bl_7 br_7 wl_114 vdd gnd cell_6t
Xbit_r115_c7 bl_7 br_7 wl_115 vdd gnd cell_6t
Xbit_r116_c7 bl_7 br_7 wl_116 vdd gnd cell_6t
Xbit_r117_c7 bl_7 br_7 wl_117 vdd gnd cell_6t
Xbit_r118_c7 bl_7 br_7 wl_118 vdd gnd cell_6t
Xbit_r119_c7 bl_7 br_7 wl_119 vdd gnd cell_6t
Xbit_r120_c7 bl_7 br_7 wl_120 vdd gnd cell_6t
Xbit_r121_c7 bl_7 br_7 wl_121 vdd gnd cell_6t
Xbit_r122_c7 bl_7 br_7 wl_122 vdd gnd cell_6t
Xbit_r123_c7 bl_7 br_7 wl_123 vdd gnd cell_6t
Xbit_r124_c7 bl_7 br_7 wl_124 vdd gnd cell_6t
Xbit_r125_c7 bl_7 br_7 wl_125 vdd gnd cell_6t
Xbit_r126_c7 bl_7 br_7 wl_126 vdd gnd cell_6t
Xbit_r127_c7 bl_7 br_7 wl_127 vdd gnd cell_6t
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
Xbit_r32_c8 bl_8 br_8 wl_32 vdd gnd cell_6t
Xbit_r33_c8 bl_8 br_8 wl_33 vdd gnd cell_6t
Xbit_r34_c8 bl_8 br_8 wl_34 vdd gnd cell_6t
Xbit_r35_c8 bl_8 br_8 wl_35 vdd gnd cell_6t
Xbit_r36_c8 bl_8 br_8 wl_36 vdd gnd cell_6t
Xbit_r37_c8 bl_8 br_8 wl_37 vdd gnd cell_6t
Xbit_r38_c8 bl_8 br_8 wl_38 vdd gnd cell_6t
Xbit_r39_c8 bl_8 br_8 wl_39 vdd gnd cell_6t
Xbit_r40_c8 bl_8 br_8 wl_40 vdd gnd cell_6t
Xbit_r41_c8 bl_8 br_8 wl_41 vdd gnd cell_6t
Xbit_r42_c8 bl_8 br_8 wl_42 vdd gnd cell_6t
Xbit_r43_c8 bl_8 br_8 wl_43 vdd gnd cell_6t
Xbit_r44_c8 bl_8 br_8 wl_44 vdd gnd cell_6t
Xbit_r45_c8 bl_8 br_8 wl_45 vdd gnd cell_6t
Xbit_r46_c8 bl_8 br_8 wl_46 vdd gnd cell_6t
Xbit_r47_c8 bl_8 br_8 wl_47 vdd gnd cell_6t
Xbit_r48_c8 bl_8 br_8 wl_48 vdd gnd cell_6t
Xbit_r49_c8 bl_8 br_8 wl_49 vdd gnd cell_6t
Xbit_r50_c8 bl_8 br_8 wl_50 vdd gnd cell_6t
Xbit_r51_c8 bl_8 br_8 wl_51 vdd gnd cell_6t
Xbit_r52_c8 bl_8 br_8 wl_52 vdd gnd cell_6t
Xbit_r53_c8 bl_8 br_8 wl_53 vdd gnd cell_6t
Xbit_r54_c8 bl_8 br_8 wl_54 vdd gnd cell_6t
Xbit_r55_c8 bl_8 br_8 wl_55 vdd gnd cell_6t
Xbit_r56_c8 bl_8 br_8 wl_56 vdd gnd cell_6t
Xbit_r57_c8 bl_8 br_8 wl_57 vdd gnd cell_6t
Xbit_r58_c8 bl_8 br_8 wl_58 vdd gnd cell_6t
Xbit_r59_c8 bl_8 br_8 wl_59 vdd gnd cell_6t
Xbit_r60_c8 bl_8 br_8 wl_60 vdd gnd cell_6t
Xbit_r61_c8 bl_8 br_8 wl_61 vdd gnd cell_6t
Xbit_r62_c8 bl_8 br_8 wl_62 vdd gnd cell_6t
Xbit_r63_c8 bl_8 br_8 wl_63 vdd gnd cell_6t
Xbit_r64_c8 bl_8 br_8 wl_64 vdd gnd cell_6t
Xbit_r65_c8 bl_8 br_8 wl_65 vdd gnd cell_6t
Xbit_r66_c8 bl_8 br_8 wl_66 vdd gnd cell_6t
Xbit_r67_c8 bl_8 br_8 wl_67 vdd gnd cell_6t
Xbit_r68_c8 bl_8 br_8 wl_68 vdd gnd cell_6t
Xbit_r69_c8 bl_8 br_8 wl_69 vdd gnd cell_6t
Xbit_r70_c8 bl_8 br_8 wl_70 vdd gnd cell_6t
Xbit_r71_c8 bl_8 br_8 wl_71 vdd gnd cell_6t
Xbit_r72_c8 bl_8 br_8 wl_72 vdd gnd cell_6t
Xbit_r73_c8 bl_8 br_8 wl_73 vdd gnd cell_6t
Xbit_r74_c8 bl_8 br_8 wl_74 vdd gnd cell_6t
Xbit_r75_c8 bl_8 br_8 wl_75 vdd gnd cell_6t
Xbit_r76_c8 bl_8 br_8 wl_76 vdd gnd cell_6t
Xbit_r77_c8 bl_8 br_8 wl_77 vdd gnd cell_6t
Xbit_r78_c8 bl_8 br_8 wl_78 vdd gnd cell_6t
Xbit_r79_c8 bl_8 br_8 wl_79 vdd gnd cell_6t
Xbit_r80_c8 bl_8 br_8 wl_80 vdd gnd cell_6t
Xbit_r81_c8 bl_8 br_8 wl_81 vdd gnd cell_6t
Xbit_r82_c8 bl_8 br_8 wl_82 vdd gnd cell_6t
Xbit_r83_c8 bl_8 br_8 wl_83 vdd gnd cell_6t
Xbit_r84_c8 bl_8 br_8 wl_84 vdd gnd cell_6t
Xbit_r85_c8 bl_8 br_8 wl_85 vdd gnd cell_6t
Xbit_r86_c8 bl_8 br_8 wl_86 vdd gnd cell_6t
Xbit_r87_c8 bl_8 br_8 wl_87 vdd gnd cell_6t
Xbit_r88_c8 bl_8 br_8 wl_88 vdd gnd cell_6t
Xbit_r89_c8 bl_8 br_8 wl_89 vdd gnd cell_6t
Xbit_r90_c8 bl_8 br_8 wl_90 vdd gnd cell_6t
Xbit_r91_c8 bl_8 br_8 wl_91 vdd gnd cell_6t
Xbit_r92_c8 bl_8 br_8 wl_92 vdd gnd cell_6t
Xbit_r93_c8 bl_8 br_8 wl_93 vdd gnd cell_6t
Xbit_r94_c8 bl_8 br_8 wl_94 vdd gnd cell_6t
Xbit_r95_c8 bl_8 br_8 wl_95 vdd gnd cell_6t
Xbit_r96_c8 bl_8 br_8 wl_96 vdd gnd cell_6t
Xbit_r97_c8 bl_8 br_8 wl_97 vdd gnd cell_6t
Xbit_r98_c8 bl_8 br_8 wl_98 vdd gnd cell_6t
Xbit_r99_c8 bl_8 br_8 wl_99 vdd gnd cell_6t
Xbit_r100_c8 bl_8 br_8 wl_100 vdd gnd cell_6t
Xbit_r101_c8 bl_8 br_8 wl_101 vdd gnd cell_6t
Xbit_r102_c8 bl_8 br_8 wl_102 vdd gnd cell_6t
Xbit_r103_c8 bl_8 br_8 wl_103 vdd gnd cell_6t
Xbit_r104_c8 bl_8 br_8 wl_104 vdd gnd cell_6t
Xbit_r105_c8 bl_8 br_8 wl_105 vdd gnd cell_6t
Xbit_r106_c8 bl_8 br_8 wl_106 vdd gnd cell_6t
Xbit_r107_c8 bl_8 br_8 wl_107 vdd gnd cell_6t
Xbit_r108_c8 bl_8 br_8 wl_108 vdd gnd cell_6t
Xbit_r109_c8 bl_8 br_8 wl_109 vdd gnd cell_6t
Xbit_r110_c8 bl_8 br_8 wl_110 vdd gnd cell_6t
Xbit_r111_c8 bl_8 br_8 wl_111 vdd gnd cell_6t
Xbit_r112_c8 bl_8 br_8 wl_112 vdd gnd cell_6t
Xbit_r113_c8 bl_8 br_8 wl_113 vdd gnd cell_6t
Xbit_r114_c8 bl_8 br_8 wl_114 vdd gnd cell_6t
Xbit_r115_c8 bl_8 br_8 wl_115 vdd gnd cell_6t
Xbit_r116_c8 bl_8 br_8 wl_116 vdd gnd cell_6t
Xbit_r117_c8 bl_8 br_8 wl_117 vdd gnd cell_6t
Xbit_r118_c8 bl_8 br_8 wl_118 vdd gnd cell_6t
Xbit_r119_c8 bl_8 br_8 wl_119 vdd gnd cell_6t
Xbit_r120_c8 bl_8 br_8 wl_120 vdd gnd cell_6t
Xbit_r121_c8 bl_8 br_8 wl_121 vdd gnd cell_6t
Xbit_r122_c8 bl_8 br_8 wl_122 vdd gnd cell_6t
Xbit_r123_c8 bl_8 br_8 wl_123 vdd gnd cell_6t
Xbit_r124_c8 bl_8 br_8 wl_124 vdd gnd cell_6t
Xbit_r125_c8 bl_8 br_8 wl_125 vdd gnd cell_6t
Xbit_r126_c8 bl_8 br_8 wl_126 vdd gnd cell_6t
Xbit_r127_c8 bl_8 br_8 wl_127 vdd gnd cell_6t
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
Xbit_r32_c9 bl_9 br_9 wl_32 vdd gnd cell_6t
Xbit_r33_c9 bl_9 br_9 wl_33 vdd gnd cell_6t
Xbit_r34_c9 bl_9 br_9 wl_34 vdd gnd cell_6t
Xbit_r35_c9 bl_9 br_9 wl_35 vdd gnd cell_6t
Xbit_r36_c9 bl_9 br_9 wl_36 vdd gnd cell_6t
Xbit_r37_c9 bl_9 br_9 wl_37 vdd gnd cell_6t
Xbit_r38_c9 bl_9 br_9 wl_38 vdd gnd cell_6t
Xbit_r39_c9 bl_9 br_9 wl_39 vdd gnd cell_6t
Xbit_r40_c9 bl_9 br_9 wl_40 vdd gnd cell_6t
Xbit_r41_c9 bl_9 br_9 wl_41 vdd gnd cell_6t
Xbit_r42_c9 bl_9 br_9 wl_42 vdd gnd cell_6t
Xbit_r43_c9 bl_9 br_9 wl_43 vdd gnd cell_6t
Xbit_r44_c9 bl_9 br_9 wl_44 vdd gnd cell_6t
Xbit_r45_c9 bl_9 br_9 wl_45 vdd gnd cell_6t
Xbit_r46_c9 bl_9 br_9 wl_46 vdd gnd cell_6t
Xbit_r47_c9 bl_9 br_9 wl_47 vdd gnd cell_6t
Xbit_r48_c9 bl_9 br_9 wl_48 vdd gnd cell_6t
Xbit_r49_c9 bl_9 br_9 wl_49 vdd gnd cell_6t
Xbit_r50_c9 bl_9 br_9 wl_50 vdd gnd cell_6t
Xbit_r51_c9 bl_9 br_9 wl_51 vdd gnd cell_6t
Xbit_r52_c9 bl_9 br_9 wl_52 vdd gnd cell_6t
Xbit_r53_c9 bl_9 br_9 wl_53 vdd gnd cell_6t
Xbit_r54_c9 bl_9 br_9 wl_54 vdd gnd cell_6t
Xbit_r55_c9 bl_9 br_9 wl_55 vdd gnd cell_6t
Xbit_r56_c9 bl_9 br_9 wl_56 vdd gnd cell_6t
Xbit_r57_c9 bl_9 br_9 wl_57 vdd gnd cell_6t
Xbit_r58_c9 bl_9 br_9 wl_58 vdd gnd cell_6t
Xbit_r59_c9 bl_9 br_9 wl_59 vdd gnd cell_6t
Xbit_r60_c9 bl_9 br_9 wl_60 vdd gnd cell_6t
Xbit_r61_c9 bl_9 br_9 wl_61 vdd gnd cell_6t
Xbit_r62_c9 bl_9 br_9 wl_62 vdd gnd cell_6t
Xbit_r63_c9 bl_9 br_9 wl_63 vdd gnd cell_6t
Xbit_r64_c9 bl_9 br_9 wl_64 vdd gnd cell_6t
Xbit_r65_c9 bl_9 br_9 wl_65 vdd gnd cell_6t
Xbit_r66_c9 bl_9 br_9 wl_66 vdd gnd cell_6t
Xbit_r67_c9 bl_9 br_9 wl_67 vdd gnd cell_6t
Xbit_r68_c9 bl_9 br_9 wl_68 vdd gnd cell_6t
Xbit_r69_c9 bl_9 br_9 wl_69 vdd gnd cell_6t
Xbit_r70_c9 bl_9 br_9 wl_70 vdd gnd cell_6t
Xbit_r71_c9 bl_9 br_9 wl_71 vdd gnd cell_6t
Xbit_r72_c9 bl_9 br_9 wl_72 vdd gnd cell_6t
Xbit_r73_c9 bl_9 br_9 wl_73 vdd gnd cell_6t
Xbit_r74_c9 bl_9 br_9 wl_74 vdd gnd cell_6t
Xbit_r75_c9 bl_9 br_9 wl_75 vdd gnd cell_6t
Xbit_r76_c9 bl_9 br_9 wl_76 vdd gnd cell_6t
Xbit_r77_c9 bl_9 br_9 wl_77 vdd gnd cell_6t
Xbit_r78_c9 bl_9 br_9 wl_78 vdd gnd cell_6t
Xbit_r79_c9 bl_9 br_9 wl_79 vdd gnd cell_6t
Xbit_r80_c9 bl_9 br_9 wl_80 vdd gnd cell_6t
Xbit_r81_c9 bl_9 br_9 wl_81 vdd gnd cell_6t
Xbit_r82_c9 bl_9 br_9 wl_82 vdd gnd cell_6t
Xbit_r83_c9 bl_9 br_9 wl_83 vdd gnd cell_6t
Xbit_r84_c9 bl_9 br_9 wl_84 vdd gnd cell_6t
Xbit_r85_c9 bl_9 br_9 wl_85 vdd gnd cell_6t
Xbit_r86_c9 bl_9 br_9 wl_86 vdd gnd cell_6t
Xbit_r87_c9 bl_9 br_9 wl_87 vdd gnd cell_6t
Xbit_r88_c9 bl_9 br_9 wl_88 vdd gnd cell_6t
Xbit_r89_c9 bl_9 br_9 wl_89 vdd gnd cell_6t
Xbit_r90_c9 bl_9 br_9 wl_90 vdd gnd cell_6t
Xbit_r91_c9 bl_9 br_9 wl_91 vdd gnd cell_6t
Xbit_r92_c9 bl_9 br_9 wl_92 vdd gnd cell_6t
Xbit_r93_c9 bl_9 br_9 wl_93 vdd gnd cell_6t
Xbit_r94_c9 bl_9 br_9 wl_94 vdd gnd cell_6t
Xbit_r95_c9 bl_9 br_9 wl_95 vdd gnd cell_6t
Xbit_r96_c9 bl_9 br_9 wl_96 vdd gnd cell_6t
Xbit_r97_c9 bl_9 br_9 wl_97 vdd gnd cell_6t
Xbit_r98_c9 bl_9 br_9 wl_98 vdd gnd cell_6t
Xbit_r99_c9 bl_9 br_9 wl_99 vdd gnd cell_6t
Xbit_r100_c9 bl_9 br_9 wl_100 vdd gnd cell_6t
Xbit_r101_c9 bl_9 br_9 wl_101 vdd gnd cell_6t
Xbit_r102_c9 bl_9 br_9 wl_102 vdd gnd cell_6t
Xbit_r103_c9 bl_9 br_9 wl_103 vdd gnd cell_6t
Xbit_r104_c9 bl_9 br_9 wl_104 vdd gnd cell_6t
Xbit_r105_c9 bl_9 br_9 wl_105 vdd gnd cell_6t
Xbit_r106_c9 bl_9 br_9 wl_106 vdd gnd cell_6t
Xbit_r107_c9 bl_9 br_9 wl_107 vdd gnd cell_6t
Xbit_r108_c9 bl_9 br_9 wl_108 vdd gnd cell_6t
Xbit_r109_c9 bl_9 br_9 wl_109 vdd gnd cell_6t
Xbit_r110_c9 bl_9 br_9 wl_110 vdd gnd cell_6t
Xbit_r111_c9 bl_9 br_9 wl_111 vdd gnd cell_6t
Xbit_r112_c9 bl_9 br_9 wl_112 vdd gnd cell_6t
Xbit_r113_c9 bl_9 br_9 wl_113 vdd gnd cell_6t
Xbit_r114_c9 bl_9 br_9 wl_114 vdd gnd cell_6t
Xbit_r115_c9 bl_9 br_9 wl_115 vdd gnd cell_6t
Xbit_r116_c9 bl_9 br_9 wl_116 vdd gnd cell_6t
Xbit_r117_c9 bl_9 br_9 wl_117 vdd gnd cell_6t
Xbit_r118_c9 bl_9 br_9 wl_118 vdd gnd cell_6t
Xbit_r119_c9 bl_9 br_9 wl_119 vdd gnd cell_6t
Xbit_r120_c9 bl_9 br_9 wl_120 vdd gnd cell_6t
Xbit_r121_c9 bl_9 br_9 wl_121 vdd gnd cell_6t
Xbit_r122_c9 bl_9 br_9 wl_122 vdd gnd cell_6t
Xbit_r123_c9 bl_9 br_9 wl_123 vdd gnd cell_6t
Xbit_r124_c9 bl_9 br_9 wl_124 vdd gnd cell_6t
Xbit_r125_c9 bl_9 br_9 wl_125 vdd gnd cell_6t
Xbit_r126_c9 bl_9 br_9 wl_126 vdd gnd cell_6t
Xbit_r127_c9 bl_9 br_9 wl_127 vdd gnd cell_6t
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
Xbit_r32_c10 bl_10 br_10 wl_32 vdd gnd cell_6t
Xbit_r33_c10 bl_10 br_10 wl_33 vdd gnd cell_6t
Xbit_r34_c10 bl_10 br_10 wl_34 vdd gnd cell_6t
Xbit_r35_c10 bl_10 br_10 wl_35 vdd gnd cell_6t
Xbit_r36_c10 bl_10 br_10 wl_36 vdd gnd cell_6t
Xbit_r37_c10 bl_10 br_10 wl_37 vdd gnd cell_6t
Xbit_r38_c10 bl_10 br_10 wl_38 vdd gnd cell_6t
Xbit_r39_c10 bl_10 br_10 wl_39 vdd gnd cell_6t
Xbit_r40_c10 bl_10 br_10 wl_40 vdd gnd cell_6t
Xbit_r41_c10 bl_10 br_10 wl_41 vdd gnd cell_6t
Xbit_r42_c10 bl_10 br_10 wl_42 vdd gnd cell_6t
Xbit_r43_c10 bl_10 br_10 wl_43 vdd gnd cell_6t
Xbit_r44_c10 bl_10 br_10 wl_44 vdd gnd cell_6t
Xbit_r45_c10 bl_10 br_10 wl_45 vdd gnd cell_6t
Xbit_r46_c10 bl_10 br_10 wl_46 vdd gnd cell_6t
Xbit_r47_c10 bl_10 br_10 wl_47 vdd gnd cell_6t
Xbit_r48_c10 bl_10 br_10 wl_48 vdd gnd cell_6t
Xbit_r49_c10 bl_10 br_10 wl_49 vdd gnd cell_6t
Xbit_r50_c10 bl_10 br_10 wl_50 vdd gnd cell_6t
Xbit_r51_c10 bl_10 br_10 wl_51 vdd gnd cell_6t
Xbit_r52_c10 bl_10 br_10 wl_52 vdd gnd cell_6t
Xbit_r53_c10 bl_10 br_10 wl_53 vdd gnd cell_6t
Xbit_r54_c10 bl_10 br_10 wl_54 vdd gnd cell_6t
Xbit_r55_c10 bl_10 br_10 wl_55 vdd gnd cell_6t
Xbit_r56_c10 bl_10 br_10 wl_56 vdd gnd cell_6t
Xbit_r57_c10 bl_10 br_10 wl_57 vdd gnd cell_6t
Xbit_r58_c10 bl_10 br_10 wl_58 vdd gnd cell_6t
Xbit_r59_c10 bl_10 br_10 wl_59 vdd gnd cell_6t
Xbit_r60_c10 bl_10 br_10 wl_60 vdd gnd cell_6t
Xbit_r61_c10 bl_10 br_10 wl_61 vdd gnd cell_6t
Xbit_r62_c10 bl_10 br_10 wl_62 vdd gnd cell_6t
Xbit_r63_c10 bl_10 br_10 wl_63 vdd gnd cell_6t
Xbit_r64_c10 bl_10 br_10 wl_64 vdd gnd cell_6t
Xbit_r65_c10 bl_10 br_10 wl_65 vdd gnd cell_6t
Xbit_r66_c10 bl_10 br_10 wl_66 vdd gnd cell_6t
Xbit_r67_c10 bl_10 br_10 wl_67 vdd gnd cell_6t
Xbit_r68_c10 bl_10 br_10 wl_68 vdd gnd cell_6t
Xbit_r69_c10 bl_10 br_10 wl_69 vdd gnd cell_6t
Xbit_r70_c10 bl_10 br_10 wl_70 vdd gnd cell_6t
Xbit_r71_c10 bl_10 br_10 wl_71 vdd gnd cell_6t
Xbit_r72_c10 bl_10 br_10 wl_72 vdd gnd cell_6t
Xbit_r73_c10 bl_10 br_10 wl_73 vdd gnd cell_6t
Xbit_r74_c10 bl_10 br_10 wl_74 vdd gnd cell_6t
Xbit_r75_c10 bl_10 br_10 wl_75 vdd gnd cell_6t
Xbit_r76_c10 bl_10 br_10 wl_76 vdd gnd cell_6t
Xbit_r77_c10 bl_10 br_10 wl_77 vdd gnd cell_6t
Xbit_r78_c10 bl_10 br_10 wl_78 vdd gnd cell_6t
Xbit_r79_c10 bl_10 br_10 wl_79 vdd gnd cell_6t
Xbit_r80_c10 bl_10 br_10 wl_80 vdd gnd cell_6t
Xbit_r81_c10 bl_10 br_10 wl_81 vdd gnd cell_6t
Xbit_r82_c10 bl_10 br_10 wl_82 vdd gnd cell_6t
Xbit_r83_c10 bl_10 br_10 wl_83 vdd gnd cell_6t
Xbit_r84_c10 bl_10 br_10 wl_84 vdd gnd cell_6t
Xbit_r85_c10 bl_10 br_10 wl_85 vdd gnd cell_6t
Xbit_r86_c10 bl_10 br_10 wl_86 vdd gnd cell_6t
Xbit_r87_c10 bl_10 br_10 wl_87 vdd gnd cell_6t
Xbit_r88_c10 bl_10 br_10 wl_88 vdd gnd cell_6t
Xbit_r89_c10 bl_10 br_10 wl_89 vdd gnd cell_6t
Xbit_r90_c10 bl_10 br_10 wl_90 vdd gnd cell_6t
Xbit_r91_c10 bl_10 br_10 wl_91 vdd gnd cell_6t
Xbit_r92_c10 bl_10 br_10 wl_92 vdd gnd cell_6t
Xbit_r93_c10 bl_10 br_10 wl_93 vdd gnd cell_6t
Xbit_r94_c10 bl_10 br_10 wl_94 vdd gnd cell_6t
Xbit_r95_c10 bl_10 br_10 wl_95 vdd gnd cell_6t
Xbit_r96_c10 bl_10 br_10 wl_96 vdd gnd cell_6t
Xbit_r97_c10 bl_10 br_10 wl_97 vdd gnd cell_6t
Xbit_r98_c10 bl_10 br_10 wl_98 vdd gnd cell_6t
Xbit_r99_c10 bl_10 br_10 wl_99 vdd gnd cell_6t
Xbit_r100_c10 bl_10 br_10 wl_100 vdd gnd cell_6t
Xbit_r101_c10 bl_10 br_10 wl_101 vdd gnd cell_6t
Xbit_r102_c10 bl_10 br_10 wl_102 vdd gnd cell_6t
Xbit_r103_c10 bl_10 br_10 wl_103 vdd gnd cell_6t
Xbit_r104_c10 bl_10 br_10 wl_104 vdd gnd cell_6t
Xbit_r105_c10 bl_10 br_10 wl_105 vdd gnd cell_6t
Xbit_r106_c10 bl_10 br_10 wl_106 vdd gnd cell_6t
Xbit_r107_c10 bl_10 br_10 wl_107 vdd gnd cell_6t
Xbit_r108_c10 bl_10 br_10 wl_108 vdd gnd cell_6t
Xbit_r109_c10 bl_10 br_10 wl_109 vdd gnd cell_6t
Xbit_r110_c10 bl_10 br_10 wl_110 vdd gnd cell_6t
Xbit_r111_c10 bl_10 br_10 wl_111 vdd gnd cell_6t
Xbit_r112_c10 bl_10 br_10 wl_112 vdd gnd cell_6t
Xbit_r113_c10 bl_10 br_10 wl_113 vdd gnd cell_6t
Xbit_r114_c10 bl_10 br_10 wl_114 vdd gnd cell_6t
Xbit_r115_c10 bl_10 br_10 wl_115 vdd gnd cell_6t
Xbit_r116_c10 bl_10 br_10 wl_116 vdd gnd cell_6t
Xbit_r117_c10 bl_10 br_10 wl_117 vdd gnd cell_6t
Xbit_r118_c10 bl_10 br_10 wl_118 vdd gnd cell_6t
Xbit_r119_c10 bl_10 br_10 wl_119 vdd gnd cell_6t
Xbit_r120_c10 bl_10 br_10 wl_120 vdd gnd cell_6t
Xbit_r121_c10 bl_10 br_10 wl_121 vdd gnd cell_6t
Xbit_r122_c10 bl_10 br_10 wl_122 vdd gnd cell_6t
Xbit_r123_c10 bl_10 br_10 wl_123 vdd gnd cell_6t
Xbit_r124_c10 bl_10 br_10 wl_124 vdd gnd cell_6t
Xbit_r125_c10 bl_10 br_10 wl_125 vdd gnd cell_6t
Xbit_r126_c10 bl_10 br_10 wl_126 vdd gnd cell_6t
Xbit_r127_c10 bl_10 br_10 wl_127 vdd gnd cell_6t
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
Xbit_r32_c11 bl_11 br_11 wl_32 vdd gnd cell_6t
Xbit_r33_c11 bl_11 br_11 wl_33 vdd gnd cell_6t
Xbit_r34_c11 bl_11 br_11 wl_34 vdd gnd cell_6t
Xbit_r35_c11 bl_11 br_11 wl_35 vdd gnd cell_6t
Xbit_r36_c11 bl_11 br_11 wl_36 vdd gnd cell_6t
Xbit_r37_c11 bl_11 br_11 wl_37 vdd gnd cell_6t
Xbit_r38_c11 bl_11 br_11 wl_38 vdd gnd cell_6t
Xbit_r39_c11 bl_11 br_11 wl_39 vdd gnd cell_6t
Xbit_r40_c11 bl_11 br_11 wl_40 vdd gnd cell_6t
Xbit_r41_c11 bl_11 br_11 wl_41 vdd gnd cell_6t
Xbit_r42_c11 bl_11 br_11 wl_42 vdd gnd cell_6t
Xbit_r43_c11 bl_11 br_11 wl_43 vdd gnd cell_6t
Xbit_r44_c11 bl_11 br_11 wl_44 vdd gnd cell_6t
Xbit_r45_c11 bl_11 br_11 wl_45 vdd gnd cell_6t
Xbit_r46_c11 bl_11 br_11 wl_46 vdd gnd cell_6t
Xbit_r47_c11 bl_11 br_11 wl_47 vdd gnd cell_6t
Xbit_r48_c11 bl_11 br_11 wl_48 vdd gnd cell_6t
Xbit_r49_c11 bl_11 br_11 wl_49 vdd gnd cell_6t
Xbit_r50_c11 bl_11 br_11 wl_50 vdd gnd cell_6t
Xbit_r51_c11 bl_11 br_11 wl_51 vdd gnd cell_6t
Xbit_r52_c11 bl_11 br_11 wl_52 vdd gnd cell_6t
Xbit_r53_c11 bl_11 br_11 wl_53 vdd gnd cell_6t
Xbit_r54_c11 bl_11 br_11 wl_54 vdd gnd cell_6t
Xbit_r55_c11 bl_11 br_11 wl_55 vdd gnd cell_6t
Xbit_r56_c11 bl_11 br_11 wl_56 vdd gnd cell_6t
Xbit_r57_c11 bl_11 br_11 wl_57 vdd gnd cell_6t
Xbit_r58_c11 bl_11 br_11 wl_58 vdd gnd cell_6t
Xbit_r59_c11 bl_11 br_11 wl_59 vdd gnd cell_6t
Xbit_r60_c11 bl_11 br_11 wl_60 vdd gnd cell_6t
Xbit_r61_c11 bl_11 br_11 wl_61 vdd gnd cell_6t
Xbit_r62_c11 bl_11 br_11 wl_62 vdd gnd cell_6t
Xbit_r63_c11 bl_11 br_11 wl_63 vdd gnd cell_6t
Xbit_r64_c11 bl_11 br_11 wl_64 vdd gnd cell_6t
Xbit_r65_c11 bl_11 br_11 wl_65 vdd gnd cell_6t
Xbit_r66_c11 bl_11 br_11 wl_66 vdd gnd cell_6t
Xbit_r67_c11 bl_11 br_11 wl_67 vdd gnd cell_6t
Xbit_r68_c11 bl_11 br_11 wl_68 vdd gnd cell_6t
Xbit_r69_c11 bl_11 br_11 wl_69 vdd gnd cell_6t
Xbit_r70_c11 bl_11 br_11 wl_70 vdd gnd cell_6t
Xbit_r71_c11 bl_11 br_11 wl_71 vdd gnd cell_6t
Xbit_r72_c11 bl_11 br_11 wl_72 vdd gnd cell_6t
Xbit_r73_c11 bl_11 br_11 wl_73 vdd gnd cell_6t
Xbit_r74_c11 bl_11 br_11 wl_74 vdd gnd cell_6t
Xbit_r75_c11 bl_11 br_11 wl_75 vdd gnd cell_6t
Xbit_r76_c11 bl_11 br_11 wl_76 vdd gnd cell_6t
Xbit_r77_c11 bl_11 br_11 wl_77 vdd gnd cell_6t
Xbit_r78_c11 bl_11 br_11 wl_78 vdd gnd cell_6t
Xbit_r79_c11 bl_11 br_11 wl_79 vdd gnd cell_6t
Xbit_r80_c11 bl_11 br_11 wl_80 vdd gnd cell_6t
Xbit_r81_c11 bl_11 br_11 wl_81 vdd gnd cell_6t
Xbit_r82_c11 bl_11 br_11 wl_82 vdd gnd cell_6t
Xbit_r83_c11 bl_11 br_11 wl_83 vdd gnd cell_6t
Xbit_r84_c11 bl_11 br_11 wl_84 vdd gnd cell_6t
Xbit_r85_c11 bl_11 br_11 wl_85 vdd gnd cell_6t
Xbit_r86_c11 bl_11 br_11 wl_86 vdd gnd cell_6t
Xbit_r87_c11 bl_11 br_11 wl_87 vdd gnd cell_6t
Xbit_r88_c11 bl_11 br_11 wl_88 vdd gnd cell_6t
Xbit_r89_c11 bl_11 br_11 wl_89 vdd gnd cell_6t
Xbit_r90_c11 bl_11 br_11 wl_90 vdd gnd cell_6t
Xbit_r91_c11 bl_11 br_11 wl_91 vdd gnd cell_6t
Xbit_r92_c11 bl_11 br_11 wl_92 vdd gnd cell_6t
Xbit_r93_c11 bl_11 br_11 wl_93 vdd gnd cell_6t
Xbit_r94_c11 bl_11 br_11 wl_94 vdd gnd cell_6t
Xbit_r95_c11 bl_11 br_11 wl_95 vdd gnd cell_6t
Xbit_r96_c11 bl_11 br_11 wl_96 vdd gnd cell_6t
Xbit_r97_c11 bl_11 br_11 wl_97 vdd gnd cell_6t
Xbit_r98_c11 bl_11 br_11 wl_98 vdd gnd cell_6t
Xbit_r99_c11 bl_11 br_11 wl_99 vdd gnd cell_6t
Xbit_r100_c11 bl_11 br_11 wl_100 vdd gnd cell_6t
Xbit_r101_c11 bl_11 br_11 wl_101 vdd gnd cell_6t
Xbit_r102_c11 bl_11 br_11 wl_102 vdd gnd cell_6t
Xbit_r103_c11 bl_11 br_11 wl_103 vdd gnd cell_6t
Xbit_r104_c11 bl_11 br_11 wl_104 vdd gnd cell_6t
Xbit_r105_c11 bl_11 br_11 wl_105 vdd gnd cell_6t
Xbit_r106_c11 bl_11 br_11 wl_106 vdd gnd cell_6t
Xbit_r107_c11 bl_11 br_11 wl_107 vdd gnd cell_6t
Xbit_r108_c11 bl_11 br_11 wl_108 vdd gnd cell_6t
Xbit_r109_c11 bl_11 br_11 wl_109 vdd gnd cell_6t
Xbit_r110_c11 bl_11 br_11 wl_110 vdd gnd cell_6t
Xbit_r111_c11 bl_11 br_11 wl_111 vdd gnd cell_6t
Xbit_r112_c11 bl_11 br_11 wl_112 vdd gnd cell_6t
Xbit_r113_c11 bl_11 br_11 wl_113 vdd gnd cell_6t
Xbit_r114_c11 bl_11 br_11 wl_114 vdd gnd cell_6t
Xbit_r115_c11 bl_11 br_11 wl_115 vdd gnd cell_6t
Xbit_r116_c11 bl_11 br_11 wl_116 vdd gnd cell_6t
Xbit_r117_c11 bl_11 br_11 wl_117 vdd gnd cell_6t
Xbit_r118_c11 bl_11 br_11 wl_118 vdd gnd cell_6t
Xbit_r119_c11 bl_11 br_11 wl_119 vdd gnd cell_6t
Xbit_r120_c11 bl_11 br_11 wl_120 vdd gnd cell_6t
Xbit_r121_c11 bl_11 br_11 wl_121 vdd gnd cell_6t
Xbit_r122_c11 bl_11 br_11 wl_122 vdd gnd cell_6t
Xbit_r123_c11 bl_11 br_11 wl_123 vdd gnd cell_6t
Xbit_r124_c11 bl_11 br_11 wl_124 vdd gnd cell_6t
Xbit_r125_c11 bl_11 br_11 wl_125 vdd gnd cell_6t
Xbit_r126_c11 bl_11 br_11 wl_126 vdd gnd cell_6t
Xbit_r127_c11 bl_11 br_11 wl_127 vdd gnd cell_6t
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
Xbit_r32_c12 bl_12 br_12 wl_32 vdd gnd cell_6t
Xbit_r33_c12 bl_12 br_12 wl_33 vdd gnd cell_6t
Xbit_r34_c12 bl_12 br_12 wl_34 vdd gnd cell_6t
Xbit_r35_c12 bl_12 br_12 wl_35 vdd gnd cell_6t
Xbit_r36_c12 bl_12 br_12 wl_36 vdd gnd cell_6t
Xbit_r37_c12 bl_12 br_12 wl_37 vdd gnd cell_6t
Xbit_r38_c12 bl_12 br_12 wl_38 vdd gnd cell_6t
Xbit_r39_c12 bl_12 br_12 wl_39 vdd gnd cell_6t
Xbit_r40_c12 bl_12 br_12 wl_40 vdd gnd cell_6t
Xbit_r41_c12 bl_12 br_12 wl_41 vdd gnd cell_6t
Xbit_r42_c12 bl_12 br_12 wl_42 vdd gnd cell_6t
Xbit_r43_c12 bl_12 br_12 wl_43 vdd gnd cell_6t
Xbit_r44_c12 bl_12 br_12 wl_44 vdd gnd cell_6t
Xbit_r45_c12 bl_12 br_12 wl_45 vdd gnd cell_6t
Xbit_r46_c12 bl_12 br_12 wl_46 vdd gnd cell_6t
Xbit_r47_c12 bl_12 br_12 wl_47 vdd gnd cell_6t
Xbit_r48_c12 bl_12 br_12 wl_48 vdd gnd cell_6t
Xbit_r49_c12 bl_12 br_12 wl_49 vdd gnd cell_6t
Xbit_r50_c12 bl_12 br_12 wl_50 vdd gnd cell_6t
Xbit_r51_c12 bl_12 br_12 wl_51 vdd gnd cell_6t
Xbit_r52_c12 bl_12 br_12 wl_52 vdd gnd cell_6t
Xbit_r53_c12 bl_12 br_12 wl_53 vdd gnd cell_6t
Xbit_r54_c12 bl_12 br_12 wl_54 vdd gnd cell_6t
Xbit_r55_c12 bl_12 br_12 wl_55 vdd gnd cell_6t
Xbit_r56_c12 bl_12 br_12 wl_56 vdd gnd cell_6t
Xbit_r57_c12 bl_12 br_12 wl_57 vdd gnd cell_6t
Xbit_r58_c12 bl_12 br_12 wl_58 vdd gnd cell_6t
Xbit_r59_c12 bl_12 br_12 wl_59 vdd gnd cell_6t
Xbit_r60_c12 bl_12 br_12 wl_60 vdd gnd cell_6t
Xbit_r61_c12 bl_12 br_12 wl_61 vdd gnd cell_6t
Xbit_r62_c12 bl_12 br_12 wl_62 vdd gnd cell_6t
Xbit_r63_c12 bl_12 br_12 wl_63 vdd gnd cell_6t
Xbit_r64_c12 bl_12 br_12 wl_64 vdd gnd cell_6t
Xbit_r65_c12 bl_12 br_12 wl_65 vdd gnd cell_6t
Xbit_r66_c12 bl_12 br_12 wl_66 vdd gnd cell_6t
Xbit_r67_c12 bl_12 br_12 wl_67 vdd gnd cell_6t
Xbit_r68_c12 bl_12 br_12 wl_68 vdd gnd cell_6t
Xbit_r69_c12 bl_12 br_12 wl_69 vdd gnd cell_6t
Xbit_r70_c12 bl_12 br_12 wl_70 vdd gnd cell_6t
Xbit_r71_c12 bl_12 br_12 wl_71 vdd gnd cell_6t
Xbit_r72_c12 bl_12 br_12 wl_72 vdd gnd cell_6t
Xbit_r73_c12 bl_12 br_12 wl_73 vdd gnd cell_6t
Xbit_r74_c12 bl_12 br_12 wl_74 vdd gnd cell_6t
Xbit_r75_c12 bl_12 br_12 wl_75 vdd gnd cell_6t
Xbit_r76_c12 bl_12 br_12 wl_76 vdd gnd cell_6t
Xbit_r77_c12 bl_12 br_12 wl_77 vdd gnd cell_6t
Xbit_r78_c12 bl_12 br_12 wl_78 vdd gnd cell_6t
Xbit_r79_c12 bl_12 br_12 wl_79 vdd gnd cell_6t
Xbit_r80_c12 bl_12 br_12 wl_80 vdd gnd cell_6t
Xbit_r81_c12 bl_12 br_12 wl_81 vdd gnd cell_6t
Xbit_r82_c12 bl_12 br_12 wl_82 vdd gnd cell_6t
Xbit_r83_c12 bl_12 br_12 wl_83 vdd gnd cell_6t
Xbit_r84_c12 bl_12 br_12 wl_84 vdd gnd cell_6t
Xbit_r85_c12 bl_12 br_12 wl_85 vdd gnd cell_6t
Xbit_r86_c12 bl_12 br_12 wl_86 vdd gnd cell_6t
Xbit_r87_c12 bl_12 br_12 wl_87 vdd gnd cell_6t
Xbit_r88_c12 bl_12 br_12 wl_88 vdd gnd cell_6t
Xbit_r89_c12 bl_12 br_12 wl_89 vdd gnd cell_6t
Xbit_r90_c12 bl_12 br_12 wl_90 vdd gnd cell_6t
Xbit_r91_c12 bl_12 br_12 wl_91 vdd gnd cell_6t
Xbit_r92_c12 bl_12 br_12 wl_92 vdd gnd cell_6t
Xbit_r93_c12 bl_12 br_12 wl_93 vdd gnd cell_6t
Xbit_r94_c12 bl_12 br_12 wl_94 vdd gnd cell_6t
Xbit_r95_c12 bl_12 br_12 wl_95 vdd gnd cell_6t
Xbit_r96_c12 bl_12 br_12 wl_96 vdd gnd cell_6t
Xbit_r97_c12 bl_12 br_12 wl_97 vdd gnd cell_6t
Xbit_r98_c12 bl_12 br_12 wl_98 vdd gnd cell_6t
Xbit_r99_c12 bl_12 br_12 wl_99 vdd gnd cell_6t
Xbit_r100_c12 bl_12 br_12 wl_100 vdd gnd cell_6t
Xbit_r101_c12 bl_12 br_12 wl_101 vdd gnd cell_6t
Xbit_r102_c12 bl_12 br_12 wl_102 vdd gnd cell_6t
Xbit_r103_c12 bl_12 br_12 wl_103 vdd gnd cell_6t
Xbit_r104_c12 bl_12 br_12 wl_104 vdd gnd cell_6t
Xbit_r105_c12 bl_12 br_12 wl_105 vdd gnd cell_6t
Xbit_r106_c12 bl_12 br_12 wl_106 vdd gnd cell_6t
Xbit_r107_c12 bl_12 br_12 wl_107 vdd gnd cell_6t
Xbit_r108_c12 bl_12 br_12 wl_108 vdd gnd cell_6t
Xbit_r109_c12 bl_12 br_12 wl_109 vdd gnd cell_6t
Xbit_r110_c12 bl_12 br_12 wl_110 vdd gnd cell_6t
Xbit_r111_c12 bl_12 br_12 wl_111 vdd gnd cell_6t
Xbit_r112_c12 bl_12 br_12 wl_112 vdd gnd cell_6t
Xbit_r113_c12 bl_12 br_12 wl_113 vdd gnd cell_6t
Xbit_r114_c12 bl_12 br_12 wl_114 vdd gnd cell_6t
Xbit_r115_c12 bl_12 br_12 wl_115 vdd gnd cell_6t
Xbit_r116_c12 bl_12 br_12 wl_116 vdd gnd cell_6t
Xbit_r117_c12 bl_12 br_12 wl_117 vdd gnd cell_6t
Xbit_r118_c12 bl_12 br_12 wl_118 vdd gnd cell_6t
Xbit_r119_c12 bl_12 br_12 wl_119 vdd gnd cell_6t
Xbit_r120_c12 bl_12 br_12 wl_120 vdd gnd cell_6t
Xbit_r121_c12 bl_12 br_12 wl_121 vdd gnd cell_6t
Xbit_r122_c12 bl_12 br_12 wl_122 vdd gnd cell_6t
Xbit_r123_c12 bl_12 br_12 wl_123 vdd gnd cell_6t
Xbit_r124_c12 bl_12 br_12 wl_124 vdd gnd cell_6t
Xbit_r125_c12 bl_12 br_12 wl_125 vdd gnd cell_6t
Xbit_r126_c12 bl_12 br_12 wl_126 vdd gnd cell_6t
Xbit_r127_c12 bl_12 br_12 wl_127 vdd gnd cell_6t
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
Xbit_r32_c13 bl_13 br_13 wl_32 vdd gnd cell_6t
Xbit_r33_c13 bl_13 br_13 wl_33 vdd gnd cell_6t
Xbit_r34_c13 bl_13 br_13 wl_34 vdd gnd cell_6t
Xbit_r35_c13 bl_13 br_13 wl_35 vdd gnd cell_6t
Xbit_r36_c13 bl_13 br_13 wl_36 vdd gnd cell_6t
Xbit_r37_c13 bl_13 br_13 wl_37 vdd gnd cell_6t
Xbit_r38_c13 bl_13 br_13 wl_38 vdd gnd cell_6t
Xbit_r39_c13 bl_13 br_13 wl_39 vdd gnd cell_6t
Xbit_r40_c13 bl_13 br_13 wl_40 vdd gnd cell_6t
Xbit_r41_c13 bl_13 br_13 wl_41 vdd gnd cell_6t
Xbit_r42_c13 bl_13 br_13 wl_42 vdd gnd cell_6t
Xbit_r43_c13 bl_13 br_13 wl_43 vdd gnd cell_6t
Xbit_r44_c13 bl_13 br_13 wl_44 vdd gnd cell_6t
Xbit_r45_c13 bl_13 br_13 wl_45 vdd gnd cell_6t
Xbit_r46_c13 bl_13 br_13 wl_46 vdd gnd cell_6t
Xbit_r47_c13 bl_13 br_13 wl_47 vdd gnd cell_6t
Xbit_r48_c13 bl_13 br_13 wl_48 vdd gnd cell_6t
Xbit_r49_c13 bl_13 br_13 wl_49 vdd gnd cell_6t
Xbit_r50_c13 bl_13 br_13 wl_50 vdd gnd cell_6t
Xbit_r51_c13 bl_13 br_13 wl_51 vdd gnd cell_6t
Xbit_r52_c13 bl_13 br_13 wl_52 vdd gnd cell_6t
Xbit_r53_c13 bl_13 br_13 wl_53 vdd gnd cell_6t
Xbit_r54_c13 bl_13 br_13 wl_54 vdd gnd cell_6t
Xbit_r55_c13 bl_13 br_13 wl_55 vdd gnd cell_6t
Xbit_r56_c13 bl_13 br_13 wl_56 vdd gnd cell_6t
Xbit_r57_c13 bl_13 br_13 wl_57 vdd gnd cell_6t
Xbit_r58_c13 bl_13 br_13 wl_58 vdd gnd cell_6t
Xbit_r59_c13 bl_13 br_13 wl_59 vdd gnd cell_6t
Xbit_r60_c13 bl_13 br_13 wl_60 vdd gnd cell_6t
Xbit_r61_c13 bl_13 br_13 wl_61 vdd gnd cell_6t
Xbit_r62_c13 bl_13 br_13 wl_62 vdd gnd cell_6t
Xbit_r63_c13 bl_13 br_13 wl_63 vdd gnd cell_6t
Xbit_r64_c13 bl_13 br_13 wl_64 vdd gnd cell_6t
Xbit_r65_c13 bl_13 br_13 wl_65 vdd gnd cell_6t
Xbit_r66_c13 bl_13 br_13 wl_66 vdd gnd cell_6t
Xbit_r67_c13 bl_13 br_13 wl_67 vdd gnd cell_6t
Xbit_r68_c13 bl_13 br_13 wl_68 vdd gnd cell_6t
Xbit_r69_c13 bl_13 br_13 wl_69 vdd gnd cell_6t
Xbit_r70_c13 bl_13 br_13 wl_70 vdd gnd cell_6t
Xbit_r71_c13 bl_13 br_13 wl_71 vdd gnd cell_6t
Xbit_r72_c13 bl_13 br_13 wl_72 vdd gnd cell_6t
Xbit_r73_c13 bl_13 br_13 wl_73 vdd gnd cell_6t
Xbit_r74_c13 bl_13 br_13 wl_74 vdd gnd cell_6t
Xbit_r75_c13 bl_13 br_13 wl_75 vdd gnd cell_6t
Xbit_r76_c13 bl_13 br_13 wl_76 vdd gnd cell_6t
Xbit_r77_c13 bl_13 br_13 wl_77 vdd gnd cell_6t
Xbit_r78_c13 bl_13 br_13 wl_78 vdd gnd cell_6t
Xbit_r79_c13 bl_13 br_13 wl_79 vdd gnd cell_6t
Xbit_r80_c13 bl_13 br_13 wl_80 vdd gnd cell_6t
Xbit_r81_c13 bl_13 br_13 wl_81 vdd gnd cell_6t
Xbit_r82_c13 bl_13 br_13 wl_82 vdd gnd cell_6t
Xbit_r83_c13 bl_13 br_13 wl_83 vdd gnd cell_6t
Xbit_r84_c13 bl_13 br_13 wl_84 vdd gnd cell_6t
Xbit_r85_c13 bl_13 br_13 wl_85 vdd gnd cell_6t
Xbit_r86_c13 bl_13 br_13 wl_86 vdd gnd cell_6t
Xbit_r87_c13 bl_13 br_13 wl_87 vdd gnd cell_6t
Xbit_r88_c13 bl_13 br_13 wl_88 vdd gnd cell_6t
Xbit_r89_c13 bl_13 br_13 wl_89 vdd gnd cell_6t
Xbit_r90_c13 bl_13 br_13 wl_90 vdd gnd cell_6t
Xbit_r91_c13 bl_13 br_13 wl_91 vdd gnd cell_6t
Xbit_r92_c13 bl_13 br_13 wl_92 vdd gnd cell_6t
Xbit_r93_c13 bl_13 br_13 wl_93 vdd gnd cell_6t
Xbit_r94_c13 bl_13 br_13 wl_94 vdd gnd cell_6t
Xbit_r95_c13 bl_13 br_13 wl_95 vdd gnd cell_6t
Xbit_r96_c13 bl_13 br_13 wl_96 vdd gnd cell_6t
Xbit_r97_c13 bl_13 br_13 wl_97 vdd gnd cell_6t
Xbit_r98_c13 bl_13 br_13 wl_98 vdd gnd cell_6t
Xbit_r99_c13 bl_13 br_13 wl_99 vdd gnd cell_6t
Xbit_r100_c13 bl_13 br_13 wl_100 vdd gnd cell_6t
Xbit_r101_c13 bl_13 br_13 wl_101 vdd gnd cell_6t
Xbit_r102_c13 bl_13 br_13 wl_102 vdd gnd cell_6t
Xbit_r103_c13 bl_13 br_13 wl_103 vdd gnd cell_6t
Xbit_r104_c13 bl_13 br_13 wl_104 vdd gnd cell_6t
Xbit_r105_c13 bl_13 br_13 wl_105 vdd gnd cell_6t
Xbit_r106_c13 bl_13 br_13 wl_106 vdd gnd cell_6t
Xbit_r107_c13 bl_13 br_13 wl_107 vdd gnd cell_6t
Xbit_r108_c13 bl_13 br_13 wl_108 vdd gnd cell_6t
Xbit_r109_c13 bl_13 br_13 wl_109 vdd gnd cell_6t
Xbit_r110_c13 bl_13 br_13 wl_110 vdd gnd cell_6t
Xbit_r111_c13 bl_13 br_13 wl_111 vdd gnd cell_6t
Xbit_r112_c13 bl_13 br_13 wl_112 vdd gnd cell_6t
Xbit_r113_c13 bl_13 br_13 wl_113 vdd gnd cell_6t
Xbit_r114_c13 bl_13 br_13 wl_114 vdd gnd cell_6t
Xbit_r115_c13 bl_13 br_13 wl_115 vdd gnd cell_6t
Xbit_r116_c13 bl_13 br_13 wl_116 vdd gnd cell_6t
Xbit_r117_c13 bl_13 br_13 wl_117 vdd gnd cell_6t
Xbit_r118_c13 bl_13 br_13 wl_118 vdd gnd cell_6t
Xbit_r119_c13 bl_13 br_13 wl_119 vdd gnd cell_6t
Xbit_r120_c13 bl_13 br_13 wl_120 vdd gnd cell_6t
Xbit_r121_c13 bl_13 br_13 wl_121 vdd gnd cell_6t
Xbit_r122_c13 bl_13 br_13 wl_122 vdd gnd cell_6t
Xbit_r123_c13 bl_13 br_13 wl_123 vdd gnd cell_6t
Xbit_r124_c13 bl_13 br_13 wl_124 vdd gnd cell_6t
Xbit_r125_c13 bl_13 br_13 wl_125 vdd gnd cell_6t
Xbit_r126_c13 bl_13 br_13 wl_126 vdd gnd cell_6t
Xbit_r127_c13 bl_13 br_13 wl_127 vdd gnd cell_6t
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
Xbit_r32_c14 bl_14 br_14 wl_32 vdd gnd cell_6t
Xbit_r33_c14 bl_14 br_14 wl_33 vdd gnd cell_6t
Xbit_r34_c14 bl_14 br_14 wl_34 vdd gnd cell_6t
Xbit_r35_c14 bl_14 br_14 wl_35 vdd gnd cell_6t
Xbit_r36_c14 bl_14 br_14 wl_36 vdd gnd cell_6t
Xbit_r37_c14 bl_14 br_14 wl_37 vdd gnd cell_6t
Xbit_r38_c14 bl_14 br_14 wl_38 vdd gnd cell_6t
Xbit_r39_c14 bl_14 br_14 wl_39 vdd gnd cell_6t
Xbit_r40_c14 bl_14 br_14 wl_40 vdd gnd cell_6t
Xbit_r41_c14 bl_14 br_14 wl_41 vdd gnd cell_6t
Xbit_r42_c14 bl_14 br_14 wl_42 vdd gnd cell_6t
Xbit_r43_c14 bl_14 br_14 wl_43 vdd gnd cell_6t
Xbit_r44_c14 bl_14 br_14 wl_44 vdd gnd cell_6t
Xbit_r45_c14 bl_14 br_14 wl_45 vdd gnd cell_6t
Xbit_r46_c14 bl_14 br_14 wl_46 vdd gnd cell_6t
Xbit_r47_c14 bl_14 br_14 wl_47 vdd gnd cell_6t
Xbit_r48_c14 bl_14 br_14 wl_48 vdd gnd cell_6t
Xbit_r49_c14 bl_14 br_14 wl_49 vdd gnd cell_6t
Xbit_r50_c14 bl_14 br_14 wl_50 vdd gnd cell_6t
Xbit_r51_c14 bl_14 br_14 wl_51 vdd gnd cell_6t
Xbit_r52_c14 bl_14 br_14 wl_52 vdd gnd cell_6t
Xbit_r53_c14 bl_14 br_14 wl_53 vdd gnd cell_6t
Xbit_r54_c14 bl_14 br_14 wl_54 vdd gnd cell_6t
Xbit_r55_c14 bl_14 br_14 wl_55 vdd gnd cell_6t
Xbit_r56_c14 bl_14 br_14 wl_56 vdd gnd cell_6t
Xbit_r57_c14 bl_14 br_14 wl_57 vdd gnd cell_6t
Xbit_r58_c14 bl_14 br_14 wl_58 vdd gnd cell_6t
Xbit_r59_c14 bl_14 br_14 wl_59 vdd gnd cell_6t
Xbit_r60_c14 bl_14 br_14 wl_60 vdd gnd cell_6t
Xbit_r61_c14 bl_14 br_14 wl_61 vdd gnd cell_6t
Xbit_r62_c14 bl_14 br_14 wl_62 vdd gnd cell_6t
Xbit_r63_c14 bl_14 br_14 wl_63 vdd gnd cell_6t
Xbit_r64_c14 bl_14 br_14 wl_64 vdd gnd cell_6t
Xbit_r65_c14 bl_14 br_14 wl_65 vdd gnd cell_6t
Xbit_r66_c14 bl_14 br_14 wl_66 vdd gnd cell_6t
Xbit_r67_c14 bl_14 br_14 wl_67 vdd gnd cell_6t
Xbit_r68_c14 bl_14 br_14 wl_68 vdd gnd cell_6t
Xbit_r69_c14 bl_14 br_14 wl_69 vdd gnd cell_6t
Xbit_r70_c14 bl_14 br_14 wl_70 vdd gnd cell_6t
Xbit_r71_c14 bl_14 br_14 wl_71 vdd gnd cell_6t
Xbit_r72_c14 bl_14 br_14 wl_72 vdd gnd cell_6t
Xbit_r73_c14 bl_14 br_14 wl_73 vdd gnd cell_6t
Xbit_r74_c14 bl_14 br_14 wl_74 vdd gnd cell_6t
Xbit_r75_c14 bl_14 br_14 wl_75 vdd gnd cell_6t
Xbit_r76_c14 bl_14 br_14 wl_76 vdd gnd cell_6t
Xbit_r77_c14 bl_14 br_14 wl_77 vdd gnd cell_6t
Xbit_r78_c14 bl_14 br_14 wl_78 vdd gnd cell_6t
Xbit_r79_c14 bl_14 br_14 wl_79 vdd gnd cell_6t
Xbit_r80_c14 bl_14 br_14 wl_80 vdd gnd cell_6t
Xbit_r81_c14 bl_14 br_14 wl_81 vdd gnd cell_6t
Xbit_r82_c14 bl_14 br_14 wl_82 vdd gnd cell_6t
Xbit_r83_c14 bl_14 br_14 wl_83 vdd gnd cell_6t
Xbit_r84_c14 bl_14 br_14 wl_84 vdd gnd cell_6t
Xbit_r85_c14 bl_14 br_14 wl_85 vdd gnd cell_6t
Xbit_r86_c14 bl_14 br_14 wl_86 vdd gnd cell_6t
Xbit_r87_c14 bl_14 br_14 wl_87 vdd gnd cell_6t
Xbit_r88_c14 bl_14 br_14 wl_88 vdd gnd cell_6t
Xbit_r89_c14 bl_14 br_14 wl_89 vdd gnd cell_6t
Xbit_r90_c14 bl_14 br_14 wl_90 vdd gnd cell_6t
Xbit_r91_c14 bl_14 br_14 wl_91 vdd gnd cell_6t
Xbit_r92_c14 bl_14 br_14 wl_92 vdd gnd cell_6t
Xbit_r93_c14 bl_14 br_14 wl_93 vdd gnd cell_6t
Xbit_r94_c14 bl_14 br_14 wl_94 vdd gnd cell_6t
Xbit_r95_c14 bl_14 br_14 wl_95 vdd gnd cell_6t
Xbit_r96_c14 bl_14 br_14 wl_96 vdd gnd cell_6t
Xbit_r97_c14 bl_14 br_14 wl_97 vdd gnd cell_6t
Xbit_r98_c14 bl_14 br_14 wl_98 vdd gnd cell_6t
Xbit_r99_c14 bl_14 br_14 wl_99 vdd gnd cell_6t
Xbit_r100_c14 bl_14 br_14 wl_100 vdd gnd cell_6t
Xbit_r101_c14 bl_14 br_14 wl_101 vdd gnd cell_6t
Xbit_r102_c14 bl_14 br_14 wl_102 vdd gnd cell_6t
Xbit_r103_c14 bl_14 br_14 wl_103 vdd gnd cell_6t
Xbit_r104_c14 bl_14 br_14 wl_104 vdd gnd cell_6t
Xbit_r105_c14 bl_14 br_14 wl_105 vdd gnd cell_6t
Xbit_r106_c14 bl_14 br_14 wl_106 vdd gnd cell_6t
Xbit_r107_c14 bl_14 br_14 wl_107 vdd gnd cell_6t
Xbit_r108_c14 bl_14 br_14 wl_108 vdd gnd cell_6t
Xbit_r109_c14 bl_14 br_14 wl_109 vdd gnd cell_6t
Xbit_r110_c14 bl_14 br_14 wl_110 vdd gnd cell_6t
Xbit_r111_c14 bl_14 br_14 wl_111 vdd gnd cell_6t
Xbit_r112_c14 bl_14 br_14 wl_112 vdd gnd cell_6t
Xbit_r113_c14 bl_14 br_14 wl_113 vdd gnd cell_6t
Xbit_r114_c14 bl_14 br_14 wl_114 vdd gnd cell_6t
Xbit_r115_c14 bl_14 br_14 wl_115 vdd gnd cell_6t
Xbit_r116_c14 bl_14 br_14 wl_116 vdd gnd cell_6t
Xbit_r117_c14 bl_14 br_14 wl_117 vdd gnd cell_6t
Xbit_r118_c14 bl_14 br_14 wl_118 vdd gnd cell_6t
Xbit_r119_c14 bl_14 br_14 wl_119 vdd gnd cell_6t
Xbit_r120_c14 bl_14 br_14 wl_120 vdd gnd cell_6t
Xbit_r121_c14 bl_14 br_14 wl_121 vdd gnd cell_6t
Xbit_r122_c14 bl_14 br_14 wl_122 vdd gnd cell_6t
Xbit_r123_c14 bl_14 br_14 wl_123 vdd gnd cell_6t
Xbit_r124_c14 bl_14 br_14 wl_124 vdd gnd cell_6t
Xbit_r125_c14 bl_14 br_14 wl_125 vdd gnd cell_6t
Xbit_r126_c14 bl_14 br_14 wl_126 vdd gnd cell_6t
Xbit_r127_c14 bl_14 br_14 wl_127 vdd gnd cell_6t
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
Xbit_r32_c15 bl_15 br_15 wl_32 vdd gnd cell_6t
Xbit_r33_c15 bl_15 br_15 wl_33 vdd gnd cell_6t
Xbit_r34_c15 bl_15 br_15 wl_34 vdd gnd cell_6t
Xbit_r35_c15 bl_15 br_15 wl_35 vdd gnd cell_6t
Xbit_r36_c15 bl_15 br_15 wl_36 vdd gnd cell_6t
Xbit_r37_c15 bl_15 br_15 wl_37 vdd gnd cell_6t
Xbit_r38_c15 bl_15 br_15 wl_38 vdd gnd cell_6t
Xbit_r39_c15 bl_15 br_15 wl_39 vdd gnd cell_6t
Xbit_r40_c15 bl_15 br_15 wl_40 vdd gnd cell_6t
Xbit_r41_c15 bl_15 br_15 wl_41 vdd gnd cell_6t
Xbit_r42_c15 bl_15 br_15 wl_42 vdd gnd cell_6t
Xbit_r43_c15 bl_15 br_15 wl_43 vdd gnd cell_6t
Xbit_r44_c15 bl_15 br_15 wl_44 vdd gnd cell_6t
Xbit_r45_c15 bl_15 br_15 wl_45 vdd gnd cell_6t
Xbit_r46_c15 bl_15 br_15 wl_46 vdd gnd cell_6t
Xbit_r47_c15 bl_15 br_15 wl_47 vdd gnd cell_6t
Xbit_r48_c15 bl_15 br_15 wl_48 vdd gnd cell_6t
Xbit_r49_c15 bl_15 br_15 wl_49 vdd gnd cell_6t
Xbit_r50_c15 bl_15 br_15 wl_50 vdd gnd cell_6t
Xbit_r51_c15 bl_15 br_15 wl_51 vdd gnd cell_6t
Xbit_r52_c15 bl_15 br_15 wl_52 vdd gnd cell_6t
Xbit_r53_c15 bl_15 br_15 wl_53 vdd gnd cell_6t
Xbit_r54_c15 bl_15 br_15 wl_54 vdd gnd cell_6t
Xbit_r55_c15 bl_15 br_15 wl_55 vdd gnd cell_6t
Xbit_r56_c15 bl_15 br_15 wl_56 vdd gnd cell_6t
Xbit_r57_c15 bl_15 br_15 wl_57 vdd gnd cell_6t
Xbit_r58_c15 bl_15 br_15 wl_58 vdd gnd cell_6t
Xbit_r59_c15 bl_15 br_15 wl_59 vdd gnd cell_6t
Xbit_r60_c15 bl_15 br_15 wl_60 vdd gnd cell_6t
Xbit_r61_c15 bl_15 br_15 wl_61 vdd gnd cell_6t
Xbit_r62_c15 bl_15 br_15 wl_62 vdd gnd cell_6t
Xbit_r63_c15 bl_15 br_15 wl_63 vdd gnd cell_6t
Xbit_r64_c15 bl_15 br_15 wl_64 vdd gnd cell_6t
Xbit_r65_c15 bl_15 br_15 wl_65 vdd gnd cell_6t
Xbit_r66_c15 bl_15 br_15 wl_66 vdd gnd cell_6t
Xbit_r67_c15 bl_15 br_15 wl_67 vdd gnd cell_6t
Xbit_r68_c15 bl_15 br_15 wl_68 vdd gnd cell_6t
Xbit_r69_c15 bl_15 br_15 wl_69 vdd gnd cell_6t
Xbit_r70_c15 bl_15 br_15 wl_70 vdd gnd cell_6t
Xbit_r71_c15 bl_15 br_15 wl_71 vdd gnd cell_6t
Xbit_r72_c15 bl_15 br_15 wl_72 vdd gnd cell_6t
Xbit_r73_c15 bl_15 br_15 wl_73 vdd gnd cell_6t
Xbit_r74_c15 bl_15 br_15 wl_74 vdd gnd cell_6t
Xbit_r75_c15 bl_15 br_15 wl_75 vdd gnd cell_6t
Xbit_r76_c15 bl_15 br_15 wl_76 vdd gnd cell_6t
Xbit_r77_c15 bl_15 br_15 wl_77 vdd gnd cell_6t
Xbit_r78_c15 bl_15 br_15 wl_78 vdd gnd cell_6t
Xbit_r79_c15 bl_15 br_15 wl_79 vdd gnd cell_6t
Xbit_r80_c15 bl_15 br_15 wl_80 vdd gnd cell_6t
Xbit_r81_c15 bl_15 br_15 wl_81 vdd gnd cell_6t
Xbit_r82_c15 bl_15 br_15 wl_82 vdd gnd cell_6t
Xbit_r83_c15 bl_15 br_15 wl_83 vdd gnd cell_6t
Xbit_r84_c15 bl_15 br_15 wl_84 vdd gnd cell_6t
Xbit_r85_c15 bl_15 br_15 wl_85 vdd gnd cell_6t
Xbit_r86_c15 bl_15 br_15 wl_86 vdd gnd cell_6t
Xbit_r87_c15 bl_15 br_15 wl_87 vdd gnd cell_6t
Xbit_r88_c15 bl_15 br_15 wl_88 vdd gnd cell_6t
Xbit_r89_c15 bl_15 br_15 wl_89 vdd gnd cell_6t
Xbit_r90_c15 bl_15 br_15 wl_90 vdd gnd cell_6t
Xbit_r91_c15 bl_15 br_15 wl_91 vdd gnd cell_6t
Xbit_r92_c15 bl_15 br_15 wl_92 vdd gnd cell_6t
Xbit_r93_c15 bl_15 br_15 wl_93 vdd gnd cell_6t
Xbit_r94_c15 bl_15 br_15 wl_94 vdd gnd cell_6t
Xbit_r95_c15 bl_15 br_15 wl_95 vdd gnd cell_6t
Xbit_r96_c15 bl_15 br_15 wl_96 vdd gnd cell_6t
Xbit_r97_c15 bl_15 br_15 wl_97 vdd gnd cell_6t
Xbit_r98_c15 bl_15 br_15 wl_98 vdd gnd cell_6t
Xbit_r99_c15 bl_15 br_15 wl_99 vdd gnd cell_6t
Xbit_r100_c15 bl_15 br_15 wl_100 vdd gnd cell_6t
Xbit_r101_c15 bl_15 br_15 wl_101 vdd gnd cell_6t
Xbit_r102_c15 bl_15 br_15 wl_102 vdd gnd cell_6t
Xbit_r103_c15 bl_15 br_15 wl_103 vdd gnd cell_6t
Xbit_r104_c15 bl_15 br_15 wl_104 vdd gnd cell_6t
Xbit_r105_c15 bl_15 br_15 wl_105 vdd gnd cell_6t
Xbit_r106_c15 bl_15 br_15 wl_106 vdd gnd cell_6t
Xbit_r107_c15 bl_15 br_15 wl_107 vdd gnd cell_6t
Xbit_r108_c15 bl_15 br_15 wl_108 vdd gnd cell_6t
Xbit_r109_c15 bl_15 br_15 wl_109 vdd gnd cell_6t
Xbit_r110_c15 bl_15 br_15 wl_110 vdd gnd cell_6t
Xbit_r111_c15 bl_15 br_15 wl_111 vdd gnd cell_6t
Xbit_r112_c15 bl_15 br_15 wl_112 vdd gnd cell_6t
Xbit_r113_c15 bl_15 br_15 wl_113 vdd gnd cell_6t
Xbit_r114_c15 bl_15 br_15 wl_114 vdd gnd cell_6t
Xbit_r115_c15 bl_15 br_15 wl_115 vdd gnd cell_6t
Xbit_r116_c15 bl_15 br_15 wl_116 vdd gnd cell_6t
Xbit_r117_c15 bl_15 br_15 wl_117 vdd gnd cell_6t
Xbit_r118_c15 bl_15 br_15 wl_118 vdd gnd cell_6t
Xbit_r119_c15 bl_15 br_15 wl_119 vdd gnd cell_6t
Xbit_r120_c15 bl_15 br_15 wl_120 vdd gnd cell_6t
Xbit_r121_c15 bl_15 br_15 wl_121 vdd gnd cell_6t
Xbit_r122_c15 bl_15 br_15 wl_122 vdd gnd cell_6t
Xbit_r123_c15 bl_15 br_15 wl_123 vdd gnd cell_6t
Xbit_r124_c15 bl_15 br_15 wl_124 vdd gnd cell_6t
Xbit_r125_c15 bl_15 br_15 wl_125 vdd gnd cell_6t
Xbit_r126_c15 bl_15 br_15 wl_126 vdd gnd cell_6t
Xbit_r127_c15 bl_15 br_15 wl_127 vdd gnd cell_6t
Xbit_r0_c16 bl_16 br_16 wl_0 vdd gnd cell_6t
Xbit_r1_c16 bl_16 br_16 wl_1 vdd gnd cell_6t
Xbit_r2_c16 bl_16 br_16 wl_2 vdd gnd cell_6t
Xbit_r3_c16 bl_16 br_16 wl_3 vdd gnd cell_6t
Xbit_r4_c16 bl_16 br_16 wl_4 vdd gnd cell_6t
Xbit_r5_c16 bl_16 br_16 wl_5 vdd gnd cell_6t
Xbit_r6_c16 bl_16 br_16 wl_6 vdd gnd cell_6t
Xbit_r7_c16 bl_16 br_16 wl_7 vdd gnd cell_6t
Xbit_r8_c16 bl_16 br_16 wl_8 vdd gnd cell_6t
Xbit_r9_c16 bl_16 br_16 wl_9 vdd gnd cell_6t
Xbit_r10_c16 bl_16 br_16 wl_10 vdd gnd cell_6t
Xbit_r11_c16 bl_16 br_16 wl_11 vdd gnd cell_6t
Xbit_r12_c16 bl_16 br_16 wl_12 vdd gnd cell_6t
Xbit_r13_c16 bl_16 br_16 wl_13 vdd gnd cell_6t
Xbit_r14_c16 bl_16 br_16 wl_14 vdd gnd cell_6t
Xbit_r15_c16 bl_16 br_16 wl_15 vdd gnd cell_6t
Xbit_r16_c16 bl_16 br_16 wl_16 vdd gnd cell_6t
Xbit_r17_c16 bl_16 br_16 wl_17 vdd gnd cell_6t
Xbit_r18_c16 bl_16 br_16 wl_18 vdd gnd cell_6t
Xbit_r19_c16 bl_16 br_16 wl_19 vdd gnd cell_6t
Xbit_r20_c16 bl_16 br_16 wl_20 vdd gnd cell_6t
Xbit_r21_c16 bl_16 br_16 wl_21 vdd gnd cell_6t
Xbit_r22_c16 bl_16 br_16 wl_22 vdd gnd cell_6t
Xbit_r23_c16 bl_16 br_16 wl_23 vdd gnd cell_6t
Xbit_r24_c16 bl_16 br_16 wl_24 vdd gnd cell_6t
Xbit_r25_c16 bl_16 br_16 wl_25 vdd gnd cell_6t
Xbit_r26_c16 bl_16 br_16 wl_26 vdd gnd cell_6t
Xbit_r27_c16 bl_16 br_16 wl_27 vdd gnd cell_6t
Xbit_r28_c16 bl_16 br_16 wl_28 vdd gnd cell_6t
Xbit_r29_c16 bl_16 br_16 wl_29 vdd gnd cell_6t
Xbit_r30_c16 bl_16 br_16 wl_30 vdd gnd cell_6t
Xbit_r31_c16 bl_16 br_16 wl_31 vdd gnd cell_6t
Xbit_r32_c16 bl_16 br_16 wl_32 vdd gnd cell_6t
Xbit_r33_c16 bl_16 br_16 wl_33 vdd gnd cell_6t
Xbit_r34_c16 bl_16 br_16 wl_34 vdd gnd cell_6t
Xbit_r35_c16 bl_16 br_16 wl_35 vdd gnd cell_6t
Xbit_r36_c16 bl_16 br_16 wl_36 vdd gnd cell_6t
Xbit_r37_c16 bl_16 br_16 wl_37 vdd gnd cell_6t
Xbit_r38_c16 bl_16 br_16 wl_38 vdd gnd cell_6t
Xbit_r39_c16 bl_16 br_16 wl_39 vdd gnd cell_6t
Xbit_r40_c16 bl_16 br_16 wl_40 vdd gnd cell_6t
Xbit_r41_c16 bl_16 br_16 wl_41 vdd gnd cell_6t
Xbit_r42_c16 bl_16 br_16 wl_42 vdd gnd cell_6t
Xbit_r43_c16 bl_16 br_16 wl_43 vdd gnd cell_6t
Xbit_r44_c16 bl_16 br_16 wl_44 vdd gnd cell_6t
Xbit_r45_c16 bl_16 br_16 wl_45 vdd gnd cell_6t
Xbit_r46_c16 bl_16 br_16 wl_46 vdd gnd cell_6t
Xbit_r47_c16 bl_16 br_16 wl_47 vdd gnd cell_6t
Xbit_r48_c16 bl_16 br_16 wl_48 vdd gnd cell_6t
Xbit_r49_c16 bl_16 br_16 wl_49 vdd gnd cell_6t
Xbit_r50_c16 bl_16 br_16 wl_50 vdd gnd cell_6t
Xbit_r51_c16 bl_16 br_16 wl_51 vdd gnd cell_6t
Xbit_r52_c16 bl_16 br_16 wl_52 vdd gnd cell_6t
Xbit_r53_c16 bl_16 br_16 wl_53 vdd gnd cell_6t
Xbit_r54_c16 bl_16 br_16 wl_54 vdd gnd cell_6t
Xbit_r55_c16 bl_16 br_16 wl_55 vdd gnd cell_6t
Xbit_r56_c16 bl_16 br_16 wl_56 vdd gnd cell_6t
Xbit_r57_c16 bl_16 br_16 wl_57 vdd gnd cell_6t
Xbit_r58_c16 bl_16 br_16 wl_58 vdd gnd cell_6t
Xbit_r59_c16 bl_16 br_16 wl_59 vdd gnd cell_6t
Xbit_r60_c16 bl_16 br_16 wl_60 vdd gnd cell_6t
Xbit_r61_c16 bl_16 br_16 wl_61 vdd gnd cell_6t
Xbit_r62_c16 bl_16 br_16 wl_62 vdd gnd cell_6t
Xbit_r63_c16 bl_16 br_16 wl_63 vdd gnd cell_6t
Xbit_r64_c16 bl_16 br_16 wl_64 vdd gnd cell_6t
Xbit_r65_c16 bl_16 br_16 wl_65 vdd gnd cell_6t
Xbit_r66_c16 bl_16 br_16 wl_66 vdd gnd cell_6t
Xbit_r67_c16 bl_16 br_16 wl_67 vdd gnd cell_6t
Xbit_r68_c16 bl_16 br_16 wl_68 vdd gnd cell_6t
Xbit_r69_c16 bl_16 br_16 wl_69 vdd gnd cell_6t
Xbit_r70_c16 bl_16 br_16 wl_70 vdd gnd cell_6t
Xbit_r71_c16 bl_16 br_16 wl_71 vdd gnd cell_6t
Xbit_r72_c16 bl_16 br_16 wl_72 vdd gnd cell_6t
Xbit_r73_c16 bl_16 br_16 wl_73 vdd gnd cell_6t
Xbit_r74_c16 bl_16 br_16 wl_74 vdd gnd cell_6t
Xbit_r75_c16 bl_16 br_16 wl_75 vdd gnd cell_6t
Xbit_r76_c16 bl_16 br_16 wl_76 vdd gnd cell_6t
Xbit_r77_c16 bl_16 br_16 wl_77 vdd gnd cell_6t
Xbit_r78_c16 bl_16 br_16 wl_78 vdd gnd cell_6t
Xbit_r79_c16 bl_16 br_16 wl_79 vdd gnd cell_6t
Xbit_r80_c16 bl_16 br_16 wl_80 vdd gnd cell_6t
Xbit_r81_c16 bl_16 br_16 wl_81 vdd gnd cell_6t
Xbit_r82_c16 bl_16 br_16 wl_82 vdd gnd cell_6t
Xbit_r83_c16 bl_16 br_16 wl_83 vdd gnd cell_6t
Xbit_r84_c16 bl_16 br_16 wl_84 vdd gnd cell_6t
Xbit_r85_c16 bl_16 br_16 wl_85 vdd gnd cell_6t
Xbit_r86_c16 bl_16 br_16 wl_86 vdd gnd cell_6t
Xbit_r87_c16 bl_16 br_16 wl_87 vdd gnd cell_6t
Xbit_r88_c16 bl_16 br_16 wl_88 vdd gnd cell_6t
Xbit_r89_c16 bl_16 br_16 wl_89 vdd gnd cell_6t
Xbit_r90_c16 bl_16 br_16 wl_90 vdd gnd cell_6t
Xbit_r91_c16 bl_16 br_16 wl_91 vdd gnd cell_6t
Xbit_r92_c16 bl_16 br_16 wl_92 vdd gnd cell_6t
Xbit_r93_c16 bl_16 br_16 wl_93 vdd gnd cell_6t
Xbit_r94_c16 bl_16 br_16 wl_94 vdd gnd cell_6t
Xbit_r95_c16 bl_16 br_16 wl_95 vdd gnd cell_6t
Xbit_r96_c16 bl_16 br_16 wl_96 vdd gnd cell_6t
Xbit_r97_c16 bl_16 br_16 wl_97 vdd gnd cell_6t
Xbit_r98_c16 bl_16 br_16 wl_98 vdd gnd cell_6t
Xbit_r99_c16 bl_16 br_16 wl_99 vdd gnd cell_6t
Xbit_r100_c16 bl_16 br_16 wl_100 vdd gnd cell_6t
Xbit_r101_c16 bl_16 br_16 wl_101 vdd gnd cell_6t
Xbit_r102_c16 bl_16 br_16 wl_102 vdd gnd cell_6t
Xbit_r103_c16 bl_16 br_16 wl_103 vdd gnd cell_6t
Xbit_r104_c16 bl_16 br_16 wl_104 vdd gnd cell_6t
Xbit_r105_c16 bl_16 br_16 wl_105 vdd gnd cell_6t
Xbit_r106_c16 bl_16 br_16 wl_106 vdd gnd cell_6t
Xbit_r107_c16 bl_16 br_16 wl_107 vdd gnd cell_6t
Xbit_r108_c16 bl_16 br_16 wl_108 vdd gnd cell_6t
Xbit_r109_c16 bl_16 br_16 wl_109 vdd gnd cell_6t
Xbit_r110_c16 bl_16 br_16 wl_110 vdd gnd cell_6t
Xbit_r111_c16 bl_16 br_16 wl_111 vdd gnd cell_6t
Xbit_r112_c16 bl_16 br_16 wl_112 vdd gnd cell_6t
Xbit_r113_c16 bl_16 br_16 wl_113 vdd gnd cell_6t
Xbit_r114_c16 bl_16 br_16 wl_114 vdd gnd cell_6t
Xbit_r115_c16 bl_16 br_16 wl_115 vdd gnd cell_6t
Xbit_r116_c16 bl_16 br_16 wl_116 vdd gnd cell_6t
Xbit_r117_c16 bl_16 br_16 wl_117 vdd gnd cell_6t
Xbit_r118_c16 bl_16 br_16 wl_118 vdd gnd cell_6t
Xbit_r119_c16 bl_16 br_16 wl_119 vdd gnd cell_6t
Xbit_r120_c16 bl_16 br_16 wl_120 vdd gnd cell_6t
Xbit_r121_c16 bl_16 br_16 wl_121 vdd gnd cell_6t
Xbit_r122_c16 bl_16 br_16 wl_122 vdd gnd cell_6t
Xbit_r123_c16 bl_16 br_16 wl_123 vdd gnd cell_6t
Xbit_r124_c16 bl_16 br_16 wl_124 vdd gnd cell_6t
Xbit_r125_c16 bl_16 br_16 wl_125 vdd gnd cell_6t
Xbit_r126_c16 bl_16 br_16 wl_126 vdd gnd cell_6t
Xbit_r127_c16 bl_16 br_16 wl_127 vdd gnd cell_6t
Xbit_r0_c17 bl_17 br_17 wl_0 vdd gnd cell_6t
Xbit_r1_c17 bl_17 br_17 wl_1 vdd gnd cell_6t
Xbit_r2_c17 bl_17 br_17 wl_2 vdd gnd cell_6t
Xbit_r3_c17 bl_17 br_17 wl_3 vdd gnd cell_6t
Xbit_r4_c17 bl_17 br_17 wl_4 vdd gnd cell_6t
Xbit_r5_c17 bl_17 br_17 wl_5 vdd gnd cell_6t
Xbit_r6_c17 bl_17 br_17 wl_6 vdd gnd cell_6t
Xbit_r7_c17 bl_17 br_17 wl_7 vdd gnd cell_6t
Xbit_r8_c17 bl_17 br_17 wl_8 vdd gnd cell_6t
Xbit_r9_c17 bl_17 br_17 wl_9 vdd gnd cell_6t
Xbit_r10_c17 bl_17 br_17 wl_10 vdd gnd cell_6t
Xbit_r11_c17 bl_17 br_17 wl_11 vdd gnd cell_6t
Xbit_r12_c17 bl_17 br_17 wl_12 vdd gnd cell_6t
Xbit_r13_c17 bl_17 br_17 wl_13 vdd gnd cell_6t
Xbit_r14_c17 bl_17 br_17 wl_14 vdd gnd cell_6t
Xbit_r15_c17 bl_17 br_17 wl_15 vdd gnd cell_6t
Xbit_r16_c17 bl_17 br_17 wl_16 vdd gnd cell_6t
Xbit_r17_c17 bl_17 br_17 wl_17 vdd gnd cell_6t
Xbit_r18_c17 bl_17 br_17 wl_18 vdd gnd cell_6t
Xbit_r19_c17 bl_17 br_17 wl_19 vdd gnd cell_6t
Xbit_r20_c17 bl_17 br_17 wl_20 vdd gnd cell_6t
Xbit_r21_c17 bl_17 br_17 wl_21 vdd gnd cell_6t
Xbit_r22_c17 bl_17 br_17 wl_22 vdd gnd cell_6t
Xbit_r23_c17 bl_17 br_17 wl_23 vdd gnd cell_6t
Xbit_r24_c17 bl_17 br_17 wl_24 vdd gnd cell_6t
Xbit_r25_c17 bl_17 br_17 wl_25 vdd gnd cell_6t
Xbit_r26_c17 bl_17 br_17 wl_26 vdd gnd cell_6t
Xbit_r27_c17 bl_17 br_17 wl_27 vdd gnd cell_6t
Xbit_r28_c17 bl_17 br_17 wl_28 vdd gnd cell_6t
Xbit_r29_c17 bl_17 br_17 wl_29 vdd gnd cell_6t
Xbit_r30_c17 bl_17 br_17 wl_30 vdd gnd cell_6t
Xbit_r31_c17 bl_17 br_17 wl_31 vdd gnd cell_6t
Xbit_r32_c17 bl_17 br_17 wl_32 vdd gnd cell_6t
Xbit_r33_c17 bl_17 br_17 wl_33 vdd gnd cell_6t
Xbit_r34_c17 bl_17 br_17 wl_34 vdd gnd cell_6t
Xbit_r35_c17 bl_17 br_17 wl_35 vdd gnd cell_6t
Xbit_r36_c17 bl_17 br_17 wl_36 vdd gnd cell_6t
Xbit_r37_c17 bl_17 br_17 wl_37 vdd gnd cell_6t
Xbit_r38_c17 bl_17 br_17 wl_38 vdd gnd cell_6t
Xbit_r39_c17 bl_17 br_17 wl_39 vdd gnd cell_6t
Xbit_r40_c17 bl_17 br_17 wl_40 vdd gnd cell_6t
Xbit_r41_c17 bl_17 br_17 wl_41 vdd gnd cell_6t
Xbit_r42_c17 bl_17 br_17 wl_42 vdd gnd cell_6t
Xbit_r43_c17 bl_17 br_17 wl_43 vdd gnd cell_6t
Xbit_r44_c17 bl_17 br_17 wl_44 vdd gnd cell_6t
Xbit_r45_c17 bl_17 br_17 wl_45 vdd gnd cell_6t
Xbit_r46_c17 bl_17 br_17 wl_46 vdd gnd cell_6t
Xbit_r47_c17 bl_17 br_17 wl_47 vdd gnd cell_6t
Xbit_r48_c17 bl_17 br_17 wl_48 vdd gnd cell_6t
Xbit_r49_c17 bl_17 br_17 wl_49 vdd gnd cell_6t
Xbit_r50_c17 bl_17 br_17 wl_50 vdd gnd cell_6t
Xbit_r51_c17 bl_17 br_17 wl_51 vdd gnd cell_6t
Xbit_r52_c17 bl_17 br_17 wl_52 vdd gnd cell_6t
Xbit_r53_c17 bl_17 br_17 wl_53 vdd gnd cell_6t
Xbit_r54_c17 bl_17 br_17 wl_54 vdd gnd cell_6t
Xbit_r55_c17 bl_17 br_17 wl_55 vdd gnd cell_6t
Xbit_r56_c17 bl_17 br_17 wl_56 vdd gnd cell_6t
Xbit_r57_c17 bl_17 br_17 wl_57 vdd gnd cell_6t
Xbit_r58_c17 bl_17 br_17 wl_58 vdd gnd cell_6t
Xbit_r59_c17 bl_17 br_17 wl_59 vdd gnd cell_6t
Xbit_r60_c17 bl_17 br_17 wl_60 vdd gnd cell_6t
Xbit_r61_c17 bl_17 br_17 wl_61 vdd gnd cell_6t
Xbit_r62_c17 bl_17 br_17 wl_62 vdd gnd cell_6t
Xbit_r63_c17 bl_17 br_17 wl_63 vdd gnd cell_6t
Xbit_r64_c17 bl_17 br_17 wl_64 vdd gnd cell_6t
Xbit_r65_c17 bl_17 br_17 wl_65 vdd gnd cell_6t
Xbit_r66_c17 bl_17 br_17 wl_66 vdd gnd cell_6t
Xbit_r67_c17 bl_17 br_17 wl_67 vdd gnd cell_6t
Xbit_r68_c17 bl_17 br_17 wl_68 vdd gnd cell_6t
Xbit_r69_c17 bl_17 br_17 wl_69 vdd gnd cell_6t
Xbit_r70_c17 bl_17 br_17 wl_70 vdd gnd cell_6t
Xbit_r71_c17 bl_17 br_17 wl_71 vdd gnd cell_6t
Xbit_r72_c17 bl_17 br_17 wl_72 vdd gnd cell_6t
Xbit_r73_c17 bl_17 br_17 wl_73 vdd gnd cell_6t
Xbit_r74_c17 bl_17 br_17 wl_74 vdd gnd cell_6t
Xbit_r75_c17 bl_17 br_17 wl_75 vdd gnd cell_6t
Xbit_r76_c17 bl_17 br_17 wl_76 vdd gnd cell_6t
Xbit_r77_c17 bl_17 br_17 wl_77 vdd gnd cell_6t
Xbit_r78_c17 bl_17 br_17 wl_78 vdd gnd cell_6t
Xbit_r79_c17 bl_17 br_17 wl_79 vdd gnd cell_6t
Xbit_r80_c17 bl_17 br_17 wl_80 vdd gnd cell_6t
Xbit_r81_c17 bl_17 br_17 wl_81 vdd gnd cell_6t
Xbit_r82_c17 bl_17 br_17 wl_82 vdd gnd cell_6t
Xbit_r83_c17 bl_17 br_17 wl_83 vdd gnd cell_6t
Xbit_r84_c17 bl_17 br_17 wl_84 vdd gnd cell_6t
Xbit_r85_c17 bl_17 br_17 wl_85 vdd gnd cell_6t
Xbit_r86_c17 bl_17 br_17 wl_86 vdd gnd cell_6t
Xbit_r87_c17 bl_17 br_17 wl_87 vdd gnd cell_6t
Xbit_r88_c17 bl_17 br_17 wl_88 vdd gnd cell_6t
Xbit_r89_c17 bl_17 br_17 wl_89 vdd gnd cell_6t
Xbit_r90_c17 bl_17 br_17 wl_90 vdd gnd cell_6t
Xbit_r91_c17 bl_17 br_17 wl_91 vdd gnd cell_6t
Xbit_r92_c17 bl_17 br_17 wl_92 vdd gnd cell_6t
Xbit_r93_c17 bl_17 br_17 wl_93 vdd gnd cell_6t
Xbit_r94_c17 bl_17 br_17 wl_94 vdd gnd cell_6t
Xbit_r95_c17 bl_17 br_17 wl_95 vdd gnd cell_6t
Xbit_r96_c17 bl_17 br_17 wl_96 vdd gnd cell_6t
Xbit_r97_c17 bl_17 br_17 wl_97 vdd gnd cell_6t
Xbit_r98_c17 bl_17 br_17 wl_98 vdd gnd cell_6t
Xbit_r99_c17 bl_17 br_17 wl_99 vdd gnd cell_6t
Xbit_r100_c17 bl_17 br_17 wl_100 vdd gnd cell_6t
Xbit_r101_c17 bl_17 br_17 wl_101 vdd gnd cell_6t
Xbit_r102_c17 bl_17 br_17 wl_102 vdd gnd cell_6t
Xbit_r103_c17 bl_17 br_17 wl_103 vdd gnd cell_6t
Xbit_r104_c17 bl_17 br_17 wl_104 vdd gnd cell_6t
Xbit_r105_c17 bl_17 br_17 wl_105 vdd gnd cell_6t
Xbit_r106_c17 bl_17 br_17 wl_106 vdd gnd cell_6t
Xbit_r107_c17 bl_17 br_17 wl_107 vdd gnd cell_6t
Xbit_r108_c17 bl_17 br_17 wl_108 vdd gnd cell_6t
Xbit_r109_c17 bl_17 br_17 wl_109 vdd gnd cell_6t
Xbit_r110_c17 bl_17 br_17 wl_110 vdd gnd cell_6t
Xbit_r111_c17 bl_17 br_17 wl_111 vdd gnd cell_6t
Xbit_r112_c17 bl_17 br_17 wl_112 vdd gnd cell_6t
Xbit_r113_c17 bl_17 br_17 wl_113 vdd gnd cell_6t
Xbit_r114_c17 bl_17 br_17 wl_114 vdd gnd cell_6t
Xbit_r115_c17 bl_17 br_17 wl_115 vdd gnd cell_6t
Xbit_r116_c17 bl_17 br_17 wl_116 vdd gnd cell_6t
Xbit_r117_c17 bl_17 br_17 wl_117 vdd gnd cell_6t
Xbit_r118_c17 bl_17 br_17 wl_118 vdd gnd cell_6t
Xbit_r119_c17 bl_17 br_17 wl_119 vdd gnd cell_6t
Xbit_r120_c17 bl_17 br_17 wl_120 vdd gnd cell_6t
Xbit_r121_c17 bl_17 br_17 wl_121 vdd gnd cell_6t
Xbit_r122_c17 bl_17 br_17 wl_122 vdd gnd cell_6t
Xbit_r123_c17 bl_17 br_17 wl_123 vdd gnd cell_6t
Xbit_r124_c17 bl_17 br_17 wl_124 vdd gnd cell_6t
Xbit_r125_c17 bl_17 br_17 wl_125 vdd gnd cell_6t
Xbit_r126_c17 bl_17 br_17 wl_126 vdd gnd cell_6t
Xbit_r127_c17 bl_17 br_17 wl_127 vdd gnd cell_6t
Xbit_r0_c18 bl_18 br_18 wl_0 vdd gnd cell_6t
Xbit_r1_c18 bl_18 br_18 wl_1 vdd gnd cell_6t
Xbit_r2_c18 bl_18 br_18 wl_2 vdd gnd cell_6t
Xbit_r3_c18 bl_18 br_18 wl_3 vdd gnd cell_6t
Xbit_r4_c18 bl_18 br_18 wl_4 vdd gnd cell_6t
Xbit_r5_c18 bl_18 br_18 wl_5 vdd gnd cell_6t
Xbit_r6_c18 bl_18 br_18 wl_6 vdd gnd cell_6t
Xbit_r7_c18 bl_18 br_18 wl_7 vdd gnd cell_6t
Xbit_r8_c18 bl_18 br_18 wl_8 vdd gnd cell_6t
Xbit_r9_c18 bl_18 br_18 wl_9 vdd gnd cell_6t
Xbit_r10_c18 bl_18 br_18 wl_10 vdd gnd cell_6t
Xbit_r11_c18 bl_18 br_18 wl_11 vdd gnd cell_6t
Xbit_r12_c18 bl_18 br_18 wl_12 vdd gnd cell_6t
Xbit_r13_c18 bl_18 br_18 wl_13 vdd gnd cell_6t
Xbit_r14_c18 bl_18 br_18 wl_14 vdd gnd cell_6t
Xbit_r15_c18 bl_18 br_18 wl_15 vdd gnd cell_6t
Xbit_r16_c18 bl_18 br_18 wl_16 vdd gnd cell_6t
Xbit_r17_c18 bl_18 br_18 wl_17 vdd gnd cell_6t
Xbit_r18_c18 bl_18 br_18 wl_18 vdd gnd cell_6t
Xbit_r19_c18 bl_18 br_18 wl_19 vdd gnd cell_6t
Xbit_r20_c18 bl_18 br_18 wl_20 vdd gnd cell_6t
Xbit_r21_c18 bl_18 br_18 wl_21 vdd gnd cell_6t
Xbit_r22_c18 bl_18 br_18 wl_22 vdd gnd cell_6t
Xbit_r23_c18 bl_18 br_18 wl_23 vdd gnd cell_6t
Xbit_r24_c18 bl_18 br_18 wl_24 vdd gnd cell_6t
Xbit_r25_c18 bl_18 br_18 wl_25 vdd gnd cell_6t
Xbit_r26_c18 bl_18 br_18 wl_26 vdd gnd cell_6t
Xbit_r27_c18 bl_18 br_18 wl_27 vdd gnd cell_6t
Xbit_r28_c18 bl_18 br_18 wl_28 vdd gnd cell_6t
Xbit_r29_c18 bl_18 br_18 wl_29 vdd gnd cell_6t
Xbit_r30_c18 bl_18 br_18 wl_30 vdd gnd cell_6t
Xbit_r31_c18 bl_18 br_18 wl_31 vdd gnd cell_6t
Xbit_r32_c18 bl_18 br_18 wl_32 vdd gnd cell_6t
Xbit_r33_c18 bl_18 br_18 wl_33 vdd gnd cell_6t
Xbit_r34_c18 bl_18 br_18 wl_34 vdd gnd cell_6t
Xbit_r35_c18 bl_18 br_18 wl_35 vdd gnd cell_6t
Xbit_r36_c18 bl_18 br_18 wl_36 vdd gnd cell_6t
Xbit_r37_c18 bl_18 br_18 wl_37 vdd gnd cell_6t
Xbit_r38_c18 bl_18 br_18 wl_38 vdd gnd cell_6t
Xbit_r39_c18 bl_18 br_18 wl_39 vdd gnd cell_6t
Xbit_r40_c18 bl_18 br_18 wl_40 vdd gnd cell_6t
Xbit_r41_c18 bl_18 br_18 wl_41 vdd gnd cell_6t
Xbit_r42_c18 bl_18 br_18 wl_42 vdd gnd cell_6t
Xbit_r43_c18 bl_18 br_18 wl_43 vdd gnd cell_6t
Xbit_r44_c18 bl_18 br_18 wl_44 vdd gnd cell_6t
Xbit_r45_c18 bl_18 br_18 wl_45 vdd gnd cell_6t
Xbit_r46_c18 bl_18 br_18 wl_46 vdd gnd cell_6t
Xbit_r47_c18 bl_18 br_18 wl_47 vdd gnd cell_6t
Xbit_r48_c18 bl_18 br_18 wl_48 vdd gnd cell_6t
Xbit_r49_c18 bl_18 br_18 wl_49 vdd gnd cell_6t
Xbit_r50_c18 bl_18 br_18 wl_50 vdd gnd cell_6t
Xbit_r51_c18 bl_18 br_18 wl_51 vdd gnd cell_6t
Xbit_r52_c18 bl_18 br_18 wl_52 vdd gnd cell_6t
Xbit_r53_c18 bl_18 br_18 wl_53 vdd gnd cell_6t
Xbit_r54_c18 bl_18 br_18 wl_54 vdd gnd cell_6t
Xbit_r55_c18 bl_18 br_18 wl_55 vdd gnd cell_6t
Xbit_r56_c18 bl_18 br_18 wl_56 vdd gnd cell_6t
Xbit_r57_c18 bl_18 br_18 wl_57 vdd gnd cell_6t
Xbit_r58_c18 bl_18 br_18 wl_58 vdd gnd cell_6t
Xbit_r59_c18 bl_18 br_18 wl_59 vdd gnd cell_6t
Xbit_r60_c18 bl_18 br_18 wl_60 vdd gnd cell_6t
Xbit_r61_c18 bl_18 br_18 wl_61 vdd gnd cell_6t
Xbit_r62_c18 bl_18 br_18 wl_62 vdd gnd cell_6t
Xbit_r63_c18 bl_18 br_18 wl_63 vdd gnd cell_6t
Xbit_r64_c18 bl_18 br_18 wl_64 vdd gnd cell_6t
Xbit_r65_c18 bl_18 br_18 wl_65 vdd gnd cell_6t
Xbit_r66_c18 bl_18 br_18 wl_66 vdd gnd cell_6t
Xbit_r67_c18 bl_18 br_18 wl_67 vdd gnd cell_6t
Xbit_r68_c18 bl_18 br_18 wl_68 vdd gnd cell_6t
Xbit_r69_c18 bl_18 br_18 wl_69 vdd gnd cell_6t
Xbit_r70_c18 bl_18 br_18 wl_70 vdd gnd cell_6t
Xbit_r71_c18 bl_18 br_18 wl_71 vdd gnd cell_6t
Xbit_r72_c18 bl_18 br_18 wl_72 vdd gnd cell_6t
Xbit_r73_c18 bl_18 br_18 wl_73 vdd gnd cell_6t
Xbit_r74_c18 bl_18 br_18 wl_74 vdd gnd cell_6t
Xbit_r75_c18 bl_18 br_18 wl_75 vdd gnd cell_6t
Xbit_r76_c18 bl_18 br_18 wl_76 vdd gnd cell_6t
Xbit_r77_c18 bl_18 br_18 wl_77 vdd gnd cell_6t
Xbit_r78_c18 bl_18 br_18 wl_78 vdd gnd cell_6t
Xbit_r79_c18 bl_18 br_18 wl_79 vdd gnd cell_6t
Xbit_r80_c18 bl_18 br_18 wl_80 vdd gnd cell_6t
Xbit_r81_c18 bl_18 br_18 wl_81 vdd gnd cell_6t
Xbit_r82_c18 bl_18 br_18 wl_82 vdd gnd cell_6t
Xbit_r83_c18 bl_18 br_18 wl_83 vdd gnd cell_6t
Xbit_r84_c18 bl_18 br_18 wl_84 vdd gnd cell_6t
Xbit_r85_c18 bl_18 br_18 wl_85 vdd gnd cell_6t
Xbit_r86_c18 bl_18 br_18 wl_86 vdd gnd cell_6t
Xbit_r87_c18 bl_18 br_18 wl_87 vdd gnd cell_6t
Xbit_r88_c18 bl_18 br_18 wl_88 vdd gnd cell_6t
Xbit_r89_c18 bl_18 br_18 wl_89 vdd gnd cell_6t
Xbit_r90_c18 bl_18 br_18 wl_90 vdd gnd cell_6t
Xbit_r91_c18 bl_18 br_18 wl_91 vdd gnd cell_6t
Xbit_r92_c18 bl_18 br_18 wl_92 vdd gnd cell_6t
Xbit_r93_c18 bl_18 br_18 wl_93 vdd gnd cell_6t
Xbit_r94_c18 bl_18 br_18 wl_94 vdd gnd cell_6t
Xbit_r95_c18 bl_18 br_18 wl_95 vdd gnd cell_6t
Xbit_r96_c18 bl_18 br_18 wl_96 vdd gnd cell_6t
Xbit_r97_c18 bl_18 br_18 wl_97 vdd gnd cell_6t
Xbit_r98_c18 bl_18 br_18 wl_98 vdd gnd cell_6t
Xbit_r99_c18 bl_18 br_18 wl_99 vdd gnd cell_6t
Xbit_r100_c18 bl_18 br_18 wl_100 vdd gnd cell_6t
Xbit_r101_c18 bl_18 br_18 wl_101 vdd gnd cell_6t
Xbit_r102_c18 bl_18 br_18 wl_102 vdd gnd cell_6t
Xbit_r103_c18 bl_18 br_18 wl_103 vdd gnd cell_6t
Xbit_r104_c18 bl_18 br_18 wl_104 vdd gnd cell_6t
Xbit_r105_c18 bl_18 br_18 wl_105 vdd gnd cell_6t
Xbit_r106_c18 bl_18 br_18 wl_106 vdd gnd cell_6t
Xbit_r107_c18 bl_18 br_18 wl_107 vdd gnd cell_6t
Xbit_r108_c18 bl_18 br_18 wl_108 vdd gnd cell_6t
Xbit_r109_c18 bl_18 br_18 wl_109 vdd gnd cell_6t
Xbit_r110_c18 bl_18 br_18 wl_110 vdd gnd cell_6t
Xbit_r111_c18 bl_18 br_18 wl_111 vdd gnd cell_6t
Xbit_r112_c18 bl_18 br_18 wl_112 vdd gnd cell_6t
Xbit_r113_c18 bl_18 br_18 wl_113 vdd gnd cell_6t
Xbit_r114_c18 bl_18 br_18 wl_114 vdd gnd cell_6t
Xbit_r115_c18 bl_18 br_18 wl_115 vdd gnd cell_6t
Xbit_r116_c18 bl_18 br_18 wl_116 vdd gnd cell_6t
Xbit_r117_c18 bl_18 br_18 wl_117 vdd gnd cell_6t
Xbit_r118_c18 bl_18 br_18 wl_118 vdd gnd cell_6t
Xbit_r119_c18 bl_18 br_18 wl_119 vdd gnd cell_6t
Xbit_r120_c18 bl_18 br_18 wl_120 vdd gnd cell_6t
Xbit_r121_c18 bl_18 br_18 wl_121 vdd gnd cell_6t
Xbit_r122_c18 bl_18 br_18 wl_122 vdd gnd cell_6t
Xbit_r123_c18 bl_18 br_18 wl_123 vdd gnd cell_6t
Xbit_r124_c18 bl_18 br_18 wl_124 vdd gnd cell_6t
Xbit_r125_c18 bl_18 br_18 wl_125 vdd gnd cell_6t
Xbit_r126_c18 bl_18 br_18 wl_126 vdd gnd cell_6t
Xbit_r127_c18 bl_18 br_18 wl_127 vdd gnd cell_6t
Xbit_r0_c19 bl_19 br_19 wl_0 vdd gnd cell_6t
Xbit_r1_c19 bl_19 br_19 wl_1 vdd gnd cell_6t
Xbit_r2_c19 bl_19 br_19 wl_2 vdd gnd cell_6t
Xbit_r3_c19 bl_19 br_19 wl_3 vdd gnd cell_6t
Xbit_r4_c19 bl_19 br_19 wl_4 vdd gnd cell_6t
Xbit_r5_c19 bl_19 br_19 wl_5 vdd gnd cell_6t
Xbit_r6_c19 bl_19 br_19 wl_6 vdd gnd cell_6t
Xbit_r7_c19 bl_19 br_19 wl_7 vdd gnd cell_6t
Xbit_r8_c19 bl_19 br_19 wl_8 vdd gnd cell_6t
Xbit_r9_c19 bl_19 br_19 wl_9 vdd gnd cell_6t
Xbit_r10_c19 bl_19 br_19 wl_10 vdd gnd cell_6t
Xbit_r11_c19 bl_19 br_19 wl_11 vdd gnd cell_6t
Xbit_r12_c19 bl_19 br_19 wl_12 vdd gnd cell_6t
Xbit_r13_c19 bl_19 br_19 wl_13 vdd gnd cell_6t
Xbit_r14_c19 bl_19 br_19 wl_14 vdd gnd cell_6t
Xbit_r15_c19 bl_19 br_19 wl_15 vdd gnd cell_6t
Xbit_r16_c19 bl_19 br_19 wl_16 vdd gnd cell_6t
Xbit_r17_c19 bl_19 br_19 wl_17 vdd gnd cell_6t
Xbit_r18_c19 bl_19 br_19 wl_18 vdd gnd cell_6t
Xbit_r19_c19 bl_19 br_19 wl_19 vdd gnd cell_6t
Xbit_r20_c19 bl_19 br_19 wl_20 vdd gnd cell_6t
Xbit_r21_c19 bl_19 br_19 wl_21 vdd gnd cell_6t
Xbit_r22_c19 bl_19 br_19 wl_22 vdd gnd cell_6t
Xbit_r23_c19 bl_19 br_19 wl_23 vdd gnd cell_6t
Xbit_r24_c19 bl_19 br_19 wl_24 vdd gnd cell_6t
Xbit_r25_c19 bl_19 br_19 wl_25 vdd gnd cell_6t
Xbit_r26_c19 bl_19 br_19 wl_26 vdd gnd cell_6t
Xbit_r27_c19 bl_19 br_19 wl_27 vdd gnd cell_6t
Xbit_r28_c19 bl_19 br_19 wl_28 vdd gnd cell_6t
Xbit_r29_c19 bl_19 br_19 wl_29 vdd gnd cell_6t
Xbit_r30_c19 bl_19 br_19 wl_30 vdd gnd cell_6t
Xbit_r31_c19 bl_19 br_19 wl_31 vdd gnd cell_6t
Xbit_r32_c19 bl_19 br_19 wl_32 vdd gnd cell_6t
Xbit_r33_c19 bl_19 br_19 wl_33 vdd gnd cell_6t
Xbit_r34_c19 bl_19 br_19 wl_34 vdd gnd cell_6t
Xbit_r35_c19 bl_19 br_19 wl_35 vdd gnd cell_6t
Xbit_r36_c19 bl_19 br_19 wl_36 vdd gnd cell_6t
Xbit_r37_c19 bl_19 br_19 wl_37 vdd gnd cell_6t
Xbit_r38_c19 bl_19 br_19 wl_38 vdd gnd cell_6t
Xbit_r39_c19 bl_19 br_19 wl_39 vdd gnd cell_6t
Xbit_r40_c19 bl_19 br_19 wl_40 vdd gnd cell_6t
Xbit_r41_c19 bl_19 br_19 wl_41 vdd gnd cell_6t
Xbit_r42_c19 bl_19 br_19 wl_42 vdd gnd cell_6t
Xbit_r43_c19 bl_19 br_19 wl_43 vdd gnd cell_6t
Xbit_r44_c19 bl_19 br_19 wl_44 vdd gnd cell_6t
Xbit_r45_c19 bl_19 br_19 wl_45 vdd gnd cell_6t
Xbit_r46_c19 bl_19 br_19 wl_46 vdd gnd cell_6t
Xbit_r47_c19 bl_19 br_19 wl_47 vdd gnd cell_6t
Xbit_r48_c19 bl_19 br_19 wl_48 vdd gnd cell_6t
Xbit_r49_c19 bl_19 br_19 wl_49 vdd gnd cell_6t
Xbit_r50_c19 bl_19 br_19 wl_50 vdd gnd cell_6t
Xbit_r51_c19 bl_19 br_19 wl_51 vdd gnd cell_6t
Xbit_r52_c19 bl_19 br_19 wl_52 vdd gnd cell_6t
Xbit_r53_c19 bl_19 br_19 wl_53 vdd gnd cell_6t
Xbit_r54_c19 bl_19 br_19 wl_54 vdd gnd cell_6t
Xbit_r55_c19 bl_19 br_19 wl_55 vdd gnd cell_6t
Xbit_r56_c19 bl_19 br_19 wl_56 vdd gnd cell_6t
Xbit_r57_c19 bl_19 br_19 wl_57 vdd gnd cell_6t
Xbit_r58_c19 bl_19 br_19 wl_58 vdd gnd cell_6t
Xbit_r59_c19 bl_19 br_19 wl_59 vdd gnd cell_6t
Xbit_r60_c19 bl_19 br_19 wl_60 vdd gnd cell_6t
Xbit_r61_c19 bl_19 br_19 wl_61 vdd gnd cell_6t
Xbit_r62_c19 bl_19 br_19 wl_62 vdd gnd cell_6t
Xbit_r63_c19 bl_19 br_19 wl_63 vdd gnd cell_6t
Xbit_r64_c19 bl_19 br_19 wl_64 vdd gnd cell_6t
Xbit_r65_c19 bl_19 br_19 wl_65 vdd gnd cell_6t
Xbit_r66_c19 bl_19 br_19 wl_66 vdd gnd cell_6t
Xbit_r67_c19 bl_19 br_19 wl_67 vdd gnd cell_6t
Xbit_r68_c19 bl_19 br_19 wl_68 vdd gnd cell_6t
Xbit_r69_c19 bl_19 br_19 wl_69 vdd gnd cell_6t
Xbit_r70_c19 bl_19 br_19 wl_70 vdd gnd cell_6t
Xbit_r71_c19 bl_19 br_19 wl_71 vdd gnd cell_6t
Xbit_r72_c19 bl_19 br_19 wl_72 vdd gnd cell_6t
Xbit_r73_c19 bl_19 br_19 wl_73 vdd gnd cell_6t
Xbit_r74_c19 bl_19 br_19 wl_74 vdd gnd cell_6t
Xbit_r75_c19 bl_19 br_19 wl_75 vdd gnd cell_6t
Xbit_r76_c19 bl_19 br_19 wl_76 vdd gnd cell_6t
Xbit_r77_c19 bl_19 br_19 wl_77 vdd gnd cell_6t
Xbit_r78_c19 bl_19 br_19 wl_78 vdd gnd cell_6t
Xbit_r79_c19 bl_19 br_19 wl_79 vdd gnd cell_6t
Xbit_r80_c19 bl_19 br_19 wl_80 vdd gnd cell_6t
Xbit_r81_c19 bl_19 br_19 wl_81 vdd gnd cell_6t
Xbit_r82_c19 bl_19 br_19 wl_82 vdd gnd cell_6t
Xbit_r83_c19 bl_19 br_19 wl_83 vdd gnd cell_6t
Xbit_r84_c19 bl_19 br_19 wl_84 vdd gnd cell_6t
Xbit_r85_c19 bl_19 br_19 wl_85 vdd gnd cell_6t
Xbit_r86_c19 bl_19 br_19 wl_86 vdd gnd cell_6t
Xbit_r87_c19 bl_19 br_19 wl_87 vdd gnd cell_6t
Xbit_r88_c19 bl_19 br_19 wl_88 vdd gnd cell_6t
Xbit_r89_c19 bl_19 br_19 wl_89 vdd gnd cell_6t
Xbit_r90_c19 bl_19 br_19 wl_90 vdd gnd cell_6t
Xbit_r91_c19 bl_19 br_19 wl_91 vdd gnd cell_6t
Xbit_r92_c19 bl_19 br_19 wl_92 vdd gnd cell_6t
Xbit_r93_c19 bl_19 br_19 wl_93 vdd gnd cell_6t
Xbit_r94_c19 bl_19 br_19 wl_94 vdd gnd cell_6t
Xbit_r95_c19 bl_19 br_19 wl_95 vdd gnd cell_6t
Xbit_r96_c19 bl_19 br_19 wl_96 vdd gnd cell_6t
Xbit_r97_c19 bl_19 br_19 wl_97 vdd gnd cell_6t
Xbit_r98_c19 bl_19 br_19 wl_98 vdd gnd cell_6t
Xbit_r99_c19 bl_19 br_19 wl_99 vdd gnd cell_6t
Xbit_r100_c19 bl_19 br_19 wl_100 vdd gnd cell_6t
Xbit_r101_c19 bl_19 br_19 wl_101 vdd gnd cell_6t
Xbit_r102_c19 bl_19 br_19 wl_102 vdd gnd cell_6t
Xbit_r103_c19 bl_19 br_19 wl_103 vdd gnd cell_6t
Xbit_r104_c19 bl_19 br_19 wl_104 vdd gnd cell_6t
Xbit_r105_c19 bl_19 br_19 wl_105 vdd gnd cell_6t
Xbit_r106_c19 bl_19 br_19 wl_106 vdd gnd cell_6t
Xbit_r107_c19 bl_19 br_19 wl_107 vdd gnd cell_6t
Xbit_r108_c19 bl_19 br_19 wl_108 vdd gnd cell_6t
Xbit_r109_c19 bl_19 br_19 wl_109 vdd gnd cell_6t
Xbit_r110_c19 bl_19 br_19 wl_110 vdd gnd cell_6t
Xbit_r111_c19 bl_19 br_19 wl_111 vdd gnd cell_6t
Xbit_r112_c19 bl_19 br_19 wl_112 vdd gnd cell_6t
Xbit_r113_c19 bl_19 br_19 wl_113 vdd gnd cell_6t
Xbit_r114_c19 bl_19 br_19 wl_114 vdd gnd cell_6t
Xbit_r115_c19 bl_19 br_19 wl_115 vdd gnd cell_6t
Xbit_r116_c19 bl_19 br_19 wl_116 vdd gnd cell_6t
Xbit_r117_c19 bl_19 br_19 wl_117 vdd gnd cell_6t
Xbit_r118_c19 bl_19 br_19 wl_118 vdd gnd cell_6t
Xbit_r119_c19 bl_19 br_19 wl_119 vdd gnd cell_6t
Xbit_r120_c19 bl_19 br_19 wl_120 vdd gnd cell_6t
Xbit_r121_c19 bl_19 br_19 wl_121 vdd gnd cell_6t
Xbit_r122_c19 bl_19 br_19 wl_122 vdd gnd cell_6t
Xbit_r123_c19 bl_19 br_19 wl_123 vdd gnd cell_6t
Xbit_r124_c19 bl_19 br_19 wl_124 vdd gnd cell_6t
Xbit_r125_c19 bl_19 br_19 wl_125 vdd gnd cell_6t
Xbit_r126_c19 bl_19 br_19 wl_126 vdd gnd cell_6t
Xbit_r127_c19 bl_19 br_19 wl_127 vdd gnd cell_6t
Xbit_r0_c20 bl_20 br_20 wl_0 vdd gnd cell_6t
Xbit_r1_c20 bl_20 br_20 wl_1 vdd gnd cell_6t
Xbit_r2_c20 bl_20 br_20 wl_2 vdd gnd cell_6t
Xbit_r3_c20 bl_20 br_20 wl_3 vdd gnd cell_6t
Xbit_r4_c20 bl_20 br_20 wl_4 vdd gnd cell_6t
Xbit_r5_c20 bl_20 br_20 wl_5 vdd gnd cell_6t
Xbit_r6_c20 bl_20 br_20 wl_6 vdd gnd cell_6t
Xbit_r7_c20 bl_20 br_20 wl_7 vdd gnd cell_6t
Xbit_r8_c20 bl_20 br_20 wl_8 vdd gnd cell_6t
Xbit_r9_c20 bl_20 br_20 wl_9 vdd gnd cell_6t
Xbit_r10_c20 bl_20 br_20 wl_10 vdd gnd cell_6t
Xbit_r11_c20 bl_20 br_20 wl_11 vdd gnd cell_6t
Xbit_r12_c20 bl_20 br_20 wl_12 vdd gnd cell_6t
Xbit_r13_c20 bl_20 br_20 wl_13 vdd gnd cell_6t
Xbit_r14_c20 bl_20 br_20 wl_14 vdd gnd cell_6t
Xbit_r15_c20 bl_20 br_20 wl_15 vdd gnd cell_6t
Xbit_r16_c20 bl_20 br_20 wl_16 vdd gnd cell_6t
Xbit_r17_c20 bl_20 br_20 wl_17 vdd gnd cell_6t
Xbit_r18_c20 bl_20 br_20 wl_18 vdd gnd cell_6t
Xbit_r19_c20 bl_20 br_20 wl_19 vdd gnd cell_6t
Xbit_r20_c20 bl_20 br_20 wl_20 vdd gnd cell_6t
Xbit_r21_c20 bl_20 br_20 wl_21 vdd gnd cell_6t
Xbit_r22_c20 bl_20 br_20 wl_22 vdd gnd cell_6t
Xbit_r23_c20 bl_20 br_20 wl_23 vdd gnd cell_6t
Xbit_r24_c20 bl_20 br_20 wl_24 vdd gnd cell_6t
Xbit_r25_c20 bl_20 br_20 wl_25 vdd gnd cell_6t
Xbit_r26_c20 bl_20 br_20 wl_26 vdd gnd cell_6t
Xbit_r27_c20 bl_20 br_20 wl_27 vdd gnd cell_6t
Xbit_r28_c20 bl_20 br_20 wl_28 vdd gnd cell_6t
Xbit_r29_c20 bl_20 br_20 wl_29 vdd gnd cell_6t
Xbit_r30_c20 bl_20 br_20 wl_30 vdd gnd cell_6t
Xbit_r31_c20 bl_20 br_20 wl_31 vdd gnd cell_6t
Xbit_r32_c20 bl_20 br_20 wl_32 vdd gnd cell_6t
Xbit_r33_c20 bl_20 br_20 wl_33 vdd gnd cell_6t
Xbit_r34_c20 bl_20 br_20 wl_34 vdd gnd cell_6t
Xbit_r35_c20 bl_20 br_20 wl_35 vdd gnd cell_6t
Xbit_r36_c20 bl_20 br_20 wl_36 vdd gnd cell_6t
Xbit_r37_c20 bl_20 br_20 wl_37 vdd gnd cell_6t
Xbit_r38_c20 bl_20 br_20 wl_38 vdd gnd cell_6t
Xbit_r39_c20 bl_20 br_20 wl_39 vdd gnd cell_6t
Xbit_r40_c20 bl_20 br_20 wl_40 vdd gnd cell_6t
Xbit_r41_c20 bl_20 br_20 wl_41 vdd gnd cell_6t
Xbit_r42_c20 bl_20 br_20 wl_42 vdd gnd cell_6t
Xbit_r43_c20 bl_20 br_20 wl_43 vdd gnd cell_6t
Xbit_r44_c20 bl_20 br_20 wl_44 vdd gnd cell_6t
Xbit_r45_c20 bl_20 br_20 wl_45 vdd gnd cell_6t
Xbit_r46_c20 bl_20 br_20 wl_46 vdd gnd cell_6t
Xbit_r47_c20 bl_20 br_20 wl_47 vdd gnd cell_6t
Xbit_r48_c20 bl_20 br_20 wl_48 vdd gnd cell_6t
Xbit_r49_c20 bl_20 br_20 wl_49 vdd gnd cell_6t
Xbit_r50_c20 bl_20 br_20 wl_50 vdd gnd cell_6t
Xbit_r51_c20 bl_20 br_20 wl_51 vdd gnd cell_6t
Xbit_r52_c20 bl_20 br_20 wl_52 vdd gnd cell_6t
Xbit_r53_c20 bl_20 br_20 wl_53 vdd gnd cell_6t
Xbit_r54_c20 bl_20 br_20 wl_54 vdd gnd cell_6t
Xbit_r55_c20 bl_20 br_20 wl_55 vdd gnd cell_6t
Xbit_r56_c20 bl_20 br_20 wl_56 vdd gnd cell_6t
Xbit_r57_c20 bl_20 br_20 wl_57 vdd gnd cell_6t
Xbit_r58_c20 bl_20 br_20 wl_58 vdd gnd cell_6t
Xbit_r59_c20 bl_20 br_20 wl_59 vdd gnd cell_6t
Xbit_r60_c20 bl_20 br_20 wl_60 vdd gnd cell_6t
Xbit_r61_c20 bl_20 br_20 wl_61 vdd gnd cell_6t
Xbit_r62_c20 bl_20 br_20 wl_62 vdd gnd cell_6t
Xbit_r63_c20 bl_20 br_20 wl_63 vdd gnd cell_6t
Xbit_r64_c20 bl_20 br_20 wl_64 vdd gnd cell_6t
Xbit_r65_c20 bl_20 br_20 wl_65 vdd gnd cell_6t
Xbit_r66_c20 bl_20 br_20 wl_66 vdd gnd cell_6t
Xbit_r67_c20 bl_20 br_20 wl_67 vdd gnd cell_6t
Xbit_r68_c20 bl_20 br_20 wl_68 vdd gnd cell_6t
Xbit_r69_c20 bl_20 br_20 wl_69 vdd gnd cell_6t
Xbit_r70_c20 bl_20 br_20 wl_70 vdd gnd cell_6t
Xbit_r71_c20 bl_20 br_20 wl_71 vdd gnd cell_6t
Xbit_r72_c20 bl_20 br_20 wl_72 vdd gnd cell_6t
Xbit_r73_c20 bl_20 br_20 wl_73 vdd gnd cell_6t
Xbit_r74_c20 bl_20 br_20 wl_74 vdd gnd cell_6t
Xbit_r75_c20 bl_20 br_20 wl_75 vdd gnd cell_6t
Xbit_r76_c20 bl_20 br_20 wl_76 vdd gnd cell_6t
Xbit_r77_c20 bl_20 br_20 wl_77 vdd gnd cell_6t
Xbit_r78_c20 bl_20 br_20 wl_78 vdd gnd cell_6t
Xbit_r79_c20 bl_20 br_20 wl_79 vdd gnd cell_6t
Xbit_r80_c20 bl_20 br_20 wl_80 vdd gnd cell_6t
Xbit_r81_c20 bl_20 br_20 wl_81 vdd gnd cell_6t
Xbit_r82_c20 bl_20 br_20 wl_82 vdd gnd cell_6t
Xbit_r83_c20 bl_20 br_20 wl_83 vdd gnd cell_6t
Xbit_r84_c20 bl_20 br_20 wl_84 vdd gnd cell_6t
Xbit_r85_c20 bl_20 br_20 wl_85 vdd gnd cell_6t
Xbit_r86_c20 bl_20 br_20 wl_86 vdd gnd cell_6t
Xbit_r87_c20 bl_20 br_20 wl_87 vdd gnd cell_6t
Xbit_r88_c20 bl_20 br_20 wl_88 vdd gnd cell_6t
Xbit_r89_c20 bl_20 br_20 wl_89 vdd gnd cell_6t
Xbit_r90_c20 bl_20 br_20 wl_90 vdd gnd cell_6t
Xbit_r91_c20 bl_20 br_20 wl_91 vdd gnd cell_6t
Xbit_r92_c20 bl_20 br_20 wl_92 vdd gnd cell_6t
Xbit_r93_c20 bl_20 br_20 wl_93 vdd gnd cell_6t
Xbit_r94_c20 bl_20 br_20 wl_94 vdd gnd cell_6t
Xbit_r95_c20 bl_20 br_20 wl_95 vdd gnd cell_6t
Xbit_r96_c20 bl_20 br_20 wl_96 vdd gnd cell_6t
Xbit_r97_c20 bl_20 br_20 wl_97 vdd gnd cell_6t
Xbit_r98_c20 bl_20 br_20 wl_98 vdd gnd cell_6t
Xbit_r99_c20 bl_20 br_20 wl_99 vdd gnd cell_6t
Xbit_r100_c20 bl_20 br_20 wl_100 vdd gnd cell_6t
Xbit_r101_c20 bl_20 br_20 wl_101 vdd gnd cell_6t
Xbit_r102_c20 bl_20 br_20 wl_102 vdd gnd cell_6t
Xbit_r103_c20 bl_20 br_20 wl_103 vdd gnd cell_6t
Xbit_r104_c20 bl_20 br_20 wl_104 vdd gnd cell_6t
Xbit_r105_c20 bl_20 br_20 wl_105 vdd gnd cell_6t
Xbit_r106_c20 bl_20 br_20 wl_106 vdd gnd cell_6t
Xbit_r107_c20 bl_20 br_20 wl_107 vdd gnd cell_6t
Xbit_r108_c20 bl_20 br_20 wl_108 vdd gnd cell_6t
Xbit_r109_c20 bl_20 br_20 wl_109 vdd gnd cell_6t
Xbit_r110_c20 bl_20 br_20 wl_110 vdd gnd cell_6t
Xbit_r111_c20 bl_20 br_20 wl_111 vdd gnd cell_6t
Xbit_r112_c20 bl_20 br_20 wl_112 vdd gnd cell_6t
Xbit_r113_c20 bl_20 br_20 wl_113 vdd gnd cell_6t
Xbit_r114_c20 bl_20 br_20 wl_114 vdd gnd cell_6t
Xbit_r115_c20 bl_20 br_20 wl_115 vdd gnd cell_6t
Xbit_r116_c20 bl_20 br_20 wl_116 vdd gnd cell_6t
Xbit_r117_c20 bl_20 br_20 wl_117 vdd gnd cell_6t
Xbit_r118_c20 bl_20 br_20 wl_118 vdd gnd cell_6t
Xbit_r119_c20 bl_20 br_20 wl_119 vdd gnd cell_6t
Xbit_r120_c20 bl_20 br_20 wl_120 vdd gnd cell_6t
Xbit_r121_c20 bl_20 br_20 wl_121 vdd gnd cell_6t
Xbit_r122_c20 bl_20 br_20 wl_122 vdd gnd cell_6t
Xbit_r123_c20 bl_20 br_20 wl_123 vdd gnd cell_6t
Xbit_r124_c20 bl_20 br_20 wl_124 vdd gnd cell_6t
Xbit_r125_c20 bl_20 br_20 wl_125 vdd gnd cell_6t
Xbit_r126_c20 bl_20 br_20 wl_126 vdd gnd cell_6t
Xbit_r127_c20 bl_20 br_20 wl_127 vdd gnd cell_6t
Xbit_r0_c21 bl_21 br_21 wl_0 vdd gnd cell_6t
Xbit_r1_c21 bl_21 br_21 wl_1 vdd gnd cell_6t
Xbit_r2_c21 bl_21 br_21 wl_2 vdd gnd cell_6t
Xbit_r3_c21 bl_21 br_21 wl_3 vdd gnd cell_6t
Xbit_r4_c21 bl_21 br_21 wl_4 vdd gnd cell_6t
Xbit_r5_c21 bl_21 br_21 wl_5 vdd gnd cell_6t
Xbit_r6_c21 bl_21 br_21 wl_6 vdd gnd cell_6t
Xbit_r7_c21 bl_21 br_21 wl_7 vdd gnd cell_6t
Xbit_r8_c21 bl_21 br_21 wl_8 vdd gnd cell_6t
Xbit_r9_c21 bl_21 br_21 wl_9 vdd gnd cell_6t
Xbit_r10_c21 bl_21 br_21 wl_10 vdd gnd cell_6t
Xbit_r11_c21 bl_21 br_21 wl_11 vdd gnd cell_6t
Xbit_r12_c21 bl_21 br_21 wl_12 vdd gnd cell_6t
Xbit_r13_c21 bl_21 br_21 wl_13 vdd gnd cell_6t
Xbit_r14_c21 bl_21 br_21 wl_14 vdd gnd cell_6t
Xbit_r15_c21 bl_21 br_21 wl_15 vdd gnd cell_6t
Xbit_r16_c21 bl_21 br_21 wl_16 vdd gnd cell_6t
Xbit_r17_c21 bl_21 br_21 wl_17 vdd gnd cell_6t
Xbit_r18_c21 bl_21 br_21 wl_18 vdd gnd cell_6t
Xbit_r19_c21 bl_21 br_21 wl_19 vdd gnd cell_6t
Xbit_r20_c21 bl_21 br_21 wl_20 vdd gnd cell_6t
Xbit_r21_c21 bl_21 br_21 wl_21 vdd gnd cell_6t
Xbit_r22_c21 bl_21 br_21 wl_22 vdd gnd cell_6t
Xbit_r23_c21 bl_21 br_21 wl_23 vdd gnd cell_6t
Xbit_r24_c21 bl_21 br_21 wl_24 vdd gnd cell_6t
Xbit_r25_c21 bl_21 br_21 wl_25 vdd gnd cell_6t
Xbit_r26_c21 bl_21 br_21 wl_26 vdd gnd cell_6t
Xbit_r27_c21 bl_21 br_21 wl_27 vdd gnd cell_6t
Xbit_r28_c21 bl_21 br_21 wl_28 vdd gnd cell_6t
Xbit_r29_c21 bl_21 br_21 wl_29 vdd gnd cell_6t
Xbit_r30_c21 bl_21 br_21 wl_30 vdd gnd cell_6t
Xbit_r31_c21 bl_21 br_21 wl_31 vdd gnd cell_6t
Xbit_r32_c21 bl_21 br_21 wl_32 vdd gnd cell_6t
Xbit_r33_c21 bl_21 br_21 wl_33 vdd gnd cell_6t
Xbit_r34_c21 bl_21 br_21 wl_34 vdd gnd cell_6t
Xbit_r35_c21 bl_21 br_21 wl_35 vdd gnd cell_6t
Xbit_r36_c21 bl_21 br_21 wl_36 vdd gnd cell_6t
Xbit_r37_c21 bl_21 br_21 wl_37 vdd gnd cell_6t
Xbit_r38_c21 bl_21 br_21 wl_38 vdd gnd cell_6t
Xbit_r39_c21 bl_21 br_21 wl_39 vdd gnd cell_6t
Xbit_r40_c21 bl_21 br_21 wl_40 vdd gnd cell_6t
Xbit_r41_c21 bl_21 br_21 wl_41 vdd gnd cell_6t
Xbit_r42_c21 bl_21 br_21 wl_42 vdd gnd cell_6t
Xbit_r43_c21 bl_21 br_21 wl_43 vdd gnd cell_6t
Xbit_r44_c21 bl_21 br_21 wl_44 vdd gnd cell_6t
Xbit_r45_c21 bl_21 br_21 wl_45 vdd gnd cell_6t
Xbit_r46_c21 bl_21 br_21 wl_46 vdd gnd cell_6t
Xbit_r47_c21 bl_21 br_21 wl_47 vdd gnd cell_6t
Xbit_r48_c21 bl_21 br_21 wl_48 vdd gnd cell_6t
Xbit_r49_c21 bl_21 br_21 wl_49 vdd gnd cell_6t
Xbit_r50_c21 bl_21 br_21 wl_50 vdd gnd cell_6t
Xbit_r51_c21 bl_21 br_21 wl_51 vdd gnd cell_6t
Xbit_r52_c21 bl_21 br_21 wl_52 vdd gnd cell_6t
Xbit_r53_c21 bl_21 br_21 wl_53 vdd gnd cell_6t
Xbit_r54_c21 bl_21 br_21 wl_54 vdd gnd cell_6t
Xbit_r55_c21 bl_21 br_21 wl_55 vdd gnd cell_6t
Xbit_r56_c21 bl_21 br_21 wl_56 vdd gnd cell_6t
Xbit_r57_c21 bl_21 br_21 wl_57 vdd gnd cell_6t
Xbit_r58_c21 bl_21 br_21 wl_58 vdd gnd cell_6t
Xbit_r59_c21 bl_21 br_21 wl_59 vdd gnd cell_6t
Xbit_r60_c21 bl_21 br_21 wl_60 vdd gnd cell_6t
Xbit_r61_c21 bl_21 br_21 wl_61 vdd gnd cell_6t
Xbit_r62_c21 bl_21 br_21 wl_62 vdd gnd cell_6t
Xbit_r63_c21 bl_21 br_21 wl_63 vdd gnd cell_6t
Xbit_r64_c21 bl_21 br_21 wl_64 vdd gnd cell_6t
Xbit_r65_c21 bl_21 br_21 wl_65 vdd gnd cell_6t
Xbit_r66_c21 bl_21 br_21 wl_66 vdd gnd cell_6t
Xbit_r67_c21 bl_21 br_21 wl_67 vdd gnd cell_6t
Xbit_r68_c21 bl_21 br_21 wl_68 vdd gnd cell_6t
Xbit_r69_c21 bl_21 br_21 wl_69 vdd gnd cell_6t
Xbit_r70_c21 bl_21 br_21 wl_70 vdd gnd cell_6t
Xbit_r71_c21 bl_21 br_21 wl_71 vdd gnd cell_6t
Xbit_r72_c21 bl_21 br_21 wl_72 vdd gnd cell_6t
Xbit_r73_c21 bl_21 br_21 wl_73 vdd gnd cell_6t
Xbit_r74_c21 bl_21 br_21 wl_74 vdd gnd cell_6t
Xbit_r75_c21 bl_21 br_21 wl_75 vdd gnd cell_6t
Xbit_r76_c21 bl_21 br_21 wl_76 vdd gnd cell_6t
Xbit_r77_c21 bl_21 br_21 wl_77 vdd gnd cell_6t
Xbit_r78_c21 bl_21 br_21 wl_78 vdd gnd cell_6t
Xbit_r79_c21 bl_21 br_21 wl_79 vdd gnd cell_6t
Xbit_r80_c21 bl_21 br_21 wl_80 vdd gnd cell_6t
Xbit_r81_c21 bl_21 br_21 wl_81 vdd gnd cell_6t
Xbit_r82_c21 bl_21 br_21 wl_82 vdd gnd cell_6t
Xbit_r83_c21 bl_21 br_21 wl_83 vdd gnd cell_6t
Xbit_r84_c21 bl_21 br_21 wl_84 vdd gnd cell_6t
Xbit_r85_c21 bl_21 br_21 wl_85 vdd gnd cell_6t
Xbit_r86_c21 bl_21 br_21 wl_86 vdd gnd cell_6t
Xbit_r87_c21 bl_21 br_21 wl_87 vdd gnd cell_6t
Xbit_r88_c21 bl_21 br_21 wl_88 vdd gnd cell_6t
Xbit_r89_c21 bl_21 br_21 wl_89 vdd gnd cell_6t
Xbit_r90_c21 bl_21 br_21 wl_90 vdd gnd cell_6t
Xbit_r91_c21 bl_21 br_21 wl_91 vdd gnd cell_6t
Xbit_r92_c21 bl_21 br_21 wl_92 vdd gnd cell_6t
Xbit_r93_c21 bl_21 br_21 wl_93 vdd gnd cell_6t
Xbit_r94_c21 bl_21 br_21 wl_94 vdd gnd cell_6t
Xbit_r95_c21 bl_21 br_21 wl_95 vdd gnd cell_6t
Xbit_r96_c21 bl_21 br_21 wl_96 vdd gnd cell_6t
Xbit_r97_c21 bl_21 br_21 wl_97 vdd gnd cell_6t
Xbit_r98_c21 bl_21 br_21 wl_98 vdd gnd cell_6t
Xbit_r99_c21 bl_21 br_21 wl_99 vdd gnd cell_6t
Xbit_r100_c21 bl_21 br_21 wl_100 vdd gnd cell_6t
Xbit_r101_c21 bl_21 br_21 wl_101 vdd gnd cell_6t
Xbit_r102_c21 bl_21 br_21 wl_102 vdd gnd cell_6t
Xbit_r103_c21 bl_21 br_21 wl_103 vdd gnd cell_6t
Xbit_r104_c21 bl_21 br_21 wl_104 vdd gnd cell_6t
Xbit_r105_c21 bl_21 br_21 wl_105 vdd gnd cell_6t
Xbit_r106_c21 bl_21 br_21 wl_106 vdd gnd cell_6t
Xbit_r107_c21 bl_21 br_21 wl_107 vdd gnd cell_6t
Xbit_r108_c21 bl_21 br_21 wl_108 vdd gnd cell_6t
Xbit_r109_c21 bl_21 br_21 wl_109 vdd gnd cell_6t
Xbit_r110_c21 bl_21 br_21 wl_110 vdd gnd cell_6t
Xbit_r111_c21 bl_21 br_21 wl_111 vdd gnd cell_6t
Xbit_r112_c21 bl_21 br_21 wl_112 vdd gnd cell_6t
Xbit_r113_c21 bl_21 br_21 wl_113 vdd gnd cell_6t
Xbit_r114_c21 bl_21 br_21 wl_114 vdd gnd cell_6t
Xbit_r115_c21 bl_21 br_21 wl_115 vdd gnd cell_6t
Xbit_r116_c21 bl_21 br_21 wl_116 vdd gnd cell_6t
Xbit_r117_c21 bl_21 br_21 wl_117 vdd gnd cell_6t
Xbit_r118_c21 bl_21 br_21 wl_118 vdd gnd cell_6t
Xbit_r119_c21 bl_21 br_21 wl_119 vdd gnd cell_6t
Xbit_r120_c21 bl_21 br_21 wl_120 vdd gnd cell_6t
Xbit_r121_c21 bl_21 br_21 wl_121 vdd gnd cell_6t
Xbit_r122_c21 bl_21 br_21 wl_122 vdd gnd cell_6t
Xbit_r123_c21 bl_21 br_21 wl_123 vdd gnd cell_6t
Xbit_r124_c21 bl_21 br_21 wl_124 vdd gnd cell_6t
Xbit_r125_c21 bl_21 br_21 wl_125 vdd gnd cell_6t
Xbit_r126_c21 bl_21 br_21 wl_126 vdd gnd cell_6t
Xbit_r127_c21 bl_21 br_21 wl_127 vdd gnd cell_6t
Xbit_r0_c22 bl_22 br_22 wl_0 vdd gnd cell_6t
Xbit_r1_c22 bl_22 br_22 wl_1 vdd gnd cell_6t
Xbit_r2_c22 bl_22 br_22 wl_2 vdd gnd cell_6t
Xbit_r3_c22 bl_22 br_22 wl_3 vdd gnd cell_6t
Xbit_r4_c22 bl_22 br_22 wl_4 vdd gnd cell_6t
Xbit_r5_c22 bl_22 br_22 wl_5 vdd gnd cell_6t
Xbit_r6_c22 bl_22 br_22 wl_6 vdd gnd cell_6t
Xbit_r7_c22 bl_22 br_22 wl_7 vdd gnd cell_6t
Xbit_r8_c22 bl_22 br_22 wl_8 vdd gnd cell_6t
Xbit_r9_c22 bl_22 br_22 wl_9 vdd gnd cell_6t
Xbit_r10_c22 bl_22 br_22 wl_10 vdd gnd cell_6t
Xbit_r11_c22 bl_22 br_22 wl_11 vdd gnd cell_6t
Xbit_r12_c22 bl_22 br_22 wl_12 vdd gnd cell_6t
Xbit_r13_c22 bl_22 br_22 wl_13 vdd gnd cell_6t
Xbit_r14_c22 bl_22 br_22 wl_14 vdd gnd cell_6t
Xbit_r15_c22 bl_22 br_22 wl_15 vdd gnd cell_6t
Xbit_r16_c22 bl_22 br_22 wl_16 vdd gnd cell_6t
Xbit_r17_c22 bl_22 br_22 wl_17 vdd gnd cell_6t
Xbit_r18_c22 bl_22 br_22 wl_18 vdd gnd cell_6t
Xbit_r19_c22 bl_22 br_22 wl_19 vdd gnd cell_6t
Xbit_r20_c22 bl_22 br_22 wl_20 vdd gnd cell_6t
Xbit_r21_c22 bl_22 br_22 wl_21 vdd gnd cell_6t
Xbit_r22_c22 bl_22 br_22 wl_22 vdd gnd cell_6t
Xbit_r23_c22 bl_22 br_22 wl_23 vdd gnd cell_6t
Xbit_r24_c22 bl_22 br_22 wl_24 vdd gnd cell_6t
Xbit_r25_c22 bl_22 br_22 wl_25 vdd gnd cell_6t
Xbit_r26_c22 bl_22 br_22 wl_26 vdd gnd cell_6t
Xbit_r27_c22 bl_22 br_22 wl_27 vdd gnd cell_6t
Xbit_r28_c22 bl_22 br_22 wl_28 vdd gnd cell_6t
Xbit_r29_c22 bl_22 br_22 wl_29 vdd gnd cell_6t
Xbit_r30_c22 bl_22 br_22 wl_30 vdd gnd cell_6t
Xbit_r31_c22 bl_22 br_22 wl_31 vdd gnd cell_6t
Xbit_r32_c22 bl_22 br_22 wl_32 vdd gnd cell_6t
Xbit_r33_c22 bl_22 br_22 wl_33 vdd gnd cell_6t
Xbit_r34_c22 bl_22 br_22 wl_34 vdd gnd cell_6t
Xbit_r35_c22 bl_22 br_22 wl_35 vdd gnd cell_6t
Xbit_r36_c22 bl_22 br_22 wl_36 vdd gnd cell_6t
Xbit_r37_c22 bl_22 br_22 wl_37 vdd gnd cell_6t
Xbit_r38_c22 bl_22 br_22 wl_38 vdd gnd cell_6t
Xbit_r39_c22 bl_22 br_22 wl_39 vdd gnd cell_6t
Xbit_r40_c22 bl_22 br_22 wl_40 vdd gnd cell_6t
Xbit_r41_c22 bl_22 br_22 wl_41 vdd gnd cell_6t
Xbit_r42_c22 bl_22 br_22 wl_42 vdd gnd cell_6t
Xbit_r43_c22 bl_22 br_22 wl_43 vdd gnd cell_6t
Xbit_r44_c22 bl_22 br_22 wl_44 vdd gnd cell_6t
Xbit_r45_c22 bl_22 br_22 wl_45 vdd gnd cell_6t
Xbit_r46_c22 bl_22 br_22 wl_46 vdd gnd cell_6t
Xbit_r47_c22 bl_22 br_22 wl_47 vdd gnd cell_6t
Xbit_r48_c22 bl_22 br_22 wl_48 vdd gnd cell_6t
Xbit_r49_c22 bl_22 br_22 wl_49 vdd gnd cell_6t
Xbit_r50_c22 bl_22 br_22 wl_50 vdd gnd cell_6t
Xbit_r51_c22 bl_22 br_22 wl_51 vdd gnd cell_6t
Xbit_r52_c22 bl_22 br_22 wl_52 vdd gnd cell_6t
Xbit_r53_c22 bl_22 br_22 wl_53 vdd gnd cell_6t
Xbit_r54_c22 bl_22 br_22 wl_54 vdd gnd cell_6t
Xbit_r55_c22 bl_22 br_22 wl_55 vdd gnd cell_6t
Xbit_r56_c22 bl_22 br_22 wl_56 vdd gnd cell_6t
Xbit_r57_c22 bl_22 br_22 wl_57 vdd gnd cell_6t
Xbit_r58_c22 bl_22 br_22 wl_58 vdd gnd cell_6t
Xbit_r59_c22 bl_22 br_22 wl_59 vdd gnd cell_6t
Xbit_r60_c22 bl_22 br_22 wl_60 vdd gnd cell_6t
Xbit_r61_c22 bl_22 br_22 wl_61 vdd gnd cell_6t
Xbit_r62_c22 bl_22 br_22 wl_62 vdd gnd cell_6t
Xbit_r63_c22 bl_22 br_22 wl_63 vdd gnd cell_6t
Xbit_r64_c22 bl_22 br_22 wl_64 vdd gnd cell_6t
Xbit_r65_c22 bl_22 br_22 wl_65 vdd gnd cell_6t
Xbit_r66_c22 bl_22 br_22 wl_66 vdd gnd cell_6t
Xbit_r67_c22 bl_22 br_22 wl_67 vdd gnd cell_6t
Xbit_r68_c22 bl_22 br_22 wl_68 vdd gnd cell_6t
Xbit_r69_c22 bl_22 br_22 wl_69 vdd gnd cell_6t
Xbit_r70_c22 bl_22 br_22 wl_70 vdd gnd cell_6t
Xbit_r71_c22 bl_22 br_22 wl_71 vdd gnd cell_6t
Xbit_r72_c22 bl_22 br_22 wl_72 vdd gnd cell_6t
Xbit_r73_c22 bl_22 br_22 wl_73 vdd gnd cell_6t
Xbit_r74_c22 bl_22 br_22 wl_74 vdd gnd cell_6t
Xbit_r75_c22 bl_22 br_22 wl_75 vdd gnd cell_6t
Xbit_r76_c22 bl_22 br_22 wl_76 vdd gnd cell_6t
Xbit_r77_c22 bl_22 br_22 wl_77 vdd gnd cell_6t
Xbit_r78_c22 bl_22 br_22 wl_78 vdd gnd cell_6t
Xbit_r79_c22 bl_22 br_22 wl_79 vdd gnd cell_6t
Xbit_r80_c22 bl_22 br_22 wl_80 vdd gnd cell_6t
Xbit_r81_c22 bl_22 br_22 wl_81 vdd gnd cell_6t
Xbit_r82_c22 bl_22 br_22 wl_82 vdd gnd cell_6t
Xbit_r83_c22 bl_22 br_22 wl_83 vdd gnd cell_6t
Xbit_r84_c22 bl_22 br_22 wl_84 vdd gnd cell_6t
Xbit_r85_c22 bl_22 br_22 wl_85 vdd gnd cell_6t
Xbit_r86_c22 bl_22 br_22 wl_86 vdd gnd cell_6t
Xbit_r87_c22 bl_22 br_22 wl_87 vdd gnd cell_6t
Xbit_r88_c22 bl_22 br_22 wl_88 vdd gnd cell_6t
Xbit_r89_c22 bl_22 br_22 wl_89 vdd gnd cell_6t
Xbit_r90_c22 bl_22 br_22 wl_90 vdd gnd cell_6t
Xbit_r91_c22 bl_22 br_22 wl_91 vdd gnd cell_6t
Xbit_r92_c22 bl_22 br_22 wl_92 vdd gnd cell_6t
Xbit_r93_c22 bl_22 br_22 wl_93 vdd gnd cell_6t
Xbit_r94_c22 bl_22 br_22 wl_94 vdd gnd cell_6t
Xbit_r95_c22 bl_22 br_22 wl_95 vdd gnd cell_6t
Xbit_r96_c22 bl_22 br_22 wl_96 vdd gnd cell_6t
Xbit_r97_c22 bl_22 br_22 wl_97 vdd gnd cell_6t
Xbit_r98_c22 bl_22 br_22 wl_98 vdd gnd cell_6t
Xbit_r99_c22 bl_22 br_22 wl_99 vdd gnd cell_6t
Xbit_r100_c22 bl_22 br_22 wl_100 vdd gnd cell_6t
Xbit_r101_c22 bl_22 br_22 wl_101 vdd gnd cell_6t
Xbit_r102_c22 bl_22 br_22 wl_102 vdd gnd cell_6t
Xbit_r103_c22 bl_22 br_22 wl_103 vdd gnd cell_6t
Xbit_r104_c22 bl_22 br_22 wl_104 vdd gnd cell_6t
Xbit_r105_c22 bl_22 br_22 wl_105 vdd gnd cell_6t
Xbit_r106_c22 bl_22 br_22 wl_106 vdd gnd cell_6t
Xbit_r107_c22 bl_22 br_22 wl_107 vdd gnd cell_6t
Xbit_r108_c22 bl_22 br_22 wl_108 vdd gnd cell_6t
Xbit_r109_c22 bl_22 br_22 wl_109 vdd gnd cell_6t
Xbit_r110_c22 bl_22 br_22 wl_110 vdd gnd cell_6t
Xbit_r111_c22 bl_22 br_22 wl_111 vdd gnd cell_6t
Xbit_r112_c22 bl_22 br_22 wl_112 vdd gnd cell_6t
Xbit_r113_c22 bl_22 br_22 wl_113 vdd gnd cell_6t
Xbit_r114_c22 bl_22 br_22 wl_114 vdd gnd cell_6t
Xbit_r115_c22 bl_22 br_22 wl_115 vdd gnd cell_6t
Xbit_r116_c22 bl_22 br_22 wl_116 vdd gnd cell_6t
Xbit_r117_c22 bl_22 br_22 wl_117 vdd gnd cell_6t
Xbit_r118_c22 bl_22 br_22 wl_118 vdd gnd cell_6t
Xbit_r119_c22 bl_22 br_22 wl_119 vdd gnd cell_6t
Xbit_r120_c22 bl_22 br_22 wl_120 vdd gnd cell_6t
Xbit_r121_c22 bl_22 br_22 wl_121 vdd gnd cell_6t
Xbit_r122_c22 bl_22 br_22 wl_122 vdd gnd cell_6t
Xbit_r123_c22 bl_22 br_22 wl_123 vdd gnd cell_6t
Xbit_r124_c22 bl_22 br_22 wl_124 vdd gnd cell_6t
Xbit_r125_c22 bl_22 br_22 wl_125 vdd gnd cell_6t
Xbit_r126_c22 bl_22 br_22 wl_126 vdd gnd cell_6t
Xbit_r127_c22 bl_22 br_22 wl_127 vdd gnd cell_6t
Xbit_r0_c23 bl_23 br_23 wl_0 vdd gnd cell_6t
Xbit_r1_c23 bl_23 br_23 wl_1 vdd gnd cell_6t
Xbit_r2_c23 bl_23 br_23 wl_2 vdd gnd cell_6t
Xbit_r3_c23 bl_23 br_23 wl_3 vdd gnd cell_6t
Xbit_r4_c23 bl_23 br_23 wl_4 vdd gnd cell_6t
Xbit_r5_c23 bl_23 br_23 wl_5 vdd gnd cell_6t
Xbit_r6_c23 bl_23 br_23 wl_6 vdd gnd cell_6t
Xbit_r7_c23 bl_23 br_23 wl_7 vdd gnd cell_6t
Xbit_r8_c23 bl_23 br_23 wl_8 vdd gnd cell_6t
Xbit_r9_c23 bl_23 br_23 wl_9 vdd gnd cell_6t
Xbit_r10_c23 bl_23 br_23 wl_10 vdd gnd cell_6t
Xbit_r11_c23 bl_23 br_23 wl_11 vdd gnd cell_6t
Xbit_r12_c23 bl_23 br_23 wl_12 vdd gnd cell_6t
Xbit_r13_c23 bl_23 br_23 wl_13 vdd gnd cell_6t
Xbit_r14_c23 bl_23 br_23 wl_14 vdd gnd cell_6t
Xbit_r15_c23 bl_23 br_23 wl_15 vdd gnd cell_6t
Xbit_r16_c23 bl_23 br_23 wl_16 vdd gnd cell_6t
Xbit_r17_c23 bl_23 br_23 wl_17 vdd gnd cell_6t
Xbit_r18_c23 bl_23 br_23 wl_18 vdd gnd cell_6t
Xbit_r19_c23 bl_23 br_23 wl_19 vdd gnd cell_6t
Xbit_r20_c23 bl_23 br_23 wl_20 vdd gnd cell_6t
Xbit_r21_c23 bl_23 br_23 wl_21 vdd gnd cell_6t
Xbit_r22_c23 bl_23 br_23 wl_22 vdd gnd cell_6t
Xbit_r23_c23 bl_23 br_23 wl_23 vdd gnd cell_6t
Xbit_r24_c23 bl_23 br_23 wl_24 vdd gnd cell_6t
Xbit_r25_c23 bl_23 br_23 wl_25 vdd gnd cell_6t
Xbit_r26_c23 bl_23 br_23 wl_26 vdd gnd cell_6t
Xbit_r27_c23 bl_23 br_23 wl_27 vdd gnd cell_6t
Xbit_r28_c23 bl_23 br_23 wl_28 vdd gnd cell_6t
Xbit_r29_c23 bl_23 br_23 wl_29 vdd gnd cell_6t
Xbit_r30_c23 bl_23 br_23 wl_30 vdd gnd cell_6t
Xbit_r31_c23 bl_23 br_23 wl_31 vdd gnd cell_6t
Xbit_r32_c23 bl_23 br_23 wl_32 vdd gnd cell_6t
Xbit_r33_c23 bl_23 br_23 wl_33 vdd gnd cell_6t
Xbit_r34_c23 bl_23 br_23 wl_34 vdd gnd cell_6t
Xbit_r35_c23 bl_23 br_23 wl_35 vdd gnd cell_6t
Xbit_r36_c23 bl_23 br_23 wl_36 vdd gnd cell_6t
Xbit_r37_c23 bl_23 br_23 wl_37 vdd gnd cell_6t
Xbit_r38_c23 bl_23 br_23 wl_38 vdd gnd cell_6t
Xbit_r39_c23 bl_23 br_23 wl_39 vdd gnd cell_6t
Xbit_r40_c23 bl_23 br_23 wl_40 vdd gnd cell_6t
Xbit_r41_c23 bl_23 br_23 wl_41 vdd gnd cell_6t
Xbit_r42_c23 bl_23 br_23 wl_42 vdd gnd cell_6t
Xbit_r43_c23 bl_23 br_23 wl_43 vdd gnd cell_6t
Xbit_r44_c23 bl_23 br_23 wl_44 vdd gnd cell_6t
Xbit_r45_c23 bl_23 br_23 wl_45 vdd gnd cell_6t
Xbit_r46_c23 bl_23 br_23 wl_46 vdd gnd cell_6t
Xbit_r47_c23 bl_23 br_23 wl_47 vdd gnd cell_6t
Xbit_r48_c23 bl_23 br_23 wl_48 vdd gnd cell_6t
Xbit_r49_c23 bl_23 br_23 wl_49 vdd gnd cell_6t
Xbit_r50_c23 bl_23 br_23 wl_50 vdd gnd cell_6t
Xbit_r51_c23 bl_23 br_23 wl_51 vdd gnd cell_6t
Xbit_r52_c23 bl_23 br_23 wl_52 vdd gnd cell_6t
Xbit_r53_c23 bl_23 br_23 wl_53 vdd gnd cell_6t
Xbit_r54_c23 bl_23 br_23 wl_54 vdd gnd cell_6t
Xbit_r55_c23 bl_23 br_23 wl_55 vdd gnd cell_6t
Xbit_r56_c23 bl_23 br_23 wl_56 vdd gnd cell_6t
Xbit_r57_c23 bl_23 br_23 wl_57 vdd gnd cell_6t
Xbit_r58_c23 bl_23 br_23 wl_58 vdd gnd cell_6t
Xbit_r59_c23 bl_23 br_23 wl_59 vdd gnd cell_6t
Xbit_r60_c23 bl_23 br_23 wl_60 vdd gnd cell_6t
Xbit_r61_c23 bl_23 br_23 wl_61 vdd gnd cell_6t
Xbit_r62_c23 bl_23 br_23 wl_62 vdd gnd cell_6t
Xbit_r63_c23 bl_23 br_23 wl_63 vdd gnd cell_6t
Xbit_r64_c23 bl_23 br_23 wl_64 vdd gnd cell_6t
Xbit_r65_c23 bl_23 br_23 wl_65 vdd gnd cell_6t
Xbit_r66_c23 bl_23 br_23 wl_66 vdd gnd cell_6t
Xbit_r67_c23 bl_23 br_23 wl_67 vdd gnd cell_6t
Xbit_r68_c23 bl_23 br_23 wl_68 vdd gnd cell_6t
Xbit_r69_c23 bl_23 br_23 wl_69 vdd gnd cell_6t
Xbit_r70_c23 bl_23 br_23 wl_70 vdd gnd cell_6t
Xbit_r71_c23 bl_23 br_23 wl_71 vdd gnd cell_6t
Xbit_r72_c23 bl_23 br_23 wl_72 vdd gnd cell_6t
Xbit_r73_c23 bl_23 br_23 wl_73 vdd gnd cell_6t
Xbit_r74_c23 bl_23 br_23 wl_74 vdd gnd cell_6t
Xbit_r75_c23 bl_23 br_23 wl_75 vdd gnd cell_6t
Xbit_r76_c23 bl_23 br_23 wl_76 vdd gnd cell_6t
Xbit_r77_c23 bl_23 br_23 wl_77 vdd gnd cell_6t
Xbit_r78_c23 bl_23 br_23 wl_78 vdd gnd cell_6t
Xbit_r79_c23 bl_23 br_23 wl_79 vdd gnd cell_6t
Xbit_r80_c23 bl_23 br_23 wl_80 vdd gnd cell_6t
Xbit_r81_c23 bl_23 br_23 wl_81 vdd gnd cell_6t
Xbit_r82_c23 bl_23 br_23 wl_82 vdd gnd cell_6t
Xbit_r83_c23 bl_23 br_23 wl_83 vdd gnd cell_6t
Xbit_r84_c23 bl_23 br_23 wl_84 vdd gnd cell_6t
Xbit_r85_c23 bl_23 br_23 wl_85 vdd gnd cell_6t
Xbit_r86_c23 bl_23 br_23 wl_86 vdd gnd cell_6t
Xbit_r87_c23 bl_23 br_23 wl_87 vdd gnd cell_6t
Xbit_r88_c23 bl_23 br_23 wl_88 vdd gnd cell_6t
Xbit_r89_c23 bl_23 br_23 wl_89 vdd gnd cell_6t
Xbit_r90_c23 bl_23 br_23 wl_90 vdd gnd cell_6t
Xbit_r91_c23 bl_23 br_23 wl_91 vdd gnd cell_6t
Xbit_r92_c23 bl_23 br_23 wl_92 vdd gnd cell_6t
Xbit_r93_c23 bl_23 br_23 wl_93 vdd gnd cell_6t
Xbit_r94_c23 bl_23 br_23 wl_94 vdd gnd cell_6t
Xbit_r95_c23 bl_23 br_23 wl_95 vdd gnd cell_6t
Xbit_r96_c23 bl_23 br_23 wl_96 vdd gnd cell_6t
Xbit_r97_c23 bl_23 br_23 wl_97 vdd gnd cell_6t
Xbit_r98_c23 bl_23 br_23 wl_98 vdd gnd cell_6t
Xbit_r99_c23 bl_23 br_23 wl_99 vdd gnd cell_6t
Xbit_r100_c23 bl_23 br_23 wl_100 vdd gnd cell_6t
Xbit_r101_c23 bl_23 br_23 wl_101 vdd gnd cell_6t
Xbit_r102_c23 bl_23 br_23 wl_102 vdd gnd cell_6t
Xbit_r103_c23 bl_23 br_23 wl_103 vdd gnd cell_6t
Xbit_r104_c23 bl_23 br_23 wl_104 vdd gnd cell_6t
Xbit_r105_c23 bl_23 br_23 wl_105 vdd gnd cell_6t
Xbit_r106_c23 bl_23 br_23 wl_106 vdd gnd cell_6t
Xbit_r107_c23 bl_23 br_23 wl_107 vdd gnd cell_6t
Xbit_r108_c23 bl_23 br_23 wl_108 vdd gnd cell_6t
Xbit_r109_c23 bl_23 br_23 wl_109 vdd gnd cell_6t
Xbit_r110_c23 bl_23 br_23 wl_110 vdd gnd cell_6t
Xbit_r111_c23 bl_23 br_23 wl_111 vdd gnd cell_6t
Xbit_r112_c23 bl_23 br_23 wl_112 vdd gnd cell_6t
Xbit_r113_c23 bl_23 br_23 wl_113 vdd gnd cell_6t
Xbit_r114_c23 bl_23 br_23 wl_114 vdd gnd cell_6t
Xbit_r115_c23 bl_23 br_23 wl_115 vdd gnd cell_6t
Xbit_r116_c23 bl_23 br_23 wl_116 vdd gnd cell_6t
Xbit_r117_c23 bl_23 br_23 wl_117 vdd gnd cell_6t
Xbit_r118_c23 bl_23 br_23 wl_118 vdd gnd cell_6t
Xbit_r119_c23 bl_23 br_23 wl_119 vdd gnd cell_6t
Xbit_r120_c23 bl_23 br_23 wl_120 vdd gnd cell_6t
Xbit_r121_c23 bl_23 br_23 wl_121 vdd gnd cell_6t
Xbit_r122_c23 bl_23 br_23 wl_122 vdd gnd cell_6t
Xbit_r123_c23 bl_23 br_23 wl_123 vdd gnd cell_6t
Xbit_r124_c23 bl_23 br_23 wl_124 vdd gnd cell_6t
Xbit_r125_c23 bl_23 br_23 wl_125 vdd gnd cell_6t
Xbit_r126_c23 bl_23 br_23 wl_126 vdd gnd cell_6t
Xbit_r127_c23 bl_23 br_23 wl_127 vdd gnd cell_6t
Xbit_r0_c24 bl_24 br_24 wl_0 vdd gnd cell_6t
Xbit_r1_c24 bl_24 br_24 wl_1 vdd gnd cell_6t
Xbit_r2_c24 bl_24 br_24 wl_2 vdd gnd cell_6t
Xbit_r3_c24 bl_24 br_24 wl_3 vdd gnd cell_6t
Xbit_r4_c24 bl_24 br_24 wl_4 vdd gnd cell_6t
Xbit_r5_c24 bl_24 br_24 wl_5 vdd gnd cell_6t
Xbit_r6_c24 bl_24 br_24 wl_6 vdd gnd cell_6t
Xbit_r7_c24 bl_24 br_24 wl_7 vdd gnd cell_6t
Xbit_r8_c24 bl_24 br_24 wl_8 vdd gnd cell_6t
Xbit_r9_c24 bl_24 br_24 wl_9 vdd gnd cell_6t
Xbit_r10_c24 bl_24 br_24 wl_10 vdd gnd cell_6t
Xbit_r11_c24 bl_24 br_24 wl_11 vdd gnd cell_6t
Xbit_r12_c24 bl_24 br_24 wl_12 vdd gnd cell_6t
Xbit_r13_c24 bl_24 br_24 wl_13 vdd gnd cell_6t
Xbit_r14_c24 bl_24 br_24 wl_14 vdd gnd cell_6t
Xbit_r15_c24 bl_24 br_24 wl_15 vdd gnd cell_6t
Xbit_r16_c24 bl_24 br_24 wl_16 vdd gnd cell_6t
Xbit_r17_c24 bl_24 br_24 wl_17 vdd gnd cell_6t
Xbit_r18_c24 bl_24 br_24 wl_18 vdd gnd cell_6t
Xbit_r19_c24 bl_24 br_24 wl_19 vdd gnd cell_6t
Xbit_r20_c24 bl_24 br_24 wl_20 vdd gnd cell_6t
Xbit_r21_c24 bl_24 br_24 wl_21 vdd gnd cell_6t
Xbit_r22_c24 bl_24 br_24 wl_22 vdd gnd cell_6t
Xbit_r23_c24 bl_24 br_24 wl_23 vdd gnd cell_6t
Xbit_r24_c24 bl_24 br_24 wl_24 vdd gnd cell_6t
Xbit_r25_c24 bl_24 br_24 wl_25 vdd gnd cell_6t
Xbit_r26_c24 bl_24 br_24 wl_26 vdd gnd cell_6t
Xbit_r27_c24 bl_24 br_24 wl_27 vdd gnd cell_6t
Xbit_r28_c24 bl_24 br_24 wl_28 vdd gnd cell_6t
Xbit_r29_c24 bl_24 br_24 wl_29 vdd gnd cell_6t
Xbit_r30_c24 bl_24 br_24 wl_30 vdd gnd cell_6t
Xbit_r31_c24 bl_24 br_24 wl_31 vdd gnd cell_6t
Xbit_r32_c24 bl_24 br_24 wl_32 vdd gnd cell_6t
Xbit_r33_c24 bl_24 br_24 wl_33 vdd gnd cell_6t
Xbit_r34_c24 bl_24 br_24 wl_34 vdd gnd cell_6t
Xbit_r35_c24 bl_24 br_24 wl_35 vdd gnd cell_6t
Xbit_r36_c24 bl_24 br_24 wl_36 vdd gnd cell_6t
Xbit_r37_c24 bl_24 br_24 wl_37 vdd gnd cell_6t
Xbit_r38_c24 bl_24 br_24 wl_38 vdd gnd cell_6t
Xbit_r39_c24 bl_24 br_24 wl_39 vdd gnd cell_6t
Xbit_r40_c24 bl_24 br_24 wl_40 vdd gnd cell_6t
Xbit_r41_c24 bl_24 br_24 wl_41 vdd gnd cell_6t
Xbit_r42_c24 bl_24 br_24 wl_42 vdd gnd cell_6t
Xbit_r43_c24 bl_24 br_24 wl_43 vdd gnd cell_6t
Xbit_r44_c24 bl_24 br_24 wl_44 vdd gnd cell_6t
Xbit_r45_c24 bl_24 br_24 wl_45 vdd gnd cell_6t
Xbit_r46_c24 bl_24 br_24 wl_46 vdd gnd cell_6t
Xbit_r47_c24 bl_24 br_24 wl_47 vdd gnd cell_6t
Xbit_r48_c24 bl_24 br_24 wl_48 vdd gnd cell_6t
Xbit_r49_c24 bl_24 br_24 wl_49 vdd gnd cell_6t
Xbit_r50_c24 bl_24 br_24 wl_50 vdd gnd cell_6t
Xbit_r51_c24 bl_24 br_24 wl_51 vdd gnd cell_6t
Xbit_r52_c24 bl_24 br_24 wl_52 vdd gnd cell_6t
Xbit_r53_c24 bl_24 br_24 wl_53 vdd gnd cell_6t
Xbit_r54_c24 bl_24 br_24 wl_54 vdd gnd cell_6t
Xbit_r55_c24 bl_24 br_24 wl_55 vdd gnd cell_6t
Xbit_r56_c24 bl_24 br_24 wl_56 vdd gnd cell_6t
Xbit_r57_c24 bl_24 br_24 wl_57 vdd gnd cell_6t
Xbit_r58_c24 bl_24 br_24 wl_58 vdd gnd cell_6t
Xbit_r59_c24 bl_24 br_24 wl_59 vdd gnd cell_6t
Xbit_r60_c24 bl_24 br_24 wl_60 vdd gnd cell_6t
Xbit_r61_c24 bl_24 br_24 wl_61 vdd gnd cell_6t
Xbit_r62_c24 bl_24 br_24 wl_62 vdd gnd cell_6t
Xbit_r63_c24 bl_24 br_24 wl_63 vdd gnd cell_6t
Xbit_r64_c24 bl_24 br_24 wl_64 vdd gnd cell_6t
Xbit_r65_c24 bl_24 br_24 wl_65 vdd gnd cell_6t
Xbit_r66_c24 bl_24 br_24 wl_66 vdd gnd cell_6t
Xbit_r67_c24 bl_24 br_24 wl_67 vdd gnd cell_6t
Xbit_r68_c24 bl_24 br_24 wl_68 vdd gnd cell_6t
Xbit_r69_c24 bl_24 br_24 wl_69 vdd gnd cell_6t
Xbit_r70_c24 bl_24 br_24 wl_70 vdd gnd cell_6t
Xbit_r71_c24 bl_24 br_24 wl_71 vdd gnd cell_6t
Xbit_r72_c24 bl_24 br_24 wl_72 vdd gnd cell_6t
Xbit_r73_c24 bl_24 br_24 wl_73 vdd gnd cell_6t
Xbit_r74_c24 bl_24 br_24 wl_74 vdd gnd cell_6t
Xbit_r75_c24 bl_24 br_24 wl_75 vdd gnd cell_6t
Xbit_r76_c24 bl_24 br_24 wl_76 vdd gnd cell_6t
Xbit_r77_c24 bl_24 br_24 wl_77 vdd gnd cell_6t
Xbit_r78_c24 bl_24 br_24 wl_78 vdd gnd cell_6t
Xbit_r79_c24 bl_24 br_24 wl_79 vdd gnd cell_6t
Xbit_r80_c24 bl_24 br_24 wl_80 vdd gnd cell_6t
Xbit_r81_c24 bl_24 br_24 wl_81 vdd gnd cell_6t
Xbit_r82_c24 bl_24 br_24 wl_82 vdd gnd cell_6t
Xbit_r83_c24 bl_24 br_24 wl_83 vdd gnd cell_6t
Xbit_r84_c24 bl_24 br_24 wl_84 vdd gnd cell_6t
Xbit_r85_c24 bl_24 br_24 wl_85 vdd gnd cell_6t
Xbit_r86_c24 bl_24 br_24 wl_86 vdd gnd cell_6t
Xbit_r87_c24 bl_24 br_24 wl_87 vdd gnd cell_6t
Xbit_r88_c24 bl_24 br_24 wl_88 vdd gnd cell_6t
Xbit_r89_c24 bl_24 br_24 wl_89 vdd gnd cell_6t
Xbit_r90_c24 bl_24 br_24 wl_90 vdd gnd cell_6t
Xbit_r91_c24 bl_24 br_24 wl_91 vdd gnd cell_6t
Xbit_r92_c24 bl_24 br_24 wl_92 vdd gnd cell_6t
Xbit_r93_c24 bl_24 br_24 wl_93 vdd gnd cell_6t
Xbit_r94_c24 bl_24 br_24 wl_94 vdd gnd cell_6t
Xbit_r95_c24 bl_24 br_24 wl_95 vdd gnd cell_6t
Xbit_r96_c24 bl_24 br_24 wl_96 vdd gnd cell_6t
Xbit_r97_c24 bl_24 br_24 wl_97 vdd gnd cell_6t
Xbit_r98_c24 bl_24 br_24 wl_98 vdd gnd cell_6t
Xbit_r99_c24 bl_24 br_24 wl_99 vdd gnd cell_6t
Xbit_r100_c24 bl_24 br_24 wl_100 vdd gnd cell_6t
Xbit_r101_c24 bl_24 br_24 wl_101 vdd gnd cell_6t
Xbit_r102_c24 bl_24 br_24 wl_102 vdd gnd cell_6t
Xbit_r103_c24 bl_24 br_24 wl_103 vdd gnd cell_6t
Xbit_r104_c24 bl_24 br_24 wl_104 vdd gnd cell_6t
Xbit_r105_c24 bl_24 br_24 wl_105 vdd gnd cell_6t
Xbit_r106_c24 bl_24 br_24 wl_106 vdd gnd cell_6t
Xbit_r107_c24 bl_24 br_24 wl_107 vdd gnd cell_6t
Xbit_r108_c24 bl_24 br_24 wl_108 vdd gnd cell_6t
Xbit_r109_c24 bl_24 br_24 wl_109 vdd gnd cell_6t
Xbit_r110_c24 bl_24 br_24 wl_110 vdd gnd cell_6t
Xbit_r111_c24 bl_24 br_24 wl_111 vdd gnd cell_6t
Xbit_r112_c24 bl_24 br_24 wl_112 vdd gnd cell_6t
Xbit_r113_c24 bl_24 br_24 wl_113 vdd gnd cell_6t
Xbit_r114_c24 bl_24 br_24 wl_114 vdd gnd cell_6t
Xbit_r115_c24 bl_24 br_24 wl_115 vdd gnd cell_6t
Xbit_r116_c24 bl_24 br_24 wl_116 vdd gnd cell_6t
Xbit_r117_c24 bl_24 br_24 wl_117 vdd gnd cell_6t
Xbit_r118_c24 bl_24 br_24 wl_118 vdd gnd cell_6t
Xbit_r119_c24 bl_24 br_24 wl_119 vdd gnd cell_6t
Xbit_r120_c24 bl_24 br_24 wl_120 vdd gnd cell_6t
Xbit_r121_c24 bl_24 br_24 wl_121 vdd gnd cell_6t
Xbit_r122_c24 bl_24 br_24 wl_122 vdd gnd cell_6t
Xbit_r123_c24 bl_24 br_24 wl_123 vdd gnd cell_6t
Xbit_r124_c24 bl_24 br_24 wl_124 vdd gnd cell_6t
Xbit_r125_c24 bl_24 br_24 wl_125 vdd gnd cell_6t
Xbit_r126_c24 bl_24 br_24 wl_126 vdd gnd cell_6t
Xbit_r127_c24 bl_24 br_24 wl_127 vdd gnd cell_6t
Xbit_r0_c25 bl_25 br_25 wl_0 vdd gnd cell_6t
Xbit_r1_c25 bl_25 br_25 wl_1 vdd gnd cell_6t
Xbit_r2_c25 bl_25 br_25 wl_2 vdd gnd cell_6t
Xbit_r3_c25 bl_25 br_25 wl_3 vdd gnd cell_6t
Xbit_r4_c25 bl_25 br_25 wl_4 vdd gnd cell_6t
Xbit_r5_c25 bl_25 br_25 wl_5 vdd gnd cell_6t
Xbit_r6_c25 bl_25 br_25 wl_6 vdd gnd cell_6t
Xbit_r7_c25 bl_25 br_25 wl_7 vdd gnd cell_6t
Xbit_r8_c25 bl_25 br_25 wl_8 vdd gnd cell_6t
Xbit_r9_c25 bl_25 br_25 wl_9 vdd gnd cell_6t
Xbit_r10_c25 bl_25 br_25 wl_10 vdd gnd cell_6t
Xbit_r11_c25 bl_25 br_25 wl_11 vdd gnd cell_6t
Xbit_r12_c25 bl_25 br_25 wl_12 vdd gnd cell_6t
Xbit_r13_c25 bl_25 br_25 wl_13 vdd gnd cell_6t
Xbit_r14_c25 bl_25 br_25 wl_14 vdd gnd cell_6t
Xbit_r15_c25 bl_25 br_25 wl_15 vdd gnd cell_6t
Xbit_r16_c25 bl_25 br_25 wl_16 vdd gnd cell_6t
Xbit_r17_c25 bl_25 br_25 wl_17 vdd gnd cell_6t
Xbit_r18_c25 bl_25 br_25 wl_18 vdd gnd cell_6t
Xbit_r19_c25 bl_25 br_25 wl_19 vdd gnd cell_6t
Xbit_r20_c25 bl_25 br_25 wl_20 vdd gnd cell_6t
Xbit_r21_c25 bl_25 br_25 wl_21 vdd gnd cell_6t
Xbit_r22_c25 bl_25 br_25 wl_22 vdd gnd cell_6t
Xbit_r23_c25 bl_25 br_25 wl_23 vdd gnd cell_6t
Xbit_r24_c25 bl_25 br_25 wl_24 vdd gnd cell_6t
Xbit_r25_c25 bl_25 br_25 wl_25 vdd gnd cell_6t
Xbit_r26_c25 bl_25 br_25 wl_26 vdd gnd cell_6t
Xbit_r27_c25 bl_25 br_25 wl_27 vdd gnd cell_6t
Xbit_r28_c25 bl_25 br_25 wl_28 vdd gnd cell_6t
Xbit_r29_c25 bl_25 br_25 wl_29 vdd gnd cell_6t
Xbit_r30_c25 bl_25 br_25 wl_30 vdd gnd cell_6t
Xbit_r31_c25 bl_25 br_25 wl_31 vdd gnd cell_6t
Xbit_r32_c25 bl_25 br_25 wl_32 vdd gnd cell_6t
Xbit_r33_c25 bl_25 br_25 wl_33 vdd gnd cell_6t
Xbit_r34_c25 bl_25 br_25 wl_34 vdd gnd cell_6t
Xbit_r35_c25 bl_25 br_25 wl_35 vdd gnd cell_6t
Xbit_r36_c25 bl_25 br_25 wl_36 vdd gnd cell_6t
Xbit_r37_c25 bl_25 br_25 wl_37 vdd gnd cell_6t
Xbit_r38_c25 bl_25 br_25 wl_38 vdd gnd cell_6t
Xbit_r39_c25 bl_25 br_25 wl_39 vdd gnd cell_6t
Xbit_r40_c25 bl_25 br_25 wl_40 vdd gnd cell_6t
Xbit_r41_c25 bl_25 br_25 wl_41 vdd gnd cell_6t
Xbit_r42_c25 bl_25 br_25 wl_42 vdd gnd cell_6t
Xbit_r43_c25 bl_25 br_25 wl_43 vdd gnd cell_6t
Xbit_r44_c25 bl_25 br_25 wl_44 vdd gnd cell_6t
Xbit_r45_c25 bl_25 br_25 wl_45 vdd gnd cell_6t
Xbit_r46_c25 bl_25 br_25 wl_46 vdd gnd cell_6t
Xbit_r47_c25 bl_25 br_25 wl_47 vdd gnd cell_6t
Xbit_r48_c25 bl_25 br_25 wl_48 vdd gnd cell_6t
Xbit_r49_c25 bl_25 br_25 wl_49 vdd gnd cell_6t
Xbit_r50_c25 bl_25 br_25 wl_50 vdd gnd cell_6t
Xbit_r51_c25 bl_25 br_25 wl_51 vdd gnd cell_6t
Xbit_r52_c25 bl_25 br_25 wl_52 vdd gnd cell_6t
Xbit_r53_c25 bl_25 br_25 wl_53 vdd gnd cell_6t
Xbit_r54_c25 bl_25 br_25 wl_54 vdd gnd cell_6t
Xbit_r55_c25 bl_25 br_25 wl_55 vdd gnd cell_6t
Xbit_r56_c25 bl_25 br_25 wl_56 vdd gnd cell_6t
Xbit_r57_c25 bl_25 br_25 wl_57 vdd gnd cell_6t
Xbit_r58_c25 bl_25 br_25 wl_58 vdd gnd cell_6t
Xbit_r59_c25 bl_25 br_25 wl_59 vdd gnd cell_6t
Xbit_r60_c25 bl_25 br_25 wl_60 vdd gnd cell_6t
Xbit_r61_c25 bl_25 br_25 wl_61 vdd gnd cell_6t
Xbit_r62_c25 bl_25 br_25 wl_62 vdd gnd cell_6t
Xbit_r63_c25 bl_25 br_25 wl_63 vdd gnd cell_6t
Xbit_r64_c25 bl_25 br_25 wl_64 vdd gnd cell_6t
Xbit_r65_c25 bl_25 br_25 wl_65 vdd gnd cell_6t
Xbit_r66_c25 bl_25 br_25 wl_66 vdd gnd cell_6t
Xbit_r67_c25 bl_25 br_25 wl_67 vdd gnd cell_6t
Xbit_r68_c25 bl_25 br_25 wl_68 vdd gnd cell_6t
Xbit_r69_c25 bl_25 br_25 wl_69 vdd gnd cell_6t
Xbit_r70_c25 bl_25 br_25 wl_70 vdd gnd cell_6t
Xbit_r71_c25 bl_25 br_25 wl_71 vdd gnd cell_6t
Xbit_r72_c25 bl_25 br_25 wl_72 vdd gnd cell_6t
Xbit_r73_c25 bl_25 br_25 wl_73 vdd gnd cell_6t
Xbit_r74_c25 bl_25 br_25 wl_74 vdd gnd cell_6t
Xbit_r75_c25 bl_25 br_25 wl_75 vdd gnd cell_6t
Xbit_r76_c25 bl_25 br_25 wl_76 vdd gnd cell_6t
Xbit_r77_c25 bl_25 br_25 wl_77 vdd gnd cell_6t
Xbit_r78_c25 bl_25 br_25 wl_78 vdd gnd cell_6t
Xbit_r79_c25 bl_25 br_25 wl_79 vdd gnd cell_6t
Xbit_r80_c25 bl_25 br_25 wl_80 vdd gnd cell_6t
Xbit_r81_c25 bl_25 br_25 wl_81 vdd gnd cell_6t
Xbit_r82_c25 bl_25 br_25 wl_82 vdd gnd cell_6t
Xbit_r83_c25 bl_25 br_25 wl_83 vdd gnd cell_6t
Xbit_r84_c25 bl_25 br_25 wl_84 vdd gnd cell_6t
Xbit_r85_c25 bl_25 br_25 wl_85 vdd gnd cell_6t
Xbit_r86_c25 bl_25 br_25 wl_86 vdd gnd cell_6t
Xbit_r87_c25 bl_25 br_25 wl_87 vdd gnd cell_6t
Xbit_r88_c25 bl_25 br_25 wl_88 vdd gnd cell_6t
Xbit_r89_c25 bl_25 br_25 wl_89 vdd gnd cell_6t
Xbit_r90_c25 bl_25 br_25 wl_90 vdd gnd cell_6t
Xbit_r91_c25 bl_25 br_25 wl_91 vdd gnd cell_6t
Xbit_r92_c25 bl_25 br_25 wl_92 vdd gnd cell_6t
Xbit_r93_c25 bl_25 br_25 wl_93 vdd gnd cell_6t
Xbit_r94_c25 bl_25 br_25 wl_94 vdd gnd cell_6t
Xbit_r95_c25 bl_25 br_25 wl_95 vdd gnd cell_6t
Xbit_r96_c25 bl_25 br_25 wl_96 vdd gnd cell_6t
Xbit_r97_c25 bl_25 br_25 wl_97 vdd gnd cell_6t
Xbit_r98_c25 bl_25 br_25 wl_98 vdd gnd cell_6t
Xbit_r99_c25 bl_25 br_25 wl_99 vdd gnd cell_6t
Xbit_r100_c25 bl_25 br_25 wl_100 vdd gnd cell_6t
Xbit_r101_c25 bl_25 br_25 wl_101 vdd gnd cell_6t
Xbit_r102_c25 bl_25 br_25 wl_102 vdd gnd cell_6t
Xbit_r103_c25 bl_25 br_25 wl_103 vdd gnd cell_6t
Xbit_r104_c25 bl_25 br_25 wl_104 vdd gnd cell_6t
Xbit_r105_c25 bl_25 br_25 wl_105 vdd gnd cell_6t
Xbit_r106_c25 bl_25 br_25 wl_106 vdd gnd cell_6t
Xbit_r107_c25 bl_25 br_25 wl_107 vdd gnd cell_6t
Xbit_r108_c25 bl_25 br_25 wl_108 vdd gnd cell_6t
Xbit_r109_c25 bl_25 br_25 wl_109 vdd gnd cell_6t
Xbit_r110_c25 bl_25 br_25 wl_110 vdd gnd cell_6t
Xbit_r111_c25 bl_25 br_25 wl_111 vdd gnd cell_6t
Xbit_r112_c25 bl_25 br_25 wl_112 vdd gnd cell_6t
Xbit_r113_c25 bl_25 br_25 wl_113 vdd gnd cell_6t
Xbit_r114_c25 bl_25 br_25 wl_114 vdd gnd cell_6t
Xbit_r115_c25 bl_25 br_25 wl_115 vdd gnd cell_6t
Xbit_r116_c25 bl_25 br_25 wl_116 vdd gnd cell_6t
Xbit_r117_c25 bl_25 br_25 wl_117 vdd gnd cell_6t
Xbit_r118_c25 bl_25 br_25 wl_118 vdd gnd cell_6t
Xbit_r119_c25 bl_25 br_25 wl_119 vdd gnd cell_6t
Xbit_r120_c25 bl_25 br_25 wl_120 vdd gnd cell_6t
Xbit_r121_c25 bl_25 br_25 wl_121 vdd gnd cell_6t
Xbit_r122_c25 bl_25 br_25 wl_122 vdd gnd cell_6t
Xbit_r123_c25 bl_25 br_25 wl_123 vdd gnd cell_6t
Xbit_r124_c25 bl_25 br_25 wl_124 vdd gnd cell_6t
Xbit_r125_c25 bl_25 br_25 wl_125 vdd gnd cell_6t
Xbit_r126_c25 bl_25 br_25 wl_126 vdd gnd cell_6t
Xbit_r127_c25 bl_25 br_25 wl_127 vdd gnd cell_6t
Xbit_r0_c26 bl_26 br_26 wl_0 vdd gnd cell_6t
Xbit_r1_c26 bl_26 br_26 wl_1 vdd gnd cell_6t
Xbit_r2_c26 bl_26 br_26 wl_2 vdd gnd cell_6t
Xbit_r3_c26 bl_26 br_26 wl_3 vdd gnd cell_6t
Xbit_r4_c26 bl_26 br_26 wl_4 vdd gnd cell_6t
Xbit_r5_c26 bl_26 br_26 wl_5 vdd gnd cell_6t
Xbit_r6_c26 bl_26 br_26 wl_6 vdd gnd cell_6t
Xbit_r7_c26 bl_26 br_26 wl_7 vdd gnd cell_6t
Xbit_r8_c26 bl_26 br_26 wl_8 vdd gnd cell_6t
Xbit_r9_c26 bl_26 br_26 wl_9 vdd gnd cell_6t
Xbit_r10_c26 bl_26 br_26 wl_10 vdd gnd cell_6t
Xbit_r11_c26 bl_26 br_26 wl_11 vdd gnd cell_6t
Xbit_r12_c26 bl_26 br_26 wl_12 vdd gnd cell_6t
Xbit_r13_c26 bl_26 br_26 wl_13 vdd gnd cell_6t
Xbit_r14_c26 bl_26 br_26 wl_14 vdd gnd cell_6t
Xbit_r15_c26 bl_26 br_26 wl_15 vdd gnd cell_6t
Xbit_r16_c26 bl_26 br_26 wl_16 vdd gnd cell_6t
Xbit_r17_c26 bl_26 br_26 wl_17 vdd gnd cell_6t
Xbit_r18_c26 bl_26 br_26 wl_18 vdd gnd cell_6t
Xbit_r19_c26 bl_26 br_26 wl_19 vdd gnd cell_6t
Xbit_r20_c26 bl_26 br_26 wl_20 vdd gnd cell_6t
Xbit_r21_c26 bl_26 br_26 wl_21 vdd gnd cell_6t
Xbit_r22_c26 bl_26 br_26 wl_22 vdd gnd cell_6t
Xbit_r23_c26 bl_26 br_26 wl_23 vdd gnd cell_6t
Xbit_r24_c26 bl_26 br_26 wl_24 vdd gnd cell_6t
Xbit_r25_c26 bl_26 br_26 wl_25 vdd gnd cell_6t
Xbit_r26_c26 bl_26 br_26 wl_26 vdd gnd cell_6t
Xbit_r27_c26 bl_26 br_26 wl_27 vdd gnd cell_6t
Xbit_r28_c26 bl_26 br_26 wl_28 vdd gnd cell_6t
Xbit_r29_c26 bl_26 br_26 wl_29 vdd gnd cell_6t
Xbit_r30_c26 bl_26 br_26 wl_30 vdd gnd cell_6t
Xbit_r31_c26 bl_26 br_26 wl_31 vdd gnd cell_6t
Xbit_r32_c26 bl_26 br_26 wl_32 vdd gnd cell_6t
Xbit_r33_c26 bl_26 br_26 wl_33 vdd gnd cell_6t
Xbit_r34_c26 bl_26 br_26 wl_34 vdd gnd cell_6t
Xbit_r35_c26 bl_26 br_26 wl_35 vdd gnd cell_6t
Xbit_r36_c26 bl_26 br_26 wl_36 vdd gnd cell_6t
Xbit_r37_c26 bl_26 br_26 wl_37 vdd gnd cell_6t
Xbit_r38_c26 bl_26 br_26 wl_38 vdd gnd cell_6t
Xbit_r39_c26 bl_26 br_26 wl_39 vdd gnd cell_6t
Xbit_r40_c26 bl_26 br_26 wl_40 vdd gnd cell_6t
Xbit_r41_c26 bl_26 br_26 wl_41 vdd gnd cell_6t
Xbit_r42_c26 bl_26 br_26 wl_42 vdd gnd cell_6t
Xbit_r43_c26 bl_26 br_26 wl_43 vdd gnd cell_6t
Xbit_r44_c26 bl_26 br_26 wl_44 vdd gnd cell_6t
Xbit_r45_c26 bl_26 br_26 wl_45 vdd gnd cell_6t
Xbit_r46_c26 bl_26 br_26 wl_46 vdd gnd cell_6t
Xbit_r47_c26 bl_26 br_26 wl_47 vdd gnd cell_6t
Xbit_r48_c26 bl_26 br_26 wl_48 vdd gnd cell_6t
Xbit_r49_c26 bl_26 br_26 wl_49 vdd gnd cell_6t
Xbit_r50_c26 bl_26 br_26 wl_50 vdd gnd cell_6t
Xbit_r51_c26 bl_26 br_26 wl_51 vdd gnd cell_6t
Xbit_r52_c26 bl_26 br_26 wl_52 vdd gnd cell_6t
Xbit_r53_c26 bl_26 br_26 wl_53 vdd gnd cell_6t
Xbit_r54_c26 bl_26 br_26 wl_54 vdd gnd cell_6t
Xbit_r55_c26 bl_26 br_26 wl_55 vdd gnd cell_6t
Xbit_r56_c26 bl_26 br_26 wl_56 vdd gnd cell_6t
Xbit_r57_c26 bl_26 br_26 wl_57 vdd gnd cell_6t
Xbit_r58_c26 bl_26 br_26 wl_58 vdd gnd cell_6t
Xbit_r59_c26 bl_26 br_26 wl_59 vdd gnd cell_6t
Xbit_r60_c26 bl_26 br_26 wl_60 vdd gnd cell_6t
Xbit_r61_c26 bl_26 br_26 wl_61 vdd gnd cell_6t
Xbit_r62_c26 bl_26 br_26 wl_62 vdd gnd cell_6t
Xbit_r63_c26 bl_26 br_26 wl_63 vdd gnd cell_6t
Xbit_r64_c26 bl_26 br_26 wl_64 vdd gnd cell_6t
Xbit_r65_c26 bl_26 br_26 wl_65 vdd gnd cell_6t
Xbit_r66_c26 bl_26 br_26 wl_66 vdd gnd cell_6t
Xbit_r67_c26 bl_26 br_26 wl_67 vdd gnd cell_6t
Xbit_r68_c26 bl_26 br_26 wl_68 vdd gnd cell_6t
Xbit_r69_c26 bl_26 br_26 wl_69 vdd gnd cell_6t
Xbit_r70_c26 bl_26 br_26 wl_70 vdd gnd cell_6t
Xbit_r71_c26 bl_26 br_26 wl_71 vdd gnd cell_6t
Xbit_r72_c26 bl_26 br_26 wl_72 vdd gnd cell_6t
Xbit_r73_c26 bl_26 br_26 wl_73 vdd gnd cell_6t
Xbit_r74_c26 bl_26 br_26 wl_74 vdd gnd cell_6t
Xbit_r75_c26 bl_26 br_26 wl_75 vdd gnd cell_6t
Xbit_r76_c26 bl_26 br_26 wl_76 vdd gnd cell_6t
Xbit_r77_c26 bl_26 br_26 wl_77 vdd gnd cell_6t
Xbit_r78_c26 bl_26 br_26 wl_78 vdd gnd cell_6t
Xbit_r79_c26 bl_26 br_26 wl_79 vdd gnd cell_6t
Xbit_r80_c26 bl_26 br_26 wl_80 vdd gnd cell_6t
Xbit_r81_c26 bl_26 br_26 wl_81 vdd gnd cell_6t
Xbit_r82_c26 bl_26 br_26 wl_82 vdd gnd cell_6t
Xbit_r83_c26 bl_26 br_26 wl_83 vdd gnd cell_6t
Xbit_r84_c26 bl_26 br_26 wl_84 vdd gnd cell_6t
Xbit_r85_c26 bl_26 br_26 wl_85 vdd gnd cell_6t
Xbit_r86_c26 bl_26 br_26 wl_86 vdd gnd cell_6t
Xbit_r87_c26 bl_26 br_26 wl_87 vdd gnd cell_6t
Xbit_r88_c26 bl_26 br_26 wl_88 vdd gnd cell_6t
Xbit_r89_c26 bl_26 br_26 wl_89 vdd gnd cell_6t
Xbit_r90_c26 bl_26 br_26 wl_90 vdd gnd cell_6t
Xbit_r91_c26 bl_26 br_26 wl_91 vdd gnd cell_6t
Xbit_r92_c26 bl_26 br_26 wl_92 vdd gnd cell_6t
Xbit_r93_c26 bl_26 br_26 wl_93 vdd gnd cell_6t
Xbit_r94_c26 bl_26 br_26 wl_94 vdd gnd cell_6t
Xbit_r95_c26 bl_26 br_26 wl_95 vdd gnd cell_6t
Xbit_r96_c26 bl_26 br_26 wl_96 vdd gnd cell_6t
Xbit_r97_c26 bl_26 br_26 wl_97 vdd gnd cell_6t
Xbit_r98_c26 bl_26 br_26 wl_98 vdd gnd cell_6t
Xbit_r99_c26 bl_26 br_26 wl_99 vdd gnd cell_6t
Xbit_r100_c26 bl_26 br_26 wl_100 vdd gnd cell_6t
Xbit_r101_c26 bl_26 br_26 wl_101 vdd gnd cell_6t
Xbit_r102_c26 bl_26 br_26 wl_102 vdd gnd cell_6t
Xbit_r103_c26 bl_26 br_26 wl_103 vdd gnd cell_6t
Xbit_r104_c26 bl_26 br_26 wl_104 vdd gnd cell_6t
Xbit_r105_c26 bl_26 br_26 wl_105 vdd gnd cell_6t
Xbit_r106_c26 bl_26 br_26 wl_106 vdd gnd cell_6t
Xbit_r107_c26 bl_26 br_26 wl_107 vdd gnd cell_6t
Xbit_r108_c26 bl_26 br_26 wl_108 vdd gnd cell_6t
Xbit_r109_c26 bl_26 br_26 wl_109 vdd gnd cell_6t
Xbit_r110_c26 bl_26 br_26 wl_110 vdd gnd cell_6t
Xbit_r111_c26 bl_26 br_26 wl_111 vdd gnd cell_6t
Xbit_r112_c26 bl_26 br_26 wl_112 vdd gnd cell_6t
Xbit_r113_c26 bl_26 br_26 wl_113 vdd gnd cell_6t
Xbit_r114_c26 bl_26 br_26 wl_114 vdd gnd cell_6t
Xbit_r115_c26 bl_26 br_26 wl_115 vdd gnd cell_6t
Xbit_r116_c26 bl_26 br_26 wl_116 vdd gnd cell_6t
Xbit_r117_c26 bl_26 br_26 wl_117 vdd gnd cell_6t
Xbit_r118_c26 bl_26 br_26 wl_118 vdd gnd cell_6t
Xbit_r119_c26 bl_26 br_26 wl_119 vdd gnd cell_6t
Xbit_r120_c26 bl_26 br_26 wl_120 vdd gnd cell_6t
Xbit_r121_c26 bl_26 br_26 wl_121 vdd gnd cell_6t
Xbit_r122_c26 bl_26 br_26 wl_122 vdd gnd cell_6t
Xbit_r123_c26 bl_26 br_26 wl_123 vdd gnd cell_6t
Xbit_r124_c26 bl_26 br_26 wl_124 vdd gnd cell_6t
Xbit_r125_c26 bl_26 br_26 wl_125 vdd gnd cell_6t
Xbit_r126_c26 bl_26 br_26 wl_126 vdd gnd cell_6t
Xbit_r127_c26 bl_26 br_26 wl_127 vdd gnd cell_6t
Xbit_r0_c27 bl_27 br_27 wl_0 vdd gnd cell_6t
Xbit_r1_c27 bl_27 br_27 wl_1 vdd gnd cell_6t
Xbit_r2_c27 bl_27 br_27 wl_2 vdd gnd cell_6t
Xbit_r3_c27 bl_27 br_27 wl_3 vdd gnd cell_6t
Xbit_r4_c27 bl_27 br_27 wl_4 vdd gnd cell_6t
Xbit_r5_c27 bl_27 br_27 wl_5 vdd gnd cell_6t
Xbit_r6_c27 bl_27 br_27 wl_6 vdd gnd cell_6t
Xbit_r7_c27 bl_27 br_27 wl_7 vdd gnd cell_6t
Xbit_r8_c27 bl_27 br_27 wl_8 vdd gnd cell_6t
Xbit_r9_c27 bl_27 br_27 wl_9 vdd gnd cell_6t
Xbit_r10_c27 bl_27 br_27 wl_10 vdd gnd cell_6t
Xbit_r11_c27 bl_27 br_27 wl_11 vdd gnd cell_6t
Xbit_r12_c27 bl_27 br_27 wl_12 vdd gnd cell_6t
Xbit_r13_c27 bl_27 br_27 wl_13 vdd gnd cell_6t
Xbit_r14_c27 bl_27 br_27 wl_14 vdd gnd cell_6t
Xbit_r15_c27 bl_27 br_27 wl_15 vdd gnd cell_6t
Xbit_r16_c27 bl_27 br_27 wl_16 vdd gnd cell_6t
Xbit_r17_c27 bl_27 br_27 wl_17 vdd gnd cell_6t
Xbit_r18_c27 bl_27 br_27 wl_18 vdd gnd cell_6t
Xbit_r19_c27 bl_27 br_27 wl_19 vdd gnd cell_6t
Xbit_r20_c27 bl_27 br_27 wl_20 vdd gnd cell_6t
Xbit_r21_c27 bl_27 br_27 wl_21 vdd gnd cell_6t
Xbit_r22_c27 bl_27 br_27 wl_22 vdd gnd cell_6t
Xbit_r23_c27 bl_27 br_27 wl_23 vdd gnd cell_6t
Xbit_r24_c27 bl_27 br_27 wl_24 vdd gnd cell_6t
Xbit_r25_c27 bl_27 br_27 wl_25 vdd gnd cell_6t
Xbit_r26_c27 bl_27 br_27 wl_26 vdd gnd cell_6t
Xbit_r27_c27 bl_27 br_27 wl_27 vdd gnd cell_6t
Xbit_r28_c27 bl_27 br_27 wl_28 vdd gnd cell_6t
Xbit_r29_c27 bl_27 br_27 wl_29 vdd gnd cell_6t
Xbit_r30_c27 bl_27 br_27 wl_30 vdd gnd cell_6t
Xbit_r31_c27 bl_27 br_27 wl_31 vdd gnd cell_6t
Xbit_r32_c27 bl_27 br_27 wl_32 vdd gnd cell_6t
Xbit_r33_c27 bl_27 br_27 wl_33 vdd gnd cell_6t
Xbit_r34_c27 bl_27 br_27 wl_34 vdd gnd cell_6t
Xbit_r35_c27 bl_27 br_27 wl_35 vdd gnd cell_6t
Xbit_r36_c27 bl_27 br_27 wl_36 vdd gnd cell_6t
Xbit_r37_c27 bl_27 br_27 wl_37 vdd gnd cell_6t
Xbit_r38_c27 bl_27 br_27 wl_38 vdd gnd cell_6t
Xbit_r39_c27 bl_27 br_27 wl_39 vdd gnd cell_6t
Xbit_r40_c27 bl_27 br_27 wl_40 vdd gnd cell_6t
Xbit_r41_c27 bl_27 br_27 wl_41 vdd gnd cell_6t
Xbit_r42_c27 bl_27 br_27 wl_42 vdd gnd cell_6t
Xbit_r43_c27 bl_27 br_27 wl_43 vdd gnd cell_6t
Xbit_r44_c27 bl_27 br_27 wl_44 vdd gnd cell_6t
Xbit_r45_c27 bl_27 br_27 wl_45 vdd gnd cell_6t
Xbit_r46_c27 bl_27 br_27 wl_46 vdd gnd cell_6t
Xbit_r47_c27 bl_27 br_27 wl_47 vdd gnd cell_6t
Xbit_r48_c27 bl_27 br_27 wl_48 vdd gnd cell_6t
Xbit_r49_c27 bl_27 br_27 wl_49 vdd gnd cell_6t
Xbit_r50_c27 bl_27 br_27 wl_50 vdd gnd cell_6t
Xbit_r51_c27 bl_27 br_27 wl_51 vdd gnd cell_6t
Xbit_r52_c27 bl_27 br_27 wl_52 vdd gnd cell_6t
Xbit_r53_c27 bl_27 br_27 wl_53 vdd gnd cell_6t
Xbit_r54_c27 bl_27 br_27 wl_54 vdd gnd cell_6t
Xbit_r55_c27 bl_27 br_27 wl_55 vdd gnd cell_6t
Xbit_r56_c27 bl_27 br_27 wl_56 vdd gnd cell_6t
Xbit_r57_c27 bl_27 br_27 wl_57 vdd gnd cell_6t
Xbit_r58_c27 bl_27 br_27 wl_58 vdd gnd cell_6t
Xbit_r59_c27 bl_27 br_27 wl_59 vdd gnd cell_6t
Xbit_r60_c27 bl_27 br_27 wl_60 vdd gnd cell_6t
Xbit_r61_c27 bl_27 br_27 wl_61 vdd gnd cell_6t
Xbit_r62_c27 bl_27 br_27 wl_62 vdd gnd cell_6t
Xbit_r63_c27 bl_27 br_27 wl_63 vdd gnd cell_6t
Xbit_r64_c27 bl_27 br_27 wl_64 vdd gnd cell_6t
Xbit_r65_c27 bl_27 br_27 wl_65 vdd gnd cell_6t
Xbit_r66_c27 bl_27 br_27 wl_66 vdd gnd cell_6t
Xbit_r67_c27 bl_27 br_27 wl_67 vdd gnd cell_6t
Xbit_r68_c27 bl_27 br_27 wl_68 vdd gnd cell_6t
Xbit_r69_c27 bl_27 br_27 wl_69 vdd gnd cell_6t
Xbit_r70_c27 bl_27 br_27 wl_70 vdd gnd cell_6t
Xbit_r71_c27 bl_27 br_27 wl_71 vdd gnd cell_6t
Xbit_r72_c27 bl_27 br_27 wl_72 vdd gnd cell_6t
Xbit_r73_c27 bl_27 br_27 wl_73 vdd gnd cell_6t
Xbit_r74_c27 bl_27 br_27 wl_74 vdd gnd cell_6t
Xbit_r75_c27 bl_27 br_27 wl_75 vdd gnd cell_6t
Xbit_r76_c27 bl_27 br_27 wl_76 vdd gnd cell_6t
Xbit_r77_c27 bl_27 br_27 wl_77 vdd gnd cell_6t
Xbit_r78_c27 bl_27 br_27 wl_78 vdd gnd cell_6t
Xbit_r79_c27 bl_27 br_27 wl_79 vdd gnd cell_6t
Xbit_r80_c27 bl_27 br_27 wl_80 vdd gnd cell_6t
Xbit_r81_c27 bl_27 br_27 wl_81 vdd gnd cell_6t
Xbit_r82_c27 bl_27 br_27 wl_82 vdd gnd cell_6t
Xbit_r83_c27 bl_27 br_27 wl_83 vdd gnd cell_6t
Xbit_r84_c27 bl_27 br_27 wl_84 vdd gnd cell_6t
Xbit_r85_c27 bl_27 br_27 wl_85 vdd gnd cell_6t
Xbit_r86_c27 bl_27 br_27 wl_86 vdd gnd cell_6t
Xbit_r87_c27 bl_27 br_27 wl_87 vdd gnd cell_6t
Xbit_r88_c27 bl_27 br_27 wl_88 vdd gnd cell_6t
Xbit_r89_c27 bl_27 br_27 wl_89 vdd gnd cell_6t
Xbit_r90_c27 bl_27 br_27 wl_90 vdd gnd cell_6t
Xbit_r91_c27 bl_27 br_27 wl_91 vdd gnd cell_6t
Xbit_r92_c27 bl_27 br_27 wl_92 vdd gnd cell_6t
Xbit_r93_c27 bl_27 br_27 wl_93 vdd gnd cell_6t
Xbit_r94_c27 bl_27 br_27 wl_94 vdd gnd cell_6t
Xbit_r95_c27 bl_27 br_27 wl_95 vdd gnd cell_6t
Xbit_r96_c27 bl_27 br_27 wl_96 vdd gnd cell_6t
Xbit_r97_c27 bl_27 br_27 wl_97 vdd gnd cell_6t
Xbit_r98_c27 bl_27 br_27 wl_98 vdd gnd cell_6t
Xbit_r99_c27 bl_27 br_27 wl_99 vdd gnd cell_6t
Xbit_r100_c27 bl_27 br_27 wl_100 vdd gnd cell_6t
Xbit_r101_c27 bl_27 br_27 wl_101 vdd gnd cell_6t
Xbit_r102_c27 bl_27 br_27 wl_102 vdd gnd cell_6t
Xbit_r103_c27 bl_27 br_27 wl_103 vdd gnd cell_6t
Xbit_r104_c27 bl_27 br_27 wl_104 vdd gnd cell_6t
Xbit_r105_c27 bl_27 br_27 wl_105 vdd gnd cell_6t
Xbit_r106_c27 bl_27 br_27 wl_106 vdd gnd cell_6t
Xbit_r107_c27 bl_27 br_27 wl_107 vdd gnd cell_6t
Xbit_r108_c27 bl_27 br_27 wl_108 vdd gnd cell_6t
Xbit_r109_c27 bl_27 br_27 wl_109 vdd gnd cell_6t
Xbit_r110_c27 bl_27 br_27 wl_110 vdd gnd cell_6t
Xbit_r111_c27 bl_27 br_27 wl_111 vdd gnd cell_6t
Xbit_r112_c27 bl_27 br_27 wl_112 vdd gnd cell_6t
Xbit_r113_c27 bl_27 br_27 wl_113 vdd gnd cell_6t
Xbit_r114_c27 bl_27 br_27 wl_114 vdd gnd cell_6t
Xbit_r115_c27 bl_27 br_27 wl_115 vdd gnd cell_6t
Xbit_r116_c27 bl_27 br_27 wl_116 vdd gnd cell_6t
Xbit_r117_c27 bl_27 br_27 wl_117 vdd gnd cell_6t
Xbit_r118_c27 bl_27 br_27 wl_118 vdd gnd cell_6t
Xbit_r119_c27 bl_27 br_27 wl_119 vdd gnd cell_6t
Xbit_r120_c27 bl_27 br_27 wl_120 vdd gnd cell_6t
Xbit_r121_c27 bl_27 br_27 wl_121 vdd gnd cell_6t
Xbit_r122_c27 bl_27 br_27 wl_122 vdd gnd cell_6t
Xbit_r123_c27 bl_27 br_27 wl_123 vdd gnd cell_6t
Xbit_r124_c27 bl_27 br_27 wl_124 vdd gnd cell_6t
Xbit_r125_c27 bl_27 br_27 wl_125 vdd gnd cell_6t
Xbit_r126_c27 bl_27 br_27 wl_126 vdd gnd cell_6t
Xbit_r127_c27 bl_27 br_27 wl_127 vdd gnd cell_6t
Xbit_r0_c28 bl_28 br_28 wl_0 vdd gnd cell_6t
Xbit_r1_c28 bl_28 br_28 wl_1 vdd gnd cell_6t
Xbit_r2_c28 bl_28 br_28 wl_2 vdd gnd cell_6t
Xbit_r3_c28 bl_28 br_28 wl_3 vdd gnd cell_6t
Xbit_r4_c28 bl_28 br_28 wl_4 vdd gnd cell_6t
Xbit_r5_c28 bl_28 br_28 wl_5 vdd gnd cell_6t
Xbit_r6_c28 bl_28 br_28 wl_6 vdd gnd cell_6t
Xbit_r7_c28 bl_28 br_28 wl_7 vdd gnd cell_6t
Xbit_r8_c28 bl_28 br_28 wl_8 vdd gnd cell_6t
Xbit_r9_c28 bl_28 br_28 wl_9 vdd gnd cell_6t
Xbit_r10_c28 bl_28 br_28 wl_10 vdd gnd cell_6t
Xbit_r11_c28 bl_28 br_28 wl_11 vdd gnd cell_6t
Xbit_r12_c28 bl_28 br_28 wl_12 vdd gnd cell_6t
Xbit_r13_c28 bl_28 br_28 wl_13 vdd gnd cell_6t
Xbit_r14_c28 bl_28 br_28 wl_14 vdd gnd cell_6t
Xbit_r15_c28 bl_28 br_28 wl_15 vdd gnd cell_6t
Xbit_r16_c28 bl_28 br_28 wl_16 vdd gnd cell_6t
Xbit_r17_c28 bl_28 br_28 wl_17 vdd gnd cell_6t
Xbit_r18_c28 bl_28 br_28 wl_18 vdd gnd cell_6t
Xbit_r19_c28 bl_28 br_28 wl_19 vdd gnd cell_6t
Xbit_r20_c28 bl_28 br_28 wl_20 vdd gnd cell_6t
Xbit_r21_c28 bl_28 br_28 wl_21 vdd gnd cell_6t
Xbit_r22_c28 bl_28 br_28 wl_22 vdd gnd cell_6t
Xbit_r23_c28 bl_28 br_28 wl_23 vdd gnd cell_6t
Xbit_r24_c28 bl_28 br_28 wl_24 vdd gnd cell_6t
Xbit_r25_c28 bl_28 br_28 wl_25 vdd gnd cell_6t
Xbit_r26_c28 bl_28 br_28 wl_26 vdd gnd cell_6t
Xbit_r27_c28 bl_28 br_28 wl_27 vdd gnd cell_6t
Xbit_r28_c28 bl_28 br_28 wl_28 vdd gnd cell_6t
Xbit_r29_c28 bl_28 br_28 wl_29 vdd gnd cell_6t
Xbit_r30_c28 bl_28 br_28 wl_30 vdd gnd cell_6t
Xbit_r31_c28 bl_28 br_28 wl_31 vdd gnd cell_6t
Xbit_r32_c28 bl_28 br_28 wl_32 vdd gnd cell_6t
Xbit_r33_c28 bl_28 br_28 wl_33 vdd gnd cell_6t
Xbit_r34_c28 bl_28 br_28 wl_34 vdd gnd cell_6t
Xbit_r35_c28 bl_28 br_28 wl_35 vdd gnd cell_6t
Xbit_r36_c28 bl_28 br_28 wl_36 vdd gnd cell_6t
Xbit_r37_c28 bl_28 br_28 wl_37 vdd gnd cell_6t
Xbit_r38_c28 bl_28 br_28 wl_38 vdd gnd cell_6t
Xbit_r39_c28 bl_28 br_28 wl_39 vdd gnd cell_6t
Xbit_r40_c28 bl_28 br_28 wl_40 vdd gnd cell_6t
Xbit_r41_c28 bl_28 br_28 wl_41 vdd gnd cell_6t
Xbit_r42_c28 bl_28 br_28 wl_42 vdd gnd cell_6t
Xbit_r43_c28 bl_28 br_28 wl_43 vdd gnd cell_6t
Xbit_r44_c28 bl_28 br_28 wl_44 vdd gnd cell_6t
Xbit_r45_c28 bl_28 br_28 wl_45 vdd gnd cell_6t
Xbit_r46_c28 bl_28 br_28 wl_46 vdd gnd cell_6t
Xbit_r47_c28 bl_28 br_28 wl_47 vdd gnd cell_6t
Xbit_r48_c28 bl_28 br_28 wl_48 vdd gnd cell_6t
Xbit_r49_c28 bl_28 br_28 wl_49 vdd gnd cell_6t
Xbit_r50_c28 bl_28 br_28 wl_50 vdd gnd cell_6t
Xbit_r51_c28 bl_28 br_28 wl_51 vdd gnd cell_6t
Xbit_r52_c28 bl_28 br_28 wl_52 vdd gnd cell_6t
Xbit_r53_c28 bl_28 br_28 wl_53 vdd gnd cell_6t
Xbit_r54_c28 bl_28 br_28 wl_54 vdd gnd cell_6t
Xbit_r55_c28 bl_28 br_28 wl_55 vdd gnd cell_6t
Xbit_r56_c28 bl_28 br_28 wl_56 vdd gnd cell_6t
Xbit_r57_c28 bl_28 br_28 wl_57 vdd gnd cell_6t
Xbit_r58_c28 bl_28 br_28 wl_58 vdd gnd cell_6t
Xbit_r59_c28 bl_28 br_28 wl_59 vdd gnd cell_6t
Xbit_r60_c28 bl_28 br_28 wl_60 vdd gnd cell_6t
Xbit_r61_c28 bl_28 br_28 wl_61 vdd gnd cell_6t
Xbit_r62_c28 bl_28 br_28 wl_62 vdd gnd cell_6t
Xbit_r63_c28 bl_28 br_28 wl_63 vdd gnd cell_6t
Xbit_r64_c28 bl_28 br_28 wl_64 vdd gnd cell_6t
Xbit_r65_c28 bl_28 br_28 wl_65 vdd gnd cell_6t
Xbit_r66_c28 bl_28 br_28 wl_66 vdd gnd cell_6t
Xbit_r67_c28 bl_28 br_28 wl_67 vdd gnd cell_6t
Xbit_r68_c28 bl_28 br_28 wl_68 vdd gnd cell_6t
Xbit_r69_c28 bl_28 br_28 wl_69 vdd gnd cell_6t
Xbit_r70_c28 bl_28 br_28 wl_70 vdd gnd cell_6t
Xbit_r71_c28 bl_28 br_28 wl_71 vdd gnd cell_6t
Xbit_r72_c28 bl_28 br_28 wl_72 vdd gnd cell_6t
Xbit_r73_c28 bl_28 br_28 wl_73 vdd gnd cell_6t
Xbit_r74_c28 bl_28 br_28 wl_74 vdd gnd cell_6t
Xbit_r75_c28 bl_28 br_28 wl_75 vdd gnd cell_6t
Xbit_r76_c28 bl_28 br_28 wl_76 vdd gnd cell_6t
Xbit_r77_c28 bl_28 br_28 wl_77 vdd gnd cell_6t
Xbit_r78_c28 bl_28 br_28 wl_78 vdd gnd cell_6t
Xbit_r79_c28 bl_28 br_28 wl_79 vdd gnd cell_6t
Xbit_r80_c28 bl_28 br_28 wl_80 vdd gnd cell_6t
Xbit_r81_c28 bl_28 br_28 wl_81 vdd gnd cell_6t
Xbit_r82_c28 bl_28 br_28 wl_82 vdd gnd cell_6t
Xbit_r83_c28 bl_28 br_28 wl_83 vdd gnd cell_6t
Xbit_r84_c28 bl_28 br_28 wl_84 vdd gnd cell_6t
Xbit_r85_c28 bl_28 br_28 wl_85 vdd gnd cell_6t
Xbit_r86_c28 bl_28 br_28 wl_86 vdd gnd cell_6t
Xbit_r87_c28 bl_28 br_28 wl_87 vdd gnd cell_6t
Xbit_r88_c28 bl_28 br_28 wl_88 vdd gnd cell_6t
Xbit_r89_c28 bl_28 br_28 wl_89 vdd gnd cell_6t
Xbit_r90_c28 bl_28 br_28 wl_90 vdd gnd cell_6t
Xbit_r91_c28 bl_28 br_28 wl_91 vdd gnd cell_6t
Xbit_r92_c28 bl_28 br_28 wl_92 vdd gnd cell_6t
Xbit_r93_c28 bl_28 br_28 wl_93 vdd gnd cell_6t
Xbit_r94_c28 bl_28 br_28 wl_94 vdd gnd cell_6t
Xbit_r95_c28 bl_28 br_28 wl_95 vdd gnd cell_6t
Xbit_r96_c28 bl_28 br_28 wl_96 vdd gnd cell_6t
Xbit_r97_c28 bl_28 br_28 wl_97 vdd gnd cell_6t
Xbit_r98_c28 bl_28 br_28 wl_98 vdd gnd cell_6t
Xbit_r99_c28 bl_28 br_28 wl_99 vdd gnd cell_6t
Xbit_r100_c28 bl_28 br_28 wl_100 vdd gnd cell_6t
Xbit_r101_c28 bl_28 br_28 wl_101 vdd gnd cell_6t
Xbit_r102_c28 bl_28 br_28 wl_102 vdd gnd cell_6t
Xbit_r103_c28 bl_28 br_28 wl_103 vdd gnd cell_6t
Xbit_r104_c28 bl_28 br_28 wl_104 vdd gnd cell_6t
Xbit_r105_c28 bl_28 br_28 wl_105 vdd gnd cell_6t
Xbit_r106_c28 bl_28 br_28 wl_106 vdd gnd cell_6t
Xbit_r107_c28 bl_28 br_28 wl_107 vdd gnd cell_6t
Xbit_r108_c28 bl_28 br_28 wl_108 vdd gnd cell_6t
Xbit_r109_c28 bl_28 br_28 wl_109 vdd gnd cell_6t
Xbit_r110_c28 bl_28 br_28 wl_110 vdd gnd cell_6t
Xbit_r111_c28 bl_28 br_28 wl_111 vdd gnd cell_6t
Xbit_r112_c28 bl_28 br_28 wl_112 vdd gnd cell_6t
Xbit_r113_c28 bl_28 br_28 wl_113 vdd gnd cell_6t
Xbit_r114_c28 bl_28 br_28 wl_114 vdd gnd cell_6t
Xbit_r115_c28 bl_28 br_28 wl_115 vdd gnd cell_6t
Xbit_r116_c28 bl_28 br_28 wl_116 vdd gnd cell_6t
Xbit_r117_c28 bl_28 br_28 wl_117 vdd gnd cell_6t
Xbit_r118_c28 bl_28 br_28 wl_118 vdd gnd cell_6t
Xbit_r119_c28 bl_28 br_28 wl_119 vdd gnd cell_6t
Xbit_r120_c28 bl_28 br_28 wl_120 vdd gnd cell_6t
Xbit_r121_c28 bl_28 br_28 wl_121 vdd gnd cell_6t
Xbit_r122_c28 bl_28 br_28 wl_122 vdd gnd cell_6t
Xbit_r123_c28 bl_28 br_28 wl_123 vdd gnd cell_6t
Xbit_r124_c28 bl_28 br_28 wl_124 vdd gnd cell_6t
Xbit_r125_c28 bl_28 br_28 wl_125 vdd gnd cell_6t
Xbit_r126_c28 bl_28 br_28 wl_126 vdd gnd cell_6t
Xbit_r127_c28 bl_28 br_28 wl_127 vdd gnd cell_6t
Xbit_r0_c29 bl_29 br_29 wl_0 vdd gnd cell_6t
Xbit_r1_c29 bl_29 br_29 wl_1 vdd gnd cell_6t
Xbit_r2_c29 bl_29 br_29 wl_2 vdd gnd cell_6t
Xbit_r3_c29 bl_29 br_29 wl_3 vdd gnd cell_6t
Xbit_r4_c29 bl_29 br_29 wl_4 vdd gnd cell_6t
Xbit_r5_c29 bl_29 br_29 wl_5 vdd gnd cell_6t
Xbit_r6_c29 bl_29 br_29 wl_6 vdd gnd cell_6t
Xbit_r7_c29 bl_29 br_29 wl_7 vdd gnd cell_6t
Xbit_r8_c29 bl_29 br_29 wl_8 vdd gnd cell_6t
Xbit_r9_c29 bl_29 br_29 wl_9 vdd gnd cell_6t
Xbit_r10_c29 bl_29 br_29 wl_10 vdd gnd cell_6t
Xbit_r11_c29 bl_29 br_29 wl_11 vdd gnd cell_6t
Xbit_r12_c29 bl_29 br_29 wl_12 vdd gnd cell_6t
Xbit_r13_c29 bl_29 br_29 wl_13 vdd gnd cell_6t
Xbit_r14_c29 bl_29 br_29 wl_14 vdd gnd cell_6t
Xbit_r15_c29 bl_29 br_29 wl_15 vdd gnd cell_6t
Xbit_r16_c29 bl_29 br_29 wl_16 vdd gnd cell_6t
Xbit_r17_c29 bl_29 br_29 wl_17 vdd gnd cell_6t
Xbit_r18_c29 bl_29 br_29 wl_18 vdd gnd cell_6t
Xbit_r19_c29 bl_29 br_29 wl_19 vdd gnd cell_6t
Xbit_r20_c29 bl_29 br_29 wl_20 vdd gnd cell_6t
Xbit_r21_c29 bl_29 br_29 wl_21 vdd gnd cell_6t
Xbit_r22_c29 bl_29 br_29 wl_22 vdd gnd cell_6t
Xbit_r23_c29 bl_29 br_29 wl_23 vdd gnd cell_6t
Xbit_r24_c29 bl_29 br_29 wl_24 vdd gnd cell_6t
Xbit_r25_c29 bl_29 br_29 wl_25 vdd gnd cell_6t
Xbit_r26_c29 bl_29 br_29 wl_26 vdd gnd cell_6t
Xbit_r27_c29 bl_29 br_29 wl_27 vdd gnd cell_6t
Xbit_r28_c29 bl_29 br_29 wl_28 vdd gnd cell_6t
Xbit_r29_c29 bl_29 br_29 wl_29 vdd gnd cell_6t
Xbit_r30_c29 bl_29 br_29 wl_30 vdd gnd cell_6t
Xbit_r31_c29 bl_29 br_29 wl_31 vdd gnd cell_6t
Xbit_r32_c29 bl_29 br_29 wl_32 vdd gnd cell_6t
Xbit_r33_c29 bl_29 br_29 wl_33 vdd gnd cell_6t
Xbit_r34_c29 bl_29 br_29 wl_34 vdd gnd cell_6t
Xbit_r35_c29 bl_29 br_29 wl_35 vdd gnd cell_6t
Xbit_r36_c29 bl_29 br_29 wl_36 vdd gnd cell_6t
Xbit_r37_c29 bl_29 br_29 wl_37 vdd gnd cell_6t
Xbit_r38_c29 bl_29 br_29 wl_38 vdd gnd cell_6t
Xbit_r39_c29 bl_29 br_29 wl_39 vdd gnd cell_6t
Xbit_r40_c29 bl_29 br_29 wl_40 vdd gnd cell_6t
Xbit_r41_c29 bl_29 br_29 wl_41 vdd gnd cell_6t
Xbit_r42_c29 bl_29 br_29 wl_42 vdd gnd cell_6t
Xbit_r43_c29 bl_29 br_29 wl_43 vdd gnd cell_6t
Xbit_r44_c29 bl_29 br_29 wl_44 vdd gnd cell_6t
Xbit_r45_c29 bl_29 br_29 wl_45 vdd gnd cell_6t
Xbit_r46_c29 bl_29 br_29 wl_46 vdd gnd cell_6t
Xbit_r47_c29 bl_29 br_29 wl_47 vdd gnd cell_6t
Xbit_r48_c29 bl_29 br_29 wl_48 vdd gnd cell_6t
Xbit_r49_c29 bl_29 br_29 wl_49 vdd gnd cell_6t
Xbit_r50_c29 bl_29 br_29 wl_50 vdd gnd cell_6t
Xbit_r51_c29 bl_29 br_29 wl_51 vdd gnd cell_6t
Xbit_r52_c29 bl_29 br_29 wl_52 vdd gnd cell_6t
Xbit_r53_c29 bl_29 br_29 wl_53 vdd gnd cell_6t
Xbit_r54_c29 bl_29 br_29 wl_54 vdd gnd cell_6t
Xbit_r55_c29 bl_29 br_29 wl_55 vdd gnd cell_6t
Xbit_r56_c29 bl_29 br_29 wl_56 vdd gnd cell_6t
Xbit_r57_c29 bl_29 br_29 wl_57 vdd gnd cell_6t
Xbit_r58_c29 bl_29 br_29 wl_58 vdd gnd cell_6t
Xbit_r59_c29 bl_29 br_29 wl_59 vdd gnd cell_6t
Xbit_r60_c29 bl_29 br_29 wl_60 vdd gnd cell_6t
Xbit_r61_c29 bl_29 br_29 wl_61 vdd gnd cell_6t
Xbit_r62_c29 bl_29 br_29 wl_62 vdd gnd cell_6t
Xbit_r63_c29 bl_29 br_29 wl_63 vdd gnd cell_6t
Xbit_r64_c29 bl_29 br_29 wl_64 vdd gnd cell_6t
Xbit_r65_c29 bl_29 br_29 wl_65 vdd gnd cell_6t
Xbit_r66_c29 bl_29 br_29 wl_66 vdd gnd cell_6t
Xbit_r67_c29 bl_29 br_29 wl_67 vdd gnd cell_6t
Xbit_r68_c29 bl_29 br_29 wl_68 vdd gnd cell_6t
Xbit_r69_c29 bl_29 br_29 wl_69 vdd gnd cell_6t
Xbit_r70_c29 bl_29 br_29 wl_70 vdd gnd cell_6t
Xbit_r71_c29 bl_29 br_29 wl_71 vdd gnd cell_6t
Xbit_r72_c29 bl_29 br_29 wl_72 vdd gnd cell_6t
Xbit_r73_c29 bl_29 br_29 wl_73 vdd gnd cell_6t
Xbit_r74_c29 bl_29 br_29 wl_74 vdd gnd cell_6t
Xbit_r75_c29 bl_29 br_29 wl_75 vdd gnd cell_6t
Xbit_r76_c29 bl_29 br_29 wl_76 vdd gnd cell_6t
Xbit_r77_c29 bl_29 br_29 wl_77 vdd gnd cell_6t
Xbit_r78_c29 bl_29 br_29 wl_78 vdd gnd cell_6t
Xbit_r79_c29 bl_29 br_29 wl_79 vdd gnd cell_6t
Xbit_r80_c29 bl_29 br_29 wl_80 vdd gnd cell_6t
Xbit_r81_c29 bl_29 br_29 wl_81 vdd gnd cell_6t
Xbit_r82_c29 bl_29 br_29 wl_82 vdd gnd cell_6t
Xbit_r83_c29 bl_29 br_29 wl_83 vdd gnd cell_6t
Xbit_r84_c29 bl_29 br_29 wl_84 vdd gnd cell_6t
Xbit_r85_c29 bl_29 br_29 wl_85 vdd gnd cell_6t
Xbit_r86_c29 bl_29 br_29 wl_86 vdd gnd cell_6t
Xbit_r87_c29 bl_29 br_29 wl_87 vdd gnd cell_6t
Xbit_r88_c29 bl_29 br_29 wl_88 vdd gnd cell_6t
Xbit_r89_c29 bl_29 br_29 wl_89 vdd gnd cell_6t
Xbit_r90_c29 bl_29 br_29 wl_90 vdd gnd cell_6t
Xbit_r91_c29 bl_29 br_29 wl_91 vdd gnd cell_6t
Xbit_r92_c29 bl_29 br_29 wl_92 vdd gnd cell_6t
Xbit_r93_c29 bl_29 br_29 wl_93 vdd gnd cell_6t
Xbit_r94_c29 bl_29 br_29 wl_94 vdd gnd cell_6t
Xbit_r95_c29 bl_29 br_29 wl_95 vdd gnd cell_6t
Xbit_r96_c29 bl_29 br_29 wl_96 vdd gnd cell_6t
Xbit_r97_c29 bl_29 br_29 wl_97 vdd gnd cell_6t
Xbit_r98_c29 bl_29 br_29 wl_98 vdd gnd cell_6t
Xbit_r99_c29 bl_29 br_29 wl_99 vdd gnd cell_6t
Xbit_r100_c29 bl_29 br_29 wl_100 vdd gnd cell_6t
Xbit_r101_c29 bl_29 br_29 wl_101 vdd gnd cell_6t
Xbit_r102_c29 bl_29 br_29 wl_102 vdd gnd cell_6t
Xbit_r103_c29 bl_29 br_29 wl_103 vdd gnd cell_6t
Xbit_r104_c29 bl_29 br_29 wl_104 vdd gnd cell_6t
Xbit_r105_c29 bl_29 br_29 wl_105 vdd gnd cell_6t
Xbit_r106_c29 bl_29 br_29 wl_106 vdd gnd cell_6t
Xbit_r107_c29 bl_29 br_29 wl_107 vdd gnd cell_6t
Xbit_r108_c29 bl_29 br_29 wl_108 vdd gnd cell_6t
Xbit_r109_c29 bl_29 br_29 wl_109 vdd gnd cell_6t
Xbit_r110_c29 bl_29 br_29 wl_110 vdd gnd cell_6t
Xbit_r111_c29 bl_29 br_29 wl_111 vdd gnd cell_6t
Xbit_r112_c29 bl_29 br_29 wl_112 vdd gnd cell_6t
Xbit_r113_c29 bl_29 br_29 wl_113 vdd gnd cell_6t
Xbit_r114_c29 bl_29 br_29 wl_114 vdd gnd cell_6t
Xbit_r115_c29 bl_29 br_29 wl_115 vdd gnd cell_6t
Xbit_r116_c29 bl_29 br_29 wl_116 vdd gnd cell_6t
Xbit_r117_c29 bl_29 br_29 wl_117 vdd gnd cell_6t
Xbit_r118_c29 bl_29 br_29 wl_118 vdd gnd cell_6t
Xbit_r119_c29 bl_29 br_29 wl_119 vdd gnd cell_6t
Xbit_r120_c29 bl_29 br_29 wl_120 vdd gnd cell_6t
Xbit_r121_c29 bl_29 br_29 wl_121 vdd gnd cell_6t
Xbit_r122_c29 bl_29 br_29 wl_122 vdd gnd cell_6t
Xbit_r123_c29 bl_29 br_29 wl_123 vdd gnd cell_6t
Xbit_r124_c29 bl_29 br_29 wl_124 vdd gnd cell_6t
Xbit_r125_c29 bl_29 br_29 wl_125 vdd gnd cell_6t
Xbit_r126_c29 bl_29 br_29 wl_126 vdd gnd cell_6t
Xbit_r127_c29 bl_29 br_29 wl_127 vdd gnd cell_6t
Xbit_r0_c30 bl_30 br_30 wl_0 vdd gnd cell_6t
Xbit_r1_c30 bl_30 br_30 wl_1 vdd gnd cell_6t
Xbit_r2_c30 bl_30 br_30 wl_2 vdd gnd cell_6t
Xbit_r3_c30 bl_30 br_30 wl_3 vdd gnd cell_6t
Xbit_r4_c30 bl_30 br_30 wl_4 vdd gnd cell_6t
Xbit_r5_c30 bl_30 br_30 wl_5 vdd gnd cell_6t
Xbit_r6_c30 bl_30 br_30 wl_6 vdd gnd cell_6t
Xbit_r7_c30 bl_30 br_30 wl_7 vdd gnd cell_6t
Xbit_r8_c30 bl_30 br_30 wl_8 vdd gnd cell_6t
Xbit_r9_c30 bl_30 br_30 wl_9 vdd gnd cell_6t
Xbit_r10_c30 bl_30 br_30 wl_10 vdd gnd cell_6t
Xbit_r11_c30 bl_30 br_30 wl_11 vdd gnd cell_6t
Xbit_r12_c30 bl_30 br_30 wl_12 vdd gnd cell_6t
Xbit_r13_c30 bl_30 br_30 wl_13 vdd gnd cell_6t
Xbit_r14_c30 bl_30 br_30 wl_14 vdd gnd cell_6t
Xbit_r15_c30 bl_30 br_30 wl_15 vdd gnd cell_6t
Xbit_r16_c30 bl_30 br_30 wl_16 vdd gnd cell_6t
Xbit_r17_c30 bl_30 br_30 wl_17 vdd gnd cell_6t
Xbit_r18_c30 bl_30 br_30 wl_18 vdd gnd cell_6t
Xbit_r19_c30 bl_30 br_30 wl_19 vdd gnd cell_6t
Xbit_r20_c30 bl_30 br_30 wl_20 vdd gnd cell_6t
Xbit_r21_c30 bl_30 br_30 wl_21 vdd gnd cell_6t
Xbit_r22_c30 bl_30 br_30 wl_22 vdd gnd cell_6t
Xbit_r23_c30 bl_30 br_30 wl_23 vdd gnd cell_6t
Xbit_r24_c30 bl_30 br_30 wl_24 vdd gnd cell_6t
Xbit_r25_c30 bl_30 br_30 wl_25 vdd gnd cell_6t
Xbit_r26_c30 bl_30 br_30 wl_26 vdd gnd cell_6t
Xbit_r27_c30 bl_30 br_30 wl_27 vdd gnd cell_6t
Xbit_r28_c30 bl_30 br_30 wl_28 vdd gnd cell_6t
Xbit_r29_c30 bl_30 br_30 wl_29 vdd gnd cell_6t
Xbit_r30_c30 bl_30 br_30 wl_30 vdd gnd cell_6t
Xbit_r31_c30 bl_30 br_30 wl_31 vdd gnd cell_6t
Xbit_r32_c30 bl_30 br_30 wl_32 vdd gnd cell_6t
Xbit_r33_c30 bl_30 br_30 wl_33 vdd gnd cell_6t
Xbit_r34_c30 bl_30 br_30 wl_34 vdd gnd cell_6t
Xbit_r35_c30 bl_30 br_30 wl_35 vdd gnd cell_6t
Xbit_r36_c30 bl_30 br_30 wl_36 vdd gnd cell_6t
Xbit_r37_c30 bl_30 br_30 wl_37 vdd gnd cell_6t
Xbit_r38_c30 bl_30 br_30 wl_38 vdd gnd cell_6t
Xbit_r39_c30 bl_30 br_30 wl_39 vdd gnd cell_6t
Xbit_r40_c30 bl_30 br_30 wl_40 vdd gnd cell_6t
Xbit_r41_c30 bl_30 br_30 wl_41 vdd gnd cell_6t
Xbit_r42_c30 bl_30 br_30 wl_42 vdd gnd cell_6t
Xbit_r43_c30 bl_30 br_30 wl_43 vdd gnd cell_6t
Xbit_r44_c30 bl_30 br_30 wl_44 vdd gnd cell_6t
Xbit_r45_c30 bl_30 br_30 wl_45 vdd gnd cell_6t
Xbit_r46_c30 bl_30 br_30 wl_46 vdd gnd cell_6t
Xbit_r47_c30 bl_30 br_30 wl_47 vdd gnd cell_6t
Xbit_r48_c30 bl_30 br_30 wl_48 vdd gnd cell_6t
Xbit_r49_c30 bl_30 br_30 wl_49 vdd gnd cell_6t
Xbit_r50_c30 bl_30 br_30 wl_50 vdd gnd cell_6t
Xbit_r51_c30 bl_30 br_30 wl_51 vdd gnd cell_6t
Xbit_r52_c30 bl_30 br_30 wl_52 vdd gnd cell_6t
Xbit_r53_c30 bl_30 br_30 wl_53 vdd gnd cell_6t
Xbit_r54_c30 bl_30 br_30 wl_54 vdd gnd cell_6t
Xbit_r55_c30 bl_30 br_30 wl_55 vdd gnd cell_6t
Xbit_r56_c30 bl_30 br_30 wl_56 vdd gnd cell_6t
Xbit_r57_c30 bl_30 br_30 wl_57 vdd gnd cell_6t
Xbit_r58_c30 bl_30 br_30 wl_58 vdd gnd cell_6t
Xbit_r59_c30 bl_30 br_30 wl_59 vdd gnd cell_6t
Xbit_r60_c30 bl_30 br_30 wl_60 vdd gnd cell_6t
Xbit_r61_c30 bl_30 br_30 wl_61 vdd gnd cell_6t
Xbit_r62_c30 bl_30 br_30 wl_62 vdd gnd cell_6t
Xbit_r63_c30 bl_30 br_30 wl_63 vdd gnd cell_6t
Xbit_r64_c30 bl_30 br_30 wl_64 vdd gnd cell_6t
Xbit_r65_c30 bl_30 br_30 wl_65 vdd gnd cell_6t
Xbit_r66_c30 bl_30 br_30 wl_66 vdd gnd cell_6t
Xbit_r67_c30 bl_30 br_30 wl_67 vdd gnd cell_6t
Xbit_r68_c30 bl_30 br_30 wl_68 vdd gnd cell_6t
Xbit_r69_c30 bl_30 br_30 wl_69 vdd gnd cell_6t
Xbit_r70_c30 bl_30 br_30 wl_70 vdd gnd cell_6t
Xbit_r71_c30 bl_30 br_30 wl_71 vdd gnd cell_6t
Xbit_r72_c30 bl_30 br_30 wl_72 vdd gnd cell_6t
Xbit_r73_c30 bl_30 br_30 wl_73 vdd gnd cell_6t
Xbit_r74_c30 bl_30 br_30 wl_74 vdd gnd cell_6t
Xbit_r75_c30 bl_30 br_30 wl_75 vdd gnd cell_6t
Xbit_r76_c30 bl_30 br_30 wl_76 vdd gnd cell_6t
Xbit_r77_c30 bl_30 br_30 wl_77 vdd gnd cell_6t
Xbit_r78_c30 bl_30 br_30 wl_78 vdd gnd cell_6t
Xbit_r79_c30 bl_30 br_30 wl_79 vdd gnd cell_6t
Xbit_r80_c30 bl_30 br_30 wl_80 vdd gnd cell_6t
Xbit_r81_c30 bl_30 br_30 wl_81 vdd gnd cell_6t
Xbit_r82_c30 bl_30 br_30 wl_82 vdd gnd cell_6t
Xbit_r83_c30 bl_30 br_30 wl_83 vdd gnd cell_6t
Xbit_r84_c30 bl_30 br_30 wl_84 vdd gnd cell_6t
Xbit_r85_c30 bl_30 br_30 wl_85 vdd gnd cell_6t
Xbit_r86_c30 bl_30 br_30 wl_86 vdd gnd cell_6t
Xbit_r87_c30 bl_30 br_30 wl_87 vdd gnd cell_6t
Xbit_r88_c30 bl_30 br_30 wl_88 vdd gnd cell_6t
Xbit_r89_c30 bl_30 br_30 wl_89 vdd gnd cell_6t
Xbit_r90_c30 bl_30 br_30 wl_90 vdd gnd cell_6t
Xbit_r91_c30 bl_30 br_30 wl_91 vdd gnd cell_6t
Xbit_r92_c30 bl_30 br_30 wl_92 vdd gnd cell_6t
Xbit_r93_c30 bl_30 br_30 wl_93 vdd gnd cell_6t
Xbit_r94_c30 bl_30 br_30 wl_94 vdd gnd cell_6t
Xbit_r95_c30 bl_30 br_30 wl_95 vdd gnd cell_6t
Xbit_r96_c30 bl_30 br_30 wl_96 vdd gnd cell_6t
Xbit_r97_c30 bl_30 br_30 wl_97 vdd gnd cell_6t
Xbit_r98_c30 bl_30 br_30 wl_98 vdd gnd cell_6t
Xbit_r99_c30 bl_30 br_30 wl_99 vdd gnd cell_6t
Xbit_r100_c30 bl_30 br_30 wl_100 vdd gnd cell_6t
Xbit_r101_c30 bl_30 br_30 wl_101 vdd gnd cell_6t
Xbit_r102_c30 bl_30 br_30 wl_102 vdd gnd cell_6t
Xbit_r103_c30 bl_30 br_30 wl_103 vdd gnd cell_6t
Xbit_r104_c30 bl_30 br_30 wl_104 vdd gnd cell_6t
Xbit_r105_c30 bl_30 br_30 wl_105 vdd gnd cell_6t
Xbit_r106_c30 bl_30 br_30 wl_106 vdd gnd cell_6t
Xbit_r107_c30 bl_30 br_30 wl_107 vdd gnd cell_6t
Xbit_r108_c30 bl_30 br_30 wl_108 vdd gnd cell_6t
Xbit_r109_c30 bl_30 br_30 wl_109 vdd gnd cell_6t
Xbit_r110_c30 bl_30 br_30 wl_110 vdd gnd cell_6t
Xbit_r111_c30 bl_30 br_30 wl_111 vdd gnd cell_6t
Xbit_r112_c30 bl_30 br_30 wl_112 vdd gnd cell_6t
Xbit_r113_c30 bl_30 br_30 wl_113 vdd gnd cell_6t
Xbit_r114_c30 bl_30 br_30 wl_114 vdd gnd cell_6t
Xbit_r115_c30 bl_30 br_30 wl_115 vdd gnd cell_6t
Xbit_r116_c30 bl_30 br_30 wl_116 vdd gnd cell_6t
Xbit_r117_c30 bl_30 br_30 wl_117 vdd gnd cell_6t
Xbit_r118_c30 bl_30 br_30 wl_118 vdd gnd cell_6t
Xbit_r119_c30 bl_30 br_30 wl_119 vdd gnd cell_6t
Xbit_r120_c30 bl_30 br_30 wl_120 vdd gnd cell_6t
Xbit_r121_c30 bl_30 br_30 wl_121 vdd gnd cell_6t
Xbit_r122_c30 bl_30 br_30 wl_122 vdd gnd cell_6t
Xbit_r123_c30 bl_30 br_30 wl_123 vdd gnd cell_6t
Xbit_r124_c30 bl_30 br_30 wl_124 vdd gnd cell_6t
Xbit_r125_c30 bl_30 br_30 wl_125 vdd gnd cell_6t
Xbit_r126_c30 bl_30 br_30 wl_126 vdd gnd cell_6t
Xbit_r127_c30 bl_30 br_30 wl_127 vdd gnd cell_6t
Xbit_r0_c31 bl_31 br_31 wl_0 vdd gnd cell_6t
Xbit_r1_c31 bl_31 br_31 wl_1 vdd gnd cell_6t
Xbit_r2_c31 bl_31 br_31 wl_2 vdd gnd cell_6t
Xbit_r3_c31 bl_31 br_31 wl_3 vdd gnd cell_6t
Xbit_r4_c31 bl_31 br_31 wl_4 vdd gnd cell_6t
Xbit_r5_c31 bl_31 br_31 wl_5 vdd gnd cell_6t
Xbit_r6_c31 bl_31 br_31 wl_6 vdd gnd cell_6t
Xbit_r7_c31 bl_31 br_31 wl_7 vdd gnd cell_6t
Xbit_r8_c31 bl_31 br_31 wl_8 vdd gnd cell_6t
Xbit_r9_c31 bl_31 br_31 wl_9 vdd gnd cell_6t
Xbit_r10_c31 bl_31 br_31 wl_10 vdd gnd cell_6t
Xbit_r11_c31 bl_31 br_31 wl_11 vdd gnd cell_6t
Xbit_r12_c31 bl_31 br_31 wl_12 vdd gnd cell_6t
Xbit_r13_c31 bl_31 br_31 wl_13 vdd gnd cell_6t
Xbit_r14_c31 bl_31 br_31 wl_14 vdd gnd cell_6t
Xbit_r15_c31 bl_31 br_31 wl_15 vdd gnd cell_6t
Xbit_r16_c31 bl_31 br_31 wl_16 vdd gnd cell_6t
Xbit_r17_c31 bl_31 br_31 wl_17 vdd gnd cell_6t
Xbit_r18_c31 bl_31 br_31 wl_18 vdd gnd cell_6t
Xbit_r19_c31 bl_31 br_31 wl_19 vdd gnd cell_6t
Xbit_r20_c31 bl_31 br_31 wl_20 vdd gnd cell_6t
Xbit_r21_c31 bl_31 br_31 wl_21 vdd gnd cell_6t
Xbit_r22_c31 bl_31 br_31 wl_22 vdd gnd cell_6t
Xbit_r23_c31 bl_31 br_31 wl_23 vdd gnd cell_6t
Xbit_r24_c31 bl_31 br_31 wl_24 vdd gnd cell_6t
Xbit_r25_c31 bl_31 br_31 wl_25 vdd gnd cell_6t
Xbit_r26_c31 bl_31 br_31 wl_26 vdd gnd cell_6t
Xbit_r27_c31 bl_31 br_31 wl_27 vdd gnd cell_6t
Xbit_r28_c31 bl_31 br_31 wl_28 vdd gnd cell_6t
Xbit_r29_c31 bl_31 br_31 wl_29 vdd gnd cell_6t
Xbit_r30_c31 bl_31 br_31 wl_30 vdd gnd cell_6t
Xbit_r31_c31 bl_31 br_31 wl_31 vdd gnd cell_6t
Xbit_r32_c31 bl_31 br_31 wl_32 vdd gnd cell_6t
Xbit_r33_c31 bl_31 br_31 wl_33 vdd gnd cell_6t
Xbit_r34_c31 bl_31 br_31 wl_34 vdd gnd cell_6t
Xbit_r35_c31 bl_31 br_31 wl_35 vdd gnd cell_6t
Xbit_r36_c31 bl_31 br_31 wl_36 vdd gnd cell_6t
Xbit_r37_c31 bl_31 br_31 wl_37 vdd gnd cell_6t
Xbit_r38_c31 bl_31 br_31 wl_38 vdd gnd cell_6t
Xbit_r39_c31 bl_31 br_31 wl_39 vdd gnd cell_6t
Xbit_r40_c31 bl_31 br_31 wl_40 vdd gnd cell_6t
Xbit_r41_c31 bl_31 br_31 wl_41 vdd gnd cell_6t
Xbit_r42_c31 bl_31 br_31 wl_42 vdd gnd cell_6t
Xbit_r43_c31 bl_31 br_31 wl_43 vdd gnd cell_6t
Xbit_r44_c31 bl_31 br_31 wl_44 vdd gnd cell_6t
Xbit_r45_c31 bl_31 br_31 wl_45 vdd gnd cell_6t
Xbit_r46_c31 bl_31 br_31 wl_46 vdd gnd cell_6t
Xbit_r47_c31 bl_31 br_31 wl_47 vdd gnd cell_6t
Xbit_r48_c31 bl_31 br_31 wl_48 vdd gnd cell_6t
Xbit_r49_c31 bl_31 br_31 wl_49 vdd gnd cell_6t
Xbit_r50_c31 bl_31 br_31 wl_50 vdd gnd cell_6t
Xbit_r51_c31 bl_31 br_31 wl_51 vdd gnd cell_6t
Xbit_r52_c31 bl_31 br_31 wl_52 vdd gnd cell_6t
Xbit_r53_c31 bl_31 br_31 wl_53 vdd gnd cell_6t
Xbit_r54_c31 bl_31 br_31 wl_54 vdd gnd cell_6t
Xbit_r55_c31 bl_31 br_31 wl_55 vdd gnd cell_6t
Xbit_r56_c31 bl_31 br_31 wl_56 vdd gnd cell_6t
Xbit_r57_c31 bl_31 br_31 wl_57 vdd gnd cell_6t
Xbit_r58_c31 bl_31 br_31 wl_58 vdd gnd cell_6t
Xbit_r59_c31 bl_31 br_31 wl_59 vdd gnd cell_6t
Xbit_r60_c31 bl_31 br_31 wl_60 vdd gnd cell_6t
Xbit_r61_c31 bl_31 br_31 wl_61 vdd gnd cell_6t
Xbit_r62_c31 bl_31 br_31 wl_62 vdd gnd cell_6t
Xbit_r63_c31 bl_31 br_31 wl_63 vdd gnd cell_6t
Xbit_r64_c31 bl_31 br_31 wl_64 vdd gnd cell_6t
Xbit_r65_c31 bl_31 br_31 wl_65 vdd gnd cell_6t
Xbit_r66_c31 bl_31 br_31 wl_66 vdd gnd cell_6t
Xbit_r67_c31 bl_31 br_31 wl_67 vdd gnd cell_6t
Xbit_r68_c31 bl_31 br_31 wl_68 vdd gnd cell_6t
Xbit_r69_c31 bl_31 br_31 wl_69 vdd gnd cell_6t
Xbit_r70_c31 bl_31 br_31 wl_70 vdd gnd cell_6t
Xbit_r71_c31 bl_31 br_31 wl_71 vdd gnd cell_6t
Xbit_r72_c31 bl_31 br_31 wl_72 vdd gnd cell_6t
Xbit_r73_c31 bl_31 br_31 wl_73 vdd gnd cell_6t
Xbit_r74_c31 bl_31 br_31 wl_74 vdd gnd cell_6t
Xbit_r75_c31 bl_31 br_31 wl_75 vdd gnd cell_6t
Xbit_r76_c31 bl_31 br_31 wl_76 vdd gnd cell_6t
Xbit_r77_c31 bl_31 br_31 wl_77 vdd gnd cell_6t
Xbit_r78_c31 bl_31 br_31 wl_78 vdd gnd cell_6t
Xbit_r79_c31 bl_31 br_31 wl_79 vdd gnd cell_6t
Xbit_r80_c31 bl_31 br_31 wl_80 vdd gnd cell_6t
Xbit_r81_c31 bl_31 br_31 wl_81 vdd gnd cell_6t
Xbit_r82_c31 bl_31 br_31 wl_82 vdd gnd cell_6t
Xbit_r83_c31 bl_31 br_31 wl_83 vdd gnd cell_6t
Xbit_r84_c31 bl_31 br_31 wl_84 vdd gnd cell_6t
Xbit_r85_c31 bl_31 br_31 wl_85 vdd gnd cell_6t
Xbit_r86_c31 bl_31 br_31 wl_86 vdd gnd cell_6t
Xbit_r87_c31 bl_31 br_31 wl_87 vdd gnd cell_6t
Xbit_r88_c31 bl_31 br_31 wl_88 vdd gnd cell_6t
Xbit_r89_c31 bl_31 br_31 wl_89 vdd gnd cell_6t
Xbit_r90_c31 bl_31 br_31 wl_90 vdd gnd cell_6t
Xbit_r91_c31 bl_31 br_31 wl_91 vdd gnd cell_6t
Xbit_r92_c31 bl_31 br_31 wl_92 vdd gnd cell_6t
Xbit_r93_c31 bl_31 br_31 wl_93 vdd gnd cell_6t
Xbit_r94_c31 bl_31 br_31 wl_94 vdd gnd cell_6t
Xbit_r95_c31 bl_31 br_31 wl_95 vdd gnd cell_6t
Xbit_r96_c31 bl_31 br_31 wl_96 vdd gnd cell_6t
Xbit_r97_c31 bl_31 br_31 wl_97 vdd gnd cell_6t
Xbit_r98_c31 bl_31 br_31 wl_98 vdd gnd cell_6t
Xbit_r99_c31 bl_31 br_31 wl_99 vdd gnd cell_6t
Xbit_r100_c31 bl_31 br_31 wl_100 vdd gnd cell_6t
Xbit_r101_c31 bl_31 br_31 wl_101 vdd gnd cell_6t
Xbit_r102_c31 bl_31 br_31 wl_102 vdd gnd cell_6t
Xbit_r103_c31 bl_31 br_31 wl_103 vdd gnd cell_6t
Xbit_r104_c31 bl_31 br_31 wl_104 vdd gnd cell_6t
Xbit_r105_c31 bl_31 br_31 wl_105 vdd gnd cell_6t
Xbit_r106_c31 bl_31 br_31 wl_106 vdd gnd cell_6t
Xbit_r107_c31 bl_31 br_31 wl_107 vdd gnd cell_6t
Xbit_r108_c31 bl_31 br_31 wl_108 vdd gnd cell_6t
Xbit_r109_c31 bl_31 br_31 wl_109 vdd gnd cell_6t
Xbit_r110_c31 bl_31 br_31 wl_110 vdd gnd cell_6t
Xbit_r111_c31 bl_31 br_31 wl_111 vdd gnd cell_6t
Xbit_r112_c31 bl_31 br_31 wl_112 vdd gnd cell_6t
Xbit_r113_c31 bl_31 br_31 wl_113 vdd gnd cell_6t
Xbit_r114_c31 bl_31 br_31 wl_114 vdd gnd cell_6t
Xbit_r115_c31 bl_31 br_31 wl_115 vdd gnd cell_6t
Xbit_r116_c31 bl_31 br_31 wl_116 vdd gnd cell_6t
Xbit_r117_c31 bl_31 br_31 wl_117 vdd gnd cell_6t
Xbit_r118_c31 bl_31 br_31 wl_118 vdd gnd cell_6t
Xbit_r119_c31 bl_31 br_31 wl_119 vdd gnd cell_6t
Xbit_r120_c31 bl_31 br_31 wl_120 vdd gnd cell_6t
Xbit_r121_c31 bl_31 br_31 wl_121 vdd gnd cell_6t
Xbit_r122_c31 bl_31 br_31 wl_122 vdd gnd cell_6t
Xbit_r123_c31 bl_31 br_31 wl_123 vdd gnd cell_6t
Xbit_r124_c31 bl_31 br_31 wl_124 vdd gnd cell_6t
Xbit_r125_c31 bl_31 br_31 wl_125 vdd gnd cell_6t
Xbit_r126_c31 bl_31 br_31 wl_126 vdd gnd cell_6t
Xbit_r127_c31 bl_31 br_31 wl_127 vdd gnd cell_6t
Xbit_r0_c32 bl_32 br_32 wl_0 vdd gnd cell_6t
Xbit_r1_c32 bl_32 br_32 wl_1 vdd gnd cell_6t
Xbit_r2_c32 bl_32 br_32 wl_2 vdd gnd cell_6t
Xbit_r3_c32 bl_32 br_32 wl_3 vdd gnd cell_6t
Xbit_r4_c32 bl_32 br_32 wl_4 vdd gnd cell_6t
Xbit_r5_c32 bl_32 br_32 wl_5 vdd gnd cell_6t
Xbit_r6_c32 bl_32 br_32 wl_6 vdd gnd cell_6t
Xbit_r7_c32 bl_32 br_32 wl_7 vdd gnd cell_6t
Xbit_r8_c32 bl_32 br_32 wl_8 vdd gnd cell_6t
Xbit_r9_c32 bl_32 br_32 wl_9 vdd gnd cell_6t
Xbit_r10_c32 bl_32 br_32 wl_10 vdd gnd cell_6t
Xbit_r11_c32 bl_32 br_32 wl_11 vdd gnd cell_6t
Xbit_r12_c32 bl_32 br_32 wl_12 vdd gnd cell_6t
Xbit_r13_c32 bl_32 br_32 wl_13 vdd gnd cell_6t
Xbit_r14_c32 bl_32 br_32 wl_14 vdd gnd cell_6t
Xbit_r15_c32 bl_32 br_32 wl_15 vdd gnd cell_6t
Xbit_r16_c32 bl_32 br_32 wl_16 vdd gnd cell_6t
Xbit_r17_c32 bl_32 br_32 wl_17 vdd gnd cell_6t
Xbit_r18_c32 bl_32 br_32 wl_18 vdd gnd cell_6t
Xbit_r19_c32 bl_32 br_32 wl_19 vdd gnd cell_6t
Xbit_r20_c32 bl_32 br_32 wl_20 vdd gnd cell_6t
Xbit_r21_c32 bl_32 br_32 wl_21 vdd gnd cell_6t
Xbit_r22_c32 bl_32 br_32 wl_22 vdd gnd cell_6t
Xbit_r23_c32 bl_32 br_32 wl_23 vdd gnd cell_6t
Xbit_r24_c32 bl_32 br_32 wl_24 vdd gnd cell_6t
Xbit_r25_c32 bl_32 br_32 wl_25 vdd gnd cell_6t
Xbit_r26_c32 bl_32 br_32 wl_26 vdd gnd cell_6t
Xbit_r27_c32 bl_32 br_32 wl_27 vdd gnd cell_6t
Xbit_r28_c32 bl_32 br_32 wl_28 vdd gnd cell_6t
Xbit_r29_c32 bl_32 br_32 wl_29 vdd gnd cell_6t
Xbit_r30_c32 bl_32 br_32 wl_30 vdd gnd cell_6t
Xbit_r31_c32 bl_32 br_32 wl_31 vdd gnd cell_6t
Xbit_r32_c32 bl_32 br_32 wl_32 vdd gnd cell_6t
Xbit_r33_c32 bl_32 br_32 wl_33 vdd gnd cell_6t
Xbit_r34_c32 bl_32 br_32 wl_34 vdd gnd cell_6t
Xbit_r35_c32 bl_32 br_32 wl_35 vdd gnd cell_6t
Xbit_r36_c32 bl_32 br_32 wl_36 vdd gnd cell_6t
Xbit_r37_c32 bl_32 br_32 wl_37 vdd gnd cell_6t
Xbit_r38_c32 bl_32 br_32 wl_38 vdd gnd cell_6t
Xbit_r39_c32 bl_32 br_32 wl_39 vdd gnd cell_6t
Xbit_r40_c32 bl_32 br_32 wl_40 vdd gnd cell_6t
Xbit_r41_c32 bl_32 br_32 wl_41 vdd gnd cell_6t
Xbit_r42_c32 bl_32 br_32 wl_42 vdd gnd cell_6t
Xbit_r43_c32 bl_32 br_32 wl_43 vdd gnd cell_6t
Xbit_r44_c32 bl_32 br_32 wl_44 vdd gnd cell_6t
Xbit_r45_c32 bl_32 br_32 wl_45 vdd gnd cell_6t
Xbit_r46_c32 bl_32 br_32 wl_46 vdd gnd cell_6t
Xbit_r47_c32 bl_32 br_32 wl_47 vdd gnd cell_6t
Xbit_r48_c32 bl_32 br_32 wl_48 vdd gnd cell_6t
Xbit_r49_c32 bl_32 br_32 wl_49 vdd gnd cell_6t
Xbit_r50_c32 bl_32 br_32 wl_50 vdd gnd cell_6t
Xbit_r51_c32 bl_32 br_32 wl_51 vdd gnd cell_6t
Xbit_r52_c32 bl_32 br_32 wl_52 vdd gnd cell_6t
Xbit_r53_c32 bl_32 br_32 wl_53 vdd gnd cell_6t
Xbit_r54_c32 bl_32 br_32 wl_54 vdd gnd cell_6t
Xbit_r55_c32 bl_32 br_32 wl_55 vdd gnd cell_6t
Xbit_r56_c32 bl_32 br_32 wl_56 vdd gnd cell_6t
Xbit_r57_c32 bl_32 br_32 wl_57 vdd gnd cell_6t
Xbit_r58_c32 bl_32 br_32 wl_58 vdd gnd cell_6t
Xbit_r59_c32 bl_32 br_32 wl_59 vdd gnd cell_6t
Xbit_r60_c32 bl_32 br_32 wl_60 vdd gnd cell_6t
Xbit_r61_c32 bl_32 br_32 wl_61 vdd gnd cell_6t
Xbit_r62_c32 bl_32 br_32 wl_62 vdd gnd cell_6t
Xbit_r63_c32 bl_32 br_32 wl_63 vdd gnd cell_6t
Xbit_r64_c32 bl_32 br_32 wl_64 vdd gnd cell_6t
Xbit_r65_c32 bl_32 br_32 wl_65 vdd gnd cell_6t
Xbit_r66_c32 bl_32 br_32 wl_66 vdd gnd cell_6t
Xbit_r67_c32 bl_32 br_32 wl_67 vdd gnd cell_6t
Xbit_r68_c32 bl_32 br_32 wl_68 vdd gnd cell_6t
Xbit_r69_c32 bl_32 br_32 wl_69 vdd gnd cell_6t
Xbit_r70_c32 bl_32 br_32 wl_70 vdd gnd cell_6t
Xbit_r71_c32 bl_32 br_32 wl_71 vdd gnd cell_6t
Xbit_r72_c32 bl_32 br_32 wl_72 vdd gnd cell_6t
Xbit_r73_c32 bl_32 br_32 wl_73 vdd gnd cell_6t
Xbit_r74_c32 bl_32 br_32 wl_74 vdd gnd cell_6t
Xbit_r75_c32 bl_32 br_32 wl_75 vdd gnd cell_6t
Xbit_r76_c32 bl_32 br_32 wl_76 vdd gnd cell_6t
Xbit_r77_c32 bl_32 br_32 wl_77 vdd gnd cell_6t
Xbit_r78_c32 bl_32 br_32 wl_78 vdd gnd cell_6t
Xbit_r79_c32 bl_32 br_32 wl_79 vdd gnd cell_6t
Xbit_r80_c32 bl_32 br_32 wl_80 vdd gnd cell_6t
Xbit_r81_c32 bl_32 br_32 wl_81 vdd gnd cell_6t
Xbit_r82_c32 bl_32 br_32 wl_82 vdd gnd cell_6t
Xbit_r83_c32 bl_32 br_32 wl_83 vdd gnd cell_6t
Xbit_r84_c32 bl_32 br_32 wl_84 vdd gnd cell_6t
Xbit_r85_c32 bl_32 br_32 wl_85 vdd gnd cell_6t
Xbit_r86_c32 bl_32 br_32 wl_86 vdd gnd cell_6t
Xbit_r87_c32 bl_32 br_32 wl_87 vdd gnd cell_6t
Xbit_r88_c32 bl_32 br_32 wl_88 vdd gnd cell_6t
Xbit_r89_c32 bl_32 br_32 wl_89 vdd gnd cell_6t
Xbit_r90_c32 bl_32 br_32 wl_90 vdd gnd cell_6t
Xbit_r91_c32 bl_32 br_32 wl_91 vdd gnd cell_6t
Xbit_r92_c32 bl_32 br_32 wl_92 vdd gnd cell_6t
Xbit_r93_c32 bl_32 br_32 wl_93 vdd gnd cell_6t
Xbit_r94_c32 bl_32 br_32 wl_94 vdd gnd cell_6t
Xbit_r95_c32 bl_32 br_32 wl_95 vdd gnd cell_6t
Xbit_r96_c32 bl_32 br_32 wl_96 vdd gnd cell_6t
Xbit_r97_c32 bl_32 br_32 wl_97 vdd gnd cell_6t
Xbit_r98_c32 bl_32 br_32 wl_98 vdd gnd cell_6t
Xbit_r99_c32 bl_32 br_32 wl_99 vdd gnd cell_6t
Xbit_r100_c32 bl_32 br_32 wl_100 vdd gnd cell_6t
Xbit_r101_c32 bl_32 br_32 wl_101 vdd gnd cell_6t
Xbit_r102_c32 bl_32 br_32 wl_102 vdd gnd cell_6t
Xbit_r103_c32 bl_32 br_32 wl_103 vdd gnd cell_6t
Xbit_r104_c32 bl_32 br_32 wl_104 vdd gnd cell_6t
Xbit_r105_c32 bl_32 br_32 wl_105 vdd gnd cell_6t
Xbit_r106_c32 bl_32 br_32 wl_106 vdd gnd cell_6t
Xbit_r107_c32 bl_32 br_32 wl_107 vdd gnd cell_6t
Xbit_r108_c32 bl_32 br_32 wl_108 vdd gnd cell_6t
Xbit_r109_c32 bl_32 br_32 wl_109 vdd gnd cell_6t
Xbit_r110_c32 bl_32 br_32 wl_110 vdd gnd cell_6t
Xbit_r111_c32 bl_32 br_32 wl_111 vdd gnd cell_6t
Xbit_r112_c32 bl_32 br_32 wl_112 vdd gnd cell_6t
Xbit_r113_c32 bl_32 br_32 wl_113 vdd gnd cell_6t
Xbit_r114_c32 bl_32 br_32 wl_114 vdd gnd cell_6t
Xbit_r115_c32 bl_32 br_32 wl_115 vdd gnd cell_6t
Xbit_r116_c32 bl_32 br_32 wl_116 vdd gnd cell_6t
Xbit_r117_c32 bl_32 br_32 wl_117 vdd gnd cell_6t
Xbit_r118_c32 bl_32 br_32 wl_118 vdd gnd cell_6t
Xbit_r119_c32 bl_32 br_32 wl_119 vdd gnd cell_6t
Xbit_r120_c32 bl_32 br_32 wl_120 vdd gnd cell_6t
Xbit_r121_c32 bl_32 br_32 wl_121 vdd gnd cell_6t
Xbit_r122_c32 bl_32 br_32 wl_122 vdd gnd cell_6t
Xbit_r123_c32 bl_32 br_32 wl_123 vdd gnd cell_6t
Xbit_r124_c32 bl_32 br_32 wl_124 vdd gnd cell_6t
Xbit_r125_c32 bl_32 br_32 wl_125 vdd gnd cell_6t
Xbit_r126_c32 bl_32 br_32 wl_126 vdd gnd cell_6t
Xbit_r127_c32 bl_32 br_32 wl_127 vdd gnd cell_6t
Xbit_r0_c33 bl_33 br_33 wl_0 vdd gnd cell_6t
Xbit_r1_c33 bl_33 br_33 wl_1 vdd gnd cell_6t
Xbit_r2_c33 bl_33 br_33 wl_2 vdd gnd cell_6t
Xbit_r3_c33 bl_33 br_33 wl_3 vdd gnd cell_6t
Xbit_r4_c33 bl_33 br_33 wl_4 vdd gnd cell_6t
Xbit_r5_c33 bl_33 br_33 wl_5 vdd gnd cell_6t
Xbit_r6_c33 bl_33 br_33 wl_6 vdd gnd cell_6t
Xbit_r7_c33 bl_33 br_33 wl_7 vdd gnd cell_6t
Xbit_r8_c33 bl_33 br_33 wl_8 vdd gnd cell_6t
Xbit_r9_c33 bl_33 br_33 wl_9 vdd gnd cell_6t
Xbit_r10_c33 bl_33 br_33 wl_10 vdd gnd cell_6t
Xbit_r11_c33 bl_33 br_33 wl_11 vdd gnd cell_6t
Xbit_r12_c33 bl_33 br_33 wl_12 vdd gnd cell_6t
Xbit_r13_c33 bl_33 br_33 wl_13 vdd gnd cell_6t
Xbit_r14_c33 bl_33 br_33 wl_14 vdd gnd cell_6t
Xbit_r15_c33 bl_33 br_33 wl_15 vdd gnd cell_6t
Xbit_r16_c33 bl_33 br_33 wl_16 vdd gnd cell_6t
Xbit_r17_c33 bl_33 br_33 wl_17 vdd gnd cell_6t
Xbit_r18_c33 bl_33 br_33 wl_18 vdd gnd cell_6t
Xbit_r19_c33 bl_33 br_33 wl_19 vdd gnd cell_6t
Xbit_r20_c33 bl_33 br_33 wl_20 vdd gnd cell_6t
Xbit_r21_c33 bl_33 br_33 wl_21 vdd gnd cell_6t
Xbit_r22_c33 bl_33 br_33 wl_22 vdd gnd cell_6t
Xbit_r23_c33 bl_33 br_33 wl_23 vdd gnd cell_6t
Xbit_r24_c33 bl_33 br_33 wl_24 vdd gnd cell_6t
Xbit_r25_c33 bl_33 br_33 wl_25 vdd gnd cell_6t
Xbit_r26_c33 bl_33 br_33 wl_26 vdd gnd cell_6t
Xbit_r27_c33 bl_33 br_33 wl_27 vdd gnd cell_6t
Xbit_r28_c33 bl_33 br_33 wl_28 vdd gnd cell_6t
Xbit_r29_c33 bl_33 br_33 wl_29 vdd gnd cell_6t
Xbit_r30_c33 bl_33 br_33 wl_30 vdd gnd cell_6t
Xbit_r31_c33 bl_33 br_33 wl_31 vdd gnd cell_6t
Xbit_r32_c33 bl_33 br_33 wl_32 vdd gnd cell_6t
Xbit_r33_c33 bl_33 br_33 wl_33 vdd gnd cell_6t
Xbit_r34_c33 bl_33 br_33 wl_34 vdd gnd cell_6t
Xbit_r35_c33 bl_33 br_33 wl_35 vdd gnd cell_6t
Xbit_r36_c33 bl_33 br_33 wl_36 vdd gnd cell_6t
Xbit_r37_c33 bl_33 br_33 wl_37 vdd gnd cell_6t
Xbit_r38_c33 bl_33 br_33 wl_38 vdd gnd cell_6t
Xbit_r39_c33 bl_33 br_33 wl_39 vdd gnd cell_6t
Xbit_r40_c33 bl_33 br_33 wl_40 vdd gnd cell_6t
Xbit_r41_c33 bl_33 br_33 wl_41 vdd gnd cell_6t
Xbit_r42_c33 bl_33 br_33 wl_42 vdd gnd cell_6t
Xbit_r43_c33 bl_33 br_33 wl_43 vdd gnd cell_6t
Xbit_r44_c33 bl_33 br_33 wl_44 vdd gnd cell_6t
Xbit_r45_c33 bl_33 br_33 wl_45 vdd gnd cell_6t
Xbit_r46_c33 bl_33 br_33 wl_46 vdd gnd cell_6t
Xbit_r47_c33 bl_33 br_33 wl_47 vdd gnd cell_6t
Xbit_r48_c33 bl_33 br_33 wl_48 vdd gnd cell_6t
Xbit_r49_c33 bl_33 br_33 wl_49 vdd gnd cell_6t
Xbit_r50_c33 bl_33 br_33 wl_50 vdd gnd cell_6t
Xbit_r51_c33 bl_33 br_33 wl_51 vdd gnd cell_6t
Xbit_r52_c33 bl_33 br_33 wl_52 vdd gnd cell_6t
Xbit_r53_c33 bl_33 br_33 wl_53 vdd gnd cell_6t
Xbit_r54_c33 bl_33 br_33 wl_54 vdd gnd cell_6t
Xbit_r55_c33 bl_33 br_33 wl_55 vdd gnd cell_6t
Xbit_r56_c33 bl_33 br_33 wl_56 vdd gnd cell_6t
Xbit_r57_c33 bl_33 br_33 wl_57 vdd gnd cell_6t
Xbit_r58_c33 bl_33 br_33 wl_58 vdd gnd cell_6t
Xbit_r59_c33 bl_33 br_33 wl_59 vdd gnd cell_6t
Xbit_r60_c33 bl_33 br_33 wl_60 vdd gnd cell_6t
Xbit_r61_c33 bl_33 br_33 wl_61 vdd gnd cell_6t
Xbit_r62_c33 bl_33 br_33 wl_62 vdd gnd cell_6t
Xbit_r63_c33 bl_33 br_33 wl_63 vdd gnd cell_6t
Xbit_r64_c33 bl_33 br_33 wl_64 vdd gnd cell_6t
Xbit_r65_c33 bl_33 br_33 wl_65 vdd gnd cell_6t
Xbit_r66_c33 bl_33 br_33 wl_66 vdd gnd cell_6t
Xbit_r67_c33 bl_33 br_33 wl_67 vdd gnd cell_6t
Xbit_r68_c33 bl_33 br_33 wl_68 vdd gnd cell_6t
Xbit_r69_c33 bl_33 br_33 wl_69 vdd gnd cell_6t
Xbit_r70_c33 bl_33 br_33 wl_70 vdd gnd cell_6t
Xbit_r71_c33 bl_33 br_33 wl_71 vdd gnd cell_6t
Xbit_r72_c33 bl_33 br_33 wl_72 vdd gnd cell_6t
Xbit_r73_c33 bl_33 br_33 wl_73 vdd gnd cell_6t
Xbit_r74_c33 bl_33 br_33 wl_74 vdd gnd cell_6t
Xbit_r75_c33 bl_33 br_33 wl_75 vdd gnd cell_6t
Xbit_r76_c33 bl_33 br_33 wl_76 vdd gnd cell_6t
Xbit_r77_c33 bl_33 br_33 wl_77 vdd gnd cell_6t
Xbit_r78_c33 bl_33 br_33 wl_78 vdd gnd cell_6t
Xbit_r79_c33 bl_33 br_33 wl_79 vdd gnd cell_6t
Xbit_r80_c33 bl_33 br_33 wl_80 vdd gnd cell_6t
Xbit_r81_c33 bl_33 br_33 wl_81 vdd gnd cell_6t
Xbit_r82_c33 bl_33 br_33 wl_82 vdd gnd cell_6t
Xbit_r83_c33 bl_33 br_33 wl_83 vdd gnd cell_6t
Xbit_r84_c33 bl_33 br_33 wl_84 vdd gnd cell_6t
Xbit_r85_c33 bl_33 br_33 wl_85 vdd gnd cell_6t
Xbit_r86_c33 bl_33 br_33 wl_86 vdd gnd cell_6t
Xbit_r87_c33 bl_33 br_33 wl_87 vdd gnd cell_6t
Xbit_r88_c33 bl_33 br_33 wl_88 vdd gnd cell_6t
Xbit_r89_c33 bl_33 br_33 wl_89 vdd gnd cell_6t
Xbit_r90_c33 bl_33 br_33 wl_90 vdd gnd cell_6t
Xbit_r91_c33 bl_33 br_33 wl_91 vdd gnd cell_6t
Xbit_r92_c33 bl_33 br_33 wl_92 vdd gnd cell_6t
Xbit_r93_c33 bl_33 br_33 wl_93 vdd gnd cell_6t
Xbit_r94_c33 bl_33 br_33 wl_94 vdd gnd cell_6t
Xbit_r95_c33 bl_33 br_33 wl_95 vdd gnd cell_6t
Xbit_r96_c33 bl_33 br_33 wl_96 vdd gnd cell_6t
Xbit_r97_c33 bl_33 br_33 wl_97 vdd gnd cell_6t
Xbit_r98_c33 bl_33 br_33 wl_98 vdd gnd cell_6t
Xbit_r99_c33 bl_33 br_33 wl_99 vdd gnd cell_6t
Xbit_r100_c33 bl_33 br_33 wl_100 vdd gnd cell_6t
Xbit_r101_c33 bl_33 br_33 wl_101 vdd gnd cell_6t
Xbit_r102_c33 bl_33 br_33 wl_102 vdd gnd cell_6t
Xbit_r103_c33 bl_33 br_33 wl_103 vdd gnd cell_6t
Xbit_r104_c33 bl_33 br_33 wl_104 vdd gnd cell_6t
Xbit_r105_c33 bl_33 br_33 wl_105 vdd gnd cell_6t
Xbit_r106_c33 bl_33 br_33 wl_106 vdd gnd cell_6t
Xbit_r107_c33 bl_33 br_33 wl_107 vdd gnd cell_6t
Xbit_r108_c33 bl_33 br_33 wl_108 vdd gnd cell_6t
Xbit_r109_c33 bl_33 br_33 wl_109 vdd gnd cell_6t
Xbit_r110_c33 bl_33 br_33 wl_110 vdd gnd cell_6t
Xbit_r111_c33 bl_33 br_33 wl_111 vdd gnd cell_6t
Xbit_r112_c33 bl_33 br_33 wl_112 vdd gnd cell_6t
Xbit_r113_c33 bl_33 br_33 wl_113 vdd gnd cell_6t
Xbit_r114_c33 bl_33 br_33 wl_114 vdd gnd cell_6t
Xbit_r115_c33 bl_33 br_33 wl_115 vdd gnd cell_6t
Xbit_r116_c33 bl_33 br_33 wl_116 vdd gnd cell_6t
Xbit_r117_c33 bl_33 br_33 wl_117 vdd gnd cell_6t
Xbit_r118_c33 bl_33 br_33 wl_118 vdd gnd cell_6t
Xbit_r119_c33 bl_33 br_33 wl_119 vdd gnd cell_6t
Xbit_r120_c33 bl_33 br_33 wl_120 vdd gnd cell_6t
Xbit_r121_c33 bl_33 br_33 wl_121 vdd gnd cell_6t
Xbit_r122_c33 bl_33 br_33 wl_122 vdd gnd cell_6t
Xbit_r123_c33 bl_33 br_33 wl_123 vdd gnd cell_6t
Xbit_r124_c33 bl_33 br_33 wl_124 vdd gnd cell_6t
Xbit_r125_c33 bl_33 br_33 wl_125 vdd gnd cell_6t
Xbit_r126_c33 bl_33 br_33 wl_126 vdd gnd cell_6t
Xbit_r127_c33 bl_33 br_33 wl_127 vdd gnd cell_6t
Xbit_r0_c34 bl_34 br_34 wl_0 vdd gnd cell_6t
Xbit_r1_c34 bl_34 br_34 wl_1 vdd gnd cell_6t
Xbit_r2_c34 bl_34 br_34 wl_2 vdd gnd cell_6t
Xbit_r3_c34 bl_34 br_34 wl_3 vdd gnd cell_6t
Xbit_r4_c34 bl_34 br_34 wl_4 vdd gnd cell_6t
Xbit_r5_c34 bl_34 br_34 wl_5 vdd gnd cell_6t
Xbit_r6_c34 bl_34 br_34 wl_6 vdd gnd cell_6t
Xbit_r7_c34 bl_34 br_34 wl_7 vdd gnd cell_6t
Xbit_r8_c34 bl_34 br_34 wl_8 vdd gnd cell_6t
Xbit_r9_c34 bl_34 br_34 wl_9 vdd gnd cell_6t
Xbit_r10_c34 bl_34 br_34 wl_10 vdd gnd cell_6t
Xbit_r11_c34 bl_34 br_34 wl_11 vdd gnd cell_6t
Xbit_r12_c34 bl_34 br_34 wl_12 vdd gnd cell_6t
Xbit_r13_c34 bl_34 br_34 wl_13 vdd gnd cell_6t
Xbit_r14_c34 bl_34 br_34 wl_14 vdd gnd cell_6t
Xbit_r15_c34 bl_34 br_34 wl_15 vdd gnd cell_6t
Xbit_r16_c34 bl_34 br_34 wl_16 vdd gnd cell_6t
Xbit_r17_c34 bl_34 br_34 wl_17 vdd gnd cell_6t
Xbit_r18_c34 bl_34 br_34 wl_18 vdd gnd cell_6t
Xbit_r19_c34 bl_34 br_34 wl_19 vdd gnd cell_6t
Xbit_r20_c34 bl_34 br_34 wl_20 vdd gnd cell_6t
Xbit_r21_c34 bl_34 br_34 wl_21 vdd gnd cell_6t
Xbit_r22_c34 bl_34 br_34 wl_22 vdd gnd cell_6t
Xbit_r23_c34 bl_34 br_34 wl_23 vdd gnd cell_6t
Xbit_r24_c34 bl_34 br_34 wl_24 vdd gnd cell_6t
Xbit_r25_c34 bl_34 br_34 wl_25 vdd gnd cell_6t
Xbit_r26_c34 bl_34 br_34 wl_26 vdd gnd cell_6t
Xbit_r27_c34 bl_34 br_34 wl_27 vdd gnd cell_6t
Xbit_r28_c34 bl_34 br_34 wl_28 vdd gnd cell_6t
Xbit_r29_c34 bl_34 br_34 wl_29 vdd gnd cell_6t
Xbit_r30_c34 bl_34 br_34 wl_30 vdd gnd cell_6t
Xbit_r31_c34 bl_34 br_34 wl_31 vdd gnd cell_6t
Xbit_r32_c34 bl_34 br_34 wl_32 vdd gnd cell_6t
Xbit_r33_c34 bl_34 br_34 wl_33 vdd gnd cell_6t
Xbit_r34_c34 bl_34 br_34 wl_34 vdd gnd cell_6t
Xbit_r35_c34 bl_34 br_34 wl_35 vdd gnd cell_6t
Xbit_r36_c34 bl_34 br_34 wl_36 vdd gnd cell_6t
Xbit_r37_c34 bl_34 br_34 wl_37 vdd gnd cell_6t
Xbit_r38_c34 bl_34 br_34 wl_38 vdd gnd cell_6t
Xbit_r39_c34 bl_34 br_34 wl_39 vdd gnd cell_6t
Xbit_r40_c34 bl_34 br_34 wl_40 vdd gnd cell_6t
Xbit_r41_c34 bl_34 br_34 wl_41 vdd gnd cell_6t
Xbit_r42_c34 bl_34 br_34 wl_42 vdd gnd cell_6t
Xbit_r43_c34 bl_34 br_34 wl_43 vdd gnd cell_6t
Xbit_r44_c34 bl_34 br_34 wl_44 vdd gnd cell_6t
Xbit_r45_c34 bl_34 br_34 wl_45 vdd gnd cell_6t
Xbit_r46_c34 bl_34 br_34 wl_46 vdd gnd cell_6t
Xbit_r47_c34 bl_34 br_34 wl_47 vdd gnd cell_6t
Xbit_r48_c34 bl_34 br_34 wl_48 vdd gnd cell_6t
Xbit_r49_c34 bl_34 br_34 wl_49 vdd gnd cell_6t
Xbit_r50_c34 bl_34 br_34 wl_50 vdd gnd cell_6t
Xbit_r51_c34 bl_34 br_34 wl_51 vdd gnd cell_6t
Xbit_r52_c34 bl_34 br_34 wl_52 vdd gnd cell_6t
Xbit_r53_c34 bl_34 br_34 wl_53 vdd gnd cell_6t
Xbit_r54_c34 bl_34 br_34 wl_54 vdd gnd cell_6t
Xbit_r55_c34 bl_34 br_34 wl_55 vdd gnd cell_6t
Xbit_r56_c34 bl_34 br_34 wl_56 vdd gnd cell_6t
Xbit_r57_c34 bl_34 br_34 wl_57 vdd gnd cell_6t
Xbit_r58_c34 bl_34 br_34 wl_58 vdd gnd cell_6t
Xbit_r59_c34 bl_34 br_34 wl_59 vdd gnd cell_6t
Xbit_r60_c34 bl_34 br_34 wl_60 vdd gnd cell_6t
Xbit_r61_c34 bl_34 br_34 wl_61 vdd gnd cell_6t
Xbit_r62_c34 bl_34 br_34 wl_62 vdd gnd cell_6t
Xbit_r63_c34 bl_34 br_34 wl_63 vdd gnd cell_6t
Xbit_r64_c34 bl_34 br_34 wl_64 vdd gnd cell_6t
Xbit_r65_c34 bl_34 br_34 wl_65 vdd gnd cell_6t
Xbit_r66_c34 bl_34 br_34 wl_66 vdd gnd cell_6t
Xbit_r67_c34 bl_34 br_34 wl_67 vdd gnd cell_6t
Xbit_r68_c34 bl_34 br_34 wl_68 vdd gnd cell_6t
Xbit_r69_c34 bl_34 br_34 wl_69 vdd gnd cell_6t
Xbit_r70_c34 bl_34 br_34 wl_70 vdd gnd cell_6t
Xbit_r71_c34 bl_34 br_34 wl_71 vdd gnd cell_6t
Xbit_r72_c34 bl_34 br_34 wl_72 vdd gnd cell_6t
Xbit_r73_c34 bl_34 br_34 wl_73 vdd gnd cell_6t
Xbit_r74_c34 bl_34 br_34 wl_74 vdd gnd cell_6t
Xbit_r75_c34 bl_34 br_34 wl_75 vdd gnd cell_6t
Xbit_r76_c34 bl_34 br_34 wl_76 vdd gnd cell_6t
Xbit_r77_c34 bl_34 br_34 wl_77 vdd gnd cell_6t
Xbit_r78_c34 bl_34 br_34 wl_78 vdd gnd cell_6t
Xbit_r79_c34 bl_34 br_34 wl_79 vdd gnd cell_6t
Xbit_r80_c34 bl_34 br_34 wl_80 vdd gnd cell_6t
Xbit_r81_c34 bl_34 br_34 wl_81 vdd gnd cell_6t
Xbit_r82_c34 bl_34 br_34 wl_82 vdd gnd cell_6t
Xbit_r83_c34 bl_34 br_34 wl_83 vdd gnd cell_6t
Xbit_r84_c34 bl_34 br_34 wl_84 vdd gnd cell_6t
Xbit_r85_c34 bl_34 br_34 wl_85 vdd gnd cell_6t
Xbit_r86_c34 bl_34 br_34 wl_86 vdd gnd cell_6t
Xbit_r87_c34 bl_34 br_34 wl_87 vdd gnd cell_6t
Xbit_r88_c34 bl_34 br_34 wl_88 vdd gnd cell_6t
Xbit_r89_c34 bl_34 br_34 wl_89 vdd gnd cell_6t
Xbit_r90_c34 bl_34 br_34 wl_90 vdd gnd cell_6t
Xbit_r91_c34 bl_34 br_34 wl_91 vdd gnd cell_6t
Xbit_r92_c34 bl_34 br_34 wl_92 vdd gnd cell_6t
Xbit_r93_c34 bl_34 br_34 wl_93 vdd gnd cell_6t
Xbit_r94_c34 bl_34 br_34 wl_94 vdd gnd cell_6t
Xbit_r95_c34 bl_34 br_34 wl_95 vdd gnd cell_6t
Xbit_r96_c34 bl_34 br_34 wl_96 vdd gnd cell_6t
Xbit_r97_c34 bl_34 br_34 wl_97 vdd gnd cell_6t
Xbit_r98_c34 bl_34 br_34 wl_98 vdd gnd cell_6t
Xbit_r99_c34 bl_34 br_34 wl_99 vdd gnd cell_6t
Xbit_r100_c34 bl_34 br_34 wl_100 vdd gnd cell_6t
Xbit_r101_c34 bl_34 br_34 wl_101 vdd gnd cell_6t
Xbit_r102_c34 bl_34 br_34 wl_102 vdd gnd cell_6t
Xbit_r103_c34 bl_34 br_34 wl_103 vdd gnd cell_6t
Xbit_r104_c34 bl_34 br_34 wl_104 vdd gnd cell_6t
Xbit_r105_c34 bl_34 br_34 wl_105 vdd gnd cell_6t
Xbit_r106_c34 bl_34 br_34 wl_106 vdd gnd cell_6t
Xbit_r107_c34 bl_34 br_34 wl_107 vdd gnd cell_6t
Xbit_r108_c34 bl_34 br_34 wl_108 vdd gnd cell_6t
Xbit_r109_c34 bl_34 br_34 wl_109 vdd gnd cell_6t
Xbit_r110_c34 bl_34 br_34 wl_110 vdd gnd cell_6t
Xbit_r111_c34 bl_34 br_34 wl_111 vdd gnd cell_6t
Xbit_r112_c34 bl_34 br_34 wl_112 vdd gnd cell_6t
Xbit_r113_c34 bl_34 br_34 wl_113 vdd gnd cell_6t
Xbit_r114_c34 bl_34 br_34 wl_114 vdd gnd cell_6t
Xbit_r115_c34 bl_34 br_34 wl_115 vdd gnd cell_6t
Xbit_r116_c34 bl_34 br_34 wl_116 vdd gnd cell_6t
Xbit_r117_c34 bl_34 br_34 wl_117 vdd gnd cell_6t
Xbit_r118_c34 bl_34 br_34 wl_118 vdd gnd cell_6t
Xbit_r119_c34 bl_34 br_34 wl_119 vdd gnd cell_6t
Xbit_r120_c34 bl_34 br_34 wl_120 vdd gnd cell_6t
Xbit_r121_c34 bl_34 br_34 wl_121 vdd gnd cell_6t
Xbit_r122_c34 bl_34 br_34 wl_122 vdd gnd cell_6t
Xbit_r123_c34 bl_34 br_34 wl_123 vdd gnd cell_6t
Xbit_r124_c34 bl_34 br_34 wl_124 vdd gnd cell_6t
Xbit_r125_c34 bl_34 br_34 wl_125 vdd gnd cell_6t
Xbit_r126_c34 bl_34 br_34 wl_126 vdd gnd cell_6t
Xbit_r127_c34 bl_34 br_34 wl_127 vdd gnd cell_6t
Xbit_r0_c35 bl_35 br_35 wl_0 vdd gnd cell_6t
Xbit_r1_c35 bl_35 br_35 wl_1 vdd gnd cell_6t
Xbit_r2_c35 bl_35 br_35 wl_2 vdd gnd cell_6t
Xbit_r3_c35 bl_35 br_35 wl_3 vdd gnd cell_6t
Xbit_r4_c35 bl_35 br_35 wl_4 vdd gnd cell_6t
Xbit_r5_c35 bl_35 br_35 wl_5 vdd gnd cell_6t
Xbit_r6_c35 bl_35 br_35 wl_6 vdd gnd cell_6t
Xbit_r7_c35 bl_35 br_35 wl_7 vdd gnd cell_6t
Xbit_r8_c35 bl_35 br_35 wl_8 vdd gnd cell_6t
Xbit_r9_c35 bl_35 br_35 wl_9 vdd gnd cell_6t
Xbit_r10_c35 bl_35 br_35 wl_10 vdd gnd cell_6t
Xbit_r11_c35 bl_35 br_35 wl_11 vdd gnd cell_6t
Xbit_r12_c35 bl_35 br_35 wl_12 vdd gnd cell_6t
Xbit_r13_c35 bl_35 br_35 wl_13 vdd gnd cell_6t
Xbit_r14_c35 bl_35 br_35 wl_14 vdd gnd cell_6t
Xbit_r15_c35 bl_35 br_35 wl_15 vdd gnd cell_6t
Xbit_r16_c35 bl_35 br_35 wl_16 vdd gnd cell_6t
Xbit_r17_c35 bl_35 br_35 wl_17 vdd gnd cell_6t
Xbit_r18_c35 bl_35 br_35 wl_18 vdd gnd cell_6t
Xbit_r19_c35 bl_35 br_35 wl_19 vdd gnd cell_6t
Xbit_r20_c35 bl_35 br_35 wl_20 vdd gnd cell_6t
Xbit_r21_c35 bl_35 br_35 wl_21 vdd gnd cell_6t
Xbit_r22_c35 bl_35 br_35 wl_22 vdd gnd cell_6t
Xbit_r23_c35 bl_35 br_35 wl_23 vdd gnd cell_6t
Xbit_r24_c35 bl_35 br_35 wl_24 vdd gnd cell_6t
Xbit_r25_c35 bl_35 br_35 wl_25 vdd gnd cell_6t
Xbit_r26_c35 bl_35 br_35 wl_26 vdd gnd cell_6t
Xbit_r27_c35 bl_35 br_35 wl_27 vdd gnd cell_6t
Xbit_r28_c35 bl_35 br_35 wl_28 vdd gnd cell_6t
Xbit_r29_c35 bl_35 br_35 wl_29 vdd gnd cell_6t
Xbit_r30_c35 bl_35 br_35 wl_30 vdd gnd cell_6t
Xbit_r31_c35 bl_35 br_35 wl_31 vdd gnd cell_6t
Xbit_r32_c35 bl_35 br_35 wl_32 vdd gnd cell_6t
Xbit_r33_c35 bl_35 br_35 wl_33 vdd gnd cell_6t
Xbit_r34_c35 bl_35 br_35 wl_34 vdd gnd cell_6t
Xbit_r35_c35 bl_35 br_35 wl_35 vdd gnd cell_6t
Xbit_r36_c35 bl_35 br_35 wl_36 vdd gnd cell_6t
Xbit_r37_c35 bl_35 br_35 wl_37 vdd gnd cell_6t
Xbit_r38_c35 bl_35 br_35 wl_38 vdd gnd cell_6t
Xbit_r39_c35 bl_35 br_35 wl_39 vdd gnd cell_6t
Xbit_r40_c35 bl_35 br_35 wl_40 vdd gnd cell_6t
Xbit_r41_c35 bl_35 br_35 wl_41 vdd gnd cell_6t
Xbit_r42_c35 bl_35 br_35 wl_42 vdd gnd cell_6t
Xbit_r43_c35 bl_35 br_35 wl_43 vdd gnd cell_6t
Xbit_r44_c35 bl_35 br_35 wl_44 vdd gnd cell_6t
Xbit_r45_c35 bl_35 br_35 wl_45 vdd gnd cell_6t
Xbit_r46_c35 bl_35 br_35 wl_46 vdd gnd cell_6t
Xbit_r47_c35 bl_35 br_35 wl_47 vdd gnd cell_6t
Xbit_r48_c35 bl_35 br_35 wl_48 vdd gnd cell_6t
Xbit_r49_c35 bl_35 br_35 wl_49 vdd gnd cell_6t
Xbit_r50_c35 bl_35 br_35 wl_50 vdd gnd cell_6t
Xbit_r51_c35 bl_35 br_35 wl_51 vdd gnd cell_6t
Xbit_r52_c35 bl_35 br_35 wl_52 vdd gnd cell_6t
Xbit_r53_c35 bl_35 br_35 wl_53 vdd gnd cell_6t
Xbit_r54_c35 bl_35 br_35 wl_54 vdd gnd cell_6t
Xbit_r55_c35 bl_35 br_35 wl_55 vdd gnd cell_6t
Xbit_r56_c35 bl_35 br_35 wl_56 vdd gnd cell_6t
Xbit_r57_c35 bl_35 br_35 wl_57 vdd gnd cell_6t
Xbit_r58_c35 bl_35 br_35 wl_58 vdd gnd cell_6t
Xbit_r59_c35 bl_35 br_35 wl_59 vdd gnd cell_6t
Xbit_r60_c35 bl_35 br_35 wl_60 vdd gnd cell_6t
Xbit_r61_c35 bl_35 br_35 wl_61 vdd gnd cell_6t
Xbit_r62_c35 bl_35 br_35 wl_62 vdd gnd cell_6t
Xbit_r63_c35 bl_35 br_35 wl_63 vdd gnd cell_6t
Xbit_r64_c35 bl_35 br_35 wl_64 vdd gnd cell_6t
Xbit_r65_c35 bl_35 br_35 wl_65 vdd gnd cell_6t
Xbit_r66_c35 bl_35 br_35 wl_66 vdd gnd cell_6t
Xbit_r67_c35 bl_35 br_35 wl_67 vdd gnd cell_6t
Xbit_r68_c35 bl_35 br_35 wl_68 vdd gnd cell_6t
Xbit_r69_c35 bl_35 br_35 wl_69 vdd gnd cell_6t
Xbit_r70_c35 bl_35 br_35 wl_70 vdd gnd cell_6t
Xbit_r71_c35 bl_35 br_35 wl_71 vdd gnd cell_6t
Xbit_r72_c35 bl_35 br_35 wl_72 vdd gnd cell_6t
Xbit_r73_c35 bl_35 br_35 wl_73 vdd gnd cell_6t
Xbit_r74_c35 bl_35 br_35 wl_74 vdd gnd cell_6t
Xbit_r75_c35 bl_35 br_35 wl_75 vdd gnd cell_6t
Xbit_r76_c35 bl_35 br_35 wl_76 vdd gnd cell_6t
Xbit_r77_c35 bl_35 br_35 wl_77 vdd gnd cell_6t
Xbit_r78_c35 bl_35 br_35 wl_78 vdd gnd cell_6t
Xbit_r79_c35 bl_35 br_35 wl_79 vdd gnd cell_6t
Xbit_r80_c35 bl_35 br_35 wl_80 vdd gnd cell_6t
Xbit_r81_c35 bl_35 br_35 wl_81 vdd gnd cell_6t
Xbit_r82_c35 bl_35 br_35 wl_82 vdd gnd cell_6t
Xbit_r83_c35 bl_35 br_35 wl_83 vdd gnd cell_6t
Xbit_r84_c35 bl_35 br_35 wl_84 vdd gnd cell_6t
Xbit_r85_c35 bl_35 br_35 wl_85 vdd gnd cell_6t
Xbit_r86_c35 bl_35 br_35 wl_86 vdd gnd cell_6t
Xbit_r87_c35 bl_35 br_35 wl_87 vdd gnd cell_6t
Xbit_r88_c35 bl_35 br_35 wl_88 vdd gnd cell_6t
Xbit_r89_c35 bl_35 br_35 wl_89 vdd gnd cell_6t
Xbit_r90_c35 bl_35 br_35 wl_90 vdd gnd cell_6t
Xbit_r91_c35 bl_35 br_35 wl_91 vdd gnd cell_6t
Xbit_r92_c35 bl_35 br_35 wl_92 vdd gnd cell_6t
Xbit_r93_c35 bl_35 br_35 wl_93 vdd gnd cell_6t
Xbit_r94_c35 bl_35 br_35 wl_94 vdd gnd cell_6t
Xbit_r95_c35 bl_35 br_35 wl_95 vdd gnd cell_6t
Xbit_r96_c35 bl_35 br_35 wl_96 vdd gnd cell_6t
Xbit_r97_c35 bl_35 br_35 wl_97 vdd gnd cell_6t
Xbit_r98_c35 bl_35 br_35 wl_98 vdd gnd cell_6t
Xbit_r99_c35 bl_35 br_35 wl_99 vdd gnd cell_6t
Xbit_r100_c35 bl_35 br_35 wl_100 vdd gnd cell_6t
Xbit_r101_c35 bl_35 br_35 wl_101 vdd gnd cell_6t
Xbit_r102_c35 bl_35 br_35 wl_102 vdd gnd cell_6t
Xbit_r103_c35 bl_35 br_35 wl_103 vdd gnd cell_6t
Xbit_r104_c35 bl_35 br_35 wl_104 vdd gnd cell_6t
Xbit_r105_c35 bl_35 br_35 wl_105 vdd gnd cell_6t
Xbit_r106_c35 bl_35 br_35 wl_106 vdd gnd cell_6t
Xbit_r107_c35 bl_35 br_35 wl_107 vdd gnd cell_6t
Xbit_r108_c35 bl_35 br_35 wl_108 vdd gnd cell_6t
Xbit_r109_c35 bl_35 br_35 wl_109 vdd gnd cell_6t
Xbit_r110_c35 bl_35 br_35 wl_110 vdd gnd cell_6t
Xbit_r111_c35 bl_35 br_35 wl_111 vdd gnd cell_6t
Xbit_r112_c35 bl_35 br_35 wl_112 vdd gnd cell_6t
Xbit_r113_c35 bl_35 br_35 wl_113 vdd gnd cell_6t
Xbit_r114_c35 bl_35 br_35 wl_114 vdd gnd cell_6t
Xbit_r115_c35 bl_35 br_35 wl_115 vdd gnd cell_6t
Xbit_r116_c35 bl_35 br_35 wl_116 vdd gnd cell_6t
Xbit_r117_c35 bl_35 br_35 wl_117 vdd gnd cell_6t
Xbit_r118_c35 bl_35 br_35 wl_118 vdd gnd cell_6t
Xbit_r119_c35 bl_35 br_35 wl_119 vdd gnd cell_6t
Xbit_r120_c35 bl_35 br_35 wl_120 vdd gnd cell_6t
Xbit_r121_c35 bl_35 br_35 wl_121 vdd gnd cell_6t
Xbit_r122_c35 bl_35 br_35 wl_122 vdd gnd cell_6t
Xbit_r123_c35 bl_35 br_35 wl_123 vdd gnd cell_6t
Xbit_r124_c35 bl_35 br_35 wl_124 vdd gnd cell_6t
Xbit_r125_c35 bl_35 br_35 wl_125 vdd gnd cell_6t
Xbit_r126_c35 bl_35 br_35 wl_126 vdd gnd cell_6t
Xbit_r127_c35 bl_35 br_35 wl_127 vdd gnd cell_6t
Xbit_r0_c36 bl_36 br_36 wl_0 vdd gnd cell_6t
Xbit_r1_c36 bl_36 br_36 wl_1 vdd gnd cell_6t
Xbit_r2_c36 bl_36 br_36 wl_2 vdd gnd cell_6t
Xbit_r3_c36 bl_36 br_36 wl_3 vdd gnd cell_6t
Xbit_r4_c36 bl_36 br_36 wl_4 vdd gnd cell_6t
Xbit_r5_c36 bl_36 br_36 wl_5 vdd gnd cell_6t
Xbit_r6_c36 bl_36 br_36 wl_6 vdd gnd cell_6t
Xbit_r7_c36 bl_36 br_36 wl_7 vdd gnd cell_6t
Xbit_r8_c36 bl_36 br_36 wl_8 vdd gnd cell_6t
Xbit_r9_c36 bl_36 br_36 wl_9 vdd gnd cell_6t
Xbit_r10_c36 bl_36 br_36 wl_10 vdd gnd cell_6t
Xbit_r11_c36 bl_36 br_36 wl_11 vdd gnd cell_6t
Xbit_r12_c36 bl_36 br_36 wl_12 vdd gnd cell_6t
Xbit_r13_c36 bl_36 br_36 wl_13 vdd gnd cell_6t
Xbit_r14_c36 bl_36 br_36 wl_14 vdd gnd cell_6t
Xbit_r15_c36 bl_36 br_36 wl_15 vdd gnd cell_6t
Xbit_r16_c36 bl_36 br_36 wl_16 vdd gnd cell_6t
Xbit_r17_c36 bl_36 br_36 wl_17 vdd gnd cell_6t
Xbit_r18_c36 bl_36 br_36 wl_18 vdd gnd cell_6t
Xbit_r19_c36 bl_36 br_36 wl_19 vdd gnd cell_6t
Xbit_r20_c36 bl_36 br_36 wl_20 vdd gnd cell_6t
Xbit_r21_c36 bl_36 br_36 wl_21 vdd gnd cell_6t
Xbit_r22_c36 bl_36 br_36 wl_22 vdd gnd cell_6t
Xbit_r23_c36 bl_36 br_36 wl_23 vdd gnd cell_6t
Xbit_r24_c36 bl_36 br_36 wl_24 vdd gnd cell_6t
Xbit_r25_c36 bl_36 br_36 wl_25 vdd gnd cell_6t
Xbit_r26_c36 bl_36 br_36 wl_26 vdd gnd cell_6t
Xbit_r27_c36 bl_36 br_36 wl_27 vdd gnd cell_6t
Xbit_r28_c36 bl_36 br_36 wl_28 vdd gnd cell_6t
Xbit_r29_c36 bl_36 br_36 wl_29 vdd gnd cell_6t
Xbit_r30_c36 bl_36 br_36 wl_30 vdd gnd cell_6t
Xbit_r31_c36 bl_36 br_36 wl_31 vdd gnd cell_6t
Xbit_r32_c36 bl_36 br_36 wl_32 vdd gnd cell_6t
Xbit_r33_c36 bl_36 br_36 wl_33 vdd gnd cell_6t
Xbit_r34_c36 bl_36 br_36 wl_34 vdd gnd cell_6t
Xbit_r35_c36 bl_36 br_36 wl_35 vdd gnd cell_6t
Xbit_r36_c36 bl_36 br_36 wl_36 vdd gnd cell_6t
Xbit_r37_c36 bl_36 br_36 wl_37 vdd gnd cell_6t
Xbit_r38_c36 bl_36 br_36 wl_38 vdd gnd cell_6t
Xbit_r39_c36 bl_36 br_36 wl_39 vdd gnd cell_6t
Xbit_r40_c36 bl_36 br_36 wl_40 vdd gnd cell_6t
Xbit_r41_c36 bl_36 br_36 wl_41 vdd gnd cell_6t
Xbit_r42_c36 bl_36 br_36 wl_42 vdd gnd cell_6t
Xbit_r43_c36 bl_36 br_36 wl_43 vdd gnd cell_6t
Xbit_r44_c36 bl_36 br_36 wl_44 vdd gnd cell_6t
Xbit_r45_c36 bl_36 br_36 wl_45 vdd gnd cell_6t
Xbit_r46_c36 bl_36 br_36 wl_46 vdd gnd cell_6t
Xbit_r47_c36 bl_36 br_36 wl_47 vdd gnd cell_6t
Xbit_r48_c36 bl_36 br_36 wl_48 vdd gnd cell_6t
Xbit_r49_c36 bl_36 br_36 wl_49 vdd gnd cell_6t
Xbit_r50_c36 bl_36 br_36 wl_50 vdd gnd cell_6t
Xbit_r51_c36 bl_36 br_36 wl_51 vdd gnd cell_6t
Xbit_r52_c36 bl_36 br_36 wl_52 vdd gnd cell_6t
Xbit_r53_c36 bl_36 br_36 wl_53 vdd gnd cell_6t
Xbit_r54_c36 bl_36 br_36 wl_54 vdd gnd cell_6t
Xbit_r55_c36 bl_36 br_36 wl_55 vdd gnd cell_6t
Xbit_r56_c36 bl_36 br_36 wl_56 vdd gnd cell_6t
Xbit_r57_c36 bl_36 br_36 wl_57 vdd gnd cell_6t
Xbit_r58_c36 bl_36 br_36 wl_58 vdd gnd cell_6t
Xbit_r59_c36 bl_36 br_36 wl_59 vdd gnd cell_6t
Xbit_r60_c36 bl_36 br_36 wl_60 vdd gnd cell_6t
Xbit_r61_c36 bl_36 br_36 wl_61 vdd gnd cell_6t
Xbit_r62_c36 bl_36 br_36 wl_62 vdd gnd cell_6t
Xbit_r63_c36 bl_36 br_36 wl_63 vdd gnd cell_6t
Xbit_r64_c36 bl_36 br_36 wl_64 vdd gnd cell_6t
Xbit_r65_c36 bl_36 br_36 wl_65 vdd gnd cell_6t
Xbit_r66_c36 bl_36 br_36 wl_66 vdd gnd cell_6t
Xbit_r67_c36 bl_36 br_36 wl_67 vdd gnd cell_6t
Xbit_r68_c36 bl_36 br_36 wl_68 vdd gnd cell_6t
Xbit_r69_c36 bl_36 br_36 wl_69 vdd gnd cell_6t
Xbit_r70_c36 bl_36 br_36 wl_70 vdd gnd cell_6t
Xbit_r71_c36 bl_36 br_36 wl_71 vdd gnd cell_6t
Xbit_r72_c36 bl_36 br_36 wl_72 vdd gnd cell_6t
Xbit_r73_c36 bl_36 br_36 wl_73 vdd gnd cell_6t
Xbit_r74_c36 bl_36 br_36 wl_74 vdd gnd cell_6t
Xbit_r75_c36 bl_36 br_36 wl_75 vdd gnd cell_6t
Xbit_r76_c36 bl_36 br_36 wl_76 vdd gnd cell_6t
Xbit_r77_c36 bl_36 br_36 wl_77 vdd gnd cell_6t
Xbit_r78_c36 bl_36 br_36 wl_78 vdd gnd cell_6t
Xbit_r79_c36 bl_36 br_36 wl_79 vdd gnd cell_6t
Xbit_r80_c36 bl_36 br_36 wl_80 vdd gnd cell_6t
Xbit_r81_c36 bl_36 br_36 wl_81 vdd gnd cell_6t
Xbit_r82_c36 bl_36 br_36 wl_82 vdd gnd cell_6t
Xbit_r83_c36 bl_36 br_36 wl_83 vdd gnd cell_6t
Xbit_r84_c36 bl_36 br_36 wl_84 vdd gnd cell_6t
Xbit_r85_c36 bl_36 br_36 wl_85 vdd gnd cell_6t
Xbit_r86_c36 bl_36 br_36 wl_86 vdd gnd cell_6t
Xbit_r87_c36 bl_36 br_36 wl_87 vdd gnd cell_6t
Xbit_r88_c36 bl_36 br_36 wl_88 vdd gnd cell_6t
Xbit_r89_c36 bl_36 br_36 wl_89 vdd gnd cell_6t
Xbit_r90_c36 bl_36 br_36 wl_90 vdd gnd cell_6t
Xbit_r91_c36 bl_36 br_36 wl_91 vdd gnd cell_6t
Xbit_r92_c36 bl_36 br_36 wl_92 vdd gnd cell_6t
Xbit_r93_c36 bl_36 br_36 wl_93 vdd gnd cell_6t
Xbit_r94_c36 bl_36 br_36 wl_94 vdd gnd cell_6t
Xbit_r95_c36 bl_36 br_36 wl_95 vdd gnd cell_6t
Xbit_r96_c36 bl_36 br_36 wl_96 vdd gnd cell_6t
Xbit_r97_c36 bl_36 br_36 wl_97 vdd gnd cell_6t
Xbit_r98_c36 bl_36 br_36 wl_98 vdd gnd cell_6t
Xbit_r99_c36 bl_36 br_36 wl_99 vdd gnd cell_6t
Xbit_r100_c36 bl_36 br_36 wl_100 vdd gnd cell_6t
Xbit_r101_c36 bl_36 br_36 wl_101 vdd gnd cell_6t
Xbit_r102_c36 bl_36 br_36 wl_102 vdd gnd cell_6t
Xbit_r103_c36 bl_36 br_36 wl_103 vdd gnd cell_6t
Xbit_r104_c36 bl_36 br_36 wl_104 vdd gnd cell_6t
Xbit_r105_c36 bl_36 br_36 wl_105 vdd gnd cell_6t
Xbit_r106_c36 bl_36 br_36 wl_106 vdd gnd cell_6t
Xbit_r107_c36 bl_36 br_36 wl_107 vdd gnd cell_6t
Xbit_r108_c36 bl_36 br_36 wl_108 vdd gnd cell_6t
Xbit_r109_c36 bl_36 br_36 wl_109 vdd gnd cell_6t
Xbit_r110_c36 bl_36 br_36 wl_110 vdd gnd cell_6t
Xbit_r111_c36 bl_36 br_36 wl_111 vdd gnd cell_6t
Xbit_r112_c36 bl_36 br_36 wl_112 vdd gnd cell_6t
Xbit_r113_c36 bl_36 br_36 wl_113 vdd gnd cell_6t
Xbit_r114_c36 bl_36 br_36 wl_114 vdd gnd cell_6t
Xbit_r115_c36 bl_36 br_36 wl_115 vdd gnd cell_6t
Xbit_r116_c36 bl_36 br_36 wl_116 vdd gnd cell_6t
Xbit_r117_c36 bl_36 br_36 wl_117 vdd gnd cell_6t
Xbit_r118_c36 bl_36 br_36 wl_118 vdd gnd cell_6t
Xbit_r119_c36 bl_36 br_36 wl_119 vdd gnd cell_6t
Xbit_r120_c36 bl_36 br_36 wl_120 vdd gnd cell_6t
Xbit_r121_c36 bl_36 br_36 wl_121 vdd gnd cell_6t
Xbit_r122_c36 bl_36 br_36 wl_122 vdd gnd cell_6t
Xbit_r123_c36 bl_36 br_36 wl_123 vdd gnd cell_6t
Xbit_r124_c36 bl_36 br_36 wl_124 vdd gnd cell_6t
Xbit_r125_c36 bl_36 br_36 wl_125 vdd gnd cell_6t
Xbit_r126_c36 bl_36 br_36 wl_126 vdd gnd cell_6t
Xbit_r127_c36 bl_36 br_36 wl_127 vdd gnd cell_6t
Xbit_r0_c37 bl_37 br_37 wl_0 vdd gnd cell_6t
Xbit_r1_c37 bl_37 br_37 wl_1 vdd gnd cell_6t
Xbit_r2_c37 bl_37 br_37 wl_2 vdd gnd cell_6t
Xbit_r3_c37 bl_37 br_37 wl_3 vdd gnd cell_6t
Xbit_r4_c37 bl_37 br_37 wl_4 vdd gnd cell_6t
Xbit_r5_c37 bl_37 br_37 wl_5 vdd gnd cell_6t
Xbit_r6_c37 bl_37 br_37 wl_6 vdd gnd cell_6t
Xbit_r7_c37 bl_37 br_37 wl_7 vdd gnd cell_6t
Xbit_r8_c37 bl_37 br_37 wl_8 vdd gnd cell_6t
Xbit_r9_c37 bl_37 br_37 wl_9 vdd gnd cell_6t
Xbit_r10_c37 bl_37 br_37 wl_10 vdd gnd cell_6t
Xbit_r11_c37 bl_37 br_37 wl_11 vdd gnd cell_6t
Xbit_r12_c37 bl_37 br_37 wl_12 vdd gnd cell_6t
Xbit_r13_c37 bl_37 br_37 wl_13 vdd gnd cell_6t
Xbit_r14_c37 bl_37 br_37 wl_14 vdd gnd cell_6t
Xbit_r15_c37 bl_37 br_37 wl_15 vdd gnd cell_6t
Xbit_r16_c37 bl_37 br_37 wl_16 vdd gnd cell_6t
Xbit_r17_c37 bl_37 br_37 wl_17 vdd gnd cell_6t
Xbit_r18_c37 bl_37 br_37 wl_18 vdd gnd cell_6t
Xbit_r19_c37 bl_37 br_37 wl_19 vdd gnd cell_6t
Xbit_r20_c37 bl_37 br_37 wl_20 vdd gnd cell_6t
Xbit_r21_c37 bl_37 br_37 wl_21 vdd gnd cell_6t
Xbit_r22_c37 bl_37 br_37 wl_22 vdd gnd cell_6t
Xbit_r23_c37 bl_37 br_37 wl_23 vdd gnd cell_6t
Xbit_r24_c37 bl_37 br_37 wl_24 vdd gnd cell_6t
Xbit_r25_c37 bl_37 br_37 wl_25 vdd gnd cell_6t
Xbit_r26_c37 bl_37 br_37 wl_26 vdd gnd cell_6t
Xbit_r27_c37 bl_37 br_37 wl_27 vdd gnd cell_6t
Xbit_r28_c37 bl_37 br_37 wl_28 vdd gnd cell_6t
Xbit_r29_c37 bl_37 br_37 wl_29 vdd gnd cell_6t
Xbit_r30_c37 bl_37 br_37 wl_30 vdd gnd cell_6t
Xbit_r31_c37 bl_37 br_37 wl_31 vdd gnd cell_6t
Xbit_r32_c37 bl_37 br_37 wl_32 vdd gnd cell_6t
Xbit_r33_c37 bl_37 br_37 wl_33 vdd gnd cell_6t
Xbit_r34_c37 bl_37 br_37 wl_34 vdd gnd cell_6t
Xbit_r35_c37 bl_37 br_37 wl_35 vdd gnd cell_6t
Xbit_r36_c37 bl_37 br_37 wl_36 vdd gnd cell_6t
Xbit_r37_c37 bl_37 br_37 wl_37 vdd gnd cell_6t
Xbit_r38_c37 bl_37 br_37 wl_38 vdd gnd cell_6t
Xbit_r39_c37 bl_37 br_37 wl_39 vdd gnd cell_6t
Xbit_r40_c37 bl_37 br_37 wl_40 vdd gnd cell_6t
Xbit_r41_c37 bl_37 br_37 wl_41 vdd gnd cell_6t
Xbit_r42_c37 bl_37 br_37 wl_42 vdd gnd cell_6t
Xbit_r43_c37 bl_37 br_37 wl_43 vdd gnd cell_6t
Xbit_r44_c37 bl_37 br_37 wl_44 vdd gnd cell_6t
Xbit_r45_c37 bl_37 br_37 wl_45 vdd gnd cell_6t
Xbit_r46_c37 bl_37 br_37 wl_46 vdd gnd cell_6t
Xbit_r47_c37 bl_37 br_37 wl_47 vdd gnd cell_6t
Xbit_r48_c37 bl_37 br_37 wl_48 vdd gnd cell_6t
Xbit_r49_c37 bl_37 br_37 wl_49 vdd gnd cell_6t
Xbit_r50_c37 bl_37 br_37 wl_50 vdd gnd cell_6t
Xbit_r51_c37 bl_37 br_37 wl_51 vdd gnd cell_6t
Xbit_r52_c37 bl_37 br_37 wl_52 vdd gnd cell_6t
Xbit_r53_c37 bl_37 br_37 wl_53 vdd gnd cell_6t
Xbit_r54_c37 bl_37 br_37 wl_54 vdd gnd cell_6t
Xbit_r55_c37 bl_37 br_37 wl_55 vdd gnd cell_6t
Xbit_r56_c37 bl_37 br_37 wl_56 vdd gnd cell_6t
Xbit_r57_c37 bl_37 br_37 wl_57 vdd gnd cell_6t
Xbit_r58_c37 bl_37 br_37 wl_58 vdd gnd cell_6t
Xbit_r59_c37 bl_37 br_37 wl_59 vdd gnd cell_6t
Xbit_r60_c37 bl_37 br_37 wl_60 vdd gnd cell_6t
Xbit_r61_c37 bl_37 br_37 wl_61 vdd gnd cell_6t
Xbit_r62_c37 bl_37 br_37 wl_62 vdd gnd cell_6t
Xbit_r63_c37 bl_37 br_37 wl_63 vdd gnd cell_6t
Xbit_r64_c37 bl_37 br_37 wl_64 vdd gnd cell_6t
Xbit_r65_c37 bl_37 br_37 wl_65 vdd gnd cell_6t
Xbit_r66_c37 bl_37 br_37 wl_66 vdd gnd cell_6t
Xbit_r67_c37 bl_37 br_37 wl_67 vdd gnd cell_6t
Xbit_r68_c37 bl_37 br_37 wl_68 vdd gnd cell_6t
Xbit_r69_c37 bl_37 br_37 wl_69 vdd gnd cell_6t
Xbit_r70_c37 bl_37 br_37 wl_70 vdd gnd cell_6t
Xbit_r71_c37 bl_37 br_37 wl_71 vdd gnd cell_6t
Xbit_r72_c37 bl_37 br_37 wl_72 vdd gnd cell_6t
Xbit_r73_c37 bl_37 br_37 wl_73 vdd gnd cell_6t
Xbit_r74_c37 bl_37 br_37 wl_74 vdd gnd cell_6t
Xbit_r75_c37 bl_37 br_37 wl_75 vdd gnd cell_6t
Xbit_r76_c37 bl_37 br_37 wl_76 vdd gnd cell_6t
Xbit_r77_c37 bl_37 br_37 wl_77 vdd gnd cell_6t
Xbit_r78_c37 bl_37 br_37 wl_78 vdd gnd cell_6t
Xbit_r79_c37 bl_37 br_37 wl_79 vdd gnd cell_6t
Xbit_r80_c37 bl_37 br_37 wl_80 vdd gnd cell_6t
Xbit_r81_c37 bl_37 br_37 wl_81 vdd gnd cell_6t
Xbit_r82_c37 bl_37 br_37 wl_82 vdd gnd cell_6t
Xbit_r83_c37 bl_37 br_37 wl_83 vdd gnd cell_6t
Xbit_r84_c37 bl_37 br_37 wl_84 vdd gnd cell_6t
Xbit_r85_c37 bl_37 br_37 wl_85 vdd gnd cell_6t
Xbit_r86_c37 bl_37 br_37 wl_86 vdd gnd cell_6t
Xbit_r87_c37 bl_37 br_37 wl_87 vdd gnd cell_6t
Xbit_r88_c37 bl_37 br_37 wl_88 vdd gnd cell_6t
Xbit_r89_c37 bl_37 br_37 wl_89 vdd gnd cell_6t
Xbit_r90_c37 bl_37 br_37 wl_90 vdd gnd cell_6t
Xbit_r91_c37 bl_37 br_37 wl_91 vdd gnd cell_6t
Xbit_r92_c37 bl_37 br_37 wl_92 vdd gnd cell_6t
Xbit_r93_c37 bl_37 br_37 wl_93 vdd gnd cell_6t
Xbit_r94_c37 bl_37 br_37 wl_94 vdd gnd cell_6t
Xbit_r95_c37 bl_37 br_37 wl_95 vdd gnd cell_6t
Xbit_r96_c37 bl_37 br_37 wl_96 vdd gnd cell_6t
Xbit_r97_c37 bl_37 br_37 wl_97 vdd gnd cell_6t
Xbit_r98_c37 bl_37 br_37 wl_98 vdd gnd cell_6t
Xbit_r99_c37 bl_37 br_37 wl_99 vdd gnd cell_6t
Xbit_r100_c37 bl_37 br_37 wl_100 vdd gnd cell_6t
Xbit_r101_c37 bl_37 br_37 wl_101 vdd gnd cell_6t
Xbit_r102_c37 bl_37 br_37 wl_102 vdd gnd cell_6t
Xbit_r103_c37 bl_37 br_37 wl_103 vdd gnd cell_6t
Xbit_r104_c37 bl_37 br_37 wl_104 vdd gnd cell_6t
Xbit_r105_c37 bl_37 br_37 wl_105 vdd gnd cell_6t
Xbit_r106_c37 bl_37 br_37 wl_106 vdd gnd cell_6t
Xbit_r107_c37 bl_37 br_37 wl_107 vdd gnd cell_6t
Xbit_r108_c37 bl_37 br_37 wl_108 vdd gnd cell_6t
Xbit_r109_c37 bl_37 br_37 wl_109 vdd gnd cell_6t
Xbit_r110_c37 bl_37 br_37 wl_110 vdd gnd cell_6t
Xbit_r111_c37 bl_37 br_37 wl_111 vdd gnd cell_6t
Xbit_r112_c37 bl_37 br_37 wl_112 vdd gnd cell_6t
Xbit_r113_c37 bl_37 br_37 wl_113 vdd gnd cell_6t
Xbit_r114_c37 bl_37 br_37 wl_114 vdd gnd cell_6t
Xbit_r115_c37 bl_37 br_37 wl_115 vdd gnd cell_6t
Xbit_r116_c37 bl_37 br_37 wl_116 vdd gnd cell_6t
Xbit_r117_c37 bl_37 br_37 wl_117 vdd gnd cell_6t
Xbit_r118_c37 bl_37 br_37 wl_118 vdd gnd cell_6t
Xbit_r119_c37 bl_37 br_37 wl_119 vdd gnd cell_6t
Xbit_r120_c37 bl_37 br_37 wl_120 vdd gnd cell_6t
Xbit_r121_c37 bl_37 br_37 wl_121 vdd gnd cell_6t
Xbit_r122_c37 bl_37 br_37 wl_122 vdd gnd cell_6t
Xbit_r123_c37 bl_37 br_37 wl_123 vdd gnd cell_6t
Xbit_r124_c37 bl_37 br_37 wl_124 vdd gnd cell_6t
Xbit_r125_c37 bl_37 br_37 wl_125 vdd gnd cell_6t
Xbit_r126_c37 bl_37 br_37 wl_126 vdd gnd cell_6t
Xbit_r127_c37 bl_37 br_37 wl_127 vdd gnd cell_6t
Xbit_r0_c38 bl_38 br_38 wl_0 vdd gnd cell_6t
Xbit_r1_c38 bl_38 br_38 wl_1 vdd gnd cell_6t
Xbit_r2_c38 bl_38 br_38 wl_2 vdd gnd cell_6t
Xbit_r3_c38 bl_38 br_38 wl_3 vdd gnd cell_6t
Xbit_r4_c38 bl_38 br_38 wl_4 vdd gnd cell_6t
Xbit_r5_c38 bl_38 br_38 wl_5 vdd gnd cell_6t
Xbit_r6_c38 bl_38 br_38 wl_6 vdd gnd cell_6t
Xbit_r7_c38 bl_38 br_38 wl_7 vdd gnd cell_6t
Xbit_r8_c38 bl_38 br_38 wl_8 vdd gnd cell_6t
Xbit_r9_c38 bl_38 br_38 wl_9 vdd gnd cell_6t
Xbit_r10_c38 bl_38 br_38 wl_10 vdd gnd cell_6t
Xbit_r11_c38 bl_38 br_38 wl_11 vdd gnd cell_6t
Xbit_r12_c38 bl_38 br_38 wl_12 vdd gnd cell_6t
Xbit_r13_c38 bl_38 br_38 wl_13 vdd gnd cell_6t
Xbit_r14_c38 bl_38 br_38 wl_14 vdd gnd cell_6t
Xbit_r15_c38 bl_38 br_38 wl_15 vdd gnd cell_6t
Xbit_r16_c38 bl_38 br_38 wl_16 vdd gnd cell_6t
Xbit_r17_c38 bl_38 br_38 wl_17 vdd gnd cell_6t
Xbit_r18_c38 bl_38 br_38 wl_18 vdd gnd cell_6t
Xbit_r19_c38 bl_38 br_38 wl_19 vdd gnd cell_6t
Xbit_r20_c38 bl_38 br_38 wl_20 vdd gnd cell_6t
Xbit_r21_c38 bl_38 br_38 wl_21 vdd gnd cell_6t
Xbit_r22_c38 bl_38 br_38 wl_22 vdd gnd cell_6t
Xbit_r23_c38 bl_38 br_38 wl_23 vdd gnd cell_6t
Xbit_r24_c38 bl_38 br_38 wl_24 vdd gnd cell_6t
Xbit_r25_c38 bl_38 br_38 wl_25 vdd gnd cell_6t
Xbit_r26_c38 bl_38 br_38 wl_26 vdd gnd cell_6t
Xbit_r27_c38 bl_38 br_38 wl_27 vdd gnd cell_6t
Xbit_r28_c38 bl_38 br_38 wl_28 vdd gnd cell_6t
Xbit_r29_c38 bl_38 br_38 wl_29 vdd gnd cell_6t
Xbit_r30_c38 bl_38 br_38 wl_30 vdd gnd cell_6t
Xbit_r31_c38 bl_38 br_38 wl_31 vdd gnd cell_6t
Xbit_r32_c38 bl_38 br_38 wl_32 vdd gnd cell_6t
Xbit_r33_c38 bl_38 br_38 wl_33 vdd gnd cell_6t
Xbit_r34_c38 bl_38 br_38 wl_34 vdd gnd cell_6t
Xbit_r35_c38 bl_38 br_38 wl_35 vdd gnd cell_6t
Xbit_r36_c38 bl_38 br_38 wl_36 vdd gnd cell_6t
Xbit_r37_c38 bl_38 br_38 wl_37 vdd gnd cell_6t
Xbit_r38_c38 bl_38 br_38 wl_38 vdd gnd cell_6t
Xbit_r39_c38 bl_38 br_38 wl_39 vdd gnd cell_6t
Xbit_r40_c38 bl_38 br_38 wl_40 vdd gnd cell_6t
Xbit_r41_c38 bl_38 br_38 wl_41 vdd gnd cell_6t
Xbit_r42_c38 bl_38 br_38 wl_42 vdd gnd cell_6t
Xbit_r43_c38 bl_38 br_38 wl_43 vdd gnd cell_6t
Xbit_r44_c38 bl_38 br_38 wl_44 vdd gnd cell_6t
Xbit_r45_c38 bl_38 br_38 wl_45 vdd gnd cell_6t
Xbit_r46_c38 bl_38 br_38 wl_46 vdd gnd cell_6t
Xbit_r47_c38 bl_38 br_38 wl_47 vdd gnd cell_6t
Xbit_r48_c38 bl_38 br_38 wl_48 vdd gnd cell_6t
Xbit_r49_c38 bl_38 br_38 wl_49 vdd gnd cell_6t
Xbit_r50_c38 bl_38 br_38 wl_50 vdd gnd cell_6t
Xbit_r51_c38 bl_38 br_38 wl_51 vdd gnd cell_6t
Xbit_r52_c38 bl_38 br_38 wl_52 vdd gnd cell_6t
Xbit_r53_c38 bl_38 br_38 wl_53 vdd gnd cell_6t
Xbit_r54_c38 bl_38 br_38 wl_54 vdd gnd cell_6t
Xbit_r55_c38 bl_38 br_38 wl_55 vdd gnd cell_6t
Xbit_r56_c38 bl_38 br_38 wl_56 vdd gnd cell_6t
Xbit_r57_c38 bl_38 br_38 wl_57 vdd gnd cell_6t
Xbit_r58_c38 bl_38 br_38 wl_58 vdd gnd cell_6t
Xbit_r59_c38 bl_38 br_38 wl_59 vdd gnd cell_6t
Xbit_r60_c38 bl_38 br_38 wl_60 vdd gnd cell_6t
Xbit_r61_c38 bl_38 br_38 wl_61 vdd gnd cell_6t
Xbit_r62_c38 bl_38 br_38 wl_62 vdd gnd cell_6t
Xbit_r63_c38 bl_38 br_38 wl_63 vdd gnd cell_6t
Xbit_r64_c38 bl_38 br_38 wl_64 vdd gnd cell_6t
Xbit_r65_c38 bl_38 br_38 wl_65 vdd gnd cell_6t
Xbit_r66_c38 bl_38 br_38 wl_66 vdd gnd cell_6t
Xbit_r67_c38 bl_38 br_38 wl_67 vdd gnd cell_6t
Xbit_r68_c38 bl_38 br_38 wl_68 vdd gnd cell_6t
Xbit_r69_c38 bl_38 br_38 wl_69 vdd gnd cell_6t
Xbit_r70_c38 bl_38 br_38 wl_70 vdd gnd cell_6t
Xbit_r71_c38 bl_38 br_38 wl_71 vdd gnd cell_6t
Xbit_r72_c38 bl_38 br_38 wl_72 vdd gnd cell_6t
Xbit_r73_c38 bl_38 br_38 wl_73 vdd gnd cell_6t
Xbit_r74_c38 bl_38 br_38 wl_74 vdd gnd cell_6t
Xbit_r75_c38 bl_38 br_38 wl_75 vdd gnd cell_6t
Xbit_r76_c38 bl_38 br_38 wl_76 vdd gnd cell_6t
Xbit_r77_c38 bl_38 br_38 wl_77 vdd gnd cell_6t
Xbit_r78_c38 bl_38 br_38 wl_78 vdd gnd cell_6t
Xbit_r79_c38 bl_38 br_38 wl_79 vdd gnd cell_6t
Xbit_r80_c38 bl_38 br_38 wl_80 vdd gnd cell_6t
Xbit_r81_c38 bl_38 br_38 wl_81 vdd gnd cell_6t
Xbit_r82_c38 bl_38 br_38 wl_82 vdd gnd cell_6t
Xbit_r83_c38 bl_38 br_38 wl_83 vdd gnd cell_6t
Xbit_r84_c38 bl_38 br_38 wl_84 vdd gnd cell_6t
Xbit_r85_c38 bl_38 br_38 wl_85 vdd gnd cell_6t
Xbit_r86_c38 bl_38 br_38 wl_86 vdd gnd cell_6t
Xbit_r87_c38 bl_38 br_38 wl_87 vdd gnd cell_6t
Xbit_r88_c38 bl_38 br_38 wl_88 vdd gnd cell_6t
Xbit_r89_c38 bl_38 br_38 wl_89 vdd gnd cell_6t
Xbit_r90_c38 bl_38 br_38 wl_90 vdd gnd cell_6t
Xbit_r91_c38 bl_38 br_38 wl_91 vdd gnd cell_6t
Xbit_r92_c38 bl_38 br_38 wl_92 vdd gnd cell_6t
Xbit_r93_c38 bl_38 br_38 wl_93 vdd gnd cell_6t
Xbit_r94_c38 bl_38 br_38 wl_94 vdd gnd cell_6t
Xbit_r95_c38 bl_38 br_38 wl_95 vdd gnd cell_6t
Xbit_r96_c38 bl_38 br_38 wl_96 vdd gnd cell_6t
Xbit_r97_c38 bl_38 br_38 wl_97 vdd gnd cell_6t
Xbit_r98_c38 bl_38 br_38 wl_98 vdd gnd cell_6t
Xbit_r99_c38 bl_38 br_38 wl_99 vdd gnd cell_6t
Xbit_r100_c38 bl_38 br_38 wl_100 vdd gnd cell_6t
Xbit_r101_c38 bl_38 br_38 wl_101 vdd gnd cell_6t
Xbit_r102_c38 bl_38 br_38 wl_102 vdd gnd cell_6t
Xbit_r103_c38 bl_38 br_38 wl_103 vdd gnd cell_6t
Xbit_r104_c38 bl_38 br_38 wl_104 vdd gnd cell_6t
Xbit_r105_c38 bl_38 br_38 wl_105 vdd gnd cell_6t
Xbit_r106_c38 bl_38 br_38 wl_106 vdd gnd cell_6t
Xbit_r107_c38 bl_38 br_38 wl_107 vdd gnd cell_6t
Xbit_r108_c38 bl_38 br_38 wl_108 vdd gnd cell_6t
Xbit_r109_c38 bl_38 br_38 wl_109 vdd gnd cell_6t
Xbit_r110_c38 bl_38 br_38 wl_110 vdd gnd cell_6t
Xbit_r111_c38 bl_38 br_38 wl_111 vdd gnd cell_6t
Xbit_r112_c38 bl_38 br_38 wl_112 vdd gnd cell_6t
Xbit_r113_c38 bl_38 br_38 wl_113 vdd gnd cell_6t
Xbit_r114_c38 bl_38 br_38 wl_114 vdd gnd cell_6t
Xbit_r115_c38 bl_38 br_38 wl_115 vdd gnd cell_6t
Xbit_r116_c38 bl_38 br_38 wl_116 vdd gnd cell_6t
Xbit_r117_c38 bl_38 br_38 wl_117 vdd gnd cell_6t
Xbit_r118_c38 bl_38 br_38 wl_118 vdd gnd cell_6t
Xbit_r119_c38 bl_38 br_38 wl_119 vdd gnd cell_6t
Xbit_r120_c38 bl_38 br_38 wl_120 vdd gnd cell_6t
Xbit_r121_c38 bl_38 br_38 wl_121 vdd gnd cell_6t
Xbit_r122_c38 bl_38 br_38 wl_122 vdd gnd cell_6t
Xbit_r123_c38 bl_38 br_38 wl_123 vdd gnd cell_6t
Xbit_r124_c38 bl_38 br_38 wl_124 vdd gnd cell_6t
Xbit_r125_c38 bl_38 br_38 wl_125 vdd gnd cell_6t
Xbit_r126_c38 bl_38 br_38 wl_126 vdd gnd cell_6t
Xbit_r127_c38 bl_38 br_38 wl_127 vdd gnd cell_6t
Xbit_r0_c39 bl_39 br_39 wl_0 vdd gnd cell_6t
Xbit_r1_c39 bl_39 br_39 wl_1 vdd gnd cell_6t
Xbit_r2_c39 bl_39 br_39 wl_2 vdd gnd cell_6t
Xbit_r3_c39 bl_39 br_39 wl_3 vdd gnd cell_6t
Xbit_r4_c39 bl_39 br_39 wl_4 vdd gnd cell_6t
Xbit_r5_c39 bl_39 br_39 wl_5 vdd gnd cell_6t
Xbit_r6_c39 bl_39 br_39 wl_6 vdd gnd cell_6t
Xbit_r7_c39 bl_39 br_39 wl_7 vdd gnd cell_6t
Xbit_r8_c39 bl_39 br_39 wl_8 vdd gnd cell_6t
Xbit_r9_c39 bl_39 br_39 wl_9 vdd gnd cell_6t
Xbit_r10_c39 bl_39 br_39 wl_10 vdd gnd cell_6t
Xbit_r11_c39 bl_39 br_39 wl_11 vdd gnd cell_6t
Xbit_r12_c39 bl_39 br_39 wl_12 vdd gnd cell_6t
Xbit_r13_c39 bl_39 br_39 wl_13 vdd gnd cell_6t
Xbit_r14_c39 bl_39 br_39 wl_14 vdd gnd cell_6t
Xbit_r15_c39 bl_39 br_39 wl_15 vdd gnd cell_6t
Xbit_r16_c39 bl_39 br_39 wl_16 vdd gnd cell_6t
Xbit_r17_c39 bl_39 br_39 wl_17 vdd gnd cell_6t
Xbit_r18_c39 bl_39 br_39 wl_18 vdd gnd cell_6t
Xbit_r19_c39 bl_39 br_39 wl_19 vdd gnd cell_6t
Xbit_r20_c39 bl_39 br_39 wl_20 vdd gnd cell_6t
Xbit_r21_c39 bl_39 br_39 wl_21 vdd gnd cell_6t
Xbit_r22_c39 bl_39 br_39 wl_22 vdd gnd cell_6t
Xbit_r23_c39 bl_39 br_39 wl_23 vdd gnd cell_6t
Xbit_r24_c39 bl_39 br_39 wl_24 vdd gnd cell_6t
Xbit_r25_c39 bl_39 br_39 wl_25 vdd gnd cell_6t
Xbit_r26_c39 bl_39 br_39 wl_26 vdd gnd cell_6t
Xbit_r27_c39 bl_39 br_39 wl_27 vdd gnd cell_6t
Xbit_r28_c39 bl_39 br_39 wl_28 vdd gnd cell_6t
Xbit_r29_c39 bl_39 br_39 wl_29 vdd gnd cell_6t
Xbit_r30_c39 bl_39 br_39 wl_30 vdd gnd cell_6t
Xbit_r31_c39 bl_39 br_39 wl_31 vdd gnd cell_6t
Xbit_r32_c39 bl_39 br_39 wl_32 vdd gnd cell_6t
Xbit_r33_c39 bl_39 br_39 wl_33 vdd gnd cell_6t
Xbit_r34_c39 bl_39 br_39 wl_34 vdd gnd cell_6t
Xbit_r35_c39 bl_39 br_39 wl_35 vdd gnd cell_6t
Xbit_r36_c39 bl_39 br_39 wl_36 vdd gnd cell_6t
Xbit_r37_c39 bl_39 br_39 wl_37 vdd gnd cell_6t
Xbit_r38_c39 bl_39 br_39 wl_38 vdd gnd cell_6t
Xbit_r39_c39 bl_39 br_39 wl_39 vdd gnd cell_6t
Xbit_r40_c39 bl_39 br_39 wl_40 vdd gnd cell_6t
Xbit_r41_c39 bl_39 br_39 wl_41 vdd gnd cell_6t
Xbit_r42_c39 bl_39 br_39 wl_42 vdd gnd cell_6t
Xbit_r43_c39 bl_39 br_39 wl_43 vdd gnd cell_6t
Xbit_r44_c39 bl_39 br_39 wl_44 vdd gnd cell_6t
Xbit_r45_c39 bl_39 br_39 wl_45 vdd gnd cell_6t
Xbit_r46_c39 bl_39 br_39 wl_46 vdd gnd cell_6t
Xbit_r47_c39 bl_39 br_39 wl_47 vdd gnd cell_6t
Xbit_r48_c39 bl_39 br_39 wl_48 vdd gnd cell_6t
Xbit_r49_c39 bl_39 br_39 wl_49 vdd gnd cell_6t
Xbit_r50_c39 bl_39 br_39 wl_50 vdd gnd cell_6t
Xbit_r51_c39 bl_39 br_39 wl_51 vdd gnd cell_6t
Xbit_r52_c39 bl_39 br_39 wl_52 vdd gnd cell_6t
Xbit_r53_c39 bl_39 br_39 wl_53 vdd gnd cell_6t
Xbit_r54_c39 bl_39 br_39 wl_54 vdd gnd cell_6t
Xbit_r55_c39 bl_39 br_39 wl_55 vdd gnd cell_6t
Xbit_r56_c39 bl_39 br_39 wl_56 vdd gnd cell_6t
Xbit_r57_c39 bl_39 br_39 wl_57 vdd gnd cell_6t
Xbit_r58_c39 bl_39 br_39 wl_58 vdd gnd cell_6t
Xbit_r59_c39 bl_39 br_39 wl_59 vdd gnd cell_6t
Xbit_r60_c39 bl_39 br_39 wl_60 vdd gnd cell_6t
Xbit_r61_c39 bl_39 br_39 wl_61 vdd gnd cell_6t
Xbit_r62_c39 bl_39 br_39 wl_62 vdd gnd cell_6t
Xbit_r63_c39 bl_39 br_39 wl_63 vdd gnd cell_6t
Xbit_r64_c39 bl_39 br_39 wl_64 vdd gnd cell_6t
Xbit_r65_c39 bl_39 br_39 wl_65 vdd gnd cell_6t
Xbit_r66_c39 bl_39 br_39 wl_66 vdd gnd cell_6t
Xbit_r67_c39 bl_39 br_39 wl_67 vdd gnd cell_6t
Xbit_r68_c39 bl_39 br_39 wl_68 vdd gnd cell_6t
Xbit_r69_c39 bl_39 br_39 wl_69 vdd gnd cell_6t
Xbit_r70_c39 bl_39 br_39 wl_70 vdd gnd cell_6t
Xbit_r71_c39 bl_39 br_39 wl_71 vdd gnd cell_6t
Xbit_r72_c39 bl_39 br_39 wl_72 vdd gnd cell_6t
Xbit_r73_c39 bl_39 br_39 wl_73 vdd gnd cell_6t
Xbit_r74_c39 bl_39 br_39 wl_74 vdd gnd cell_6t
Xbit_r75_c39 bl_39 br_39 wl_75 vdd gnd cell_6t
Xbit_r76_c39 bl_39 br_39 wl_76 vdd gnd cell_6t
Xbit_r77_c39 bl_39 br_39 wl_77 vdd gnd cell_6t
Xbit_r78_c39 bl_39 br_39 wl_78 vdd gnd cell_6t
Xbit_r79_c39 bl_39 br_39 wl_79 vdd gnd cell_6t
Xbit_r80_c39 bl_39 br_39 wl_80 vdd gnd cell_6t
Xbit_r81_c39 bl_39 br_39 wl_81 vdd gnd cell_6t
Xbit_r82_c39 bl_39 br_39 wl_82 vdd gnd cell_6t
Xbit_r83_c39 bl_39 br_39 wl_83 vdd gnd cell_6t
Xbit_r84_c39 bl_39 br_39 wl_84 vdd gnd cell_6t
Xbit_r85_c39 bl_39 br_39 wl_85 vdd gnd cell_6t
Xbit_r86_c39 bl_39 br_39 wl_86 vdd gnd cell_6t
Xbit_r87_c39 bl_39 br_39 wl_87 vdd gnd cell_6t
Xbit_r88_c39 bl_39 br_39 wl_88 vdd gnd cell_6t
Xbit_r89_c39 bl_39 br_39 wl_89 vdd gnd cell_6t
Xbit_r90_c39 bl_39 br_39 wl_90 vdd gnd cell_6t
Xbit_r91_c39 bl_39 br_39 wl_91 vdd gnd cell_6t
Xbit_r92_c39 bl_39 br_39 wl_92 vdd gnd cell_6t
Xbit_r93_c39 bl_39 br_39 wl_93 vdd gnd cell_6t
Xbit_r94_c39 bl_39 br_39 wl_94 vdd gnd cell_6t
Xbit_r95_c39 bl_39 br_39 wl_95 vdd gnd cell_6t
Xbit_r96_c39 bl_39 br_39 wl_96 vdd gnd cell_6t
Xbit_r97_c39 bl_39 br_39 wl_97 vdd gnd cell_6t
Xbit_r98_c39 bl_39 br_39 wl_98 vdd gnd cell_6t
Xbit_r99_c39 bl_39 br_39 wl_99 vdd gnd cell_6t
Xbit_r100_c39 bl_39 br_39 wl_100 vdd gnd cell_6t
Xbit_r101_c39 bl_39 br_39 wl_101 vdd gnd cell_6t
Xbit_r102_c39 bl_39 br_39 wl_102 vdd gnd cell_6t
Xbit_r103_c39 bl_39 br_39 wl_103 vdd gnd cell_6t
Xbit_r104_c39 bl_39 br_39 wl_104 vdd gnd cell_6t
Xbit_r105_c39 bl_39 br_39 wl_105 vdd gnd cell_6t
Xbit_r106_c39 bl_39 br_39 wl_106 vdd gnd cell_6t
Xbit_r107_c39 bl_39 br_39 wl_107 vdd gnd cell_6t
Xbit_r108_c39 bl_39 br_39 wl_108 vdd gnd cell_6t
Xbit_r109_c39 bl_39 br_39 wl_109 vdd gnd cell_6t
Xbit_r110_c39 bl_39 br_39 wl_110 vdd gnd cell_6t
Xbit_r111_c39 bl_39 br_39 wl_111 vdd gnd cell_6t
Xbit_r112_c39 bl_39 br_39 wl_112 vdd gnd cell_6t
Xbit_r113_c39 bl_39 br_39 wl_113 vdd gnd cell_6t
Xbit_r114_c39 bl_39 br_39 wl_114 vdd gnd cell_6t
Xbit_r115_c39 bl_39 br_39 wl_115 vdd gnd cell_6t
Xbit_r116_c39 bl_39 br_39 wl_116 vdd gnd cell_6t
Xbit_r117_c39 bl_39 br_39 wl_117 vdd gnd cell_6t
Xbit_r118_c39 bl_39 br_39 wl_118 vdd gnd cell_6t
Xbit_r119_c39 bl_39 br_39 wl_119 vdd gnd cell_6t
Xbit_r120_c39 bl_39 br_39 wl_120 vdd gnd cell_6t
Xbit_r121_c39 bl_39 br_39 wl_121 vdd gnd cell_6t
Xbit_r122_c39 bl_39 br_39 wl_122 vdd gnd cell_6t
Xbit_r123_c39 bl_39 br_39 wl_123 vdd gnd cell_6t
Xbit_r124_c39 bl_39 br_39 wl_124 vdd gnd cell_6t
Xbit_r125_c39 bl_39 br_39 wl_125 vdd gnd cell_6t
Xbit_r126_c39 bl_39 br_39 wl_126 vdd gnd cell_6t
Xbit_r127_c39 bl_39 br_39 wl_127 vdd gnd cell_6t
Xbit_r0_c40 bl_40 br_40 wl_0 vdd gnd cell_6t
Xbit_r1_c40 bl_40 br_40 wl_1 vdd gnd cell_6t
Xbit_r2_c40 bl_40 br_40 wl_2 vdd gnd cell_6t
Xbit_r3_c40 bl_40 br_40 wl_3 vdd gnd cell_6t
Xbit_r4_c40 bl_40 br_40 wl_4 vdd gnd cell_6t
Xbit_r5_c40 bl_40 br_40 wl_5 vdd gnd cell_6t
Xbit_r6_c40 bl_40 br_40 wl_6 vdd gnd cell_6t
Xbit_r7_c40 bl_40 br_40 wl_7 vdd gnd cell_6t
Xbit_r8_c40 bl_40 br_40 wl_8 vdd gnd cell_6t
Xbit_r9_c40 bl_40 br_40 wl_9 vdd gnd cell_6t
Xbit_r10_c40 bl_40 br_40 wl_10 vdd gnd cell_6t
Xbit_r11_c40 bl_40 br_40 wl_11 vdd gnd cell_6t
Xbit_r12_c40 bl_40 br_40 wl_12 vdd gnd cell_6t
Xbit_r13_c40 bl_40 br_40 wl_13 vdd gnd cell_6t
Xbit_r14_c40 bl_40 br_40 wl_14 vdd gnd cell_6t
Xbit_r15_c40 bl_40 br_40 wl_15 vdd gnd cell_6t
Xbit_r16_c40 bl_40 br_40 wl_16 vdd gnd cell_6t
Xbit_r17_c40 bl_40 br_40 wl_17 vdd gnd cell_6t
Xbit_r18_c40 bl_40 br_40 wl_18 vdd gnd cell_6t
Xbit_r19_c40 bl_40 br_40 wl_19 vdd gnd cell_6t
Xbit_r20_c40 bl_40 br_40 wl_20 vdd gnd cell_6t
Xbit_r21_c40 bl_40 br_40 wl_21 vdd gnd cell_6t
Xbit_r22_c40 bl_40 br_40 wl_22 vdd gnd cell_6t
Xbit_r23_c40 bl_40 br_40 wl_23 vdd gnd cell_6t
Xbit_r24_c40 bl_40 br_40 wl_24 vdd gnd cell_6t
Xbit_r25_c40 bl_40 br_40 wl_25 vdd gnd cell_6t
Xbit_r26_c40 bl_40 br_40 wl_26 vdd gnd cell_6t
Xbit_r27_c40 bl_40 br_40 wl_27 vdd gnd cell_6t
Xbit_r28_c40 bl_40 br_40 wl_28 vdd gnd cell_6t
Xbit_r29_c40 bl_40 br_40 wl_29 vdd gnd cell_6t
Xbit_r30_c40 bl_40 br_40 wl_30 vdd gnd cell_6t
Xbit_r31_c40 bl_40 br_40 wl_31 vdd gnd cell_6t
Xbit_r32_c40 bl_40 br_40 wl_32 vdd gnd cell_6t
Xbit_r33_c40 bl_40 br_40 wl_33 vdd gnd cell_6t
Xbit_r34_c40 bl_40 br_40 wl_34 vdd gnd cell_6t
Xbit_r35_c40 bl_40 br_40 wl_35 vdd gnd cell_6t
Xbit_r36_c40 bl_40 br_40 wl_36 vdd gnd cell_6t
Xbit_r37_c40 bl_40 br_40 wl_37 vdd gnd cell_6t
Xbit_r38_c40 bl_40 br_40 wl_38 vdd gnd cell_6t
Xbit_r39_c40 bl_40 br_40 wl_39 vdd gnd cell_6t
Xbit_r40_c40 bl_40 br_40 wl_40 vdd gnd cell_6t
Xbit_r41_c40 bl_40 br_40 wl_41 vdd gnd cell_6t
Xbit_r42_c40 bl_40 br_40 wl_42 vdd gnd cell_6t
Xbit_r43_c40 bl_40 br_40 wl_43 vdd gnd cell_6t
Xbit_r44_c40 bl_40 br_40 wl_44 vdd gnd cell_6t
Xbit_r45_c40 bl_40 br_40 wl_45 vdd gnd cell_6t
Xbit_r46_c40 bl_40 br_40 wl_46 vdd gnd cell_6t
Xbit_r47_c40 bl_40 br_40 wl_47 vdd gnd cell_6t
Xbit_r48_c40 bl_40 br_40 wl_48 vdd gnd cell_6t
Xbit_r49_c40 bl_40 br_40 wl_49 vdd gnd cell_6t
Xbit_r50_c40 bl_40 br_40 wl_50 vdd gnd cell_6t
Xbit_r51_c40 bl_40 br_40 wl_51 vdd gnd cell_6t
Xbit_r52_c40 bl_40 br_40 wl_52 vdd gnd cell_6t
Xbit_r53_c40 bl_40 br_40 wl_53 vdd gnd cell_6t
Xbit_r54_c40 bl_40 br_40 wl_54 vdd gnd cell_6t
Xbit_r55_c40 bl_40 br_40 wl_55 vdd gnd cell_6t
Xbit_r56_c40 bl_40 br_40 wl_56 vdd gnd cell_6t
Xbit_r57_c40 bl_40 br_40 wl_57 vdd gnd cell_6t
Xbit_r58_c40 bl_40 br_40 wl_58 vdd gnd cell_6t
Xbit_r59_c40 bl_40 br_40 wl_59 vdd gnd cell_6t
Xbit_r60_c40 bl_40 br_40 wl_60 vdd gnd cell_6t
Xbit_r61_c40 bl_40 br_40 wl_61 vdd gnd cell_6t
Xbit_r62_c40 bl_40 br_40 wl_62 vdd gnd cell_6t
Xbit_r63_c40 bl_40 br_40 wl_63 vdd gnd cell_6t
Xbit_r64_c40 bl_40 br_40 wl_64 vdd gnd cell_6t
Xbit_r65_c40 bl_40 br_40 wl_65 vdd gnd cell_6t
Xbit_r66_c40 bl_40 br_40 wl_66 vdd gnd cell_6t
Xbit_r67_c40 bl_40 br_40 wl_67 vdd gnd cell_6t
Xbit_r68_c40 bl_40 br_40 wl_68 vdd gnd cell_6t
Xbit_r69_c40 bl_40 br_40 wl_69 vdd gnd cell_6t
Xbit_r70_c40 bl_40 br_40 wl_70 vdd gnd cell_6t
Xbit_r71_c40 bl_40 br_40 wl_71 vdd gnd cell_6t
Xbit_r72_c40 bl_40 br_40 wl_72 vdd gnd cell_6t
Xbit_r73_c40 bl_40 br_40 wl_73 vdd gnd cell_6t
Xbit_r74_c40 bl_40 br_40 wl_74 vdd gnd cell_6t
Xbit_r75_c40 bl_40 br_40 wl_75 vdd gnd cell_6t
Xbit_r76_c40 bl_40 br_40 wl_76 vdd gnd cell_6t
Xbit_r77_c40 bl_40 br_40 wl_77 vdd gnd cell_6t
Xbit_r78_c40 bl_40 br_40 wl_78 vdd gnd cell_6t
Xbit_r79_c40 bl_40 br_40 wl_79 vdd gnd cell_6t
Xbit_r80_c40 bl_40 br_40 wl_80 vdd gnd cell_6t
Xbit_r81_c40 bl_40 br_40 wl_81 vdd gnd cell_6t
Xbit_r82_c40 bl_40 br_40 wl_82 vdd gnd cell_6t
Xbit_r83_c40 bl_40 br_40 wl_83 vdd gnd cell_6t
Xbit_r84_c40 bl_40 br_40 wl_84 vdd gnd cell_6t
Xbit_r85_c40 bl_40 br_40 wl_85 vdd gnd cell_6t
Xbit_r86_c40 bl_40 br_40 wl_86 vdd gnd cell_6t
Xbit_r87_c40 bl_40 br_40 wl_87 vdd gnd cell_6t
Xbit_r88_c40 bl_40 br_40 wl_88 vdd gnd cell_6t
Xbit_r89_c40 bl_40 br_40 wl_89 vdd gnd cell_6t
Xbit_r90_c40 bl_40 br_40 wl_90 vdd gnd cell_6t
Xbit_r91_c40 bl_40 br_40 wl_91 vdd gnd cell_6t
Xbit_r92_c40 bl_40 br_40 wl_92 vdd gnd cell_6t
Xbit_r93_c40 bl_40 br_40 wl_93 vdd gnd cell_6t
Xbit_r94_c40 bl_40 br_40 wl_94 vdd gnd cell_6t
Xbit_r95_c40 bl_40 br_40 wl_95 vdd gnd cell_6t
Xbit_r96_c40 bl_40 br_40 wl_96 vdd gnd cell_6t
Xbit_r97_c40 bl_40 br_40 wl_97 vdd gnd cell_6t
Xbit_r98_c40 bl_40 br_40 wl_98 vdd gnd cell_6t
Xbit_r99_c40 bl_40 br_40 wl_99 vdd gnd cell_6t
Xbit_r100_c40 bl_40 br_40 wl_100 vdd gnd cell_6t
Xbit_r101_c40 bl_40 br_40 wl_101 vdd gnd cell_6t
Xbit_r102_c40 bl_40 br_40 wl_102 vdd gnd cell_6t
Xbit_r103_c40 bl_40 br_40 wl_103 vdd gnd cell_6t
Xbit_r104_c40 bl_40 br_40 wl_104 vdd gnd cell_6t
Xbit_r105_c40 bl_40 br_40 wl_105 vdd gnd cell_6t
Xbit_r106_c40 bl_40 br_40 wl_106 vdd gnd cell_6t
Xbit_r107_c40 bl_40 br_40 wl_107 vdd gnd cell_6t
Xbit_r108_c40 bl_40 br_40 wl_108 vdd gnd cell_6t
Xbit_r109_c40 bl_40 br_40 wl_109 vdd gnd cell_6t
Xbit_r110_c40 bl_40 br_40 wl_110 vdd gnd cell_6t
Xbit_r111_c40 bl_40 br_40 wl_111 vdd gnd cell_6t
Xbit_r112_c40 bl_40 br_40 wl_112 vdd gnd cell_6t
Xbit_r113_c40 bl_40 br_40 wl_113 vdd gnd cell_6t
Xbit_r114_c40 bl_40 br_40 wl_114 vdd gnd cell_6t
Xbit_r115_c40 bl_40 br_40 wl_115 vdd gnd cell_6t
Xbit_r116_c40 bl_40 br_40 wl_116 vdd gnd cell_6t
Xbit_r117_c40 bl_40 br_40 wl_117 vdd gnd cell_6t
Xbit_r118_c40 bl_40 br_40 wl_118 vdd gnd cell_6t
Xbit_r119_c40 bl_40 br_40 wl_119 vdd gnd cell_6t
Xbit_r120_c40 bl_40 br_40 wl_120 vdd gnd cell_6t
Xbit_r121_c40 bl_40 br_40 wl_121 vdd gnd cell_6t
Xbit_r122_c40 bl_40 br_40 wl_122 vdd gnd cell_6t
Xbit_r123_c40 bl_40 br_40 wl_123 vdd gnd cell_6t
Xbit_r124_c40 bl_40 br_40 wl_124 vdd gnd cell_6t
Xbit_r125_c40 bl_40 br_40 wl_125 vdd gnd cell_6t
Xbit_r126_c40 bl_40 br_40 wl_126 vdd gnd cell_6t
Xbit_r127_c40 bl_40 br_40 wl_127 vdd gnd cell_6t
Xbit_r0_c41 bl_41 br_41 wl_0 vdd gnd cell_6t
Xbit_r1_c41 bl_41 br_41 wl_1 vdd gnd cell_6t
Xbit_r2_c41 bl_41 br_41 wl_2 vdd gnd cell_6t
Xbit_r3_c41 bl_41 br_41 wl_3 vdd gnd cell_6t
Xbit_r4_c41 bl_41 br_41 wl_4 vdd gnd cell_6t
Xbit_r5_c41 bl_41 br_41 wl_5 vdd gnd cell_6t
Xbit_r6_c41 bl_41 br_41 wl_6 vdd gnd cell_6t
Xbit_r7_c41 bl_41 br_41 wl_7 vdd gnd cell_6t
Xbit_r8_c41 bl_41 br_41 wl_8 vdd gnd cell_6t
Xbit_r9_c41 bl_41 br_41 wl_9 vdd gnd cell_6t
Xbit_r10_c41 bl_41 br_41 wl_10 vdd gnd cell_6t
Xbit_r11_c41 bl_41 br_41 wl_11 vdd gnd cell_6t
Xbit_r12_c41 bl_41 br_41 wl_12 vdd gnd cell_6t
Xbit_r13_c41 bl_41 br_41 wl_13 vdd gnd cell_6t
Xbit_r14_c41 bl_41 br_41 wl_14 vdd gnd cell_6t
Xbit_r15_c41 bl_41 br_41 wl_15 vdd gnd cell_6t
Xbit_r16_c41 bl_41 br_41 wl_16 vdd gnd cell_6t
Xbit_r17_c41 bl_41 br_41 wl_17 vdd gnd cell_6t
Xbit_r18_c41 bl_41 br_41 wl_18 vdd gnd cell_6t
Xbit_r19_c41 bl_41 br_41 wl_19 vdd gnd cell_6t
Xbit_r20_c41 bl_41 br_41 wl_20 vdd gnd cell_6t
Xbit_r21_c41 bl_41 br_41 wl_21 vdd gnd cell_6t
Xbit_r22_c41 bl_41 br_41 wl_22 vdd gnd cell_6t
Xbit_r23_c41 bl_41 br_41 wl_23 vdd gnd cell_6t
Xbit_r24_c41 bl_41 br_41 wl_24 vdd gnd cell_6t
Xbit_r25_c41 bl_41 br_41 wl_25 vdd gnd cell_6t
Xbit_r26_c41 bl_41 br_41 wl_26 vdd gnd cell_6t
Xbit_r27_c41 bl_41 br_41 wl_27 vdd gnd cell_6t
Xbit_r28_c41 bl_41 br_41 wl_28 vdd gnd cell_6t
Xbit_r29_c41 bl_41 br_41 wl_29 vdd gnd cell_6t
Xbit_r30_c41 bl_41 br_41 wl_30 vdd gnd cell_6t
Xbit_r31_c41 bl_41 br_41 wl_31 vdd gnd cell_6t
Xbit_r32_c41 bl_41 br_41 wl_32 vdd gnd cell_6t
Xbit_r33_c41 bl_41 br_41 wl_33 vdd gnd cell_6t
Xbit_r34_c41 bl_41 br_41 wl_34 vdd gnd cell_6t
Xbit_r35_c41 bl_41 br_41 wl_35 vdd gnd cell_6t
Xbit_r36_c41 bl_41 br_41 wl_36 vdd gnd cell_6t
Xbit_r37_c41 bl_41 br_41 wl_37 vdd gnd cell_6t
Xbit_r38_c41 bl_41 br_41 wl_38 vdd gnd cell_6t
Xbit_r39_c41 bl_41 br_41 wl_39 vdd gnd cell_6t
Xbit_r40_c41 bl_41 br_41 wl_40 vdd gnd cell_6t
Xbit_r41_c41 bl_41 br_41 wl_41 vdd gnd cell_6t
Xbit_r42_c41 bl_41 br_41 wl_42 vdd gnd cell_6t
Xbit_r43_c41 bl_41 br_41 wl_43 vdd gnd cell_6t
Xbit_r44_c41 bl_41 br_41 wl_44 vdd gnd cell_6t
Xbit_r45_c41 bl_41 br_41 wl_45 vdd gnd cell_6t
Xbit_r46_c41 bl_41 br_41 wl_46 vdd gnd cell_6t
Xbit_r47_c41 bl_41 br_41 wl_47 vdd gnd cell_6t
Xbit_r48_c41 bl_41 br_41 wl_48 vdd gnd cell_6t
Xbit_r49_c41 bl_41 br_41 wl_49 vdd gnd cell_6t
Xbit_r50_c41 bl_41 br_41 wl_50 vdd gnd cell_6t
Xbit_r51_c41 bl_41 br_41 wl_51 vdd gnd cell_6t
Xbit_r52_c41 bl_41 br_41 wl_52 vdd gnd cell_6t
Xbit_r53_c41 bl_41 br_41 wl_53 vdd gnd cell_6t
Xbit_r54_c41 bl_41 br_41 wl_54 vdd gnd cell_6t
Xbit_r55_c41 bl_41 br_41 wl_55 vdd gnd cell_6t
Xbit_r56_c41 bl_41 br_41 wl_56 vdd gnd cell_6t
Xbit_r57_c41 bl_41 br_41 wl_57 vdd gnd cell_6t
Xbit_r58_c41 bl_41 br_41 wl_58 vdd gnd cell_6t
Xbit_r59_c41 bl_41 br_41 wl_59 vdd gnd cell_6t
Xbit_r60_c41 bl_41 br_41 wl_60 vdd gnd cell_6t
Xbit_r61_c41 bl_41 br_41 wl_61 vdd gnd cell_6t
Xbit_r62_c41 bl_41 br_41 wl_62 vdd gnd cell_6t
Xbit_r63_c41 bl_41 br_41 wl_63 vdd gnd cell_6t
Xbit_r64_c41 bl_41 br_41 wl_64 vdd gnd cell_6t
Xbit_r65_c41 bl_41 br_41 wl_65 vdd gnd cell_6t
Xbit_r66_c41 bl_41 br_41 wl_66 vdd gnd cell_6t
Xbit_r67_c41 bl_41 br_41 wl_67 vdd gnd cell_6t
Xbit_r68_c41 bl_41 br_41 wl_68 vdd gnd cell_6t
Xbit_r69_c41 bl_41 br_41 wl_69 vdd gnd cell_6t
Xbit_r70_c41 bl_41 br_41 wl_70 vdd gnd cell_6t
Xbit_r71_c41 bl_41 br_41 wl_71 vdd gnd cell_6t
Xbit_r72_c41 bl_41 br_41 wl_72 vdd gnd cell_6t
Xbit_r73_c41 bl_41 br_41 wl_73 vdd gnd cell_6t
Xbit_r74_c41 bl_41 br_41 wl_74 vdd gnd cell_6t
Xbit_r75_c41 bl_41 br_41 wl_75 vdd gnd cell_6t
Xbit_r76_c41 bl_41 br_41 wl_76 vdd gnd cell_6t
Xbit_r77_c41 bl_41 br_41 wl_77 vdd gnd cell_6t
Xbit_r78_c41 bl_41 br_41 wl_78 vdd gnd cell_6t
Xbit_r79_c41 bl_41 br_41 wl_79 vdd gnd cell_6t
Xbit_r80_c41 bl_41 br_41 wl_80 vdd gnd cell_6t
Xbit_r81_c41 bl_41 br_41 wl_81 vdd gnd cell_6t
Xbit_r82_c41 bl_41 br_41 wl_82 vdd gnd cell_6t
Xbit_r83_c41 bl_41 br_41 wl_83 vdd gnd cell_6t
Xbit_r84_c41 bl_41 br_41 wl_84 vdd gnd cell_6t
Xbit_r85_c41 bl_41 br_41 wl_85 vdd gnd cell_6t
Xbit_r86_c41 bl_41 br_41 wl_86 vdd gnd cell_6t
Xbit_r87_c41 bl_41 br_41 wl_87 vdd gnd cell_6t
Xbit_r88_c41 bl_41 br_41 wl_88 vdd gnd cell_6t
Xbit_r89_c41 bl_41 br_41 wl_89 vdd gnd cell_6t
Xbit_r90_c41 bl_41 br_41 wl_90 vdd gnd cell_6t
Xbit_r91_c41 bl_41 br_41 wl_91 vdd gnd cell_6t
Xbit_r92_c41 bl_41 br_41 wl_92 vdd gnd cell_6t
Xbit_r93_c41 bl_41 br_41 wl_93 vdd gnd cell_6t
Xbit_r94_c41 bl_41 br_41 wl_94 vdd gnd cell_6t
Xbit_r95_c41 bl_41 br_41 wl_95 vdd gnd cell_6t
Xbit_r96_c41 bl_41 br_41 wl_96 vdd gnd cell_6t
Xbit_r97_c41 bl_41 br_41 wl_97 vdd gnd cell_6t
Xbit_r98_c41 bl_41 br_41 wl_98 vdd gnd cell_6t
Xbit_r99_c41 bl_41 br_41 wl_99 vdd gnd cell_6t
Xbit_r100_c41 bl_41 br_41 wl_100 vdd gnd cell_6t
Xbit_r101_c41 bl_41 br_41 wl_101 vdd gnd cell_6t
Xbit_r102_c41 bl_41 br_41 wl_102 vdd gnd cell_6t
Xbit_r103_c41 bl_41 br_41 wl_103 vdd gnd cell_6t
Xbit_r104_c41 bl_41 br_41 wl_104 vdd gnd cell_6t
Xbit_r105_c41 bl_41 br_41 wl_105 vdd gnd cell_6t
Xbit_r106_c41 bl_41 br_41 wl_106 vdd gnd cell_6t
Xbit_r107_c41 bl_41 br_41 wl_107 vdd gnd cell_6t
Xbit_r108_c41 bl_41 br_41 wl_108 vdd gnd cell_6t
Xbit_r109_c41 bl_41 br_41 wl_109 vdd gnd cell_6t
Xbit_r110_c41 bl_41 br_41 wl_110 vdd gnd cell_6t
Xbit_r111_c41 bl_41 br_41 wl_111 vdd gnd cell_6t
Xbit_r112_c41 bl_41 br_41 wl_112 vdd gnd cell_6t
Xbit_r113_c41 bl_41 br_41 wl_113 vdd gnd cell_6t
Xbit_r114_c41 bl_41 br_41 wl_114 vdd gnd cell_6t
Xbit_r115_c41 bl_41 br_41 wl_115 vdd gnd cell_6t
Xbit_r116_c41 bl_41 br_41 wl_116 vdd gnd cell_6t
Xbit_r117_c41 bl_41 br_41 wl_117 vdd gnd cell_6t
Xbit_r118_c41 bl_41 br_41 wl_118 vdd gnd cell_6t
Xbit_r119_c41 bl_41 br_41 wl_119 vdd gnd cell_6t
Xbit_r120_c41 bl_41 br_41 wl_120 vdd gnd cell_6t
Xbit_r121_c41 bl_41 br_41 wl_121 vdd gnd cell_6t
Xbit_r122_c41 bl_41 br_41 wl_122 vdd gnd cell_6t
Xbit_r123_c41 bl_41 br_41 wl_123 vdd gnd cell_6t
Xbit_r124_c41 bl_41 br_41 wl_124 vdd gnd cell_6t
Xbit_r125_c41 bl_41 br_41 wl_125 vdd gnd cell_6t
Xbit_r126_c41 bl_41 br_41 wl_126 vdd gnd cell_6t
Xbit_r127_c41 bl_41 br_41 wl_127 vdd gnd cell_6t
Xbit_r0_c42 bl_42 br_42 wl_0 vdd gnd cell_6t
Xbit_r1_c42 bl_42 br_42 wl_1 vdd gnd cell_6t
Xbit_r2_c42 bl_42 br_42 wl_2 vdd gnd cell_6t
Xbit_r3_c42 bl_42 br_42 wl_3 vdd gnd cell_6t
Xbit_r4_c42 bl_42 br_42 wl_4 vdd gnd cell_6t
Xbit_r5_c42 bl_42 br_42 wl_5 vdd gnd cell_6t
Xbit_r6_c42 bl_42 br_42 wl_6 vdd gnd cell_6t
Xbit_r7_c42 bl_42 br_42 wl_7 vdd gnd cell_6t
Xbit_r8_c42 bl_42 br_42 wl_8 vdd gnd cell_6t
Xbit_r9_c42 bl_42 br_42 wl_9 vdd gnd cell_6t
Xbit_r10_c42 bl_42 br_42 wl_10 vdd gnd cell_6t
Xbit_r11_c42 bl_42 br_42 wl_11 vdd gnd cell_6t
Xbit_r12_c42 bl_42 br_42 wl_12 vdd gnd cell_6t
Xbit_r13_c42 bl_42 br_42 wl_13 vdd gnd cell_6t
Xbit_r14_c42 bl_42 br_42 wl_14 vdd gnd cell_6t
Xbit_r15_c42 bl_42 br_42 wl_15 vdd gnd cell_6t
Xbit_r16_c42 bl_42 br_42 wl_16 vdd gnd cell_6t
Xbit_r17_c42 bl_42 br_42 wl_17 vdd gnd cell_6t
Xbit_r18_c42 bl_42 br_42 wl_18 vdd gnd cell_6t
Xbit_r19_c42 bl_42 br_42 wl_19 vdd gnd cell_6t
Xbit_r20_c42 bl_42 br_42 wl_20 vdd gnd cell_6t
Xbit_r21_c42 bl_42 br_42 wl_21 vdd gnd cell_6t
Xbit_r22_c42 bl_42 br_42 wl_22 vdd gnd cell_6t
Xbit_r23_c42 bl_42 br_42 wl_23 vdd gnd cell_6t
Xbit_r24_c42 bl_42 br_42 wl_24 vdd gnd cell_6t
Xbit_r25_c42 bl_42 br_42 wl_25 vdd gnd cell_6t
Xbit_r26_c42 bl_42 br_42 wl_26 vdd gnd cell_6t
Xbit_r27_c42 bl_42 br_42 wl_27 vdd gnd cell_6t
Xbit_r28_c42 bl_42 br_42 wl_28 vdd gnd cell_6t
Xbit_r29_c42 bl_42 br_42 wl_29 vdd gnd cell_6t
Xbit_r30_c42 bl_42 br_42 wl_30 vdd gnd cell_6t
Xbit_r31_c42 bl_42 br_42 wl_31 vdd gnd cell_6t
Xbit_r32_c42 bl_42 br_42 wl_32 vdd gnd cell_6t
Xbit_r33_c42 bl_42 br_42 wl_33 vdd gnd cell_6t
Xbit_r34_c42 bl_42 br_42 wl_34 vdd gnd cell_6t
Xbit_r35_c42 bl_42 br_42 wl_35 vdd gnd cell_6t
Xbit_r36_c42 bl_42 br_42 wl_36 vdd gnd cell_6t
Xbit_r37_c42 bl_42 br_42 wl_37 vdd gnd cell_6t
Xbit_r38_c42 bl_42 br_42 wl_38 vdd gnd cell_6t
Xbit_r39_c42 bl_42 br_42 wl_39 vdd gnd cell_6t
Xbit_r40_c42 bl_42 br_42 wl_40 vdd gnd cell_6t
Xbit_r41_c42 bl_42 br_42 wl_41 vdd gnd cell_6t
Xbit_r42_c42 bl_42 br_42 wl_42 vdd gnd cell_6t
Xbit_r43_c42 bl_42 br_42 wl_43 vdd gnd cell_6t
Xbit_r44_c42 bl_42 br_42 wl_44 vdd gnd cell_6t
Xbit_r45_c42 bl_42 br_42 wl_45 vdd gnd cell_6t
Xbit_r46_c42 bl_42 br_42 wl_46 vdd gnd cell_6t
Xbit_r47_c42 bl_42 br_42 wl_47 vdd gnd cell_6t
Xbit_r48_c42 bl_42 br_42 wl_48 vdd gnd cell_6t
Xbit_r49_c42 bl_42 br_42 wl_49 vdd gnd cell_6t
Xbit_r50_c42 bl_42 br_42 wl_50 vdd gnd cell_6t
Xbit_r51_c42 bl_42 br_42 wl_51 vdd gnd cell_6t
Xbit_r52_c42 bl_42 br_42 wl_52 vdd gnd cell_6t
Xbit_r53_c42 bl_42 br_42 wl_53 vdd gnd cell_6t
Xbit_r54_c42 bl_42 br_42 wl_54 vdd gnd cell_6t
Xbit_r55_c42 bl_42 br_42 wl_55 vdd gnd cell_6t
Xbit_r56_c42 bl_42 br_42 wl_56 vdd gnd cell_6t
Xbit_r57_c42 bl_42 br_42 wl_57 vdd gnd cell_6t
Xbit_r58_c42 bl_42 br_42 wl_58 vdd gnd cell_6t
Xbit_r59_c42 bl_42 br_42 wl_59 vdd gnd cell_6t
Xbit_r60_c42 bl_42 br_42 wl_60 vdd gnd cell_6t
Xbit_r61_c42 bl_42 br_42 wl_61 vdd gnd cell_6t
Xbit_r62_c42 bl_42 br_42 wl_62 vdd gnd cell_6t
Xbit_r63_c42 bl_42 br_42 wl_63 vdd gnd cell_6t
Xbit_r64_c42 bl_42 br_42 wl_64 vdd gnd cell_6t
Xbit_r65_c42 bl_42 br_42 wl_65 vdd gnd cell_6t
Xbit_r66_c42 bl_42 br_42 wl_66 vdd gnd cell_6t
Xbit_r67_c42 bl_42 br_42 wl_67 vdd gnd cell_6t
Xbit_r68_c42 bl_42 br_42 wl_68 vdd gnd cell_6t
Xbit_r69_c42 bl_42 br_42 wl_69 vdd gnd cell_6t
Xbit_r70_c42 bl_42 br_42 wl_70 vdd gnd cell_6t
Xbit_r71_c42 bl_42 br_42 wl_71 vdd gnd cell_6t
Xbit_r72_c42 bl_42 br_42 wl_72 vdd gnd cell_6t
Xbit_r73_c42 bl_42 br_42 wl_73 vdd gnd cell_6t
Xbit_r74_c42 bl_42 br_42 wl_74 vdd gnd cell_6t
Xbit_r75_c42 bl_42 br_42 wl_75 vdd gnd cell_6t
Xbit_r76_c42 bl_42 br_42 wl_76 vdd gnd cell_6t
Xbit_r77_c42 bl_42 br_42 wl_77 vdd gnd cell_6t
Xbit_r78_c42 bl_42 br_42 wl_78 vdd gnd cell_6t
Xbit_r79_c42 bl_42 br_42 wl_79 vdd gnd cell_6t
Xbit_r80_c42 bl_42 br_42 wl_80 vdd gnd cell_6t
Xbit_r81_c42 bl_42 br_42 wl_81 vdd gnd cell_6t
Xbit_r82_c42 bl_42 br_42 wl_82 vdd gnd cell_6t
Xbit_r83_c42 bl_42 br_42 wl_83 vdd gnd cell_6t
Xbit_r84_c42 bl_42 br_42 wl_84 vdd gnd cell_6t
Xbit_r85_c42 bl_42 br_42 wl_85 vdd gnd cell_6t
Xbit_r86_c42 bl_42 br_42 wl_86 vdd gnd cell_6t
Xbit_r87_c42 bl_42 br_42 wl_87 vdd gnd cell_6t
Xbit_r88_c42 bl_42 br_42 wl_88 vdd gnd cell_6t
Xbit_r89_c42 bl_42 br_42 wl_89 vdd gnd cell_6t
Xbit_r90_c42 bl_42 br_42 wl_90 vdd gnd cell_6t
Xbit_r91_c42 bl_42 br_42 wl_91 vdd gnd cell_6t
Xbit_r92_c42 bl_42 br_42 wl_92 vdd gnd cell_6t
Xbit_r93_c42 bl_42 br_42 wl_93 vdd gnd cell_6t
Xbit_r94_c42 bl_42 br_42 wl_94 vdd gnd cell_6t
Xbit_r95_c42 bl_42 br_42 wl_95 vdd gnd cell_6t
Xbit_r96_c42 bl_42 br_42 wl_96 vdd gnd cell_6t
Xbit_r97_c42 bl_42 br_42 wl_97 vdd gnd cell_6t
Xbit_r98_c42 bl_42 br_42 wl_98 vdd gnd cell_6t
Xbit_r99_c42 bl_42 br_42 wl_99 vdd gnd cell_6t
Xbit_r100_c42 bl_42 br_42 wl_100 vdd gnd cell_6t
Xbit_r101_c42 bl_42 br_42 wl_101 vdd gnd cell_6t
Xbit_r102_c42 bl_42 br_42 wl_102 vdd gnd cell_6t
Xbit_r103_c42 bl_42 br_42 wl_103 vdd gnd cell_6t
Xbit_r104_c42 bl_42 br_42 wl_104 vdd gnd cell_6t
Xbit_r105_c42 bl_42 br_42 wl_105 vdd gnd cell_6t
Xbit_r106_c42 bl_42 br_42 wl_106 vdd gnd cell_6t
Xbit_r107_c42 bl_42 br_42 wl_107 vdd gnd cell_6t
Xbit_r108_c42 bl_42 br_42 wl_108 vdd gnd cell_6t
Xbit_r109_c42 bl_42 br_42 wl_109 vdd gnd cell_6t
Xbit_r110_c42 bl_42 br_42 wl_110 vdd gnd cell_6t
Xbit_r111_c42 bl_42 br_42 wl_111 vdd gnd cell_6t
Xbit_r112_c42 bl_42 br_42 wl_112 vdd gnd cell_6t
Xbit_r113_c42 bl_42 br_42 wl_113 vdd gnd cell_6t
Xbit_r114_c42 bl_42 br_42 wl_114 vdd gnd cell_6t
Xbit_r115_c42 bl_42 br_42 wl_115 vdd gnd cell_6t
Xbit_r116_c42 bl_42 br_42 wl_116 vdd gnd cell_6t
Xbit_r117_c42 bl_42 br_42 wl_117 vdd gnd cell_6t
Xbit_r118_c42 bl_42 br_42 wl_118 vdd gnd cell_6t
Xbit_r119_c42 bl_42 br_42 wl_119 vdd gnd cell_6t
Xbit_r120_c42 bl_42 br_42 wl_120 vdd gnd cell_6t
Xbit_r121_c42 bl_42 br_42 wl_121 vdd gnd cell_6t
Xbit_r122_c42 bl_42 br_42 wl_122 vdd gnd cell_6t
Xbit_r123_c42 bl_42 br_42 wl_123 vdd gnd cell_6t
Xbit_r124_c42 bl_42 br_42 wl_124 vdd gnd cell_6t
Xbit_r125_c42 bl_42 br_42 wl_125 vdd gnd cell_6t
Xbit_r126_c42 bl_42 br_42 wl_126 vdd gnd cell_6t
Xbit_r127_c42 bl_42 br_42 wl_127 vdd gnd cell_6t
Xbit_r0_c43 bl_43 br_43 wl_0 vdd gnd cell_6t
Xbit_r1_c43 bl_43 br_43 wl_1 vdd gnd cell_6t
Xbit_r2_c43 bl_43 br_43 wl_2 vdd gnd cell_6t
Xbit_r3_c43 bl_43 br_43 wl_3 vdd gnd cell_6t
Xbit_r4_c43 bl_43 br_43 wl_4 vdd gnd cell_6t
Xbit_r5_c43 bl_43 br_43 wl_5 vdd gnd cell_6t
Xbit_r6_c43 bl_43 br_43 wl_6 vdd gnd cell_6t
Xbit_r7_c43 bl_43 br_43 wl_7 vdd gnd cell_6t
Xbit_r8_c43 bl_43 br_43 wl_8 vdd gnd cell_6t
Xbit_r9_c43 bl_43 br_43 wl_9 vdd gnd cell_6t
Xbit_r10_c43 bl_43 br_43 wl_10 vdd gnd cell_6t
Xbit_r11_c43 bl_43 br_43 wl_11 vdd gnd cell_6t
Xbit_r12_c43 bl_43 br_43 wl_12 vdd gnd cell_6t
Xbit_r13_c43 bl_43 br_43 wl_13 vdd gnd cell_6t
Xbit_r14_c43 bl_43 br_43 wl_14 vdd gnd cell_6t
Xbit_r15_c43 bl_43 br_43 wl_15 vdd gnd cell_6t
Xbit_r16_c43 bl_43 br_43 wl_16 vdd gnd cell_6t
Xbit_r17_c43 bl_43 br_43 wl_17 vdd gnd cell_6t
Xbit_r18_c43 bl_43 br_43 wl_18 vdd gnd cell_6t
Xbit_r19_c43 bl_43 br_43 wl_19 vdd gnd cell_6t
Xbit_r20_c43 bl_43 br_43 wl_20 vdd gnd cell_6t
Xbit_r21_c43 bl_43 br_43 wl_21 vdd gnd cell_6t
Xbit_r22_c43 bl_43 br_43 wl_22 vdd gnd cell_6t
Xbit_r23_c43 bl_43 br_43 wl_23 vdd gnd cell_6t
Xbit_r24_c43 bl_43 br_43 wl_24 vdd gnd cell_6t
Xbit_r25_c43 bl_43 br_43 wl_25 vdd gnd cell_6t
Xbit_r26_c43 bl_43 br_43 wl_26 vdd gnd cell_6t
Xbit_r27_c43 bl_43 br_43 wl_27 vdd gnd cell_6t
Xbit_r28_c43 bl_43 br_43 wl_28 vdd gnd cell_6t
Xbit_r29_c43 bl_43 br_43 wl_29 vdd gnd cell_6t
Xbit_r30_c43 bl_43 br_43 wl_30 vdd gnd cell_6t
Xbit_r31_c43 bl_43 br_43 wl_31 vdd gnd cell_6t
Xbit_r32_c43 bl_43 br_43 wl_32 vdd gnd cell_6t
Xbit_r33_c43 bl_43 br_43 wl_33 vdd gnd cell_6t
Xbit_r34_c43 bl_43 br_43 wl_34 vdd gnd cell_6t
Xbit_r35_c43 bl_43 br_43 wl_35 vdd gnd cell_6t
Xbit_r36_c43 bl_43 br_43 wl_36 vdd gnd cell_6t
Xbit_r37_c43 bl_43 br_43 wl_37 vdd gnd cell_6t
Xbit_r38_c43 bl_43 br_43 wl_38 vdd gnd cell_6t
Xbit_r39_c43 bl_43 br_43 wl_39 vdd gnd cell_6t
Xbit_r40_c43 bl_43 br_43 wl_40 vdd gnd cell_6t
Xbit_r41_c43 bl_43 br_43 wl_41 vdd gnd cell_6t
Xbit_r42_c43 bl_43 br_43 wl_42 vdd gnd cell_6t
Xbit_r43_c43 bl_43 br_43 wl_43 vdd gnd cell_6t
Xbit_r44_c43 bl_43 br_43 wl_44 vdd gnd cell_6t
Xbit_r45_c43 bl_43 br_43 wl_45 vdd gnd cell_6t
Xbit_r46_c43 bl_43 br_43 wl_46 vdd gnd cell_6t
Xbit_r47_c43 bl_43 br_43 wl_47 vdd gnd cell_6t
Xbit_r48_c43 bl_43 br_43 wl_48 vdd gnd cell_6t
Xbit_r49_c43 bl_43 br_43 wl_49 vdd gnd cell_6t
Xbit_r50_c43 bl_43 br_43 wl_50 vdd gnd cell_6t
Xbit_r51_c43 bl_43 br_43 wl_51 vdd gnd cell_6t
Xbit_r52_c43 bl_43 br_43 wl_52 vdd gnd cell_6t
Xbit_r53_c43 bl_43 br_43 wl_53 vdd gnd cell_6t
Xbit_r54_c43 bl_43 br_43 wl_54 vdd gnd cell_6t
Xbit_r55_c43 bl_43 br_43 wl_55 vdd gnd cell_6t
Xbit_r56_c43 bl_43 br_43 wl_56 vdd gnd cell_6t
Xbit_r57_c43 bl_43 br_43 wl_57 vdd gnd cell_6t
Xbit_r58_c43 bl_43 br_43 wl_58 vdd gnd cell_6t
Xbit_r59_c43 bl_43 br_43 wl_59 vdd gnd cell_6t
Xbit_r60_c43 bl_43 br_43 wl_60 vdd gnd cell_6t
Xbit_r61_c43 bl_43 br_43 wl_61 vdd gnd cell_6t
Xbit_r62_c43 bl_43 br_43 wl_62 vdd gnd cell_6t
Xbit_r63_c43 bl_43 br_43 wl_63 vdd gnd cell_6t
Xbit_r64_c43 bl_43 br_43 wl_64 vdd gnd cell_6t
Xbit_r65_c43 bl_43 br_43 wl_65 vdd gnd cell_6t
Xbit_r66_c43 bl_43 br_43 wl_66 vdd gnd cell_6t
Xbit_r67_c43 bl_43 br_43 wl_67 vdd gnd cell_6t
Xbit_r68_c43 bl_43 br_43 wl_68 vdd gnd cell_6t
Xbit_r69_c43 bl_43 br_43 wl_69 vdd gnd cell_6t
Xbit_r70_c43 bl_43 br_43 wl_70 vdd gnd cell_6t
Xbit_r71_c43 bl_43 br_43 wl_71 vdd gnd cell_6t
Xbit_r72_c43 bl_43 br_43 wl_72 vdd gnd cell_6t
Xbit_r73_c43 bl_43 br_43 wl_73 vdd gnd cell_6t
Xbit_r74_c43 bl_43 br_43 wl_74 vdd gnd cell_6t
Xbit_r75_c43 bl_43 br_43 wl_75 vdd gnd cell_6t
Xbit_r76_c43 bl_43 br_43 wl_76 vdd gnd cell_6t
Xbit_r77_c43 bl_43 br_43 wl_77 vdd gnd cell_6t
Xbit_r78_c43 bl_43 br_43 wl_78 vdd gnd cell_6t
Xbit_r79_c43 bl_43 br_43 wl_79 vdd gnd cell_6t
Xbit_r80_c43 bl_43 br_43 wl_80 vdd gnd cell_6t
Xbit_r81_c43 bl_43 br_43 wl_81 vdd gnd cell_6t
Xbit_r82_c43 bl_43 br_43 wl_82 vdd gnd cell_6t
Xbit_r83_c43 bl_43 br_43 wl_83 vdd gnd cell_6t
Xbit_r84_c43 bl_43 br_43 wl_84 vdd gnd cell_6t
Xbit_r85_c43 bl_43 br_43 wl_85 vdd gnd cell_6t
Xbit_r86_c43 bl_43 br_43 wl_86 vdd gnd cell_6t
Xbit_r87_c43 bl_43 br_43 wl_87 vdd gnd cell_6t
Xbit_r88_c43 bl_43 br_43 wl_88 vdd gnd cell_6t
Xbit_r89_c43 bl_43 br_43 wl_89 vdd gnd cell_6t
Xbit_r90_c43 bl_43 br_43 wl_90 vdd gnd cell_6t
Xbit_r91_c43 bl_43 br_43 wl_91 vdd gnd cell_6t
Xbit_r92_c43 bl_43 br_43 wl_92 vdd gnd cell_6t
Xbit_r93_c43 bl_43 br_43 wl_93 vdd gnd cell_6t
Xbit_r94_c43 bl_43 br_43 wl_94 vdd gnd cell_6t
Xbit_r95_c43 bl_43 br_43 wl_95 vdd gnd cell_6t
Xbit_r96_c43 bl_43 br_43 wl_96 vdd gnd cell_6t
Xbit_r97_c43 bl_43 br_43 wl_97 vdd gnd cell_6t
Xbit_r98_c43 bl_43 br_43 wl_98 vdd gnd cell_6t
Xbit_r99_c43 bl_43 br_43 wl_99 vdd gnd cell_6t
Xbit_r100_c43 bl_43 br_43 wl_100 vdd gnd cell_6t
Xbit_r101_c43 bl_43 br_43 wl_101 vdd gnd cell_6t
Xbit_r102_c43 bl_43 br_43 wl_102 vdd gnd cell_6t
Xbit_r103_c43 bl_43 br_43 wl_103 vdd gnd cell_6t
Xbit_r104_c43 bl_43 br_43 wl_104 vdd gnd cell_6t
Xbit_r105_c43 bl_43 br_43 wl_105 vdd gnd cell_6t
Xbit_r106_c43 bl_43 br_43 wl_106 vdd gnd cell_6t
Xbit_r107_c43 bl_43 br_43 wl_107 vdd gnd cell_6t
Xbit_r108_c43 bl_43 br_43 wl_108 vdd gnd cell_6t
Xbit_r109_c43 bl_43 br_43 wl_109 vdd gnd cell_6t
Xbit_r110_c43 bl_43 br_43 wl_110 vdd gnd cell_6t
Xbit_r111_c43 bl_43 br_43 wl_111 vdd gnd cell_6t
Xbit_r112_c43 bl_43 br_43 wl_112 vdd gnd cell_6t
Xbit_r113_c43 bl_43 br_43 wl_113 vdd gnd cell_6t
Xbit_r114_c43 bl_43 br_43 wl_114 vdd gnd cell_6t
Xbit_r115_c43 bl_43 br_43 wl_115 vdd gnd cell_6t
Xbit_r116_c43 bl_43 br_43 wl_116 vdd gnd cell_6t
Xbit_r117_c43 bl_43 br_43 wl_117 vdd gnd cell_6t
Xbit_r118_c43 bl_43 br_43 wl_118 vdd gnd cell_6t
Xbit_r119_c43 bl_43 br_43 wl_119 vdd gnd cell_6t
Xbit_r120_c43 bl_43 br_43 wl_120 vdd gnd cell_6t
Xbit_r121_c43 bl_43 br_43 wl_121 vdd gnd cell_6t
Xbit_r122_c43 bl_43 br_43 wl_122 vdd gnd cell_6t
Xbit_r123_c43 bl_43 br_43 wl_123 vdd gnd cell_6t
Xbit_r124_c43 bl_43 br_43 wl_124 vdd gnd cell_6t
Xbit_r125_c43 bl_43 br_43 wl_125 vdd gnd cell_6t
Xbit_r126_c43 bl_43 br_43 wl_126 vdd gnd cell_6t
Xbit_r127_c43 bl_43 br_43 wl_127 vdd gnd cell_6t
Xbit_r0_c44 bl_44 br_44 wl_0 vdd gnd cell_6t
Xbit_r1_c44 bl_44 br_44 wl_1 vdd gnd cell_6t
Xbit_r2_c44 bl_44 br_44 wl_2 vdd gnd cell_6t
Xbit_r3_c44 bl_44 br_44 wl_3 vdd gnd cell_6t
Xbit_r4_c44 bl_44 br_44 wl_4 vdd gnd cell_6t
Xbit_r5_c44 bl_44 br_44 wl_5 vdd gnd cell_6t
Xbit_r6_c44 bl_44 br_44 wl_6 vdd gnd cell_6t
Xbit_r7_c44 bl_44 br_44 wl_7 vdd gnd cell_6t
Xbit_r8_c44 bl_44 br_44 wl_8 vdd gnd cell_6t
Xbit_r9_c44 bl_44 br_44 wl_9 vdd gnd cell_6t
Xbit_r10_c44 bl_44 br_44 wl_10 vdd gnd cell_6t
Xbit_r11_c44 bl_44 br_44 wl_11 vdd gnd cell_6t
Xbit_r12_c44 bl_44 br_44 wl_12 vdd gnd cell_6t
Xbit_r13_c44 bl_44 br_44 wl_13 vdd gnd cell_6t
Xbit_r14_c44 bl_44 br_44 wl_14 vdd gnd cell_6t
Xbit_r15_c44 bl_44 br_44 wl_15 vdd gnd cell_6t
Xbit_r16_c44 bl_44 br_44 wl_16 vdd gnd cell_6t
Xbit_r17_c44 bl_44 br_44 wl_17 vdd gnd cell_6t
Xbit_r18_c44 bl_44 br_44 wl_18 vdd gnd cell_6t
Xbit_r19_c44 bl_44 br_44 wl_19 vdd gnd cell_6t
Xbit_r20_c44 bl_44 br_44 wl_20 vdd gnd cell_6t
Xbit_r21_c44 bl_44 br_44 wl_21 vdd gnd cell_6t
Xbit_r22_c44 bl_44 br_44 wl_22 vdd gnd cell_6t
Xbit_r23_c44 bl_44 br_44 wl_23 vdd gnd cell_6t
Xbit_r24_c44 bl_44 br_44 wl_24 vdd gnd cell_6t
Xbit_r25_c44 bl_44 br_44 wl_25 vdd gnd cell_6t
Xbit_r26_c44 bl_44 br_44 wl_26 vdd gnd cell_6t
Xbit_r27_c44 bl_44 br_44 wl_27 vdd gnd cell_6t
Xbit_r28_c44 bl_44 br_44 wl_28 vdd gnd cell_6t
Xbit_r29_c44 bl_44 br_44 wl_29 vdd gnd cell_6t
Xbit_r30_c44 bl_44 br_44 wl_30 vdd gnd cell_6t
Xbit_r31_c44 bl_44 br_44 wl_31 vdd gnd cell_6t
Xbit_r32_c44 bl_44 br_44 wl_32 vdd gnd cell_6t
Xbit_r33_c44 bl_44 br_44 wl_33 vdd gnd cell_6t
Xbit_r34_c44 bl_44 br_44 wl_34 vdd gnd cell_6t
Xbit_r35_c44 bl_44 br_44 wl_35 vdd gnd cell_6t
Xbit_r36_c44 bl_44 br_44 wl_36 vdd gnd cell_6t
Xbit_r37_c44 bl_44 br_44 wl_37 vdd gnd cell_6t
Xbit_r38_c44 bl_44 br_44 wl_38 vdd gnd cell_6t
Xbit_r39_c44 bl_44 br_44 wl_39 vdd gnd cell_6t
Xbit_r40_c44 bl_44 br_44 wl_40 vdd gnd cell_6t
Xbit_r41_c44 bl_44 br_44 wl_41 vdd gnd cell_6t
Xbit_r42_c44 bl_44 br_44 wl_42 vdd gnd cell_6t
Xbit_r43_c44 bl_44 br_44 wl_43 vdd gnd cell_6t
Xbit_r44_c44 bl_44 br_44 wl_44 vdd gnd cell_6t
Xbit_r45_c44 bl_44 br_44 wl_45 vdd gnd cell_6t
Xbit_r46_c44 bl_44 br_44 wl_46 vdd gnd cell_6t
Xbit_r47_c44 bl_44 br_44 wl_47 vdd gnd cell_6t
Xbit_r48_c44 bl_44 br_44 wl_48 vdd gnd cell_6t
Xbit_r49_c44 bl_44 br_44 wl_49 vdd gnd cell_6t
Xbit_r50_c44 bl_44 br_44 wl_50 vdd gnd cell_6t
Xbit_r51_c44 bl_44 br_44 wl_51 vdd gnd cell_6t
Xbit_r52_c44 bl_44 br_44 wl_52 vdd gnd cell_6t
Xbit_r53_c44 bl_44 br_44 wl_53 vdd gnd cell_6t
Xbit_r54_c44 bl_44 br_44 wl_54 vdd gnd cell_6t
Xbit_r55_c44 bl_44 br_44 wl_55 vdd gnd cell_6t
Xbit_r56_c44 bl_44 br_44 wl_56 vdd gnd cell_6t
Xbit_r57_c44 bl_44 br_44 wl_57 vdd gnd cell_6t
Xbit_r58_c44 bl_44 br_44 wl_58 vdd gnd cell_6t
Xbit_r59_c44 bl_44 br_44 wl_59 vdd gnd cell_6t
Xbit_r60_c44 bl_44 br_44 wl_60 vdd gnd cell_6t
Xbit_r61_c44 bl_44 br_44 wl_61 vdd gnd cell_6t
Xbit_r62_c44 bl_44 br_44 wl_62 vdd gnd cell_6t
Xbit_r63_c44 bl_44 br_44 wl_63 vdd gnd cell_6t
Xbit_r64_c44 bl_44 br_44 wl_64 vdd gnd cell_6t
Xbit_r65_c44 bl_44 br_44 wl_65 vdd gnd cell_6t
Xbit_r66_c44 bl_44 br_44 wl_66 vdd gnd cell_6t
Xbit_r67_c44 bl_44 br_44 wl_67 vdd gnd cell_6t
Xbit_r68_c44 bl_44 br_44 wl_68 vdd gnd cell_6t
Xbit_r69_c44 bl_44 br_44 wl_69 vdd gnd cell_6t
Xbit_r70_c44 bl_44 br_44 wl_70 vdd gnd cell_6t
Xbit_r71_c44 bl_44 br_44 wl_71 vdd gnd cell_6t
Xbit_r72_c44 bl_44 br_44 wl_72 vdd gnd cell_6t
Xbit_r73_c44 bl_44 br_44 wl_73 vdd gnd cell_6t
Xbit_r74_c44 bl_44 br_44 wl_74 vdd gnd cell_6t
Xbit_r75_c44 bl_44 br_44 wl_75 vdd gnd cell_6t
Xbit_r76_c44 bl_44 br_44 wl_76 vdd gnd cell_6t
Xbit_r77_c44 bl_44 br_44 wl_77 vdd gnd cell_6t
Xbit_r78_c44 bl_44 br_44 wl_78 vdd gnd cell_6t
Xbit_r79_c44 bl_44 br_44 wl_79 vdd gnd cell_6t
Xbit_r80_c44 bl_44 br_44 wl_80 vdd gnd cell_6t
Xbit_r81_c44 bl_44 br_44 wl_81 vdd gnd cell_6t
Xbit_r82_c44 bl_44 br_44 wl_82 vdd gnd cell_6t
Xbit_r83_c44 bl_44 br_44 wl_83 vdd gnd cell_6t
Xbit_r84_c44 bl_44 br_44 wl_84 vdd gnd cell_6t
Xbit_r85_c44 bl_44 br_44 wl_85 vdd gnd cell_6t
Xbit_r86_c44 bl_44 br_44 wl_86 vdd gnd cell_6t
Xbit_r87_c44 bl_44 br_44 wl_87 vdd gnd cell_6t
Xbit_r88_c44 bl_44 br_44 wl_88 vdd gnd cell_6t
Xbit_r89_c44 bl_44 br_44 wl_89 vdd gnd cell_6t
Xbit_r90_c44 bl_44 br_44 wl_90 vdd gnd cell_6t
Xbit_r91_c44 bl_44 br_44 wl_91 vdd gnd cell_6t
Xbit_r92_c44 bl_44 br_44 wl_92 vdd gnd cell_6t
Xbit_r93_c44 bl_44 br_44 wl_93 vdd gnd cell_6t
Xbit_r94_c44 bl_44 br_44 wl_94 vdd gnd cell_6t
Xbit_r95_c44 bl_44 br_44 wl_95 vdd gnd cell_6t
Xbit_r96_c44 bl_44 br_44 wl_96 vdd gnd cell_6t
Xbit_r97_c44 bl_44 br_44 wl_97 vdd gnd cell_6t
Xbit_r98_c44 bl_44 br_44 wl_98 vdd gnd cell_6t
Xbit_r99_c44 bl_44 br_44 wl_99 vdd gnd cell_6t
Xbit_r100_c44 bl_44 br_44 wl_100 vdd gnd cell_6t
Xbit_r101_c44 bl_44 br_44 wl_101 vdd gnd cell_6t
Xbit_r102_c44 bl_44 br_44 wl_102 vdd gnd cell_6t
Xbit_r103_c44 bl_44 br_44 wl_103 vdd gnd cell_6t
Xbit_r104_c44 bl_44 br_44 wl_104 vdd gnd cell_6t
Xbit_r105_c44 bl_44 br_44 wl_105 vdd gnd cell_6t
Xbit_r106_c44 bl_44 br_44 wl_106 vdd gnd cell_6t
Xbit_r107_c44 bl_44 br_44 wl_107 vdd gnd cell_6t
Xbit_r108_c44 bl_44 br_44 wl_108 vdd gnd cell_6t
Xbit_r109_c44 bl_44 br_44 wl_109 vdd gnd cell_6t
Xbit_r110_c44 bl_44 br_44 wl_110 vdd gnd cell_6t
Xbit_r111_c44 bl_44 br_44 wl_111 vdd gnd cell_6t
Xbit_r112_c44 bl_44 br_44 wl_112 vdd gnd cell_6t
Xbit_r113_c44 bl_44 br_44 wl_113 vdd gnd cell_6t
Xbit_r114_c44 bl_44 br_44 wl_114 vdd gnd cell_6t
Xbit_r115_c44 bl_44 br_44 wl_115 vdd gnd cell_6t
Xbit_r116_c44 bl_44 br_44 wl_116 vdd gnd cell_6t
Xbit_r117_c44 bl_44 br_44 wl_117 vdd gnd cell_6t
Xbit_r118_c44 bl_44 br_44 wl_118 vdd gnd cell_6t
Xbit_r119_c44 bl_44 br_44 wl_119 vdd gnd cell_6t
Xbit_r120_c44 bl_44 br_44 wl_120 vdd gnd cell_6t
Xbit_r121_c44 bl_44 br_44 wl_121 vdd gnd cell_6t
Xbit_r122_c44 bl_44 br_44 wl_122 vdd gnd cell_6t
Xbit_r123_c44 bl_44 br_44 wl_123 vdd gnd cell_6t
Xbit_r124_c44 bl_44 br_44 wl_124 vdd gnd cell_6t
Xbit_r125_c44 bl_44 br_44 wl_125 vdd gnd cell_6t
Xbit_r126_c44 bl_44 br_44 wl_126 vdd gnd cell_6t
Xbit_r127_c44 bl_44 br_44 wl_127 vdd gnd cell_6t
Xbit_r0_c45 bl_45 br_45 wl_0 vdd gnd cell_6t
Xbit_r1_c45 bl_45 br_45 wl_1 vdd gnd cell_6t
Xbit_r2_c45 bl_45 br_45 wl_2 vdd gnd cell_6t
Xbit_r3_c45 bl_45 br_45 wl_3 vdd gnd cell_6t
Xbit_r4_c45 bl_45 br_45 wl_4 vdd gnd cell_6t
Xbit_r5_c45 bl_45 br_45 wl_5 vdd gnd cell_6t
Xbit_r6_c45 bl_45 br_45 wl_6 vdd gnd cell_6t
Xbit_r7_c45 bl_45 br_45 wl_7 vdd gnd cell_6t
Xbit_r8_c45 bl_45 br_45 wl_8 vdd gnd cell_6t
Xbit_r9_c45 bl_45 br_45 wl_9 vdd gnd cell_6t
Xbit_r10_c45 bl_45 br_45 wl_10 vdd gnd cell_6t
Xbit_r11_c45 bl_45 br_45 wl_11 vdd gnd cell_6t
Xbit_r12_c45 bl_45 br_45 wl_12 vdd gnd cell_6t
Xbit_r13_c45 bl_45 br_45 wl_13 vdd gnd cell_6t
Xbit_r14_c45 bl_45 br_45 wl_14 vdd gnd cell_6t
Xbit_r15_c45 bl_45 br_45 wl_15 vdd gnd cell_6t
Xbit_r16_c45 bl_45 br_45 wl_16 vdd gnd cell_6t
Xbit_r17_c45 bl_45 br_45 wl_17 vdd gnd cell_6t
Xbit_r18_c45 bl_45 br_45 wl_18 vdd gnd cell_6t
Xbit_r19_c45 bl_45 br_45 wl_19 vdd gnd cell_6t
Xbit_r20_c45 bl_45 br_45 wl_20 vdd gnd cell_6t
Xbit_r21_c45 bl_45 br_45 wl_21 vdd gnd cell_6t
Xbit_r22_c45 bl_45 br_45 wl_22 vdd gnd cell_6t
Xbit_r23_c45 bl_45 br_45 wl_23 vdd gnd cell_6t
Xbit_r24_c45 bl_45 br_45 wl_24 vdd gnd cell_6t
Xbit_r25_c45 bl_45 br_45 wl_25 vdd gnd cell_6t
Xbit_r26_c45 bl_45 br_45 wl_26 vdd gnd cell_6t
Xbit_r27_c45 bl_45 br_45 wl_27 vdd gnd cell_6t
Xbit_r28_c45 bl_45 br_45 wl_28 vdd gnd cell_6t
Xbit_r29_c45 bl_45 br_45 wl_29 vdd gnd cell_6t
Xbit_r30_c45 bl_45 br_45 wl_30 vdd gnd cell_6t
Xbit_r31_c45 bl_45 br_45 wl_31 vdd gnd cell_6t
Xbit_r32_c45 bl_45 br_45 wl_32 vdd gnd cell_6t
Xbit_r33_c45 bl_45 br_45 wl_33 vdd gnd cell_6t
Xbit_r34_c45 bl_45 br_45 wl_34 vdd gnd cell_6t
Xbit_r35_c45 bl_45 br_45 wl_35 vdd gnd cell_6t
Xbit_r36_c45 bl_45 br_45 wl_36 vdd gnd cell_6t
Xbit_r37_c45 bl_45 br_45 wl_37 vdd gnd cell_6t
Xbit_r38_c45 bl_45 br_45 wl_38 vdd gnd cell_6t
Xbit_r39_c45 bl_45 br_45 wl_39 vdd gnd cell_6t
Xbit_r40_c45 bl_45 br_45 wl_40 vdd gnd cell_6t
Xbit_r41_c45 bl_45 br_45 wl_41 vdd gnd cell_6t
Xbit_r42_c45 bl_45 br_45 wl_42 vdd gnd cell_6t
Xbit_r43_c45 bl_45 br_45 wl_43 vdd gnd cell_6t
Xbit_r44_c45 bl_45 br_45 wl_44 vdd gnd cell_6t
Xbit_r45_c45 bl_45 br_45 wl_45 vdd gnd cell_6t
Xbit_r46_c45 bl_45 br_45 wl_46 vdd gnd cell_6t
Xbit_r47_c45 bl_45 br_45 wl_47 vdd gnd cell_6t
Xbit_r48_c45 bl_45 br_45 wl_48 vdd gnd cell_6t
Xbit_r49_c45 bl_45 br_45 wl_49 vdd gnd cell_6t
Xbit_r50_c45 bl_45 br_45 wl_50 vdd gnd cell_6t
Xbit_r51_c45 bl_45 br_45 wl_51 vdd gnd cell_6t
Xbit_r52_c45 bl_45 br_45 wl_52 vdd gnd cell_6t
Xbit_r53_c45 bl_45 br_45 wl_53 vdd gnd cell_6t
Xbit_r54_c45 bl_45 br_45 wl_54 vdd gnd cell_6t
Xbit_r55_c45 bl_45 br_45 wl_55 vdd gnd cell_6t
Xbit_r56_c45 bl_45 br_45 wl_56 vdd gnd cell_6t
Xbit_r57_c45 bl_45 br_45 wl_57 vdd gnd cell_6t
Xbit_r58_c45 bl_45 br_45 wl_58 vdd gnd cell_6t
Xbit_r59_c45 bl_45 br_45 wl_59 vdd gnd cell_6t
Xbit_r60_c45 bl_45 br_45 wl_60 vdd gnd cell_6t
Xbit_r61_c45 bl_45 br_45 wl_61 vdd gnd cell_6t
Xbit_r62_c45 bl_45 br_45 wl_62 vdd gnd cell_6t
Xbit_r63_c45 bl_45 br_45 wl_63 vdd gnd cell_6t
Xbit_r64_c45 bl_45 br_45 wl_64 vdd gnd cell_6t
Xbit_r65_c45 bl_45 br_45 wl_65 vdd gnd cell_6t
Xbit_r66_c45 bl_45 br_45 wl_66 vdd gnd cell_6t
Xbit_r67_c45 bl_45 br_45 wl_67 vdd gnd cell_6t
Xbit_r68_c45 bl_45 br_45 wl_68 vdd gnd cell_6t
Xbit_r69_c45 bl_45 br_45 wl_69 vdd gnd cell_6t
Xbit_r70_c45 bl_45 br_45 wl_70 vdd gnd cell_6t
Xbit_r71_c45 bl_45 br_45 wl_71 vdd gnd cell_6t
Xbit_r72_c45 bl_45 br_45 wl_72 vdd gnd cell_6t
Xbit_r73_c45 bl_45 br_45 wl_73 vdd gnd cell_6t
Xbit_r74_c45 bl_45 br_45 wl_74 vdd gnd cell_6t
Xbit_r75_c45 bl_45 br_45 wl_75 vdd gnd cell_6t
Xbit_r76_c45 bl_45 br_45 wl_76 vdd gnd cell_6t
Xbit_r77_c45 bl_45 br_45 wl_77 vdd gnd cell_6t
Xbit_r78_c45 bl_45 br_45 wl_78 vdd gnd cell_6t
Xbit_r79_c45 bl_45 br_45 wl_79 vdd gnd cell_6t
Xbit_r80_c45 bl_45 br_45 wl_80 vdd gnd cell_6t
Xbit_r81_c45 bl_45 br_45 wl_81 vdd gnd cell_6t
Xbit_r82_c45 bl_45 br_45 wl_82 vdd gnd cell_6t
Xbit_r83_c45 bl_45 br_45 wl_83 vdd gnd cell_6t
Xbit_r84_c45 bl_45 br_45 wl_84 vdd gnd cell_6t
Xbit_r85_c45 bl_45 br_45 wl_85 vdd gnd cell_6t
Xbit_r86_c45 bl_45 br_45 wl_86 vdd gnd cell_6t
Xbit_r87_c45 bl_45 br_45 wl_87 vdd gnd cell_6t
Xbit_r88_c45 bl_45 br_45 wl_88 vdd gnd cell_6t
Xbit_r89_c45 bl_45 br_45 wl_89 vdd gnd cell_6t
Xbit_r90_c45 bl_45 br_45 wl_90 vdd gnd cell_6t
Xbit_r91_c45 bl_45 br_45 wl_91 vdd gnd cell_6t
Xbit_r92_c45 bl_45 br_45 wl_92 vdd gnd cell_6t
Xbit_r93_c45 bl_45 br_45 wl_93 vdd gnd cell_6t
Xbit_r94_c45 bl_45 br_45 wl_94 vdd gnd cell_6t
Xbit_r95_c45 bl_45 br_45 wl_95 vdd gnd cell_6t
Xbit_r96_c45 bl_45 br_45 wl_96 vdd gnd cell_6t
Xbit_r97_c45 bl_45 br_45 wl_97 vdd gnd cell_6t
Xbit_r98_c45 bl_45 br_45 wl_98 vdd gnd cell_6t
Xbit_r99_c45 bl_45 br_45 wl_99 vdd gnd cell_6t
Xbit_r100_c45 bl_45 br_45 wl_100 vdd gnd cell_6t
Xbit_r101_c45 bl_45 br_45 wl_101 vdd gnd cell_6t
Xbit_r102_c45 bl_45 br_45 wl_102 vdd gnd cell_6t
Xbit_r103_c45 bl_45 br_45 wl_103 vdd gnd cell_6t
Xbit_r104_c45 bl_45 br_45 wl_104 vdd gnd cell_6t
Xbit_r105_c45 bl_45 br_45 wl_105 vdd gnd cell_6t
Xbit_r106_c45 bl_45 br_45 wl_106 vdd gnd cell_6t
Xbit_r107_c45 bl_45 br_45 wl_107 vdd gnd cell_6t
Xbit_r108_c45 bl_45 br_45 wl_108 vdd gnd cell_6t
Xbit_r109_c45 bl_45 br_45 wl_109 vdd gnd cell_6t
Xbit_r110_c45 bl_45 br_45 wl_110 vdd gnd cell_6t
Xbit_r111_c45 bl_45 br_45 wl_111 vdd gnd cell_6t
Xbit_r112_c45 bl_45 br_45 wl_112 vdd gnd cell_6t
Xbit_r113_c45 bl_45 br_45 wl_113 vdd gnd cell_6t
Xbit_r114_c45 bl_45 br_45 wl_114 vdd gnd cell_6t
Xbit_r115_c45 bl_45 br_45 wl_115 vdd gnd cell_6t
Xbit_r116_c45 bl_45 br_45 wl_116 vdd gnd cell_6t
Xbit_r117_c45 bl_45 br_45 wl_117 vdd gnd cell_6t
Xbit_r118_c45 bl_45 br_45 wl_118 vdd gnd cell_6t
Xbit_r119_c45 bl_45 br_45 wl_119 vdd gnd cell_6t
Xbit_r120_c45 bl_45 br_45 wl_120 vdd gnd cell_6t
Xbit_r121_c45 bl_45 br_45 wl_121 vdd gnd cell_6t
Xbit_r122_c45 bl_45 br_45 wl_122 vdd gnd cell_6t
Xbit_r123_c45 bl_45 br_45 wl_123 vdd gnd cell_6t
Xbit_r124_c45 bl_45 br_45 wl_124 vdd gnd cell_6t
Xbit_r125_c45 bl_45 br_45 wl_125 vdd gnd cell_6t
Xbit_r126_c45 bl_45 br_45 wl_126 vdd gnd cell_6t
Xbit_r127_c45 bl_45 br_45 wl_127 vdd gnd cell_6t
Xbit_r0_c46 bl_46 br_46 wl_0 vdd gnd cell_6t
Xbit_r1_c46 bl_46 br_46 wl_1 vdd gnd cell_6t
Xbit_r2_c46 bl_46 br_46 wl_2 vdd gnd cell_6t
Xbit_r3_c46 bl_46 br_46 wl_3 vdd gnd cell_6t
Xbit_r4_c46 bl_46 br_46 wl_4 vdd gnd cell_6t
Xbit_r5_c46 bl_46 br_46 wl_5 vdd gnd cell_6t
Xbit_r6_c46 bl_46 br_46 wl_6 vdd gnd cell_6t
Xbit_r7_c46 bl_46 br_46 wl_7 vdd gnd cell_6t
Xbit_r8_c46 bl_46 br_46 wl_8 vdd gnd cell_6t
Xbit_r9_c46 bl_46 br_46 wl_9 vdd gnd cell_6t
Xbit_r10_c46 bl_46 br_46 wl_10 vdd gnd cell_6t
Xbit_r11_c46 bl_46 br_46 wl_11 vdd gnd cell_6t
Xbit_r12_c46 bl_46 br_46 wl_12 vdd gnd cell_6t
Xbit_r13_c46 bl_46 br_46 wl_13 vdd gnd cell_6t
Xbit_r14_c46 bl_46 br_46 wl_14 vdd gnd cell_6t
Xbit_r15_c46 bl_46 br_46 wl_15 vdd gnd cell_6t
Xbit_r16_c46 bl_46 br_46 wl_16 vdd gnd cell_6t
Xbit_r17_c46 bl_46 br_46 wl_17 vdd gnd cell_6t
Xbit_r18_c46 bl_46 br_46 wl_18 vdd gnd cell_6t
Xbit_r19_c46 bl_46 br_46 wl_19 vdd gnd cell_6t
Xbit_r20_c46 bl_46 br_46 wl_20 vdd gnd cell_6t
Xbit_r21_c46 bl_46 br_46 wl_21 vdd gnd cell_6t
Xbit_r22_c46 bl_46 br_46 wl_22 vdd gnd cell_6t
Xbit_r23_c46 bl_46 br_46 wl_23 vdd gnd cell_6t
Xbit_r24_c46 bl_46 br_46 wl_24 vdd gnd cell_6t
Xbit_r25_c46 bl_46 br_46 wl_25 vdd gnd cell_6t
Xbit_r26_c46 bl_46 br_46 wl_26 vdd gnd cell_6t
Xbit_r27_c46 bl_46 br_46 wl_27 vdd gnd cell_6t
Xbit_r28_c46 bl_46 br_46 wl_28 vdd gnd cell_6t
Xbit_r29_c46 bl_46 br_46 wl_29 vdd gnd cell_6t
Xbit_r30_c46 bl_46 br_46 wl_30 vdd gnd cell_6t
Xbit_r31_c46 bl_46 br_46 wl_31 vdd gnd cell_6t
Xbit_r32_c46 bl_46 br_46 wl_32 vdd gnd cell_6t
Xbit_r33_c46 bl_46 br_46 wl_33 vdd gnd cell_6t
Xbit_r34_c46 bl_46 br_46 wl_34 vdd gnd cell_6t
Xbit_r35_c46 bl_46 br_46 wl_35 vdd gnd cell_6t
Xbit_r36_c46 bl_46 br_46 wl_36 vdd gnd cell_6t
Xbit_r37_c46 bl_46 br_46 wl_37 vdd gnd cell_6t
Xbit_r38_c46 bl_46 br_46 wl_38 vdd gnd cell_6t
Xbit_r39_c46 bl_46 br_46 wl_39 vdd gnd cell_6t
Xbit_r40_c46 bl_46 br_46 wl_40 vdd gnd cell_6t
Xbit_r41_c46 bl_46 br_46 wl_41 vdd gnd cell_6t
Xbit_r42_c46 bl_46 br_46 wl_42 vdd gnd cell_6t
Xbit_r43_c46 bl_46 br_46 wl_43 vdd gnd cell_6t
Xbit_r44_c46 bl_46 br_46 wl_44 vdd gnd cell_6t
Xbit_r45_c46 bl_46 br_46 wl_45 vdd gnd cell_6t
Xbit_r46_c46 bl_46 br_46 wl_46 vdd gnd cell_6t
Xbit_r47_c46 bl_46 br_46 wl_47 vdd gnd cell_6t
Xbit_r48_c46 bl_46 br_46 wl_48 vdd gnd cell_6t
Xbit_r49_c46 bl_46 br_46 wl_49 vdd gnd cell_6t
Xbit_r50_c46 bl_46 br_46 wl_50 vdd gnd cell_6t
Xbit_r51_c46 bl_46 br_46 wl_51 vdd gnd cell_6t
Xbit_r52_c46 bl_46 br_46 wl_52 vdd gnd cell_6t
Xbit_r53_c46 bl_46 br_46 wl_53 vdd gnd cell_6t
Xbit_r54_c46 bl_46 br_46 wl_54 vdd gnd cell_6t
Xbit_r55_c46 bl_46 br_46 wl_55 vdd gnd cell_6t
Xbit_r56_c46 bl_46 br_46 wl_56 vdd gnd cell_6t
Xbit_r57_c46 bl_46 br_46 wl_57 vdd gnd cell_6t
Xbit_r58_c46 bl_46 br_46 wl_58 vdd gnd cell_6t
Xbit_r59_c46 bl_46 br_46 wl_59 vdd gnd cell_6t
Xbit_r60_c46 bl_46 br_46 wl_60 vdd gnd cell_6t
Xbit_r61_c46 bl_46 br_46 wl_61 vdd gnd cell_6t
Xbit_r62_c46 bl_46 br_46 wl_62 vdd gnd cell_6t
Xbit_r63_c46 bl_46 br_46 wl_63 vdd gnd cell_6t
Xbit_r64_c46 bl_46 br_46 wl_64 vdd gnd cell_6t
Xbit_r65_c46 bl_46 br_46 wl_65 vdd gnd cell_6t
Xbit_r66_c46 bl_46 br_46 wl_66 vdd gnd cell_6t
Xbit_r67_c46 bl_46 br_46 wl_67 vdd gnd cell_6t
Xbit_r68_c46 bl_46 br_46 wl_68 vdd gnd cell_6t
Xbit_r69_c46 bl_46 br_46 wl_69 vdd gnd cell_6t
Xbit_r70_c46 bl_46 br_46 wl_70 vdd gnd cell_6t
Xbit_r71_c46 bl_46 br_46 wl_71 vdd gnd cell_6t
Xbit_r72_c46 bl_46 br_46 wl_72 vdd gnd cell_6t
Xbit_r73_c46 bl_46 br_46 wl_73 vdd gnd cell_6t
Xbit_r74_c46 bl_46 br_46 wl_74 vdd gnd cell_6t
Xbit_r75_c46 bl_46 br_46 wl_75 vdd gnd cell_6t
Xbit_r76_c46 bl_46 br_46 wl_76 vdd gnd cell_6t
Xbit_r77_c46 bl_46 br_46 wl_77 vdd gnd cell_6t
Xbit_r78_c46 bl_46 br_46 wl_78 vdd gnd cell_6t
Xbit_r79_c46 bl_46 br_46 wl_79 vdd gnd cell_6t
Xbit_r80_c46 bl_46 br_46 wl_80 vdd gnd cell_6t
Xbit_r81_c46 bl_46 br_46 wl_81 vdd gnd cell_6t
Xbit_r82_c46 bl_46 br_46 wl_82 vdd gnd cell_6t
Xbit_r83_c46 bl_46 br_46 wl_83 vdd gnd cell_6t
Xbit_r84_c46 bl_46 br_46 wl_84 vdd gnd cell_6t
Xbit_r85_c46 bl_46 br_46 wl_85 vdd gnd cell_6t
Xbit_r86_c46 bl_46 br_46 wl_86 vdd gnd cell_6t
Xbit_r87_c46 bl_46 br_46 wl_87 vdd gnd cell_6t
Xbit_r88_c46 bl_46 br_46 wl_88 vdd gnd cell_6t
Xbit_r89_c46 bl_46 br_46 wl_89 vdd gnd cell_6t
Xbit_r90_c46 bl_46 br_46 wl_90 vdd gnd cell_6t
Xbit_r91_c46 bl_46 br_46 wl_91 vdd gnd cell_6t
Xbit_r92_c46 bl_46 br_46 wl_92 vdd gnd cell_6t
Xbit_r93_c46 bl_46 br_46 wl_93 vdd gnd cell_6t
Xbit_r94_c46 bl_46 br_46 wl_94 vdd gnd cell_6t
Xbit_r95_c46 bl_46 br_46 wl_95 vdd gnd cell_6t
Xbit_r96_c46 bl_46 br_46 wl_96 vdd gnd cell_6t
Xbit_r97_c46 bl_46 br_46 wl_97 vdd gnd cell_6t
Xbit_r98_c46 bl_46 br_46 wl_98 vdd gnd cell_6t
Xbit_r99_c46 bl_46 br_46 wl_99 vdd gnd cell_6t
Xbit_r100_c46 bl_46 br_46 wl_100 vdd gnd cell_6t
Xbit_r101_c46 bl_46 br_46 wl_101 vdd gnd cell_6t
Xbit_r102_c46 bl_46 br_46 wl_102 vdd gnd cell_6t
Xbit_r103_c46 bl_46 br_46 wl_103 vdd gnd cell_6t
Xbit_r104_c46 bl_46 br_46 wl_104 vdd gnd cell_6t
Xbit_r105_c46 bl_46 br_46 wl_105 vdd gnd cell_6t
Xbit_r106_c46 bl_46 br_46 wl_106 vdd gnd cell_6t
Xbit_r107_c46 bl_46 br_46 wl_107 vdd gnd cell_6t
Xbit_r108_c46 bl_46 br_46 wl_108 vdd gnd cell_6t
Xbit_r109_c46 bl_46 br_46 wl_109 vdd gnd cell_6t
Xbit_r110_c46 bl_46 br_46 wl_110 vdd gnd cell_6t
Xbit_r111_c46 bl_46 br_46 wl_111 vdd gnd cell_6t
Xbit_r112_c46 bl_46 br_46 wl_112 vdd gnd cell_6t
Xbit_r113_c46 bl_46 br_46 wl_113 vdd gnd cell_6t
Xbit_r114_c46 bl_46 br_46 wl_114 vdd gnd cell_6t
Xbit_r115_c46 bl_46 br_46 wl_115 vdd gnd cell_6t
Xbit_r116_c46 bl_46 br_46 wl_116 vdd gnd cell_6t
Xbit_r117_c46 bl_46 br_46 wl_117 vdd gnd cell_6t
Xbit_r118_c46 bl_46 br_46 wl_118 vdd gnd cell_6t
Xbit_r119_c46 bl_46 br_46 wl_119 vdd gnd cell_6t
Xbit_r120_c46 bl_46 br_46 wl_120 vdd gnd cell_6t
Xbit_r121_c46 bl_46 br_46 wl_121 vdd gnd cell_6t
Xbit_r122_c46 bl_46 br_46 wl_122 vdd gnd cell_6t
Xbit_r123_c46 bl_46 br_46 wl_123 vdd gnd cell_6t
Xbit_r124_c46 bl_46 br_46 wl_124 vdd gnd cell_6t
Xbit_r125_c46 bl_46 br_46 wl_125 vdd gnd cell_6t
Xbit_r126_c46 bl_46 br_46 wl_126 vdd gnd cell_6t
Xbit_r127_c46 bl_46 br_46 wl_127 vdd gnd cell_6t
Xbit_r0_c47 bl_47 br_47 wl_0 vdd gnd cell_6t
Xbit_r1_c47 bl_47 br_47 wl_1 vdd gnd cell_6t
Xbit_r2_c47 bl_47 br_47 wl_2 vdd gnd cell_6t
Xbit_r3_c47 bl_47 br_47 wl_3 vdd gnd cell_6t
Xbit_r4_c47 bl_47 br_47 wl_4 vdd gnd cell_6t
Xbit_r5_c47 bl_47 br_47 wl_5 vdd gnd cell_6t
Xbit_r6_c47 bl_47 br_47 wl_6 vdd gnd cell_6t
Xbit_r7_c47 bl_47 br_47 wl_7 vdd gnd cell_6t
Xbit_r8_c47 bl_47 br_47 wl_8 vdd gnd cell_6t
Xbit_r9_c47 bl_47 br_47 wl_9 vdd gnd cell_6t
Xbit_r10_c47 bl_47 br_47 wl_10 vdd gnd cell_6t
Xbit_r11_c47 bl_47 br_47 wl_11 vdd gnd cell_6t
Xbit_r12_c47 bl_47 br_47 wl_12 vdd gnd cell_6t
Xbit_r13_c47 bl_47 br_47 wl_13 vdd gnd cell_6t
Xbit_r14_c47 bl_47 br_47 wl_14 vdd gnd cell_6t
Xbit_r15_c47 bl_47 br_47 wl_15 vdd gnd cell_6t
Xbit_r16_c47 bl_47 br_47 wl_16 vdd gnd cell_6t
Xbit_r17_c47 bl_47 br_47 wl_17 vdd gnd cell_6t
Xbit_r18_c47 bl_47 br_47 wl_18 vdd gnd cell_6t
Xbit_r19_c47 bl_47 br_47 wl_19 vdd gnd cell_6t
Xbit_r20_c47 bl_47 br_47 wl_20 vdd gnd cell_6t
Xbit_r21_c47 bl_47 br_47 wl_21 vdd gnd cell_6t
Xbit_r22_c47 bl_47 br_47 wl_22 vdd gnd cell_6t
Xbit_r23_c47 bl_47 br_47 wl_23 vdd gnd cell_6t
Xbit_r24_c47 bl_47 br_47 wl_24 vdd gnd cell_6t
Xbit_r25_c47 bl_47 br_47 wl_25 vdd gnd cell_6t
Xbit_r26_c47 bl_47 br_47 wl_26 vdd gnd cell_6t
Xbit_r27_c47 bl_47 br_47 wl_27 vdd gnd cell_6t
Xbit_r28_c47 bl_47 br_47 wl_28 vdd gnd cell_6t
Xbit_r29_c47 bl_47 br_47 wl_29 vdd gnd cell_6t
Xbit_r30_c47 bl_47 br_47 wl_30 vdd gnd cell_6t
Xbit_r31_c47 bl_47 br_47 wl_31 vdd gnd cell_6t
Xbit_r32_c47 bl_47 br_47 wl_32 vdd gnd cell_6t
Xbit_r33_c47 bl_47 br_47 wl_33 vdd gnd cell_6t
Xbit_r34_c47 bl_47 br_47 wl_34 vdd gnd cell_6t
Xbit_r35_c47 bl_47 br_47 wl_35 vdd gnd cell_6t
Xbit_r36_c47 bl_47 br_47 wl_36 vdd gnd cell_6t
Xbit_r37_c47 bl_47 br_47 wl_37 vdd gnd cell_6t
Xbit_r38_c47 bl_47 br_47 wl_38 vdd gnd cell_6t
Xbit_r39_c47 bl_47 br_47 wl_39 vdd gnd cell_6t
Xbit_r40_c47 bl_47 br_47 wl_40 vdd gnd cell_6t
Xbit_r41_c47 bl_47 br_47 wl_41 vdd gnd cell_6t
Xbit_r42_c47 bl_47 br_47 wl_42 vdd gnd cell_6t
Xbit_r43_c47 bl_47 br_47 wl_43 vdd gnd cell_6t
Xbit_r44_c47 bl_47 br_47 wl_44 vdd gnd cell_6t
Xbit_r45_c47 bl_47 br_47 wl_45 vdd gnd cell_6t
Xbit_r46_c47 bl_47 br_47 wl_46 vdd gnd cell_6t
Xbit_r47_c47 bl_47 br_47 wl_47 vdd gnd cell_6t
Xbit_r48_c47 bl_47 br_47 wl_48 vdd gnd cell_6t
Xbit_r49_c47 bl_47 br_47 wl_49 vdd gnd cell_6t
Xbit_r50_c47 bl_47 br_47 wl_50 vdd gnd cell_6t
Xbit_r51_c47 bl_47 br_47 wl_51 vdd gnd cell_6t
Xbit_r52_c47 bl_47 br_47 wl_52 vdd gnd cell_6t
Xbit_r53_c47 bl_47 br_47 wl_53 vdd gnd cell_6t
Xbit_r54_c47 bl_47 br_47 wl_54 vdd gnd cell_6t
Xbit_r55_c47 bl_47 br_47 wl_55 vdd gnd cell_6t
Xbit_r56_c47 bl_47 br_47 wl_56 vdd gnd cell_6t
Xbit_r57_c47 bl_47 br_47 wl_57 vdd gnd cell_6t
Xbit_r58_c47 bl_47 br_47 wl_58 vdd gnd cell_6t
Xbit_r59_c47 bl_47 br_47 wl_59 vdd gnd cell_6t
Xbit_r60_c47 bl_47 br_47 wl_60 vdd gnd cell_6t
Xbit_r61_c47 bl_47 br_47 wl_61 vdd gnd cell_6t
Xbit_r62_c47 bl_47 br_47 wl_62 vdd gnd cell_6t
Xbit_r63_c47 bl_47 br_47 wl_63 vdd gnd cell_6t
Xbit_r64_c47 bl_47 br_47 wl_64 vdd gnd cell_6t
Xbit_r65_c47 bl_47 br_47 wl_65 vdd gnd cell_6t
Xbit_r66_c47 bl_47 br_47 wl_66 vdd gnd cell_6t
Xbit_r67_c47 bl_47 br_47 wl_67 vdd gnd cell_6t
Xbit_r68_c47 bl_47 br_47 wl_68 vdd gnd cell_6t
Xbit_r69_c47 bl_47 br_47 wl_69 vdd gnd cell_6t
Xbit_r70_c47 bl_47 br_47 wl_70 vdd gnd cell_6t
Xbit_r71_c47 bl_47 br_47 wl_71 vdd gnd cell_6t
Xbit_r72_c47 bl_47 br_47 wl_72 vdd gnd cell_6t
Xbit_r73_c47 bl_47 br_47 wl_73 vdd gnd cell_6t
Xbit_r74_c47 bl_47 br_47 wl_74 vdd gnd cell_6t
Xbit_r75_c47 bl_47 br_47 wl_75 vdd gnd cell_6t
Xbit_r76_c47 bl_47 br_47 wl_76 vdd gnd cell_6t
Xbit_r77_c47 bl_47 br_47 wl_77 vdd gnd cell_6t
Xbit_r78_c47 bl_47 br_47 wl_78 vdd gnd cell_6t
Xbit_r79_c47 bl_47 br_47 wl_79 vdd gnd cell_6t
Xbit_r80_c47 bl_47 br_47 wl_80 vdd gnd cell_6t
Xbit_r81_c47 bl_47 br_47 wl_81 vdd gnd cell_6t
Xbit_r82_c47 bl_47 br_47 wl_82 vdd gnd cell_6t
Xbit_r83_c47 bl_47 br_47 wl_83 vdd gnd cell_6t
Xbit_r84_c47 bl_47 br_47 wl_84 vdd gnd cell_6t
Xbit_r85_c47 bl_47 br_47 wl_85 vdd gnd cell_6t
Xbit_r86_c47 bl_47 br_47 wl_86 vdd gnd cell_6t
Xbit_r87_c47 bl_47 br_47 wl_87 vdd gnd cell_6t
Xbit_r88_c47 bl_47 br_47 wl_88 vdd gnd cell_6t
Xbit_r89_c47 bl_47 br_47 wl_89 vdd gnd cell_6t
Xbit_r90_c47 bl_47 br_47 wl_90 vdd gnd cell_6t
Xbit_r91_c47 bl_47 br_47 wl_91 vdd gnd cell_6t
Xbit_r92_c47 bl_47 br_47 wl_92 vdd gnd cell_6t
Xbit_r93_c47 bl_47 br_47 wl_93 vdd gnd cell_6t
Xbit_r94_c47 bl_47 br_47 wl_94 vdd gnd cell_6t
Xbit_r95_c47 bl_47 br_47 wl_95 vdd gnd cell_6t
Xbit_r96_c47 bl_47 br_47 wl_96 vdd gnd cell_6t
Xbit_r97_c47 bl_47 br_47 wl_97 vdd gnd cell_6t
Xbit_r98_c47 bl_47 br_47 wl_98 vdd gnd cell_6t
Xbit_r99_c47 bl_47 br_47 wl_99 vdd gnd cell_6t
Xbit_r100_c47 bl_47 br_47 wl_100 vdd gnd cell_6t
Xbit_r101_c47 bl_47 br_47 wl_101 vdd gnd cell_6t
Xbit_r102_c47 bl_47 br_47 wl_102 vdd gnd cell_6t
Xbit_r103_c47 bl_47 br_47 wl_103 vdd gnd cell_6t
Xbit_r104_c47 bl_47 br_47 wl_104 vdd gnd cell_6t
Xbit_r105_c47 bl_47 br_47 wl_105 vdd gnd cell_6t
Xbit_r106_c47 bl_47 br_47 wl_106 vdd gnd cell_6t
Xbit_r107_c47 bl_47 br_47 wl_107 vdd gnd cell_6t
Xbit_r108_c47 bl_47 br_47 wl_108 vdd gnd cell_6t
Xbit_r109_c47 bl_47 br_47 wl_109 vdd gnd cell_6t
Xbit_r110_c47 bl_47 br_47 wl_110 vdd gnd cell_6t
Xbit_r111_c47 bl_47 br_47 wl_111 vdd gnd cell_6t
Xbit_r112_c47 bl_47 br_47 wl_112 vdd gnd cell_6t
Xbit_r113_c47 bl_47 br_47 wl_113 vdd gnd cell_6t
Xbit_r114_c47 bl_47 br_47 wl_114 vdd gnd cell_6t
Xbit_r115_c47 bl_47 br_47 wl_115 vdd gnd cell_6t
Xbit_r116_c47 bl_47 br_47 wl_116 vdd gnd cell_6t
Xbit_r117_c47 bl_47 br_47 wl_117 vdd gnd cell_6t
Xbit_r118_c47 bl_47 br_47 wl_118 vdd gnd cell_6t
Xbit_r119_c47 bl_47 br_47 wl_119 vdd gnd cell_6t
Xbit_r120_c47 bl_47 br_47 wl_120 vdd gnd cell_6t
Xbit_r121_c47 bl_47 br_47 wl_121 vdd gnd cell_6t
Xbit_r122_c47 bl_47 br_47 wl_122 vdd gnd cell_6t
Xbit_r123_c47 bl_47 br_47 wl_123 vdd gnd cell_6t
Xbit_r124_c47 bl_47 br_47 wl_124 vdd gnd cell_6t
Xbit_r125_c47 bl_47 br_47 wl_125 vdd gnd cell_6t
Xbit_r126_c47 bl_47 br_47 wl_126 vdd gnd cell_6t
Xbit_r127_c47 bl_47 br_47 wl_127 vdd gnd cell_6t
Xbit_r0_c48 bl_48 br_48 wl_0 vdd gnd cell_6t
Xbit_r1_c48 bl_48 br_48 wl_1 vdd gnd cell_6t
Xbit_r2_c48 bl_48 br_48 wl_2 vdd gnd cell_6t
Xbit_r3_c48 bl_48 br_48 wl_3 vdd gnd cell_6t
Xbit_r4_c48 bl_48 br_48 wl_4 vdd gnd cell_6t
Xbit_r5_c48 bl_48 br_48 wl_5 vdd gnd cell_6t
Xbit_r6_c48 bl_48 br_48 wl_6 vdd gnd cell_6t
Xbit_r7_c48 bl_48 br_48 wl_7 vdd gnd cell_6t
Xbit_r8_c48 bl_48 br_48 wl_8 vdd gnd cell_6t
Xbit_r9_c48 bl_48 br_48 wl_9 vdd gnd cell_6t
Xbit_r10_c48 bl_48 br_48 wl_10 vdd gnd cell_6t
Xbit_r11_c48 bl_48 br_48 wl_11 vdd gnd cell_6t
Xbit_r12_c48 bl_48 br_48 wl_12 vdd gnd cell_6t
Xbit_r13_c48 bl_48 br_48 wl_13 vdd gnd cell_6t
Xbit_r14_c48 bl_48 br_48 wl_14 vdd gnd cell_6t
Xbit_r15_c48 bl_48 br_48 wl_15 vdd gnd cell_6t
Xbit_r16_c48 bl_48 br_48 wl_16 vdd gnd cell_6t
Xbit_r17_c48 bl_48 br_48 wl_17 vdd gnd cell_6t
Xbit_r18_c48 bl_48 br_48 wl_18 vdd gnd cell_6t
Xbit_r19_c48 bl_48 br_48 wl_19 vdd gnd cell_6t
Xbit_r20_c48 bl_48 br_48 wl_20 vdd gnd cell_6t
Xbit_r21_c48 bl_48 br_48 wl_21 vdd gnd cell_6t
Xbit_r22_c48 bl_48 br_48 wl_22 vdd gnd cell_6t
Xbit_r23_c48 bl_48 br_48 wl_23 vdd gnd cell_6t
Xbit_r24_c48 bl_48 br_48 wl_24 vdd gnd cell_6t
Xbit_r25_c48 bl_48 br_48 wl_25 vdd gnd cell_6t
Xbit_r26_c48 bl_48 br_48 wl_26 vdd gnd cell_6t
Xbit_r27_c48 bl_48 br_48 wl_27 vdd gnd cell_6t
Xbit_r28_c48 bl_48 br_48 wl_28 vdd gnd cell_6t
Xbit_r29_c48 bl_48 br_48 wl_29 vdd gnd cell_6t
Xbit_r30_c48 bl_48 br_48 wl_30 vdd gnd cell_6t
Xbit_r31_c48 bl_48 br_48 wl_31 vdd gnd cell_6t
Xbit_r32_c48 bl_48 br_48 wl_32 vdd gnd cell_6t
Xbit_r33_c48 bl_48 br_48 wl_33 vdd gnd cell_6t
Xbit_r34_c48 bl_48 br_48 wl_34 vdd gnd cell_6t
Xbit_r35_c48 bl_48 br_48 wl_35 vdd gnd cell_6t
Xbit_r36_c48 bl_48 br_48 wl_36 vdd gnd cell_6t
Xbit_r37_c48 bl_48 br_48 wl_37 vdd gnd cell_6t
Xbit_r38_c48 bl_48 br_48 wl_38 vdd gnd cell_6t
Xbit_r39_c48 bl_48 br_48 wl_39 vdd gnd cell_6t
Xbit_r40_c48 bl_48 br_48 wl_40 vdd gnd cell_6t
Xbit_r41_c48 bl_48 br_48 wl_41 vdd gnd cell_6t
Xbit_r42_c48 bl_48 br_48 wl_42 vdd gnd cell_6t
Xbit_r43_c48 bl_48 br_48 wl_43 vdd gnd cell_6t
Xbit_r44_c48 bl_48 br_48 wl_44 vdd gnd cell_6t
Xbit_r45_c48 bl_48 br_48 wl_45 vdd gnd cell_6t
Xbit_r46_c48 bl_48 br_48 wl_46 vdd gnd cell_6t
Xbit_r47_c48 bl_48 br_48 wl_47 vdd gnd cell_6t
Xbit_r48_c48 bl_48 br_48 wl_48 vdd gnd cell_6t
Xbit_r49_c48 bl_48 br_48 wl_49 vdd gnd cell_6t
Xbit_r50_c48 bl_48 br_48 wl_50 vdd gnd cell_6t
Xbit_r51_c48 bl_48 br_48 wl_51 vdd gnd cell_6t
Xbit_r52_c48 bl_48 br_48 wl_52 vdd gnd cell_6t
Xbit_r53_c48 bl_48 br_48 wl_53 vdd gnd cell_6t
Xbit_r54_c48 bl_48 br_48 wl_54 vdd gnd cell_6t
Xbit_r55_c48 bl_48 br_48 wl_55 vdd gnd cell_6t
Xbit_r56_c48 bl_48 br_48 wl_56 vdd gnd cell_6t
Xbit_r57_c48 bl_48 br_48 wl_57 vdd gnd cell_6t
Xbit_r58_c48 bl_48 br_48 wl_58 vdd gnd cell_6t
Xbit_r59_c48 bl_48 br_48 wl_59 vdd gnd cell_6t
Xbit_r60_c48 bl_48 br_48 wl_60 vdd gnd cell_6t
Xbit_r61_c48 bl_48 br_48 wl_61 vdd gnd cell_6t
Xbit_r62_c48 bl_48 br_48 wl_62 vdd gnd cell_6t
Xbit_r63_c48 bl_48 br_48 wl_63 vdd gnd cell_6t
Xbit_r64_c48 bl_48 br_48 wl_64 vdd gnd cell_6t
Xbit_r65_c48 bl_48 br_48 wl_65 vdd gnd cell_6t
Xbit_r66_c48 bl_48 br_48 wl_66 vdd gnd cell_6t
Xbit_r67_c48 bl_48 br_48 wl_67 vdd gnd cell_6t
Xbit_r68_c48 bl_48 br_48 wl_68 vdd gnd cell_6t
Xbit_r69_c48 bl_48 br_48 wl_69 vdd gnd cell_6t
Xbit_r70_c48 bl_48 br_48 wl_70 vdd gnd cell_6t
Xbit_r71_c48 bl_48 br_48 wl_71 vdd gnd cell_6t
Xbit_r72_c48 bl_48 br_48 wl_72 vdd gnd cell_6t
Xbit_r73_c48 bl_48 br_48 wl_73 vdd gnd cell_6t
Xbit_r74_c48 bl_48 br_48 wl_74 vdd gnd cell_6t
Xbit_r75_c48 bl_48 br_48 wl_75 vdd gnd cell_6t
Xbit_r76_c48 bl_48 br_48 wl_76 vdd gnd cell_6t
Xbit_r77_c48 bl_48 br_48 wl_77 vdd gnd cell_6t
Xbit_r78_c48 bl_48 br_48 wl_78 vdd gnd cell_6t
Xbit_r79_c48 bl_48 br_48 wl_79 vdd gnd cell_6t
Xbit_r80_c48 bl_48 br_48 wl_80 vdd gnd cell_6t
Xbit_r81_c48 bl_48 br_48 wl_81 vdd gnd cell_6t
Xbit_r82_c48 bl_48 br_48 wl_82 vdd gnd cell_6t
Xbit_r83_c48 bl_48 br_48 wl_83 vdd gnd cell_6t
Xbit_r84_c48 bl_48 br_48 wl_84 vdd gnd cell_6t
Xbit_r85_c48 bl_48 br_48 wl_85 vdd gnd cell_6t
Xbit_r86_c48 bl_48 br_48 wl_86 vdd gnd cell_6t
Xbit_r87_c48 bl_48 br_48 wl_87 vdd gnd cell_6t
Xbit_r88_c48 bl_48 br_48 wl_88 vdd gnd cell_6t
Xbit_r89_c48 bl_48 br_48 wl_89 vdd gnd cell_6t
Xbit_r90_c48 bl_48 br_48 wl_90 vdd gnd cell_6t
Xbit_r91_c48 bl_48 br_48 wl_91 vdd gnd cell_6t
Xbit_r92_c48 bl_48 br_48 wl_92 vdd gnd cell_6t
Xbit_r93_c48 bl_48 br_48 wl_93 vdd gnd cell_6t
Xbit_r94_c48 bl_48 br_48 wl_94 vdd gnd cell_6t
Xbit_r95_c48 bl_48 br_48 wl_95 vdd gnd cell_6t
Xbit_r96_c48 bl_48 br_48 wl_96 vdd gnd cell_6t
Xbit_r97_c48 bl_48 br_48 wl_97 vdd gnd cell_6t
Xbit_r98_c48 bl_48 br_48 wl_98 vdd gnd cell_6t
Xbit_r99_c48 bl_48 br_48 wl_99 vdd gnd cell_6t
Xbit_r100_c48 bl_48 br_48 wl_100 vdd gnd cell_6t
Xbit_r101_c48 bl_48 br_48 wl_101 vdd gnd cell_6t
Xbit_r102_c48 bl_48 br_48 wl_102 vdd gnd cell_6t
Xbit_r103_c48 bl_48 br_48 wl_103 vdd gnd cell_6t
Xbit_r104_c48 bl_48 br_48 wl_104 vdd gnd cell_6t
Xbit_r105_c48 bl_48 br_48 wl_105 vdd gnd cell_6t
Xbit_r106_c48 bl_48 br_48 wl_106 vdd gnd cell_6t
Xbit_r107_c48 bl_48 br_48 wl_107 vdd gnd cell_6t
Xbit_r108_c48 bl_48 br_48 wl_108 vdd gnd cell_6t
Xbit_r109_c48 bl_48 br_48 wl_109 vdd gnd cell_6t
Xbit_r110_c48 bl_48 br_48 wl_110 vdd gnd cell_6t
Xbit_r111_c48 bl_48 br_48 wl_111 vdd gnd cell_6t
Xbit_r112_c48 bl_48 br_48 wl_112 vdd gnd cell_6t
Xbit_r113_c48 bl_48 br_48 wl_113 vdd gnd cell_6t
Xbit_r114_c48 bl_48 br_48 wl_114 vdd gnd cell_6t
Xbit_r115_c48 bl_48 br_48 wl_115 vdd gnd cell_6t
Xbit_r116_c48 bl_48 br_48 wl_116 vdd gnd cell_6t
Xbit_r117_c48 bl_48 br_48 wl_117 vdd gnd cell_6t
Xbit_r118_c48 bl_48 br_48 wl_118 vdd gnd cell_6t
Xbit_r119_c48 bl_48 br_48 wl_119 vdd gnd cell_6t
Xbit_r120_c48 bl_48 br_48 wl_120 vdd gnd cell_6t
Xbit_r121_c48 bl_48 br_48 wl_121 vdd gnd cell_6t
Xbit_r122_c48 bl_48 br_48 wl_122 vdd gnd cell_6t
Xbit_r123_c48 bl_48 br_48 wl_123 vdd gnd cell_6t
Xbit_r124_c48 bl_48 br_48 wl_124 vdd gnd cell_6t
Xbit_r125_c48 bl_48 br_48 wl_125 vdd gnd cell_6t
Xbit_r126_c48 bl_48 br_48 wl_126 vdd gnd cell_6t
Xbit_r127_c48 bl_48 br_48 wl_127 vdd gnd cell_6t
Xbit_r0_c49 bl_49 br_49 wl_0 vdd gnd cell_6t
Xbit_r1_c49 bl_49 br_49 wl_1 vdd gnd cell_6t
Xbit_r2_c49 bl_49 br_49 wl_2 vdd gnd cell_6t
Xbit_r3_c49 bl_49 br_49 wl_3 vdd gnd cell_6t
Xbit_r4_c49 bl_49 br_49 wl_4 vdd gnd cell_6t
Xbit_r5_c49 bl_49 br_49 wl_5 vdd gnd cell_6t
Xbit_r6_c49 bl_49 br_49 wl_6 vdd gnd cell_6t
Xbit_r7_c49 bl_49 br_49 wl_7 vdd gnd cell_6t
Xbit_r8_c49 bl_49 br_49 wl_8 vdd gnd cell_6t
Xbit_r9_c49 bl_49 br_49 wl_9 vdd gnd cell_6t
Xbit_r10_c49 bl_49 br_49 wl_10 vdd gnd cell_6t
Xbit_r11_c49 bl_49 br_49 wl_11 vdd gnd cell_6t
Xbit_r12_c49 bl_49 br_49 wl_12 vdd gnd cell_6t
Xbit_r13_c49 bl_49 br_49 wl_13 vdd gnd cell_6t
Xbit_r14_c49 bl_49 br_49 wl_14 vdd gnd cell_6t
Xbit_r15_c49 bl_49 br_49 wl_15 vdd gnd cell_6t
Xbit_r16_c49 bl_49 br_49 wl_16 vdd gnd cell_6t
Xbit_r17_c49 bl_49 br_49 wl_17 vdd gnd cell_6t
Xbit_r18_c49 bl_49 br_49 wl_18 vdd gnd cell_6t
Xbit_r19_c49 bl_49 br_49 wl_19 vdd gnd cell_6t
Xbit_r20_c49 bl_49 br_49 wl_20 vdd gnd cell_6t
Xbit_r21_c49 bl_49 br_49 wl_21 vdd gnd cell_6t
Xbit_r22_c49 bl_49 br_49 wl_22 vdd gnd cell_6t
Xbit_r23_c49 bl_49 br_49 wl_23 vdd gnd cell_6t
Xbit_r24_c49 bl_49 br_49 wl_24 vdd gnd cell_6t
Xbit_r25_c49 bl_49 br_49 wl_25 vdd gnd cell_6t
Xbit_r26_c49 bl_49 br_49 wl_26 vdd gnd cell_6t
Xbit_r27_c49 bl_49 br_49 wl_27 vdd gnd cell_6t
Xbit_r28_c49 bl_49 br_49 wl_28 vdd gnd cell_6t
Xbit_r29_c49 bl_49 br_49 wl_29 vdd gnd cell_6t
Xbit_r30_c49 bl_49 br_49 wl_30 vdd gnd cell_6t
Xbit_r31_c49 bl_49 br_49 wl_31 vdd gnd cell_6t
Xbit_r32_c49 bl_49 br_49 wl_32 vdd gnd cell_6t
Xbit_r33_c49 bl_49 br_49 wl_33 vdd gnd cell_6t
Xbit_r34_c49 bl_49 br_49 wl_34 vdd gnd cell_6t
Xbit_r35_c49 bl_49 br_49 wl_35 vdd gnd cell_6t
Xbit_r36_c49 bl_49 br_49 wl_36 vdd gnd cell_6t
Xbit_r37_c49 bl_49 br_49 wl_37 vdd gnd cell_6t
Xbit_r38_c49 bl_49 br_49 wl_38 vdd gnd cell_6t
Xbit_r39_c49 bl_49 br_49 wl_39 vdd gnd cell_6t
Xbit_r40_c49 bl_49 br_49 wl_40 vdd gnd cell_6t
Xbit_r41_c49 bl_49 br_49 wl_41 vdd gnd cell_6t
Xbit_r42_c49 bl_49 br_49 wl_42 vdd gnd cell_6t
Xbit_r43_c49 bl_49 br_49 wl_43 vdd gnd cell_6t
Xbit_r44_c49 bl_49 br_49 wl_44 vdd gnd cell_6t
Xbit_r45_c49 bl_49 br_49 wl_45 vdd gnd cell_6t
Xbit_r46_c49 bl_49 br_49 wl_46 vdd gnd cell_6t
Xbit_r47_c49 bl_49 br_49 wl_47 vdd gnd cell_6t
Xbit_r48_c49 bl_49 br_49 wl_48 vdd gnd cell_6t
Xbit_r49_c49 bl_49 br_49 wl_49 vdd gnd cell_6t
Xbit_r50_c49 bl_49 br_49 wl_50 vdd gnd cell_6t
Xbit_r51_c49 bl_49 br_49 wl_51 vdd gnd cell_6t
Xbit_r52_c49 bl_49 br_49 wl_52 vdd gnd cell_6t
Xbit_r53_c49 bl_49 br_49 wl_53 vdd gnd cell_6t
Xbit_r54_c49 bl_49 br_49 wl_54 vdd gnd cell_6t
Xbit_r55_c49 bl_49 br_49 wl_55 vdd gnd cell_6t
Xbit_r56_c49 bl_49 br_49 wl_56 vdd gnd cell_6t
Xbit_r57_c49 bl_49 br_49 wl_57 vdd gnd cell_6t
Xbit_r58_c49 bl_49 br_49 wl_58 vdd gnd cell_6t
Xbit_r59_c49 bl_49 br_49 wl_59 vdd gnd cell_6t
Xbit_r60_c49 bl_49 br_49 wl_60 vdd gnd cell_6t
Xbit_r61_c49 bl_49 br_49 wl_61 vdd gnd cell_6t
Xbit_r62_c49 bl_49 br_49 wl_62 vdd gnd cell_6t
Xbit_r63_c49 bl_49 br_49 wl_63 vdd gnd cell_6t
Xbit_r64_c49 bl_49 br_49 wl_64 vdd gnd cell_6t
Xbit_r65_c49 bl_49 br_49 wl_65 vdd gnd cell_6t
Xbit_r66_c49 bl_49 br_49 wl_66 vdd gnd cell_6t
Xbit_r67_c49 bl_49 br_49 wl_67 vdd gnd cell_6t
Xbit_r68_c49 bl_49 br_49 wl_68 vdd gnd cell_6t
Xbit_r69_c49 bl_49 br_49 wl_69 vdd gnd cell_6t
Xbit_r70_c49 bl_49 br_49 wl_70 vdd gnd cell_6t
Xbit_r71_c49 bl_49 br_49 wl_71 vdd gnd cell_6t
Xbit_r72_c49 bl_49 br_49 wl_72 vdd gnd cell_6t
Xbit_r73_c49 bl_49 br_49 wl_73 vdd gnd cell_6t
Xbit_r74_c49 bl_49 br_49 wl_74 vdd gnd cell_6t
Xbit_r75_c49 bl_49 br_49 wl_75 vdd gnd cell_6t
Xbit_r76_c49 bl_49 br_49 wl_76 vdd gnd cell_6t
Xbit_r77_c49 bl_49 br_49 wl_77 vdd gnd cell_6t
Xbit_r78_c49 bl_49 br_49 wl_78 vdd gnd cell_6t
Xbit_r79_c49 bl_49 br_49 wl_79 vdd gnd cell_6t
Xbit_r80_c49 bl_49 br_49 wl_80 vdd gnd cell_6t
Xbit_r81_c49 bl_49 br_49 wl_81 vdd gnd cell_6t
Xbit_r82_c49 bl_49 br_49 wl_82 vdd gnd cell_6t
Xbit_r83_c49 bl_49 br_49 wl_83 vdd gnd cell_6t
Xbit_r84_c49 bl_49 br_49 wl_84 vdd gnd cell_6t
Xbit_r85_c49 bl_49 br_49 wl_85 vdd gnd cell_6t
Xbit_r86_c49 bl_49 br_49 wl_86 vdd gnd cell_6t
Xbit_r87_c49 bl_49 br_49 wl_87 vdd gnd cell_6t
Xbit_r88_c49 bl_49 br_49 wl_88 vdd gnd cell_6t
Xbit_r89_c49 bl_49 br_49 wl_89 vdd gnd cell_6t
Xbit_r90_c49 bl_49 br_49 wl_90 vdd gnd cell_6t
Xbit_r91_c49 bl_49 br_49 wl_91 vdd gnd cell_6t
Xbit_r92_c49 bl_49 br_49 wl_92 vdd gnd cell_6t
Xbit_r93_c49 bl_49 br_49 wl_93 vdd gnd cell_6t
Xbit_r94_c49 bl_49 br_49 wl_94 vdd gnd cell_6t
Xbit_r95_c49 bl_49 br_49 wl_95 vdd gnd cell_6t
Xbit_r96_c49 bl_49 br_49 wl_96 vdd gnd cell_6t
Xbit_r97_c49 bl_49 br_49 wl_97 vdd gnd cell_6t
Xbit_r98_c49 bl_49 br_49 wl_98 vdd gnd cell_6t
Xbit_r99_c49 bl_49 br_49 wl_99 vdd gnd cell_6t
Xbit_r100_c49 bl_49 br_49 wl_100 vdd gnd cell_6t
Xbit_r101_c49 bl_49 br_49 wl_101 vdd gnd cell_6t
Xbit_r102_c49 bl_49 br_49 wl_102 vdd gnd cell_6t
Xbit_r103_c49 bl_49 br_49 wl_103 vdd gnd cell_6t
Xbit_r104_c49 bl_49 br_49 wl_104 vdd gnd cell_6t
Xbit_r105_c49 bl_49 br_49 wl_105 vdd gnd cell_6t
Xbit_r106_c49 bl_49 br_49 wl_106 vdd gnd cell_6t
Xbit_r107_c49 bl_49 br_49 wl_107 vdd gnd cell_6t
Xbit_r108_c49 bl_49 br_49 wl_108 vdd gnd cell_6t
Xbit_r109_c49 bl_49 br_49 wl_109 vdd gnd cell_6t
Xbit_r110_c49 bl_49 br_49 wl_110 vdd gnd cell_6t
Xbit_r111_c49 bl_49 br_49 wl_111 vdd gnd cell_6t
Xbit_r112_c49 bl_49 br_49 wl_112 vdd gnd cell_6t
Xbit_r113_c49 bl_49 br_49 wl_113 vdd gnd cell_6t
Xbit_r114_c49 bl_49 br_49 wl_114 vdd gnd cell_6t
Xbit_r115_c49 bl_49 br_49 wl_115 vdd gnd cell_6t
Xbit_r116_c49 bl_49 br_49 wl_116 vdd gnd cell_6t
Xbit_r117_c49 bl_49 br_49 wl_117 vdd gnd cell_6t
Xbit_r118_c49 bl_49 br_49 wl_118 vdd gnd cell_6t
Xbit_r119_c49 bl_49 br_49 wl_119 vdd gnd cell_6t
Xbit_r120_c49 bl_49 br_49 wl_120 vdd gnd cell_6t
Xbit_r121_c49 bl_49 br_49 wl_121 vdd gnd cell_6t
Xbit_r122_c49 bl_49 br_49 wl_122 vdd gnd cell_6t
Xbit_r123_c49 bl_49 br_49 wl_123 vdd gnd cell_6t
Xbit_r124_c49 bl_49 br_49 wl_124 vdd gnd cell_6t
Xbit_r125_c49 bl_49 br_49 wl_125 vdd gnd cell_6t
Xbit_r126_c49 bl_49 br_49 wl_126 vdd gnd cell_6t
Xbit_r127_c49 bl_49 br_49 wl_127 vdd gnd cell_6t
Xbit_r0_c50 bl_50 br_50 wl_0 vdd gnd cell_6t
Xbit_r1_c50 bl_50 br_50 wl_1 vdd gnd cell_6t
Xbit_r2_c50 bl_50 br_50 wl_2 vdd gnd cell_6t
Xbit_r3_c50 bl_50 br_50 wl_3 vdd gnd cell_6t
Xbit_r4_c50 bl_50 br_50 wl_4 vdd gnd cell_6t
Xbit_r5_c50 bl_50 br_50 wl_5 vdd gnd cell_6t
Xbit_r6_c50 bl_50 br_50 wl_6 vdd gnd cell_6t
Xbit_r7_c50 bl_50 br_50 wl_7 vdd gnd cell_6t
Xbit_r8_c50 bl_50 br_50 wl_8 vdd gnd cell_6t
Xbit_r9_c50 bl_50 br_50 wl_9 vdd gnd cell_6t
Xbit_r10_c50 bl_50 br_50 wl_10 vdd gnd cell_6t
Xbit_r11_c50 bl_50 br_50 wl_11 vdd gnd cell_6t
Xbit_r12_c50 bl_50 br_50 wl_12 vdd gnd cell_6t
Xbit_r13_c50 bl_50 br_50 wl_13 vdd gnd cell_6t
Xbit_r14_c50 bl_50 br_50 wl_14 vdd gnd cell_6t
Xbit_r15_c50 bl_50 br_50 wl_15 vdd gnd cell_6t
Xbit_r16_c50 bl_50 br_50 wl_16 vdd gnd cell_6t
Xbit_r17_c50 bl_50 br_50 wl_17 vdd gnd cell_6t
Xbit_r18_c50 bl_50 br_50 wl_18 vdd gnd cell_6t
Xbit_r19_c50 bl_50 br_50 wl_19 vdd gnd cell_6t
Xbit_r20_c50 bl_50 br_50 wl_20 vdd gnd cell_6t
Xbit_r21_c50 bl_50 br_50 wl_21 vdd gnd cell_6t
Xbit_r22_c50 bl_50 br_50 wl_22 vdd gnd cell_6t
Xbit_r23_c50 bl_50 br_50 wl_23 vdd gnd cell_6t
Xbit_r24_c50 bl_50 br_50 wl_24 vdd gnd cell_6t
Xbit_r25_c50 bl_50 br_50 wl_25 vdd gnd cell_6t
Xbit_r26_c50 bl_50 br_50 wl_26 vdd gnd cell_6t
Xbit_r27_c50 bl_50 br_50 wl_27 vdd gnd cell_6t
Xbit_r28_c50 bl_50 br_50 wl_28 vdd gnd cell_6t
Xbit_r29_c50 bl_50 br_50 wl_29 vdd gnd cell_6t
Xbit_r30_c50 bl_50 br_50 wl_30 vdd gnd cell_6t
Xbit_r31_c50 bl_50 br_50 wl_31 vdd gnd cell_6t
Xbit_r32_c50 bl_50 br_50 wl_32 vdd gnd cell_6t
Xbit_r33_c50 bl_50 br_50 wl_33 vdd gnd cell_6t
Xbit_r34_c50 bl_50 br_50 wl_34 vdd gnd cell_6t
Xbit_r35_c50 bl_50 br_50 wl_35 vdd gnd cell_6t
Xbit_r36_c50 bl_50 br_50 wl_36 vdd gnd cell_6t
Xbit_r37_c50 bl_50 br_50 wl_37 vdd gnd cell_6t
Xbit_r38_c50 bl_50 br_50 wl_38 vdd gnd cell_6t
Xbit_r39_c50 bl_50 br_50 wl_39 vdd gnd cell_6t
Xbit_r40_c50 bl_50 br_50 wl_40 vdd gnd cell_6t
Xbit_r41_c50 bl_50 br_50 wl_41 vdd gnd cell_6t
Xbit_r42_c50 bl_50 br_50 wl_42 vdd gnd cell_6t
Xbit_r43_c50 bl_50 br_50 wl_43 vdd gnd cell_6t
Xbit_r44_c50 bl_50 br_50 wl_44 vdd gnd cell_6t
Xbit_r45_c50 bl_50 br_50 wl_45 vdd gnd cell_6t
Xbit_r46_c50 bl_50 br_50 wl_46 vdd gnd cell_6t
Xbit_r47_c50 bl_50 br_50 wl_47 vdd gnd cell_6t
Xbit_r48_c50 bl_50 br_50 wl_48 vdd gnd cell_6t
Xbit_r49_c50 bl_50 br_50 wl_49 vdd gnd cell_6t
Xbit_r50_c50 bl_50 br_50 wl_50 vdd gnd cell_6t
Xbit_r51_c50 bl_50 br_50 wl_51 vdd gnd cell_6t
Xbit_r52_c50 bl_50 br_50 wl_52 vdd gnd cell_6t
Xbit_r53_c50 bl_50 br_50 wl_53 vdd gnd cell_6t
Xbit_r54_c50 bl_50 br_50 wl_54 vdd gnd cell_6t
Xbit_r55_c50 bl_50 br_50 wl_55 vdd gnd cell_6t
Xbit_r56_c50 bl_50 br_50 wl_56 vdd gnd cell_6t
Xbit_r57_c50 bl_50 br_50 wl_57 vdd gnd cell_6t
Xbit_r58_c50 bl_50 br_50 wl_58 vdd gnd cell_6t
Xbit_r59_c50 bl_50 br_50 wl_59 vdd gnd cell_6t
Xbit_r60_c50 bl_50 br_50 wl_60 vdd gnd cell_6t
Xbit_r61_c50 bl_50 br_50 wl_61 vdd gnd cell_6t
Xbit_r62_c50 bl_50 br_50 wl_62 vdd gnd cell_6t
Xbit_r63_c50 bl_50 br_50 wl_63 vdd gnd cell_6t
Xbit_r64_c50 bl_50 br_50 wl_64 vdd gnd cell_6t
Xbit_r65_c50 bl_50 br_50 wl_65 vdd gnd cell_6t
Xbit_r66_c50 bl_50 br_50 wl_66 vdd gnd cell_6t
Xbit_r67_c50 bl_50 br_50 wl_67 vdd gnd cell_6t
Xbit_r68_c50 bl_50 br_50 wl_68 vdd gnd cell_6t
Xbit_r69_c50 bl_50 br_50 wl_69 vdd gnd cell_6t
Xbit_r70_c50 bl_50 br_50 wl_70 vdd gnd cell_6t
Xbit_r71_c50 bl_50 br_50 wl_71 vdd gnd cell_6t
Xbit_r72_c50 bl_50 br_50 wl_72 vdd gnd cell_6t
Xbit_r73_c50 bl_50 br_50 wl_73 vdd gnd cell_6t
Xbit_r74_c50 bl_50 br_50 wl_74 vdd gnd cell_6t
Xbit_r75_c50 bl_50 br_50 wl_75 vdd gnd cell_6t
Xbit_r76_c50 bl_50 br_50 wl_76 vdd gnd cell_6t
Xbit_r77_c50 bl_50 br_50 wl_77 vdd gnd cell_6t
Xbit_r78_c50 bl_50 br_50 wl_78 vdd gnd cell_6t
Xbit_r79_c50 bl_50 br_50 wl_79 vdd gnd cell_6t
Xbit_r80_c50 bl_50 br_50 wl_80 vdd gnd cell_6t
Xbit_r81_c50 bl_50 br_50 wl_81 vdd gnd cell_6t
Xbit_r82_c50 bl_50 br_50 wl_82 vdd gnd cell_6t
Xbit_r83_c50 bl_50 br_50 wl_83 vdd gnd cell_6t
Xbit_r84_c50 bl_50 br_50 wl_84 vdd gnd cell_6t
Xbit_r85_c50 bl_50 br_50 wl_85 vdd gnd cell_6t
Xbit_r86_c50 bl_50 br_50 wl_86 vdd gnd cell_6t
Xbit_r87_c50 bl_50 br_50 wl_87 vdd gnd cell_6t
Xbit_r88_c50 bl_50 br_50 wl_88 vdd gnd cell_6t
Xbit_r89_c50 bl_50 br_50 wl_89 vdd gnd cell_6t
Xbit_r90_c50 bl_50 br_50 wl_90 vdd gnd cell_6t
Xbit_r91_c50 bl_50 br_50 wl_91 vdd gnd cell_6t
Xbit_r92_c50 bl_50 br_50 wl_92 vdd gnd cell_6t
Xbit_r93_c50 bl_50 br_50 wl_93 vdd gnd cell_6t
Xbit_r94_c50 bl_50 br_50 wl_94 vdd gnd cell_6t
Xbit_r95_c50 bl_50 br_50 wl_95 vdd gnd cell_6t
Xbit_r96_c50 bl_50 br_50 wl_96 vdd gnd cell_6t
Xbit_r97_c50 bl_50 br_50 wl_97 vdd gnd cell_6t
Xbit_r98_c50 bl_50 br_50 wl_98 vdd gnd cell_6t
Xbit_r99_c50 bl_50 br_50 wl_99 vdd gnd cell_6t
Xbit_r100_c50 bl_50 br_50 wl_100 vdd gnd cell_6t
Xbit_r101_c50 bl_50 br_50 wl_101 vdd gnd cell_6t
Xbit_r102_c50 bl_50 br_50 wl_102 vdd gnd cell_6t
Xbit_r103_c50 bl_50 br_50 wl_103 vdd gnd cell_6t
Xbit_r104_c50 bl_50 br_50 wl_104 vdd gnd cell_6t
Xbit_r105_c50 bl_50 br_50 wl_105 vdd gnd cell_6t
Xbit_r106_c50 bl_50 br_50 wl_106 vdd gnd cell_6t
Xbit_r107_c50 bl_50 br_50 wl_107 vdd gnd cell_6t
Xbit_r108_c50 bl_50 br_50 wl_108 vdd gnd cell_6t
Xbit_r109_c50 bl_50 br_50 wl_109 vdd gnd cell_6t
Xbit_r110_c50 bl_50 br_50 wl_110 vdd gnd cell_6t
Xbit_r111_c50 bl_50 br_50 wl_111 vdd gnd cell_6t
Xbit_r112_c50 bl_50 br_50 wl_112 vdd gnd cell_6t
Xbit_r113_c50 bl_50 br_50 wl_113 vdd gnd cell_6t
Xbit_r114_c50 bl_50 br_50 wl_114 vdd gnd cell_6t
Xbit_r115_c50 bl_50 br_50 wl_115 vdd gnd cell_6t
Xbit_r116_c50 bl_50 br_50 wl_116 vdd gnd cell_6t
Xbit_r117_c50 bl_50 br_50 wl_117 vdd gnd cell_6t
Xbit_r118_c50 bl_50 br_50 wl_118 vdd gnd cell_6t
Xbit_r119_c50 bl_50 br_50 wl_119 vdd gnd cell_6t
Xbit_r120_c50 bl_50 br_50 wl_120 vdd gnd cell_6t
Xbit_r121_c50 bl_50 br_50 wl_121 vdd gnd cell_6t
Xbit_r122_c50 bl_50 br_50 wl_122 vdd gnd cell_6t
Xbit_r123_c50 bl_50 br_50 wl_123 vdd gnd cell_6t
Xbit_r124_c50 bl_50 br_50 wl_124 vdd gnd cell_6t
Xbit_r125_c50 bl_50 br_50 wl_125 vdd gnd cell_6t
Xbit_r126_c50 bl_50 br_50 wl_126 vdd gnd cell_6t
Xbit_r127_c50 bl_50 br_50 wl_127 vdd gnd cell_6t
Xbit_r0_c51 bl_51 br_51 wl_0 vdd gnd cell_6t
Xbit_r1_c51 bl_51 br_51 wl_1 vdd gnd cell_6t
Xbit_r2_c51 bl_51 br_51 wl_2 vdd gnd cell_6t
Xbit_r3_c51 bl_51 br_51 wl_3 vdd gnd cell_6t
Xbit_r4_c51 bl_51 br_51 wl_4 vdd gnd cell_6t
Xbit_r5_c51 bl_51 br_51 wl_5 vdd gnd cell_6t
Xbit_r6_c51 bl_51 br_51 wl_6 vdd gnd cell_6t
Xbit_r7_c51 bl_51 br_51 wl_7 vdd gnd cell_6t
Xbit_r8_c51 bl_51 br_51 wl_8 vdd gnd cell_6t
Xbit_r9_c51 bl_51 br_51 wl_9 vdd gnd cell_6t
Xbit_r10_c51 bl_51 br_51 wl_10 vdd gnd cell_6t
Xbit_r11_c51 bl_51 br_51 wl_11 vdd gnd cell_6t
Xbit_r12_c51 bl_51 br_51 wl_12 vdd gnd cell_6t
Xbit_r13_c51 bl_51 br_51 wl_13 vdd gnd cell_6t
Xbit_r14_c51 bl_51 br_51 wl_14 vdd gnd cell_6t
Xbit_r15_c51 bl_51 br_51 wl_15 vdd gnd cell_6t
Xbit_r16_c51 bl_51 br_51 wl_16 vdd gnd cell_6t
Xbit_r17_c51 bl_51 br_51 wl_17 vdd gnd cell_6t
Xbit_r18_c51 bl_51 br_51 wl_18 vdd gnd cell_6t
Xbit_r19_c51 bl_51 br_51 wl_19 vdd gnd cell_6t
Xbit_r20_c51 bl_51 br_51 wl_20 vdd gnd cell_6t
Xbit_r21_c51 bl_51 br_51 wl_21 vdd gnd cell_6t
Xbit_r22_c51 bl_51 br_51 wl_22 vdd gnd cell_6t
Xbit_r23_c51 bl_51 br_51 wl_23 vdd gnd cell_6t
Xbit_r24_c51 bl_51 br_51 wl_24 vdd gnd cell_6t
Xbit_r25_c51 bl_51 br_51 wl_25 vdd gnd cell_6t
Xbit_r26_c51 bl_51 br_51 wl_26 vdd gnd cell_6t
Xbit_r27_c51 bl_51 br_51 wl_27 vdd gnd cell_6t
Xbit_r28_c51 bl_51 br_51 wl_28 vdd gnd cell_6t
Xbit_r29_c51 bl_51 br_51 wl_29 vdd gnd cell_6t
Xbit_r30_c51 bl_51 br_51 wl_30 vdd gnd cell_6t
Xbit_r31_c51 bl_51 br_51 wl_31 vdd gnd cell_6t
Xbit_r32_c51 bl_51 br_51 wl_32 vdd gnd cell_6t
Xbit_r33_c51 bl_51 br_51 wl_33 vdd gnd cell_6t
Xbit_r34_c51 bl_51 br_51 wl_34 vdd gnd cell_6t
Xbit_r35_c51 bl_51 br_51 wl_35 vdd gnd cell_6t
Xbit_r36_c51 bl_51 br_51 wl_36 vdd gnd cell_6t
Xbit_r37_c51 bl_51 br_51 wl_37 vdd gnd cell_6t
Xbit_r38_c51 bl_51 br_51 wl_38 vdd gnd cell_6t
Xbit_r39_c51 bl_51 br_51 wl_39 vdd gnd cell_6t
Xbit_r40_c51 bl_51 br_51 wl_40 vdd gnd cell_6t
Xbit_r41_c51 bl_51 br_51 wl_41 vdd gnd cell_6t
Xbit_r42_c51 bl_51 br_51 wl_42 vdd gnd cell_6t
Xbit_r43_c51 bl_51 br_51 wl_43 vdd gnd cell_6t
Xbit_r44_c51 bl_51 br_51 wl_44 vdd gnd cell_6t
Xbit_r45_c51 bl_51 br_51 wl_45 vdd gnd cell_6t
Xbit_r46_c51 bl_51 br_51 wl_46 vdd gnd cell_6t
Xbit_r47_c51 bl_51 br_51 wl_47 vdd gnd cell_6t
Xbit_r48_c51 bl_51 br_51 wl_48 vdd gnd cell_6t
Xbit_r49_c51 bl_51 br_51 wl_49 vdd gnd cell_6t
Xbit_r50_c51 bl_51 br_51 wl_50 vdd gnd cell_6t
Xbit_r51_c51 bl_51 br_51 wl_51 vdd gnd cell_6t
Xbit_r52_c51 bl_51 br_51 wl_52 vdd gnd cell_6t
Xbit_r53_c51 bl_51 br_51 wl_53 vdd gnd cell_6t
Xbit_r54_c51 bl_51 br_51 wl_54 vdd gnd cell_6t
Xbit_r55_c51 bl_51 br_51 wl_55 vdd gnd cell_6t
Xbit_r56_c51 bl_51 br_51 wl_56 vdd gnd cell_6t
Xbit_r57_c51 bl_51 br_51 wl_57 vdd gnd cell_6t
Xbit_r58_c51 bl_51 br_51 wl_58 vdd gnd cell_6t
Xbit_r59_c51 bl_51 br_51 wl_59 vdd gnd cell_6t
Xbit_r60_c51 bl_51 br_51 wl_60 vdd gnd cell_6t
Xbit_r61_c51 bl_51 br_51 wl_61 vdd gnd cell_6t
Xbit_r62_c51 bl_51 br_51 wl_62 vdd gnd cell_6t
Xbit_r63_c51 bl_51 br_51 wl_63 vdd gnd cell_6t
Xbit_r64_c51 bl_51 br_51 wl_64 vdd gnd cell_6t
Xbit_r65_c51 bl_51 br_51 wl_65 vdd gnd cell_6t
Xbit_r66_c51 bl_51 br_51 wl_66 vdd gnd cell_6t
Xbit_r67_c51 bl_51 br_51 wl_67 vdd gnd cell_6t
Xbit_r68_c51 bl_51 br_51 wl_68 vdd gnd cell_6t
Xbit_r69_c51 bl_51 br_51 wl_69 vdd gnd cell_6t
Xbit_r70_c51 bl_51 br_51 wl_70 vdd gnd cell_6t
Xbit_r71_c51 bl_51 br_51 wl_71 vdd gnd cell_6t
Xbit_r72_c51 bl_51 br_51 wl_72 vdd gnd cell_6t
Xbit_r73_c51 bl_51 br_51 wl_73 vdd gnd cell_6t
Xbit_r74_c51 bl_51 br_51 wl_74 vdd gnd cell_6t
Xbit_r75_c51 bl_51 br_51 wl_75 vdd gnd cell_6t
Xbit_r76_c51 bl_51 br_51 wl_76 vdd gnd cell_6t
Xbit_r77_c51 bl_51 br_51 wl_77 vdd gnd cell_6t
Xbit_r78_c51 bl_51 br_51 wl_78 vdd gnd cell_6t
Xbit_r79_c51 bl_51 br_51 wl_79 vdd gnd cell_6t
Xbit_r80_c51 bl_51 br_51 wl_80 vdd gnd cell_6t
Xbit_r81_c51 bl_51 br_51 wl_81 vdd gnd cell_6t
Xbit_r82_c51 bl_51 br_51 wl_82 vdd gnd cell_6t
Xbit_r83_c51 bl_51 br_51 wl_83 vdd gnd cell_6t
Xbit_r84_c51 bl_51 br_51 wl_84 vdd gnd cell_6t
Xbit_r85_c51 bl_51 br_51 wl_85 vdd gnd cell_6t
Xbit_r86_c51 bl_51 br_51 wl_86 vdd gnd cell_6t
Xbit_r87_c51 bl_51 br_51 wl_87 vdd gnd cell_6t
Xbit_r88_c51 bl_51 br_51 wl_88 vdd gnd cell_6t
Xbit_r89_c51 bl_51 br_51 wl_89 vdd gnd cell_6t
Xbit_r90_c51 bl_51 br_51 wl_90 vdd gnd cell_6t
Xbit_r91_c51 bl_51 br_51 wl_91 vdd gnd cell_6t
Xbit_r92_c51 bl_51 br_51 wl_92 vdd gnd cell_6t
Xbit_r93_c51 bl_51 br_51 wl_93 vdd gnd cell_6t
Xbit_r94_c51 bl_51 br_51 wl_94 vdd gnd cell_6t
Xbit_r95_c51 bl_51 br_51 wl_95 vdd gnd cell_6t
Xbit_r96_c51 bl_51 br_51 wl_96 vdd gnd cell_6t
Xbit_r97_c51 bl_51 br_51 wl_97 vdd gnd cell_6t
Xbit_r98_c51 bl_51 br_51 wl_98 vdd gnd cell_6t
Xbit_r99_c51 bl_51 br_51 wl_99 vdd gnd cell_6t
Xbit_r100_c51 bl_51 br_51 wl_100 vdd gnd cell_6t
Xbit_r101_c51 bl_51 br_51 wl_101 vdd gnd cell_6t
Xbit_r102_c51 bl_51 br_51 wl_102 vdd gnd cell_6t
Xbit_r103_c51 bl_51 br_51 wl_103 vdd gnd cell_6t
Xbit_r104_c51 bl_51 br_51 wl_104 vdd gnd cell_6t
Xbit_r105_c51 bl_51 br_51 wl_105 vdd gnd cell_6t
Xbit_r106_c51 bl_51 br_51 wl_106 vdd gnd cell_6t
Xbit_r107_c51 bl_51 br_51 wl_107 vdd gnd cell_6t
Xbit_r108_c51 bl_51 br_51 wl_108 vdd gnd cell_6t
Xbit_r109_c51 bl_51 br_51 wl_109 vdd gnd cell_6t
Xbit_r110_c51 bl_51 br_51 wl_110 vdd gnd cell_6t
Xbit_r111_c51 bl_51 br_51 wl_111 vdd gnd cell_6t
Xbit_r112_c51 bl_51 br_51 wl_112 vdd gnd cell_6t
Xbit_r113_c51 bl_51 br_51 wl_113 vdd gnd cell_6t
Xbit_r114_c51 bl_51 br_51 wl_114 vdd gnd cell_6t
Xbit_r115_c51 bl_51 br_51 wl_115 vdd gnd cell_6t
Xbit_r116_c51 bl_51 br_51 wl_116 vdd gnd cell_6t
Xbit_r117_c51 bl_51 br_51 wl_117 vdd gnd cell_6t
Xbit_r118_c51 bl_51 br_51 wl_118 vdd gnd cell_6t
Xbit_r119_c51 bl_51 br_51 wl_119 vdd gnd cell_6t
Xbit_r120_c51 bl_51 br_51 wl_120 vdd gnd cell_6t
Xbit_r121_c51 bl_51 br_51 wl_121 vdd gnd cell_6t
Xbit_r122_c51 bl_51 br_51 wl_122 vdd gnd cell_6t
Xbit_r123_c51 bl_51 br_51 wl_123 vdd gnd cell_6t
Xbit_r124_c51 bl_51 br_51 wl_124 vdd gnd cell_6t
Xbit_r125_c51 bl_51 br_51 wl_125 vdd gnd cell_6t
Xbit_r126_c51 bl_51 br_51 wl_126 vdd gnd cell_6t
Xbit_r127_c51 bl_51 br_51 wl_127 vdd gnd cell_6t
Xbit_r0_c52 bl_52 br_52 wl_0 vdd gnd cell_6t
Xbit_r1_c52 bl_52 br_52 wl_1 vdd gnd cell_6t
Xbit_r2_c52 bl_52 br_52 wl_2 vdd gnd cell_6t
Xbit_r3_c52 bl_52 br_52 wl_3 vdd gnd cell_6t
Xbit_r4_c52 bl_52 br_52 wl_4 vdd gnd cell_6t
Xbit_r5_c52 bl_52 br_52 wl_5 vdd gnd cell_6t
Xbit_r6_c52 bl_52 br_52 wl_6 vdd gnd cell_6t
Xbit_r7_c52 bl_52 br_52 wl_7 vdd gnd cell_6t
Xbit_r8_c52 bl_52 br_52 wl_8 vdd gnd cell_6t
Xbit_r9_c52 bl_52 br_52 wl_9 vdd gnd cell_6t
Xbit_r10_c52 bl_52 br_52 wl_10 vdd gnd cell_6t
Xbit_r11_c52 bl_52 br_52 wl_11 vdd gnd cell_6t
Xbit_r12_c52 bl_52 br_52 wl_12 vdd gnd cell_6t
Xbit_r13_c52 bl_52 br_52 wl_13 vdd gnd cell_6t
Xbit_r14_c52 bl_52 br_52 wl_14 vdd gnd cell_6t
Xbit_r15_c52 bl_52 br_52 wl_15 vdd gnd cell_6t
Xbit_r16_c52 bl_52 br_52 wl_16 vdd gnd cell_6t
Xbit_r17_c52 bl_52 br_52 wl_17 vdd gnd cell_6t
Xbit_r18_c52 bl_52 br_52 wl_18 vdd gnd cell_6t
Xbit_r19_c52 bl_52 br_52 wl_19 vdd gnd cell_6t
Xbit_r20_c52 bl_52 br_52 wl_20 vdd gnd cell_6t
Xbit_r21_c52 bl_52 br_52 wl_21 vdd gnd cell_6t
Xbit_r22_c52 bl_52 br_52 wl_22 vdd gnd cell_6t
Xbit_r23_c52 bl_52 br_52 wl_23 vdd gnd cell_6t
Xbit_r24_c52 bl_52 br_52 wl_24 vdd gnd cell_6t
Xbit_r25_c52 bl_52 br_52 wl_25 vdd gnd cell_6t
Xbit_r26_c52 bl_52 br_52 wl_26 vdd gnd cell_6t
Xbit_r27_c52 bl_52 br_52 wl_27 vdd gnd cell_6t
Xbit_r28_c52 bl_52 br_52 wl_28 vdd gnd cell_6t
Xbit_r29_c52 bl_52 br_52 wl_29 vdd gnd cell_6t
Xbit_r30_c52 bl_52 br_52 wl_30 vdd gnd cell_6t
Xbit_r31_c52 bl_52 br_52 wl_31 vdd gnd cell_6t
Xbit_r32_c52 bl_52 br_52 wl_32 vdd gnd cell_6t
Xbit_r33_c52 bl_52 br_52 wl_33 vdd gnd cell_6t
Xbit_r34_c52 bl_52 br_52 wl_34 vdd gnd cell_6t
Xbit_r35_c52 bl_52 br_52 wl_35 vdd gnd cell_6t
Xbit_r36_c52 bl_52 br_52 wl_36 vdd gnd cell_6t
Xbit_r37_c52 bl_52 br_52 wl_37 vdd gnd cell_6t
Xbit_r38_c52 bl_52 br_52 wl_38 vdd gnd cell_6t
Xbit_r39_c52 bl_52 br_52 wl_39 vdd gnd cell_6t
Xbit_r40_c52 bl_52 br_52 wl_40 vdd gnd cell_6t
Xbit_r41_c52 bl_52 br_52 wl_41 vdd gnd cell_6t
Xbit_r42_c52 bl_52 br_52 wl_42 vdd gnd cell_6t
Xbit_r43_c52 bl_52 br_52 wl_43 vdd gnd cell_6t
Xbit_r44_c52 bl_52 br_52 wl_44 vdd gnd cell_6t
Xbit_r45_c52 bl_52 br_52 wl_45 vdd gnd cell_6t
Xbit_r46_c52 bl_52 br_52 wl_46 vdd gnd cell_6t
Xbit_r47_c52 bl_52 br_52 wl_47 vdd gnd cell_6t
Xbit_r48_c52 bl_52 br_52 wl_48 vdd gnd cell_6t
Xbit_r49_c52 bl_52 br_52 wl_49 vdd gnd cell_6t
Xbit_r50_c52 bl_52 br_52 wl_50 vdd gnd cell_6t
Xbit_r51_c52 bl_52 br_52 wl_51 vdd gnd cell_6t
Xbit_r52_c52 bl_52 br_52 wl_52 vdd gnd cell_6t
Xbit_r53_c52 bl_52 br_52 wl_53 vdd gnd cell_6t
Xbit_r54_c52 bl_52 br_52 wl_54 vdd gnd cell_6t
Xbit_r55_c52 bl_52 br_52 wl_55 vdd gnd cell_6t
Xbit_r56_c52 bl_52 br_52 wl_56 vdd gnd cell_6t
Xbit_r57_c52 bl_52 br_52 wl_57 vdd gnd cell_6t
Xbit_r58_c52 bl_52 br_52 wl_58 vdd gnd cell_6t
Xbit_r59_c52 bl_52 br_52 wl_59 vdd gnd cell_6t
Xbit_r60_c52 bl_52 br_52 wl_60 vdd gnd cell_6t
Xbit_r61_c52 bl_52 br_52 wl_61 vdd gnd cell_6t
Xbit_r62_c52 bl_52 br_52 wl_62 vdd gnd cell_6t
Xbit_r63_c52 bl_52 br_52 wl_63 vdd gnd cell_6t
Xbit_r64_c52 bl_52 br_52 wl_64 vdd gnd cell_6t
Xbit_r65_c52 bl_52 br_52 wl_65 vdd gnd cell_6t
Xbit_r66_c52 bl_52 br_52 wl_66 vdd gnd cell_6t
Xbit_r67_c52 bl_52 br_52 wl_67 vdd gnd cell_6t
Xbit_r68_c52 bl_52 br_52 wl_68 vdd gnd cell_6t
Xbit_r69_c52 bl_52 br_52 wl_69 vdd gnd cell_6t
Xbit_r70_c52 bl_52 br_52 wl_70 vdd gnd cell_6t
Xbit_r71_c52 bl_52 br_52 wl_71 vdd gnd cell_6t
Xbit_r72_c52 bl_52 br_52 wl_72 vdd gnd cell_6t
Xbit_r73_c52 bl_52 br_52 wl_73 vdd gnd cell_6t
Xbit_r74_c52 bl_52 br_52 wl_74 vdd gnd cell_6t
Xbit_r75_c52 bl_52 br_52 wl_75 vdd gnd cell_6t
Xbit_r76_c52 bl_52 br_52 wl_76 vdd gnd cell_6t
Xbit_r77_c52 bl_52 br_52 wl_77 vdd gnd cell_6t
Xbit_r78_c52 bl_52 br_52 wl_78 vdd gnd cell_6t
Xbit_r79_c52 bl_52 br_52 wl_79 vdd gnd cell_6t
Xbit_r80_c52 bl_52 br_52 wl_80 vdd gnd cell_6t
Xbit_r81_c52 bl_52 br_52 wl_81 vdd gnd cell_6t
Xbit_r82_c52 bl_52 br_52 wl_82 vdd gnd cell_6t
Xbit_r83_c52 bl_52 br_52 wl_83 vdd gnd cell_6t
Xbit_r84_c52 bl_52 br_52 wl_84 vdd gnd cell_6t
Xbit_r85_c52 bl_52 br_52 wl_85 vdd gnd cell_6t
Xbit_r86_c52 bl_52 br_52 wl_86 vdd gnd cell_6t
Xbit_r87_c52 bl_52 br_52 wl_87 vdd gnd cell_6t
Xbit_r88_c52 bl_52 br_52 wl_88 vdd gnd cell_6t
Xbit_r89_c52 bl_52 br_52 wl_89 vdd gnd cell_6t
Xbit_r90_c52 bl_52 br_52 wl_90 vdd gnd cell_6t
Xbit_r91_c52 bl_52 br_52 wl_91 vdd gnd cell_6t
Xbit_r92_c52 bl_52 br_52 wl_92 vdd gnd cell_6t
Xbit_r93_c52 bl_52 br_52 wl_93 vdd gnd cell_6t
Xbit_r94_c52 bl_52 br_52 wl_94 vdd gnd cell_6t
Xbit_r95_c52 bl_52 br_52 wl_95 vdd gnd cell_6t
Xbit_r96_c52 bl_52 br_52 wl_96 vdd gnd cell_6t
Xbit_r97_c52 bl_52 br_52 wl_97 vdd gnd cell_6t
Xbit_r98_c52 bl_52 br_52 wl_98 vdd gnd cell_6t
Xbit_r99_c52 bl_52 br_52 wl_99 vdd gnd cell_6t
Xbit_r100_c52 bl_52 br_52 wl_100 vdd gnd cell_6t
Xbit_r101_c52 bl_52 br_52 wl_101 vdd gnd cell_6t
Xbit_r102_c52 bl_52 br_52 wl_102 vdd gnd cell_6t
Xbit_r103_c52 bl_52 br_52 wl_103 vdd gnd cell_6t
Xbit_r104_c52 bl_52 br_52 wl_104 vdd gnd cell_6t
Xbit_r105_c52 bl_52 br_52 wl_105 vdd gnd cell_6t
Xbit_r106_c52 bl_52 br_52 wl_106 vdd gnd cell_6t
Xbit_r107_c52 bl_52 br_52 wl_107 vdd gnd cell_6t
Xbit_r108_c52 bl_52 br_52 wl_108 vdd gnd cell_6t
Xbit_r109_c52 bl_52 br_52 wl_109 vdd gnd cell_6t
Xbit_r110_c52 bl_52 br_52 wl_110 vdd gnd cell_6t
Xbit_r111_c52 bl_52 br_52 wl_111 vdd gnd cell_6t
Xbit_r112_c52 bl_52 br_52 wl_112 vdd gnd cell_6t
Xbit_r113_c52 bl_52 br_52 wl_113 vdd gnd cell_6t
Xbit_r114_c52 bl_52 br_52 wl_114 vdd gnd cell_6t
Xbit_r115_c52 bl_52 br_52 wl_115 vdd gnd cell_6t
Xbit_r116_c52 bl_52 br_52 wl_116 vdd gnd cell_6t
Xbit_r117_c52 bl_52 br_52 wl_117 vdd gnd cell_6t
Xbit_r118_c52 bl_52 br_52 wl_118 vdd gnd cell_6t
Xbit_r119_c52 bl_52 br_52 wl_119 vdd gnd cell_6t
Xbit_r120_c52 bl_52 br_52 wl_120 vdd gnd cell_6t
Xbit_r121_c52 bl_52 br_52 wl_121 vdd gnd cell_6t
Xbit_r122_c52 bl_52 br_52 wl_122 vdd gnd cell_6t
Xbit_r123_c52 bl_52 br_52 wl_123 vdd gnd cell_6t
Xbit_r124_c52 bl_52 br_52 wl_124 vdd gnd cell_6t
Xbit_r125_c52 bl_52 br_52 wl_125 vdd gnd cell_6t
Xbit_r126_c52 bl_52 br_52 wl_126 vdd gnd cell_6t
Xbit_r127_c52 bl_52 br_52 wl_127 vdd gnd cell_6t
Xbit_r0_c53 bl_53 br_53 wl_0 vdd gnd cell_6t
Xbit_r1_c53 bl_53 br_53 wl_1 vdd gnd cell_6t
Xbit_r2_c53 bl_53 br_53 wl_2 vdd gnd cell_6t
Xbit_r3_c53 bl_53 br_53 wl_3 vdd gnd cell_6t
Xbit_r4_c53 bl_53 br_53 wl_4 vdd gnd cell_6t
Xbit_r5_c53 bl_53 br_53 wl_5 vdd gnd cell_6t
Xbit_r6_c53 bl_53 br_53 wl_6 vdd gnd cell_6t
Xbit_r7_c53 bl_53 br_53 wl_7 vdd gnd cell_6t
Xbit_r8_c53 bl_53 br_53 wl_8 vdd gnd cell_6t
Xbit_r9_c53 bl_53 br_53 wl_9 vdd gnd cell_6t
Xbit_r10_c53 bl_53 br_53 wl_10 vdd gnd cell_6t
Xbit_r11_c53 bl_53 br_53 wl_11 vdd gnd cell_6t
Xbit_r12_c53 bl_53 br_53 wl_12 vdd gnd cell_6t
Xbit_r13_c53 bl_53 br_53 wl_13 vdd gnd cell_6t
Xbit_r14_c53 bl_53 br_53 wl_14 vdd gnd cell_6t
Xbit_r15_c53 bl_53 br_53 wl_15 vdd gnd cell_6t
Xbit_r16_c53 bl_53 br_53 wl_16 vdd gnd cell_6t
Xbit_r17_c53 bl_53 br_53 wl_17 vdd gnd cell_6t
Xbit_r18_c53 bl_53 br_53 wl_18 vdd gnd cell_6t
Xbit_r19_c53 bl_53 br_53 wl_19 vdd gnd cell_6t
Xbit_r20_c53 bl_53 br_53 wl_20 vdd gnd cell_6t
Xbit_r21_c53 bl_53 br_53 wl_21 vdd gnd cell_6t
Xbit_r22_c53 bl_53 br_53 wl_22 vdd gnd cell_6t
Xbit_r23_c53 bl_53 br_53 wl_23 vdd gnd cell_6t
Xbit_r24_c53 bl_53 br_53 wl_24 vdd gnd cell_6t
Xbit_r25_c53 bl_53 br_53 wl_25 vdd gnd cell_6t
Xbit_r26_c53 bl_53 br_53 wl_26 vdd gnd cell_6t
Xbit_r27_c53 bl_53 br_53 wl_27 vdd gnd cell_6t
Xbit_r28_c53 bl_53 br_53 wl_28 vdd gnd cell_6t
Xbit_r29_c53 bl_53 br_53 wl_29 vdd gnd cell_6t
Xbit_r30_c53 bl_53 br_53 wl_30 vdd gnd cell_6t
Xbit_r31_c53 bl_53 br_53 wl_31 vdd gnd cell_6t
Xbit_r32_c53 bl_53 br_53 wl_32 vdd gnd cell_6t
Xbit_r33_c53 bl_53 br_53 wl_33 vdd gnd cell_6t
Xbit_r34_c53 bl_53 br_53 wl_34 vdd gnd cell_6t
Xbit_r35_c53 bl_53 br_53 wl_35 vdd gnd cell_6t
Xbit_r36_c53 bl_53 br_53 wl_36 vdd gnd cell_6t
Xbit_r37_c53 bl_53 br_53 wl_37 vdd gnd cell_6t
Xbit_r38_c53 bl_53 br_53 wl_38 vdd gnd cell_6t
Xbit_r39_c53 bl_53 br_53 wl_39 vdd gnd cell_6t
Xbit_r40_c53 bl_53 br_53 wl_40 vdd gnd cell_6t
Xbit_r41_c53 bl_53 br_53 wl_41 vdd gnd cell_6t
Xbit_r42_c53 bl_53 br_53 wl_42 vdd gnd cell_6t
Xbit_r43_c53 bl_53 br_53 wl_43 vdd gnd cell_6t
Xbit_r44_c53 bl_53 br_53 wl_44 vdd gnd cell_6t
Xbit_r45_c53 bl_53 br_53 wl_45 vdd gnd cell_6t
Xbit_r46_c53 bl_53 br_53 wl_46 vdd gnd cell_6t
Xbit_r47_c53 bl_53 br_53 wl_47 vdd gnd cell_6t
Xbit_r48_c53 bl_53 br_53 wl_48 vdd gnd cell_6t
Xbit_r49_c53 bl_53 br_53 wl_49 vdd gnd cell_6t
Xbit_r50_c53 bl_53 br_53 wl_50 vdd gnd cell_6t
Xbit_r51_c53 bl_53 br_53 wl_51 vdd gnd cell_6t
Xbit_r52_c53 bl_53 br_53 wl_52 vdd gnd cell_6t
Xbit_r53_c53 bl_53 br_53 wl_53 vdd gnd cell_6t
Xbit_r54_c53 bl_53 br_53 wl_54 vdd gnd cell_6t
Xbit_r55_c53 bl_53 br_53 wl_55 vdd gnd cell_6t
Xbit_r56_c53 bl_53 br_53 wl_56 vdd gnd cell_6t
Xbit_r57_c53 bl_53 br_53 wl_57 vdd gnd cell_6t
Xbit_r58_c53 bl_53 br_53 wl_58 vdd gnd cell_6t
Xbit_r59_c53 bl_53 br_53 wl_59 vdd gnd cell_6t
Xbit_r60_c53 bl_53 br_53 wl_60 vdd gnd cell_6t
Xbit_r61_c53 bl_53 br_53 wl_61 vdd gnd cell_6t
Xbit_r62_c53 bl_53 br_53 wl_62 vdd gnd cell_6t
Xbit_r63_c53 bl_53 br_53 wl_63 vdd gnd cell_6t
Xbit_r64_c53 bl_53 br_53 wl_64 vdd gnd cell_6t
Xbit_r65_c53 bl_53 br_53 wl_65 vdd gnd cell_6t
Xbit_r66_c53 bl_53 br_53 wl_66 vdd gnd cell_6t
Xbit_r67_c53 bl_53 br_53 wl_67 vdd gnd cell_6t
Xbit_r68_c53 bl_53 br_53 wl_68 vdd gnd cell_6t
Xbit_r69_c53 bl_53 br_53 wl_69 vdd gnd cell_6t
Xbit_r70_c53 bl_53 br_53 wl_70 vdd gnd cell_6t
Xbit_r71_c53 bl_53 br_53 wl_71 vdd gnd cell_6t
Xbit_r72_c53 bl_53 br_53 wl_72 vdd gnd cell_6t
Xbit_r73_c53 bl_53 br_53 wl_73 vdd gnd cell_6t
Xbit_r74_c53 bl_53 br_53 wl_74 vdd gnd cell_6t
Xbit_r75_c53 bl_53 br_53 wl_75 vdd gnd cell_6t
Xbit_r76_c53 bl_53 br_53 wl_76 vdd gnd cell_6t
Xbit_r77_c53 bl_53 br_53 wl_77 vdd gnd cell_6t
Xbit_r78_c53 bl_53 br_53 wl_78 vdd gnd cell_6t
Xbit_r79_c53 bl_53 br_53 wl_79 vdd gnd cell_6t
Xbit_r80_c53 bl_53 br_53 wl_80 vdd gnd cell_6t
Xbit_r81_c53 bl_53 br_53 wl_81 vdd gnd cell_6t
Xbit_r82_c53 bl_53 br_53 wl_82 vdd gnd cell_6t
Xbit_r83_c53 bl_53 br_53 wl_83 vdd gnd cell_6t
Xbit_r84_c53 bl_53 br_53 wl_84 vdd gnd cell_6t
Xbit_r85_c53 bl_53 br_53 wl_85 vdd gnd cell_6t
Xbit_r86_c53 bl_53 br_53 wl_86 vdd gnd cell_6t
Xbit_r87_c53 bl_53 br_53 wl_87 vdd gnd cell_6t
Xbit_r88_c53 bl_53 br_53 wl_88 vdd gnd cell_6t
Xbit_r89_c53 bl_53 br_53 wl_89 vdd gnd cell_6t
Xbit_r90_c53 bl_53 br_53 wl_90 vdd gnd cell_6t
Xbit_r91_c53 bl_53 br_53 wl_91 vdd gnd cell_6t
Xbit_r92_c53 bl_53 br_53 wl_92 vdd gnd cell_6t
Xbit_r93_c53 bl_53 br_53 wl_93 vdd gnd cell_6t
Xbit_r94_c53 bl_53 br_53 wl_94 vdd gnd cell_6t
Xbit_r95_c53 bl_53 br_53 wl_95 vdd gnd cell_6t
Xbit_r96_c53 bl_53 br_53 wl_96 vdd gnd cell_6t
Xbit_r97_c53 bl_53 br_53 wl_97 vdd gnd cell_6t
Xbit_r98_c53 bl_53 br_53 wl_98 vdd gnd cell_6t
Xbit_r99_c53 bl_53 br_53 wl_99 vdd gnd cell_6t
Xbit_r100_c53 bl_53 br_53 wl_100 vdd gnd cell_6t
Xbit_r101_c53 bl_53 br_53 wl_101 vdd gnd cell_6t
Xbit_r102_c53 bl_53 br_53 wl_102 vdd gnd cell_6t
Xbit_r103_c53 bl_53 br_53 wl_103 vdd gnd cell_6t
Xbit_r104_c53 bl_53 br_53 wl_104 vdd gnd cell_6t
Xbit_r105_c53 bl_53 br_53 wl_105 vdd gnd cell_6t
Xbit_r106_c53 bl_53 br_53 wl_106 vdd gnd cell_6t
Xbit_r107_c53 bl_53 br_53 wl_107 vdd gnd cell_6t
Xbit_r108_c53 bl_53 br_53 wl_108 vdd gnd cell_6t
Xbit_r109_c53 bl_53 br_53 wl_109 vdd gnd cell_6t
Xbit_r110_c53 bl_53 br_53 wl_110 vdd gnd cell_6t
Xbit_r111_c53 bl_53 br_53 wl_111 vdd gnd cell_6t
Xbit_r112_c53 bl_53 br_53 wl_112 vdd gnd cell_6t
Xbit_r113_c53 bl_53 br_53 wl_113 vdd gnd cell_6t
Xbit_r114_c53 bl_53 br_53 wl_114 vdd gnd cell_6t
Xbit_r115_c53 bl_53 br_53 wl_115 vdd gnd cell_6t
Xbit_r116_c53 bl_53 br_53 wl_116 vdd gnd cell_6t
Xbit_r117_c53 bl_53 br_53 wl_117 vdd gnd cell_6t
Xbit_r118_c53 bl_53 br_53 wl_118 vdd gnd cell_6t
Xbit_r119_c53 bl_53 br_53 wl_119 vdd gnd cell_6t
Xbit_r120_c53 bl_53 br_53 wl_120 vdd gnd cell_6t
Xbit_r121_c53 bl_53 br_53 wl_121 vdd gnd cell_6t
Xbit_r122_c53 bl_53 br_53 wl_122 vdd gnd cell_6t
Xbit_r123_c53 bl_53 br_53 wl_123 vdd gnd cell_6t
Xbit_r124_c53 bl_53 br_53 wl_124 vdd gnd cell_6t
Xbit_r125_c53 bl_53 br_53 wl_125 vdd gnd cell_6t
Xbit_r126_c53 bl_53 br_53 wl_126 vdd gnd cell_6t
Xbit_r127_c53 bl_53 br_53 wl_127 vdd gnd cell_6t
Xbit_r0_c54 bl_54 br_54 wl_0 vdd gnd cell_6t
Xbit_r1_c54 bl_54 br_54 wl_1 vdd gnd cell_6t
Xbit_r2_c54 bl_54 br_54 wl_2 vdd gnd cell_6t
Xbit_r3_c54 bl_54 br_54 wl_3 vdd gnd cell_6t
Xbit_r4_c54 bl_54 br_54 wl_4 vdd gnd cell_6t
Xbit_r5_c54 bl_54 br_54 wl_5 vdd gnd cell_6t
Xbit_r6_c54 bl_54 br_54 wl_6 vdd gnd cell_6t
Xbit_r7_c54 bl_54 br_54 wl_7 vdd gnd cell_6t
Xbit_r8_c54 bl_54 br_54 wl_8 vdd gnd cell_6t
Xbit_r9_c54 bl_54 br_54 wl_9 vdd gnd cell_6t
Xbit_r10_c54 bl_54 br_54 wl_10 vdd gnd cell_6t
Xbit_r11_c54 bl_54 br_54 wl_11 vdd gnd cell_6t
Xbit_r12_c54 bl_54 br_54 wl_12 vdd gnd cell_6t
Xbit_r13_c54 bl_54 br_54 wl_13 vdd gnd cell_6t
Xbit_r14_c54 bl_54 br_54 wl_14 vdd gnd cell_6t
Xbit_r15_c54 bl_54 br_54 wl_15 vdd gnd cell_6t
Xbit_r16_c54 bl_54 br_54 wl_16 vdd gnd cell_6t
Xbit_r17_c54 bl_54 br_54 wl_17 vdd gnd cell_6t
Xbit_r18_c54 bl_54 br_54 wl_18 vdd gnd cell_6t
Xbit_r19_c54 bl_54 br_54 wl_19 vdd gnd cell_6t
Xbit_r20_c54 bl_54 br_54 wl_20 vdd gnd cell_6t
Xbit_r21_c54 bl_54 br_54 wl_21 vdd gnd cell_6t
Xbit_r22_c54 bl_54 br_54 wl_22 vdd gnd cell_6t
Xbit_r23_c54 bl_54 br_54 wl_23 vdd gnd cell_6t
Xbit_r24_c54 bl_54 br_54 wl_24 vdd gnd cell_6t
Xbit_r25_c54 bl_54 br_54 wl_25 vdd gnd cell_6t
Xbit_r26_c54 bl_54 br_54 wl_26 vdd gnd cell_6t
Xbit_r27_c54 bl_54 br_54 wl_27 vdd gnd cell_6t
Xbit_r28_c54 bl_54 br_54 wl_28 vdd gnd cell_6t
Xbit_r29_c54 bl_54 br_54 wl_29 vdd gnd cell_6t
Xbit_r30_c54 bl_54 br_54 wl_30 vdd gnd cell_6t
Xbit_r31_c54 bl_54 br_54 wl_31 vdd gnd cell_6t
Xbit_r32_c54 bl_54 br_54 wl_32 vdd gnd cell_6t
Xbit_r33_c54 bl_54 br_54 wl_33 vdd gnd cell_6t
Xbit_r34_c54 bl_54 br_54 wl_34 vdd gnd cell_6t
Xbit_r35_c54 bl_54 br_54 wl_35 vdd gnd cell_6t
Xbit_r36_c54 bl_54 br_54 wl_36 vdd gnd cell_6t
Xbit_r37_c54 bl_54 br_54 wl_37 vdd gnd cell_6t
Xbit_r38_c54 bl_54 br_54 wl_38 vdd gnd cell_6t
Xbit_r39_c54 bl_54 br_54 wl_39 vdd gnd cell_6t
Xbit_r40_c54 bl_54 br_54 wl_40 vdd gnd cell_6t
Xbit_r41_c54 bl_54 br_54 wl_41 vdd gnd cell_6t
Xbit_r42_c54 bl_54 br_54 wl_42 vdd gnd cell_6t
Xbit_r43_c54 bl_54 br_54 wl_43 vdd gnd cell_6t
Xbit_r44_c54 bl_54 br_54 wl_44 vdd gnd cell_6t
Xbit_r45_c54 bl_54 br_54 wl_45 vdd gnd cell_6t
Xbit_r46_c54 bl_54 br_54 wl_46 vdd gnd cell_6t
Xbit_r47_c54 bl_54 br_54 wl_47 vdd gnd cell_6t
Xbit_r48_c54 bl_54 br_54 wl_48 vdd gnd cell_6t
Xbit_r49_c54 bl_54 br_54 wl_49 vdd gnd cell_6t
Xbit_r50_c54 bl_54 br_54 wl_50 vdd gnd cell_6t
Xbit_r51_c54 bl_54 br_54 wl_51 vdd gnd cell_6t
Xbit_r52_c54 bl_54 br_54 wl_52 vdd gnd cell_6t
Xbit_r53_c54 bl_54 br_54 wl_53 vdd gnd cell_6t
Xbit_r54_c54 bl_54 br_54 wl_54 vdd gnd cell_6t
Xbit_r55_c54 bl_54 br_54 wl_55 vdd gnd cell_6t
Xbit_r56_c54 bl_54 br_54 wl_56 vdd gnd cell_6t
Xbit_r57_c54 bl_54 br_54 wl_57 vdd gnd cell_6t
Xbit_r58_c54 bl_54 br_54 wl_58 vdd gnd cell_6t
Xbit_r59_c54 bl_54 br_54 wl_59 vdd gnd cell_6t
Xbit_r60_c54 bl_54 br_54 wl_60 vdd gnd cell_6t
Xbit_r61_c54 bl_54 br_54 wl_61 vdd gnd cell_6t
Xbit_r62_c54 bl_54 br_54 wl_62 vdd gnd cell_6t
Xbit_r63_c54 bl_54 br_54 wl_63 vdd gnd cell_6t
Xbit_r64_c54 bl_54 br_54 wl_64 vdd gnd cell_6t
Xbit_r65_c54 bl_54 br_54 wl_65 vdd gnd cell_6t
Xbit_r66_c54 bl_54 br_54 wl_66 vdd gnd cell_6t
Xbit_r67_c54 bl_54 br_54 wl_67 vdd gnd cell_6t
Xbit_r68_c54 bl_54 br_54 wl_68 vdd gnd cell_6t
Xbit_r69_c54 bl_54 br_54 wl_69 vdd gnd cell_6t
Xbit_r70_c54 bl_54 br_54 wl_70 vdd gnd cell_6t
Xbit_r71_c54 bl_54 br_54 wl_71 vdd gnd cell_6t
Xbit_r72_c54 bl_54 br_54 wl_72 vdd gnd cell_6t
Xbit_r73_c54 bl_54 br_54 wl_73 vdd gnd cell_6t
Xbit_r74_c54 bl_54 br_54 wl_74 vdd gnd cell_6t
Xbit_r75_c54 bl_54 br_54 wl_75 vdd gnd cell_6t
Xbit_r76_c54 bl_54 br_54 wl_76 vdd gnd cell_6t
Xbit_r77_c54 bl_54 br_54 wl_77 vdd gnd cell_6t
Xbit_r78_c54 bl_54 br_54 wl_78 vdd gnd cell_6t
Xbit_r79_c54 bl_54 br_54 wl_79 vdd gnd cell_6t
Xbit_r80_c54 bl_54 br_54 wl_80 vdd gnd cell_6t
Xbit_r81_c54 bl_54 br_54 wl_81 vdd gnd cell_6t
Xbit_r82_c54 bl_54 br_54 wl_82 vdd gnd cell_6t
Xbit_r83_c54 bl_54 br_54 wl_83 vdd gnd cell_6t
Xbit_r84_c54 bl_54 br_54 wl_84 vdd gnd cell_6t
Xbit_r85_c54 bl_54 br_54 wl_85 vdd gnd cell_6t
Xbit_r86_c54 bl_54 br_54 wl_86 vdd gnd cell_6t
Xbit_r87_c54 bl_54 br_54 wl_87 vdd gnd cell_6t
Xbit_r88_c54 bl_54 br_54 wl_88 vdd gnd cell_6t
Xbit_r89_c54 bl_54 br_54 wl_89 vdd gnd cell_6t
Xbit_r90_c54 bl_54 br_54 wl_90 vdd gnd cell_6t
Xbit_r91_c54 bl_54 br_54 wl_91 vdd gnd cell_6t
Xbit_r92_c54 bl_54 br_54 wl_92 vdd gnd cell_6t
Xbit_r93_c54 bl_54 br_54 wl_93 vdd gnd cell_6t
Xbit_r94_c54 bl_54 br_54 wl_94 vdd gnd cell_6t
Xbit_r95_c54 bl_54 br_54 wl_95 vdd gnd cell_6t
Xbit_r96_c54 bl_54 br_54 wl_96 vdd gnd cell_6t
Xbit_r97_c54 bl_54 br_54 wl_97 vdd gnd cell_6t
Xbit_r98_c54 bl_54 br_54 wl_98 vdd gnd cell_6t
Xbit_r99_c54 bl_54 br_54 wl_99 vdd gnd cell_6t
Xbit_r100_c54 bl_54 br_54 wl_100 vdd gnd cell_6t
Xbit_r101_c54 bl_54 br_54 wl_101 vdd gnd cell_6t
Xbit_r102_c54 bl_54 br_54 wl_102 vdd gnd cell_6t
Xbit_r103_c54 bl_54 br_54 wl_103 vdd gnd cell_6t
Xbit_r104_c54 bl_54 br_54 wl_104 vdd gnd cell_6t
Xbit_r105_c54 bl_54 br_54 wl_105 vdd gnd cell_6t
Xbit_r106_c54 bl_54 br_54 wl_106 vdd gnd cell_6t
Xbit_r107_c54 bl_54 br_54 wl_107 vdd gnd cell_6t
Xbit_r108_c54 bl_54 br_54 wl_108 vdd gnd cell_6t
Xbit_r109_c54 bl_54 br_54 wl_109 vdd gnd cell_6t
Xbit_r110_c54 bl_54 br_54 wl_110 vdd gnd cell_6t
Xbit_r111_c54 bl_54 br_54 wl_111 vdd gnd cell_6t
Xbit_r112_c54 bl_54 br_54 wl_112 vdd gnd cell_6t
Xbit_r113_c54 bl_54 br_54 wl_113 vdd gnd cell_6t
Xbit_r114_c54 bl_54 br_54 wl_114 vdd gnd cell_6t
Xbit_r115_c54 bl_54 br_54 wl_115 vdd gnd cell_6t
Xbit_r116_c54 bl_54 br_54 wl_116 vdd gnd cell_6t
Xbit_r117_c54 bl_54 br_54 wl_117 vdd gnd cell_6t
Xbit_r118_c54 bl_54 br_54 wl_118 vdd gnd cell_6t
Xbit_r119_c54 bl_54 br_54 wl_119 vdd gnd cell_6t
Xbit_r120_c54 bl_54 br_54 wl_120 vdd gnd cell_6t
Xbit_r121_c54 bl_54 br_54 wl_121 vdd gnd cell_6t
Xbit_r122_c54 bl_54 br_54 wl_122 vdd gnd cell_6t
Xbit_r123_c54 bl_54 br_54 wl_123 vdd gnd cell_6t
Xbit_r124_c54 bl_54 br_54 wl_124 vdd gnd cell_6t
Xbit_r125_c54 bl_54 br_54 wl_125 vdd gnd cell_6t
Xbit_r126_c54 bl_54 br_54 wl_126 vdd gnd cell_6t
Xbit_r127_c54 bl_54 br_54 wl_127 vdd gnd cell_6t
Xbit_r0_c55 bl_55 br_55 wl_0 vdd gnd cell_6t
Xbit_r1_c55 bl_55 br_55 wl_1 vdd gnd cell_6t
Xbit_r2_c55 bl_55 br_55 wl_2 vdd gnd cell_6t
Xbit_r3_c55 bl_55 br_55 wl_3 vdd gnd cell_6t
Xbit_r4_c55 bl_55 br_55 wl_4 vdd gnd cell_6t
Xbit_r5_c55 bl_55 br_55 wl_5 vdd gnd cell_6t
Xbit_r6_c55 bl_55 br_55 wl_6 vdd gnd cell_6t
Xbit_r7_c55 bl_55 br_55 wl_7 vdd gnd cell_6t
Xbit_r8_c55 bl_55 br_55 wl_8 vdd gnd cell_6t
Xbit_r9_c55 bl_55 br_55 wl_9 vdd gnd cell_6t
Xbit_r10_c55 bl_55 br_55 wl_10 vdd gnd cell_6t
Xbit_r11_c55 bl_55 br_55 wl_11 vdd gnd cell_6t
Xbit_r12_c55 bl_55 br_55 wl_12 vdd gnd cell_6t
Xbit_r13_c55 bl_55 br_55 wl_13 vdd gnd cell_6t
Xbit_r14_c55 bl_55 br_55 wl_14 vdd gnd cell_6t
Xbit_r15_c55 bl_55 br_55 wl_15 vdd gnd cell_6t
Xbit_r16_c55 bl_55 br_55 wl_16 vdd gnd cell_6t
Xbit_r17_c55 bl_55 br_55 wl_17 vdd gnd cell_6t
Xbit_r18_c55 bl_55 br_55 wl_18 vdd gnd cell_6t
Xbit_r19_c55 bl_55 br_55 wl_19 vdd gnd cell_6t
Xbit_r20_c55 bl_55 br_55 wl_20 vdd gnd cell_6t
Xbit_r21_c55 bl_55 br_55 wl_21 vdd gnd cell_6t
Xbit_r22_c55 bl_55 br_55 wl_22 vdd gnd cell_6t
Xbit_r23_c55 bl_55 br_55 wl_23 vdd gnd cell_6t
Xbit_r24_c55 bl_55 br_55 wl_24 vdd gnd cell_6t
Xbit_r25_c55 bl_55 br_55 wl_25 vdd gnd cell_6t
Xbit_r26_c55 bl_55 br_55 wl_26 vdd gnd cell_6t
Xbit_r27_c55 bl_55 br_55 wl_27 vdd gnd cell_6t
Xbit_r28_c55 bl_55 br_55 wl_28 vdd gnd cell_6t
Xbit_r29_c55 bl_55 br_55 wl_29 vdd gnd cell_6t
Xbit_r30_c55 bl_55 br_55 wl_30 vdd gnd cell_6t
Xbit_r31_c55 bl_55 br_55 wl_31 vdd gnd cell_6t
Xbit_r32_c55 bl_55 br_55 wl_32 vdd gnd cell_6t
Xbit_r33_c55 bl_55 br_55 wl_33 vdd gnd cell_6t
Xbit_r34_c55 bl_55 br_55 wl_34 vdd gnd cell_6t
Xbit_r35_c55 bl_55 br_55 wl_35 vdd gnd cell_6t
Xbit_r36_c55 bl_55 br_55 wl_36 vdd gnd cell_6t
Xbit_r37_c55 bl_55 br_55 wl_37 vdd gnd cell_6t
Xbit_r38_c55 bl_55 br_55 wl_38 vdd gnd cell_6t
Xbit_r39_c55 bl_55 br_55 wl_39 vdd gnd cell_6t
Xbit_r40_c55 bl_55 br_55 wl_40 vdd gnd cell_6t
Xbit_r41_c55 bl_55 br_55 wl_41 vdd gnd cell_6t
Xbit_r42_c55 bl_55 br_55 wl_42 vdd gnd cell_6t
Xbit_r43_c55 bl_55 br_55 wl_43 vdd gnd cell_6t
Xbit_r44_c55 bl_55 br_55 wl_44 vdd gnd cell_6t
Xbit_r45_c55 bl_55 br_55 wl_45 vdd gnd cell_6t
Xbit_r46_c55 bl_55 br_55 wl_46 vdd gnd cell_6t
Xbit_r47_c55 bl_55 br_55 wl_47 vdd gnd cell_6t
Xbit_r48_c55 bl_55 br_55 wl_48 vdd gnd cell_6t
Xbit_r49_c55 bl_55 br_55 wl_49 vdd gnd cell_6t
Xbit_r50_c55 bl_55 br_55 wl_50 vdd gnd cell_6t
Xbit_r51_c55 bl_55 br_55 wl_51 vdd gnd cell_6t
Xbit_r52_c55 bl_55 br_55 wl_52 vdd gnd cell_6t
Xbit_r53_c55 bl_55 br_55 wl_53 vdd gnd cell_6t
Xbit_r54_c55 bl_55 br_55 wl_54 vdd gnd cell_6t
Xbit_r55_c55 bl_55 br_55 wl_55 vdd gnd cell_6t
Xbit_r56_c55 bl_55 br_55 wl_56 vdd gnd cell_6t
Xbit_r57_c55 bl_55 br_55 wl_57 vdd gnd cell_6t
Xbit_r58_c55 bl_55 br_55 wl_58 vdd gnd cell_6t
Xbit_r59_c55 bl_55 br_55 wl_59 vdd gnd cell_6t
Xbit_r60_c55 bl_55 br_55 wl_60 vdd gnd cell_6t
Xbit_r61_c55 bl_55 br_55 wl_61 vdd gnd cell_6t
Xbit_r62_c55 bl_55 br_55 wl_62 vdd gnd cell_6t
Xbit_r63_c55 bl_55 br_55 wl_63 vdd gnd cell_6t
Xbit_r64_c55 bl_55 br_55 wl_64 vdd gnd cell_6t
Xbit_r65_c55 bl_55 br_55 wl_65 vdd gnd cell_6t
Xbit_r66_c55 bl_55 br_55 wl_66 vdd gnd cell_6t
Xbit_r67_c55 bl_55 br_55 wl_67 vdd gnd cell_6t
Xbit_r68_c55 bl_55 br_55 wl_68 vdd gnd cell_6t
Xbit_r69_c55 bl_55 br_55 wl_69 vdd gnd cell_6t
Xbit_r70_c55 bl_55 br_55 wl_70 vdd gnd cell_6t
Xbit_r71_c55 bl_55 br_55 wl_71 vdd gnd cell_6t
Xbit_r72_c55 bl_55 br_55 wl_72 vdd gnd cell_6t
Xbit_r73_c55 bl_55 br_55 wl_73 vdd gnd cell_6t
Xbit_r74_c55 bl_55 br_55 wl_74 vdd gnd cell_6t
Xbit_r75_c55 bl_55 br_55 wl_75 vdd gnd cell_6t
Xbit_r76_c55 bl_55 br_55 wl_76 vdd gnd cell_6t
Xbit_r77_c55 bl_55 br_55 wl_77 vdd gnd cell_6t
Xbit_r78_c55 bl_55 br_55 wl_78 vdd gnd cell_6t
Xbit_r79_c55 bl_55 br_55 wl_79 vdd gnd cell_6t
Xbit_r80_c55 bl_55 br_55 wl_80 vdd gnd cell_6t
Xbit_r81_c55 bl_55 br_55 wl_81 vdd gnd cell_6t
Xbit_r82_c55 bl_55 br_55 wl_82 vdd gnd cell_6t
Xbit_r83_c55 bl_55 br_55 wl_83 vdd gnd cell_6t
Xbit_r84_c55 bl_55 br_55 wl_84 vdd gnd cell_6t
Xbit_r85_c55 bl_55 br_55 wl_85 vdd gnd cell_6t
Xbit_r86_c55 bl_55 br_55 wl_86 vdd gnd cell_6t
Xbit_r87_c55 bl_55 br_55 wl_87 vdd gnd cell_6t
Xbit_r88_c55 bl_55 br_55 wl_88 vdd gnd cell_6t
Xbit_r89_c55 bl_55 br_55 wl_89 vdd gnd cell_6t
Xbit_r90_c55 bl_55 br_55 wl_90 vdd gnd cell_6t
Xbit_r91_c55 bl_55 br_55 wl_91 vdd gnd cell_6t
Xbit_r92_c55 bl_55 br_55 wl_92 vdd gnd cell_6t
Xbit_r93_c55 bl_55 br_55 wl_93 vdd gnd cell_6t
Xbit_r94_c55 bl_55 br_55 wl_94 vdd gnd cell_6t
Xbit_r95_c55 bl_55 br_55 wl_95 vdd gnd cell_6t
Xbit_r96_c55 bl_55 br_55 wl_96 vdd gnd cell_6t
Xbit_r97_c55 bl_55 br_55 wl_97 vdd gnd cell_6t
Xbit_r98_c55 bl_55 br_55 wl_98 vdd gnd cell_6t
Xbit_r99_c55 bl_55 br_55 wl_99 vdd gnd cell_6t
Xbit_r100_c55 bl_55 br_55 wl_100 vdd gnd cell_6t
Xbit_r101_c55 bl_55 br_55 wl_101 vdd gnd cell_6t
Xbit_r102_c55 bl_55 br_55 wl_102 vdd gnd cell_6t
Xbit_r103_c55 bl_55 br_55 wl_103 vdd gnd cell_6t
Xbit_r104_c55 bl_55 br_55 wl_104 vdd gnd cell_6t
Xbit_r105_c55 bl_55 br_55 wl_105 vdd gnd cell_6t
Xbit_r106_c55 bl_55 br_55 wl_106 vdd gnd cell_6t
Xbit_r107_c55 bl_55 br_55 wl_107 vdd gnd cell_6t
Xbit_r108_c55 bl_55 br_55 wl_108 vdd gnd cell_6t
Xbit_r109_c55 bl_55 br_55 wl_109 vdd gnd cell_6t
Xbit_r110_c55 bl_55 br_55 wl_110 vdd gnd cell_6t
Xbit_r111_c55 bl_55 br_55 wl_111 vdd gnd cell_6t
Xbit_r112_c55 bl_55 br_55 wl_112 vdd gnd cell_6t
Xbit_r113_c55 bl_55 br_55 wl_113 vdd gnd cell_6t
Xbit_r114_c55 bl_55 br_55 wl_114 vdd gnd cell_6t
Xbit_r115_c55 bl_55 br_55 wl_115 vdd gnd cell_6t
Xbit_r116_c55 bl_55 br_55 wl_116 vdd gnd cell_6t
Xbit_r117_c55 bl_55 br_55 wl_117 vdd gnd cell_6t
Xbit_r118_c55 bl_55 br_55 wl_118 vdd gnd cell_6t
Xbit_r119_c55 bl_55 br_55 wl_119 vdd gnd cell_6t
Xbit_r120_c55 bl_55 br_55 wl_120 vdd gnd cell_6t
Xbit_r121_c55 bl_55 br_55 wl_121 vdd gnd cell_6t
Xbit_r122_c55 bl_55 br_55 wl_122 vdd gnd cell_6t
Xbit_r123_c55 bl_55 br_55 wl_123 vdd gnd cell_6t
Xbit_r124_c55 bl_55 br_55 wl_124 vdd gnd cell_6t
Xbit_r125_c55 bl_55 br_55 wl_125 vdd gnd cell_6t
Xbit_r126_c55 bl_55 br_55 wl_126 vdd gnd cell_6t
Xbit_r127_c55 bl_55 br_55 wl_127 vdd gnd cell_6t
Xbit_r0_c56 bl_56 br_56 wl_0 vdd gnd cell_6t
Xbit_r1_c56 bl_56 br_56 wl_1 vdd gnd cell_6t
Xbit_r2_c56 bl_56 br_56 wl_2 vdd gnd cell_6t
Xbit_r3_c56 bl_56 br_56 wl_3 vdd gnd cell_6t
Xbit_r4_c56 bl_56 br_56 wl_4 vdd gnd cell_6t
Xbit_r5_c56 bl_56 br_56 wl_5 vdd gnd cell_6t
Xbit_r6_c56 bl_56 br_56 wl_6 vdd gnd cell_6t
Xbit_r7_c56 bl_56 br_56 wl_7 vdd gnd cell_6t
Xbit_r8_c56 bl_56 br_56 wl_8 vdd gnd cell_6t
Xbit_r9_c56 bl_56 br_56 wl_9 vdd gnd cell_6t
Xbit_r10_c56 bl_56 br_56 wl_10 vdd gnd cell_6t
Xbit_r11_c56 bl_56 br_56 wl_11 vdd gnd cell_6t
Xbit_r12_c56 bl_56 br_56 wl_12 vdd gnd cell_6t
Xbit_r13_c56 bl_56 br_56 wl_13 vdd gnd cell_6t
Xbit_r14_c56 bl_56 br_56 wl_14 vdd gnd cell_6t
Xbit_r15_c56 bl_56 br_56 wl_15 vdd gnd cell_6t
Xbit_r16_c56 bl_56 br_56 wl_16 vdd gnd cell_6t
Xbit_r17_c56 bl_56 br_56 wl_17 vdd gnd cell_6t
Xbit_r18_c56 bl_56 br_56 wl_18 vdd gnd cell_6t
Xbit_r19_c56 bl_56 br_56 wl_19 vdd gnd cell_6t
Xbit_r20_c56 bl_56 br_56 wl_20 vdd gnd cell_6t
Xbit_r21_c56 bl_56 br_56 wl_21 vdd gnd cell_6t
Xbit_r22_c56 bl_56 br_56 wl_22 vdd gnd cell_6t
Xbit_r23_c56 bl_56 br_56 wl_23 vdd gnd cell_6t
Xbit_r24_c56 bl_56 br_56 wl_24 vdd gnd cell_6t
Xbit_r25_c56 bl_56 br_56 wl_25 vdd gnd cell_6t
Xbit_r26_c56 bl_56 br_56 wl_26 vdd gnd cell_6t
Xbit_r27_c56 bl_56 br_56 wl_27 vdd gnd cell_6t
Xbit_r28_c56 bl_56 br_56 wl_28 vdd gnd cell_6t
Xbit_r29_c56 bl_56 br_56 wl_29 vdd gnd cell_6t
Xbit_r30_c56 bl_56 br_56 wl_30 vdd gnd cell_6t
Xbit_r31_c56 bl_56 br_56 wl_31 vdd gnd cell_6t
Xbit_r32_c56 bl_56 br_56 wl_32 vdd gnd cell_6t
Xbit_r33_c56 bl_56 br_56 wl_33 vdd gnd cell_6t
Xbit_r34_c56 bl_56 br_56 wl_34 vdd gnd cell_6t
Xbit_r35_c56 bl_56 br_56 wl_35 vdd gnd cell_6t
Xbit_r36_c56 bl_56 br_56 wl_36 vdd gnd cell_6t
Xbit_r37_c56 bl_56 br_56 wl_37 vdd gnd cell_6t
Xbit_r38_c56 bl_56 br_56 wl_38 vdd gnd cell_6t
Xbit_r39_c56 bl_56 br_56 wl_39 vdd gnd cell_6t
Xbit_r40_c56 bl_56 br_56 wl_40 vdd gnd cell_6t
Xbit_r41_c56 bl_56 br_56 wl_41 vdd gnd cell_6t
Xbit_r42_c56 bl_56 br_56 wl_42 vdd gnd cell_6t
Xbit_r43_c56 bl_56 br_56 wl_43 vdd gnd cell_6t
Xbit_r44_c56 bl_56 br_56 wl_44 vdd gnd cell_6t
Xbit_r45_c56 bl_56 br_56 wl_45 vdd gnd cell_6t
Xbit_r46_c56 bl_56 br_56 wl_46 vdd gnd cell_6t
Xbit_r47_c56 bl_56 br_56 wl_47 vdd gnd cell_6t
Xbit_r48_c56 bl_56 br_56 wl_48 vdd gnd cell_6t
Xbit_r49_c56 bl_56 br_56 wl_49 vdd gnd cell_6t
Xbit_r50_c56 bl_56 br_56 wl_50 vdd gnd cell_6t
Xbit_r51_c56 bl_56 br_56 wl_51 vdd gnd cell_6t
Xbit_r52_c56 bl_56 br_56 wl_52 vdd gnd cell_6t
Xbit_r53_c56 bl_56 br_56 wl_53 vdd gnd cell_6t
Xbit_r54_c56 bl_56 br_56 wl_54 vdd gnd cell_6t
Xbit_r55_c56 bl_56 br_56 wl_55 vdd gnd cell_6t
Xbit_r56_c56 bl_56 br_56 wl_56 vdd gnd cell_6t
Xbit_r57_c56 bl_56 br_56 wl_57 vdd gnd cell_6t
Xbit_r58_c56 bl_56 br_56 wl_58 vdd gnd cell_6t
Xbit_r59_c56 bl_56 br_56 wl_59 vdd gnd cell_6t
Xbit_r60_c56 bl_56 br_56 wl_60 vdd gnd cell_6t
Xbit_r61_c56 bl_56 br_56 wl_61 vdd gnd cell_6t
Xbit_r62_c56 bl_56 br_56 wl_62 vdd gnd cell_6t
Xbit_r63_c56 bl_56 br_56 wl_63 vdd gnd cell_6t
Xbit_r64_c56 bl_56 br_56 wl_64 vdd gnd cell_6t
Xbit_r65_c56 bl_56 br_56 wl_65 vdd gnd cell_6t
Xbit_r66_c56 bl_56 br_56 wl_66 vdd gnd cell_6t
Xbit_r67_c56 bl_56 br_56 wl_67 vdd gnd cell_6t
Xbit_r68_c56 bl_56 br_56 wl_68 vdd gnd cell_6t
Xbit_r69_c56 bl_56 br_56 wl_69 vdd gnd cell_6t
Xbit_r70_c56 bl_56 br_56 wl_70 vdd gnd cell_6t
Xbit_r71_c56 bl_56 br_56 wl_71 vdd gnd cell_6t
Xbit_r72_c56 bl_56 br_56 wl_72 vdd gnd cell_6t
Xbit_r73_c56 bl_56 br_56 wl_73 vdd gnd cell_6t
Xbit_r74_c56 bl_56 br_56 wl_74 vdd gnd cell_6t
Xbit_r75_c56 bl_56 br_56 wl_75 vdd gnd cell_6t
Xbit_r76_c56 bl_56 br_56 wl_76 vdd gnd cell_6t
Xbit_r77_c56 bl_56 br_56 wl_77 vdd gnd cell_6t
Xbit_r78_c56 bl_56 br_56 wl_78 vdd gnd cell_6t
Xbit_r79_c56 bl_56 br_56 wl_79 vdd gnd cell_6t
Xbit_r80_c56 bl_56 br_56 wl_80 vdd gnd cell_6t
Xbit_r81_c56 bl_56 br_56 wl_81 vdd gnd cell_6t
Xbit_r82_c56 bl_56 br_56 wl_82 vdd gnd cell_6t
Xbit_r83_c56 bl_56 br_56 wl_83 vdd gnd cell_6t
Xbit_r84_c56 bl_56 br_56 wl_84 vdd gnd cell_6t
Xbit_r85_c56 bl_56 br_56 wl_85 vdd gnd cell_6t
Xbit_r86_c56 bl_56 br_56 wl_86 vdd gnd cell_6t
Xbit_r87_c56 bl_56 br_56 wl_87 vdd gnd cell_6t
Xbit_r88_c56 bl_56 br_56 wl_88 vdd gnd cell_6t
Xbit_r89_c56 bl_56 br_56 wl_89 vdd gnd cell_6t
Xbit_r90_c56 bl_56 br_56 wl_90 vdd gnd cell_6t
Xbit_r91_c56 bl_56 br_56 wl_91 vdd gnd cell_6t
Xbit_r92_c56 bl_56 br_56 wl_92 vdd gnd cell_6t
Xbit_r93_c56 bl_56 br_56 wl_93 vdd gnd cell_6t
Xbit_r94_c56 bl_56 br_56 wl_94 vdd gnd cell_6t
Xbit_r95_c56 bl_56 br_56 wl_95 vdd gnd cell_6t
Xbit_r96_c56 bl_56 br_56 wl_96 vdd gnd cell_6t
Xbit_r97_c56 bl_56 br_56 wl_97 vdd gnd cell_6t
Xbit_r98_c56 bl_56 br_56 wl_98 vdd gnd cell_6t
Xbit_r99_c56 bl_56 br_56 wl_99 vdd gnd cell_6t
Xbit_r100_c56 bl_56 br_56 wl_100 vdd gnd cell_6t
Xbit_r101_c56 bl_56 br_56 wl_101 vdd gnd cell_6t
Xbit_r102_c56 bl_56 br_56 wl_102 vdd gnd cell_6t
Xbit_r103_c56 bl_56 br_56 wl_103 vdd gnd cell_6t
Xbit_r104_c56 bl_56 br_56 wl_104 vdd gnd cell_6t
Xbit_r105_c56 bl_56 br_56 wl_105 vdd gnd cell_6t
Xbit_r106_c56 bl_56 br_56 wl_106 vdd gnd cell_6t
Xbit_r107_c56 bl_56 br_56 wl_107 vdd gnd cell_6t
Xbit_r108_c56 bl_56 br_56 wl_108 vdd gnd cell_6t
Xbit_r109_c56 bl_56 br_56 wl_109 vdd gnd cell_6t
Xbit_r110_c56 bl_56 br_56 wl_110 vdd gnd cell_6t
Xbit_r111_c56 bl_56 br_56 wl_111 vdd gnd cell_6t
Xbit_r112_c56 bl_56 br_56 wl_112 vdd gnd cell_6t
Xbit_r113_c56 bl_56 br_56 wl_113 vdd gnd cell_6t
Xbit_r114_c56 bl_56 br_56 wl_114 vdd gnd cell_6t
Xbit_r115_c56 bl_56 br_56 wl_115 vdd gnd cell_6t
Xbit_r116_c56 bl_56 br_56 wl_116 vdd gnd cell_6t
Xbit_r117_c56 bl_56 br_56 wl_117 vdd gnd cell_6t
Xbit_r118_c56 bl_56 br_56 wl_118 vdd gnd cell_6t
Xbit_r119_c56 bl_56 br_56 wl_119 vdd gnd cell_6t
Xbit_r120_c56 bl_56 br_56 wl_120 vdd gnd cell_6t
Xbit_r121_c56 bl_56 br_56 wl_121 vdd gnd cell_6t
Xbit_r122_c56 bl_56 br_56 wl_122 vdd gnd cell_6t
Xbit_r123_c56 bl_56 br_56 wl_123 vdd gnd cell_6t
Xbit_r124_c56 bl_56 br_56 wl_124 vdd gnd cell_6t
Xbit_r125_c56 bl_56 br_56 wl_125 vdd gnd cell_6t
Xbit_r126_c56 bl_56 br_56 wl_126 vdd gnd cell_6t
Xbit_r127_c56 bl_56 br_56 wl_127 vdd gnd cell_6t
Xbit_r0_c57 bl_57 br_57 wl_0 vdd gnd cell_6t
Xbit_r1_c57 bl_57 br_57 wl_1 vdd gnd cell_6t
Xbit_r2_c57 bl_57 br_57 wl_2 vdd gnd cell_6t
Xbit_r3_c57 bl_57 br_57 wl_3 vdd gnd cell_6t
Xbit_r4_c57 bl_57 br_57 wl_4 vdd gnd cell_6t
Xbit_r5_c57 bl_57 br_57 wl_5 vdd gnd cell_6t
Xbit_r6_c57 bl_57 br_57 wl_6 vdd gnd cell_6t
Xbit_r7_c57 bl_57 br_57 wl_7 vdd gnd cell_6t
Xbit_r8_c57 bl_57 br_57 wl_8 vdd gnd cell_6t
Xbit_r9_c57 bl_57 br_57 wl_9 vdd gnd cell_6t
Xbit_r10_c57 bl_57 br_57 wl_10 vdd gnd cell_6t
Xbit_r11_c57 bl_57 br_57 wl_11 vdd gnd cell_6t
Xbit_r12_c57 bl_57 br_57 wl_12 vdd gnd cell_6t
Xbit_r13_c57 bl_57 br_57 wl_13 vdd gnd cell_6t
Xbit_r14_c57 bl_57 br_57 wl_14 vdd gnd cell_6t
Xbit_r15_c57 bl_57 br_57 wl_15 vdd gnd cell_6t
Xbit_r16_c57 bl_57 br_57 wl_16 vdd gnd cell_6t
Xbit_r17_c57 bl_57 br_57 wl_17 vdd gnd cell_6t
Xbit_r18_c57 bl_57 br_57 wl_18 vdd gnd cell_6t
Xbit_r19_c57 bl_57 br_57 wl_19 vdd gnd cell_6t
Xbit_r20_c57 bl_57 br_57 wl_20 vdd gnd cell_6t
Xbit_r21_c57 bl_57 br_57 wl_21 vdd gnd cell_6t
Xbit_r22_c57 bl_57 br_57 wl_22 vdd gnd cell_6t
Xbit_r23_c57 bl_57 br_57 wl_23 vdd gnd cell_6t
Xbit_r24_c57 bl_57 br_57 wl_24 vdd gnd cell_6t
Xbit_r25_c57 bl_57 br_57 wl_25 vdd gnd cell_6t
Xbit_r26_c57 bl_57 br_57 wl_26 vdd gnd cell_6t
Xbit_r27_c57 bl_57 br_57 wl_27 vdd gnd cell_6t
Xbit_r28_c57 bl_57 br_57 wl_28 vdd gnd cell_6t
Xbit_r29_c57 bl_57 br_57 wl_29 vdd gnd cell_6t
Xbit_r30_c57 bl_57 br_57 wl_30 vdd gnd cell_6t
Xbit_r31_c57 bl_57 br_57 wl_31 vdd gnd cell_6t
Xbit_r32_c57 bl_57 br_57 wl_32 vdd gnd cell_6t
Xbit_r33_c57 bl_57 br_57 wl_33 vdd gnd cell_6t
Xbit_r34_c57 bl_57 br_57 wl_34 vdd gnd cell_6t
Xbit_r35_c57 bl_57 br_57 wl_35 vdd gnd cell_6t
Xbit_r36_c57 bl_57 br_57 wl_36 vdd gnd cell_6t
Xbit_r37_c57 bl_57 br_57 wl_37 vdd gnd cell_6t
Xbit_r38_c57 bl_57 br_57 wl_38 vdd gnd cell_6t
Xbit_r39_c57 bl_57 br_57 wl_39 vdd gnd cell_6t
Xbit_r40_c57 bl_57 br_57 wl_40 vdd gnd cell_6t
Xbit_r41_c57 bl_57 br_57 wl_41 vdd gnd cell_6t
Xbit_r42_c57 bl_57 br_57 wl_42 vdd gnd cell_6t
Xbit_r43_c57 bl_57 br_57 wl_43 vdd gnd cell_6t
Xbit_r44_c57 bl_57 br_57 wl_44 vdd gnd cell_6t
Xbit_r45_c57 bl_57 br_57 wl_45 vdd gnd cell_6t
Xbit_r46_c57 bl_57 br_57 wl_46 vdd gnd cell_6t
Xbit_r47_c57 bl_57 br_57 wl_47 vdd gnd cell_6t
Xbit_r48_c57 bl_57 br_57 wl_48 vdd gnd cell_6t
Xbit_r49_c57 bl_57 br_57 wl_49 vdd gnd cell_6t
Xbit_r50_c57 bl_57 br_57 wl_50 vdd gnd cell_6t
Xbit_r51_c57 bl_57 br_57 wl_51 vdd gnd cell_6t
Xbit_r52_c57 bl_57 br_57 wl_52 vdd gnd cell_6t
Xbit_r53_c57 bl_57 br_57 wl_53 vdd gnd cell_6t
Xbit_r54_c57 bl_57 br_57 wl_54 vdd gnd cell_6t
Xbit_r55_c57 bl_57 br_57 wl_55 vdd gnd cell_6t
Xbit_r56_c57 bl_57 br_57 wl_56 vdd gnd cell_6t
Xbit_r57_c57 bl_57 br_57 wl_57 vdd gnd cell_6t
Xbit_r58_c57 bl_57 br_57 wl_58 vdd gnd cell_6t
Xbit_r59_c57 bl_57 br_57 wl_59 vdd gnd cell_6t
Xbit_r60_c57 bl_57 br_57 wl_60 vdd gnd cell_6t
Xbit_r61_c57 bl_57 br_57 wl_61 vdd gnd cell_6t
Xbit_r62_c57 bl_57 br_57 wl_62 vdd gnd cell_6t
Xbit_r63_c57 bl_57 br_57 wl_63 vdd gnd cell_6t
Xbit_r64_c57 bl_57 br_57 wl_64 vdd gnd cell_6t
Xbit_r65_c57 bl_57 br_57 wl_65 vdd gnd cell_6t
Xbit_r66_c57 bl_57 br_57 wl_66 vdd gnd cell_6t
Xbit_r67_c57 bl_57 br_57 wl_67 vdd gnd cell_6t
Xbit_r68_c57 bl_57 br_57 wl_68 vdd gnd cell_6t
Xbit_r69_c57 bl_57 br_57 wl_69 vdd gnd cell_6t
Xbit_r70_c57 bl_57 br_57 wl_70 vdd gnd cell_6t
Xbit_r71_c57 bl_57 br_57 wl_71 vdd gnd cell_6t
Xbit_r72_c57 bl_57 br_57 wl_72 vdd gnd cell_6t
Xbit_r73_c57 bl_57 br_57 wl_73 vdd gnd cell_6t
Xbit_r74_c57 bl_57 br_57 wl_74 vdd gnd cell_6t
Xbit_r75_c57 bl_57 br_57 wl_75 vdd gnd cell_6t
Xbit_r76_c57 bl_57 br_57 wl_76 vdd gnd cell_6t
Xbit_r77_c57 bl_57 br_57 wl_77 vdd gnd cell_6t
Xbit_r78_c57 bl_57 br_57 wl_78 vdd gnd cell_6t
Xbit_r79_c57 bl_57 br_57 wl_79 vdd gnd cell_6t
Xbit_r80_c57 bl_57 br_57 wl_80 vdd gnd cell_6t
Xbit_r81_c57 bl_57 br_57 wl_81 vdd gnd cell_6t
Xbit_r82_c57 bl_57 br_57 wl_82 vdd gnd cell_6t
Xbit_r83_c57 bl_57 br_57 wl_83 vdd gnd cell_6t
Xbit_r84_c57 bl_57 br_57 wl_84 vdd gnd cell_6t
Xbit_r85_c57 bl_57 br_57 wl_85 vdd gnd cell_6t
Xbit_r86_c57 bl_57 br_57 wl_86 vdd gnd cell_6t
Xbit_r87_c57 bl_57 br_57 wl_87 vdd gnd cell_6t
Xbit_r88_c57 bl_57 br_57 wl_88 vdd gnd cell_6t
Xbit_r89_c57 bl_57 br_57 wl_89 vdd gnd cell_6t
Xbit_r90_c57 bl_57 br_57 wl_90 vdd gnd cell_6t
Xbit_r91_c57 bl_57 br_57 wl_91 vdd gnd cell_6t
Xbit_r92_c57 bl_57 br_57 wl_92 vdd gnd cell_6t
Xbit_r93_c57 bl_57 br_57 wl_93 vdd gnd cell_6t
Xbit_r94_c57 bl_57 br_57 wl_94 vdd gnd cell_6t
Xbit_r95_c57 bl_57 br_57 wl_95 vdd gnd cell_6t
Xbit_r96_c57 bl_57 br_57 wl_96 vdd gnd cell_6t
Xbit_r97_c57 bl_57 br_57 wl_97 vdd gnd cell_6t
Xbit_r98_c57 bl_57 br_57 wl_98 vdd gnd cell_6t
Xbit_r99_c57 bl_57 br_57 wl_99 vdd gnd cell_6t
Xbit_r100_c57 bl_57 br_57 wl_100 vdd gnd cell_6t
Xbit_r101_c57 bl_57 br_57 wl_101 vdd gnd cell_6t
Xbit_r102_c57 bl_57 br_57 wl_102 vdd gnd cell_6t
Xbit_r103_c57 bl_57 br_57 wl_103 vdd gnd cell_6t
Xbit_r104_c57 bl_57 br_57 wl_104 vdd gnd cell_6t
Xbit_r105_c57 bl_57 br_57 wl_105 vdd gnd cell_6t
Xbit_r106_c57 bl_57 br_57 wl_106 vdd gnd cell_6t
Xbit_r107_c57 bl_57 br_57 wl_107 vdd gnd cell_6t
Xbit_r108_c57 bl_57 br_57 wl_108 vdd gnd cell_6t
Xbit_r109_c57 bl_57 br_57 wl_109 vdd gnd cell_6t
Xbit_r110_c57 bl_57 br_57 wl_110 vdd gnd cell_6t
Xbit_r111_c57 bl_57 br_57 wl_111 vdd gnd cell_6t
Xbit_r112_c57 bl_57 br_57 wl_112 vdd gnd cell_6t
Xbit_r113_c57 bl_57 br_57 wl_113 vdd gnd cell_6t
Xbit_r114_c57 bl_57 br_57 wl_114 vdd gnd cell_6t
Xbit_r115_c57 bl_57 br_57 wl_115 vdd gnd cell_6t
Xbit_r116_c57 bl_57 br_57 wl_116 vdd gnd cell_6t
Xbit_r117_c57 bl_57 br_57 wl_117 vdd gnd cell_6t
Xbit_r118_c57 bl_57 br_57 wl_118 vdd gnd cell_6t
Xbit_r119_c57 bl_57 br_57 wl_119 vdd gnd cell_6t
Xbit_r120_c57 bl_57 br_57 wl_120 vdd gnd cell_6t
Xbit_r121_c57 bl_57 br_57 wl_121 vdd gnd cell_6t
Xbit_r122_c57 bl_57 br_57 wl_122 vdd gnd cell_6t
Xbit_r123_c57 bl_57 br_57 wl_123 vdd gnd cell_6t
Xbit_r124_c57 bl_57 br_57 wl_124 vdd gnd cell_6t
Xbit_r125_c57 bl_57 br_57 wl_125 vdd gnd cell_6t
Xbit_r126_c57 bl_57 br_57 wl_126 vdd gnd cell_6t
Xbit_r127_c57 bl_57 br_57 wl_127 vdd gnd cell_6t
Xbit_r0_c58 bl_58 br_58 wl_0 vdd gnd cell_6t
Xbit_r1_c58 bl_58 br_58 wl_1 vdd gnd cell_6t
Xbit_r2_c58 bl_58 br_58 wl_2 vdd gnd cell_6t
Xbit_r3_c58 bl_58 br_58 wl_3 vdd gnd cell_6t
Xbit_r4_c58 bl_58 br_58 wl_4 vdd gnd cell_6t
Xbit_r5_c58 bl_58 br_58 wl_5 vdd gnd cell_6t
Xbit_r6_c58 bl_58 br_58 wl_6 vdd gnd cell_6t
Xbit_r7_c58 bl_58 br_58 wl_7 vdd gnd cell_6t
Xbit_r8_c58 bl_58 br_58 wl_8 vdd gnd cell_6t
Xbit_r9_c58 bl_58 br_58 wl_9 vdd gnd cell_6t
Xbit_r10_c58 bl_58 br_58 wl_10 vdd gnd cell_6t
Xbit_r11_c58 bl_58 br_58 wl_11 vdd gnd cell_6t
Xbit_r12_c58 bl_58 br_58 wl_12 vdd gnd cell_6t
Xbit_r13_c58 bl_58 br_58 wl_13 vdd gnd cell_6t
Xbit_r14_c58 bl_58 br_58 wl_14 vdd gnd cell_6t
Xbit_r15_c58 bl_58 br_58 wl_15 vdd gnd cell_6t
Xbit_r16_c58 bl_58 br_58 wl_16 vdd gnd cell_6t
Xbit_r17_c58 bl_58 br_58 wl_17 vdd gnd cell_6t
Xbit_r18_c58 bl_58 br_58 wl_18 vdd gnd cell_6t
Xbit_r19_c58 bl_58 br_58 wl_19 vdd gnd cell_6t
Xbit_r20_c58 bl_58 br_58 wl_20 vdd gnd cell_6t
Xbit_r21_c58 bl_58 br_58 wl_21 vdd gnd cell_6t
Xbit_r22_c58 bl_58 br_58 wl_22 vdd gnd cell_6t
Xbit_r23_c58 bl_58 br_58 wl_23 vdd gnd cell_6t
Xbit_r24_c58 bl_58 br_58 wl_24 vdd gnd cell_6t
Xbit_r25_c58 bl_58 br_58 wl_25 vdd gnd cell_6t
Xbit_r26_c58 bl_58 br_58 wl_26 vdd gnd cell_6t
Xbit_r27_c58 bl_58 br_58 wl_27 vdd gnd cell_6t
Xbit_r28_c58 bl_58 br_58 wl_28 vdd gnd cell_6t
Xbit_r29_c58 bl_58 br_58 wl_29 vdd gnd cell_6t
Xbit_r30_c58 bl_58 br_58 wl_30 vdd gnd cell_6t
Xbit_r31_c58 bl_58 br_58 wl_31 vdd gnd cell_6t
Xbit_r32_c58 bl_58 br_58 wl_32 vdd gnd cell_6t
Xbit_r33_c58 bl_58 br_58 wl_33 vdd gnd cell_6t
Xbit_r34_c58 bl_58 br_58 wl_34 vdd gnd cell_6t
Xbit_r35_c58 bl_58 br_58 wl_35 vdd gnd cell_6t
Xbit_r36_c58 bl_58 br_58 wl_36 vdd gnd cell_6t
Xbit_r37_c58 bl_58 br_58 wl_37 vdd gnd cell_6t
Xbit_r38_c58 bl_58 br_58 wl_38 vdd gnd cell_6t
Xbit_r39_c58 bl_58 br_58 wl_39 vdd gnd cell_6t
Xbit_r40_c58 bl_58 br_58 wl_40 vdd gnd cell_6t
Xbit_r41_c58 bl_58 br_58 wl_41 vdd gnd cell_6t
Xbit_r42_c58 bl_58 br_58 wl_42 vdd gnd cell_6t
Xbit_r43_c58 bl_58 br_58 wl_43 vdd gnd cell_6t
Xbit_r44_c58 bl_58 br_58 wl_44 vdd gnd cell_6t
Xbit_r45_c58 bl_58 br_58 wl_45 vdd gnd cell_6t
Xbit_r46_c58 bl_58 br_58 wl_46 vdd gnd cell_6t
Xbit_r47_c58 bl_58 br_58 wl_47 vdd gnd cell_6t
Xbit_r48_c58 bl_58 br_58 wl_48 vdd gnd cell_6t
Xbit_r49_c58 bl_58 br_58 wl_49 vdd gnd cell_6t
Xbit_r50_c58 bl_58 br_58 wl_50 vdd gnd cell_6t
Xbit_r51_c58 bl_58 br_58 wl_51 vdd gnd cell_6t
Xbit_r52_c58 bl_58 br_58 wl_52 vdd gnd cell_6t
Xbit_r53_c58 bl_58 br_58 wl_53 vdd gnd cell_6t
Xbit_r54_c58 bl_58 br_58 wl_54 vdd gnd cell_6t
Xbit_r55_c58 bl_58 br_58 wl_55 vdd gnd cell_6t
Xbit_r56_c58 bl_58 br_58 wl_56 vdd gnd cell_6t
Xbit_r57_c58 bl_58 br_58 wl_57 vdd gnd cell_6t
Xbit_r58_c58 bl_58 br_58 wl_58 vdd gnd cell_6t
Xbit_r59_c58 bl_58 br_58 wl_59 vdd gnd cell_6t
Xbit_r60_c58 bl_58 br_58 wl_60 vdd gnd cell_6t
Xbit_r61_c58 bl_58 br_58 wl_61 vdd gnd cell_6t
Xbit_r62_c58 bl_58 br_58 wl_62 vdd gnd cell_6t
Xbit_r63_c58 bl_58 br_58 wl_63 vdd gnd cell_6t
Xbit_r64_c58 bl_58 br_58 wl_64 vdd gnd cell_6t
Xbit_r65_c58 bl_58 br_58 wl_65 vdd gnd cell_6t
Xbit_r66_c58 bl_58 br_58 wl_66 vdd gnd cell_6t
Xbit_r67_c58 bl_58 br_58 wl_67 vdd gnd cell_6t
Xbit_r68_c58 bl_58 br_58 wl_68 vdd gnd cell_6t
Xbit_r69_c58 bl_58 br_58 wl_69 vdd gnd cell_6t
Xbit_r70_c58 bl_58 br_58 wl_70 vdd gnd cell_6t
Xbit_r71_c58 bl_58 br_58 wl_71 vdd gnd cell_6t
Xbit_r72_c58 bl_58 br_58 wl_72 vdd gnd cell_6t
Xbit_r73_c58 bl_58 br_58 wl_73 vdd gnd cell_6t
Xbit_r74_c58 bl_58 br_58 wl_74 vdd gnd cell_6t
Xbit_r75_c58 bl_58 br_58 wl_75 vdd gnd cell_6t
Xbit_r76_c58 bl_58 br_58 wl_76 vdd gnd cell_6t
Xbit_r77_c58 bl_58 br_58 wl_77 vdd gnd cell_6t
Xbit_r78_c58 bl_58 br_58 wl_78 vdd gnd cell_6t
Xbit_r79_c58 bl_58 br_58 wl_79 vdd gnd cell_6t
Xbit_r80_c58 bl_58 br_58 wl_80 vdd gnd cell_6t
Xbit_r81_c58 bl_58 br_58 wl_81 vdd gnd cell_6t
Xbit_r82_c58 bl_58 br_58 wl_82 vdd gnd cell_6t
Xbit_r83_c58 bl_58 br_58 wl_83 vdd gnd cell_6t
Xbit_r84_c58 bl_58 br_58 wl_84 vdd gnd cell_6t
Xbit_r85_c58 bl_58 br_58 wl_85 vdd gnd cell_6t
Xbit_r86_c58 bl_58 br_58 wl_86 vdd gnd cell_6t
Xbit_r87_c58 bl_58 br_58 wl_87 vdd gnd cell_6t
Xbit_r88_c58 bl_58 br_58 wl_88 vdd gnd cell_6t
Xbit_r89_c58 bl_58 br_58 wl_89 vdd gnd cell_6t
Xbit_r90_c58 bl_58 br_58 wl_90 vdd gnd cell_6t
Xbit_r91_c58 bl_58 br_58 wl_91 vdd gnd cell_6t
Xbit_r92_c58 bl_58 br_58 wl_92 vdd gnd cell_6t
Xbit_r93_c58 bl_58 br_58 wl_93 vdd gnd cell_6t
Xbit_r94_c58 bl_58 br_58 wl_94 vdd gnd cell_6t
Xbit_r95_c58 bl_58 br_58 wl_95 vdd gnd cell_6t
Xbit_r96_c58 bl_58 br_58 wl_96 vdd gnd cell_6t
Xbit_r97_c58 bl_58 br_58 wl_97 vdd gnd cell_6t
Xbit_r98_c58 bl_58 br_58 wl_98 vdd gnd cell_6t
Xbit_r99_c58 bl_58 br_58 wl_99 vdd gnd cell_6t
Xbit_r100_c58 bl_58 br_58 wl_100 vdd gnd cell_6t
Xbit_r101_c58 bl_58 br_58 wl_101 vdd gnd cell_6t
Xbit_r102_c58 bl_58 br_58 wl_102 vdd gnd cell_6t
Xbit_r103_c58 bl_58 br_58 wl_103 vdd gnd cell_6t
Xbit_r104_c58 bl_58 br_58 wl_104 vdd gnd cell_6t
Xbit_r105_c58 bl_58 br_58 wl_105 vdd gnd cell_6t
Xbit_r106_c58 bl_58 br_58 wl_106 vdd gnd cell_6t
Xbit_r107_c58 bl_58 br_58 wl_107 vdd gnd cell_6t
Xbit_r108_c58 bl_58 br_58 wl_108 vdd gnd cell_6t
Xbit_r109_c58 bl_58 br_58 wl_109 vdd gnd cell_6t
Xbit_r110_c58 bl_58 br_58 wl_110 vdd gnd cell_6t
Xbit_r111_c58 bl_58 br_58 wl_111 vdd gnd cell_6t
Xbit_r112_c58 bl_58 br_58 wl_112 vdd gnd cell_6t
Xbit_r113_c58 bl_58 br_58 wl_113 vdd gnd cell_6t
Xbit_r114_c58 bl_58 br_58 wl_114 vdd gnd cell_6t
Xbit_r115_c58 bl_58 br_58 wl_115 vdd gnd cell_6t
Xbit_r116_c58 bl_58 br_58 wl_116 vdd gnd cell_6t
Xbit_r117_c58 bl_58 br_58 wl_117 vdd gnd cell_6t
Xbit_r118_c58 bl_58 br_58 wl_118 vdd gnd cell_6t
Xbit_r119_c58 bl_58 br_58 wl_119 vdd gnd cell_6t
Xbit_r120_c58 bl_58 br_58 wl_120 vdd gnd cell_6t
Xbit_r121_c58 bl_58 br_58 wl_121 vdd gnd cell_6t
Xbit_r122_c58 bl_58 br_58 wl_122 vdd gnd cell_6t
Xbit_r123_c58 bl_58 br_58 wl_123 vdd gnd cell_6t
Xbit_r124_c58 bl_58 br_58 wl_124 vdd gnd cell_6t
Xbit_r125_c58 bl_58 br_58 wl_125 vdd gnd cell_6t
Xbit_r126_c58 bl_58 br_58 wl_126 vdd gnd cell_6t
Xbit_r127_c58 bl_58 br_58 wl_127 vdd gnd cell_6t
Xbit_r0_c59 bl_59 br_59 wl_0 vdd gnd cell_6t
Xbit_r1_c59 bl_59 br_59 wl_1 vdd gnd cell_6t
Xbit_r2_c59 bl_59 br_59 wl_2 vdd gnd cell_6t
Xbit_r3_c59 bl_59 br_59 wl_3 vdd gnd cell_6t
Xbit_r4_c59 bl_59 br_59 wl_4 vdd gnd cell_6t
Xbit_r5_c59 bl_59 br_59 wl_5 vdd gnd cell_6t
Xbit_r6_c59 bl_59 br_59 wl_6 vdd gnd cell_6t
Xbit_r7_c59 bl_59 br_59 wl_7 vdd gnd cell_6t
Xbit_r8_c59 bl_59 br_59 wl_8 vdd gnd cell_6t
Xbit_r9_c59 bl_59 br_59 wl_9 vdd gnd cell_6t
Xbit_r10_c59 bl_59 br_59 wl_10 vdd gnd cell_6t
Xbit_r11_c59 bl_59 br_59 wl_11 vdd gnd cell_6t
Xbit_r12_c59 bl_59 br_59 wl_12 vdd gnd cell_6t
Xbit_r13_c59 bl_59 br_59 wl_13 vdd gnd cell_6t
Xbit_r14_c59 bl_59 br_59 wl_14 vdd gnd cell_6t
Xbit_r15_c59 bl_59 br_59 wl_15 vdd gnd cell_6t
Xbit_r16_c59 bl_59 br_59 wl_16 vdd gnd cell_6t
Xbit_r17_c59 bl_59 br_59 wl_17 vdd gnd cell_6t
Xbit_r18_c59 bl_59 br_59 wl_18 vdd gnd cell_6t
Xbit_r19_c59 bl_59 br_59 wl_19 vdd gnd cell_6t
Xbit_r20_c59 bl_59 br_59 wl_20 vdd gnd cell_6t
Xbit_r21_c59 bl_59 br_59 wl_21 vdd gnd cell_6t
Xbit_r22_c59 bl_59 br_59 wl_22 vdd gnd cell_6t
Xbit_r23_c59 bl_59 br_59 wl_23 vdd gnd cell_6t
Xbit_r24_c59 bl_59 br_59 wl_24 vdd gnd cell_6t
Xbit_r25_c59 bl_59 br_59 wl_25 vdd gnd cell_6t
Xbit_r26_c59 bl_59 br_59 wl_26 vdd gnd cell_6t
Xbit_r27_c59 bl_59 br_59 wl_27 vdd gnd cell_6t
Xbit_r28_c59 bl_59 br_59 wl_28 vdd gnd cell_6t
Xbit_r29_c59 bl_59 br_59 wl_29 vdd gnd cell_6t
Xbit_r30_c59 bl_59 br_59 wl_30 vdd gnd cell_6t
Xbit_r31_c59 bl_59 br_59 wl_31 vdd gnd cell_6t
Xbit_r32_c59 bl_59 br_59 wl_32 vdd gnd cell_6t
Xbit_r33_c59 bl_59 br_59 wl_33 vdd gnd cell_6t
Xbit_r34_c59 bl_59 br_59 wl_34 vdd gnd cell_6t
Xbit_r35_c59 bl_59 br_59 wl_35 vdd gnd cell_6t
Xbit_r36_c59 bl_59 br_59 wl_36 vdd gnd cell_6t
Xbit_r37_c59 bl_59 br_59 wl_37 vdd gnd cell_6t
Xbit_r38_c59 bl_59 br_59 wl_38 vdd gnd cell_6t
Xbit_r39_c59 bl_59 br_59 wl_39 vdd gnd cell_6t
Xbit_r40_c59 bl_59 br_59 wl_40 vdd gnd cell_6t
Xbit_r41_c59 bl_59 br_59 wl_41 vdd gnd cell_6t
Xbit_r42_c59 bl_59 br_59 wl_42 vdd gnd cell_6t
Xbit_r43_c59 bl_59 br_59 wl_43 vdd gnd cell_6t
Xbit_r44_c59 bl_59 br_59 wl_44 vdd gnd cell_6t
Xbit_r45_c59 bl_59 br_59 wl_45 vdd gnd cell_6t
Xbit_r46_c59 bl_59 br_59 wl_46 vdd gnd cell_6t
Xbit_r47_c59 bl_59 br_59 wl_47 vdd gnd cell_6t
Xbit_r48_c59 bl_59 br_59 wl_48 vdd gnd cell_6t
Xbit_r49_c59 bl_59 br_59 wl_49 vdd gnd cell_6t
Xbit_r50_c59 bl_59 br_59 wl_50 vdd gnd cell_6t
Xbit_r51_c59 bl_59 br_59 wl_51 vdd gnd cell_6t
Xbit_r52_c59 bl_59 br_59 wl_52 vdd gnd cell_6t
Xbit_r53_c59 bl_59 br_59 wl_53 vdd gnd cell_6t
Xbit_r54_c59 bl_59 br_59 wl_54 vdd gnd cell_6t
Xbit_r55_c59 bl_59 br_59 wl_55 vdd gnd cell_6t
Xbit_r56_c59 bl_59 br_59 wl_56 vdd gnd cell_6t
Xbit_r57_c59 bl_59 br_59 wl_57 vdd gnd cell_6t
Xbit_r58_c59 bl_59 br_59 wl_58 vdd gnd cell_6t
Xbit_r59_c59 bl_59 br_59 wl_59 vdd gnd cell_6t
Xbit_r60_c59 bl_59 br_59 wl_60 vdd gnd cell_6t
Xbit_r61_c59 bl_59 br_59 wl_61 vdd gnd cell_6t
Xbit_r62_c59 bl_59 br_59 wl_62 vdd gnd cell_6t
Xbit_r63_c59 bl_59 br_59 wl_63 vdd gnd cell_6t
Xbit_r64_c59 bl_59 br_59 wl_64 vdd gnd cell_6t
Xbit_r65_c59 bl_59 br_59 wl_65 vdd gnd cell_6t
Xbit_r66_c59 bl_59 br_59 wl_66 vdd gnd cell_6t
Xbit_r67_c59 bl_59 br_59 wl_67 vdd gnd cell_6t
Xbit_r68_c59 bl_59 br_59 wl_68 vdd gnd cell_6t
Xbit_r69_c59 bl_59 br_59 wl_69 vdd gnd cell_6t
Xbit_r70_c59 bl_59 br_59 wl_70 vdd gnd cell_6t
Xbit_r71_c59 bl_59 br_59 wl_71 vdd gnd cell_6t
Xbit_r72_c59 bl_59 br_59 wl_72 vdd gnd cell_6t
Xbit_r73_c59 bl_59 br_59 wl_73 vdd gnd cell_6t
Xbit_r74_c59 bl_59 br_59 wl_74 vdd gnd cell_6t
Xbit_r75_c59 bl_59 br_59 wl_75 vdd gnd cell_6t
Xbit_r76_c59 bl_59 br_59 wl_76 vdd gnd cell_6t
Xbit_r77_c59 bl_59 br_59 wl_77 vdd gnd cell_6t
Xbit_r78_c59 bl_59 br_59 wl_78 vdd gnd cell_6t
Xbit_r79_c59 bl_59 br_59 wl_79 vdd gnd cell_6t
Xbit_r80_c59 bl_59 br_59 wl_80 vdd gnd cell_6t
Xbit_r81_c59 bl_59 br_59 wl_81 vdd gnd cell_6t
Xbit_r82_c59 bl_59 br_59 wl_82 vdd gnd cell_6t
Xbit_r83_c59 bl_59 br_59 wl_83 vdd gnd cell_6t
Xbit_r84_c59 bl_59 br_59 wl_84 vdd gnd cell_6t
Xbit_r85_c59 bl_59 br_59 wl_85 vdd gnd cell_6t
Xbit_r86_c59 bl_59 br_59 wl_86 vdd gnd cell_6t
Xbit_r87_c59 bl_59 br_59 wl_87 vdd gnd cell_6t
Xbit_r88_c59 bl_59 br_59 wl_88 vdd gnd cell_6t
Xbit_r89_c59 bl_59 br_59 wl_89 vdd gnd cell_6t
Xbit_r90_c59 bl_59 br_59 wl_90 vdd gnd cell_6t
Xbit_r91_c59 bl_59 br_59 wl_91 vdd gnd cell_6t
Xbit_r92_c59 bl_59 br_59 wl_92 vdd gnd cell_6t
Xbit_r93_c59 bl_59 br_59 wl_93 vdd gnd cell_6t
Xbit_r94_c59 bl_59 br_59 wl_94 vdd gnd cell_6t
Xbit_r95_c59 bl_59 br_59 wl_95 vdd gnd cell_6t
Xbit_r96_c59 bl_59 br_59 wl_96 vdd gnd cell_6t
Xbit_r97_c59 bl_59 br_59 wl_97 vdd gnd cell_6t
Xbit_r98_c59 bl_59 br_59 wl_98 vdd gnd cell_6t
Xbit_r99_c59 bl_59 br_59 wl_99 vdd gnd cell_6t
Xbit_r100_c59 bl_59 br_59 wl_100 vdd gnd cell_6t
Xbit_r101_c59 bl_59 br_59 wl_101 vdd gnd cell_6t
Xbit_r102_c59 bl_59 br_59 wl_102 vdd gnd cell_6t
Xbit_r103_c59 bl_59 br_59 wl_103 vdd gnd cell_6t
Xbit_r104_c59 bl_59 br_59 wl_104 vdd gnd cell_6t
Xbit_r105_c59 bl_59 br_59 wl_105 vdd gnd cell_6t
Xbit_r106_c59 bl_59 br_59 wl_106 vdd gnd cell_6t
Xbit_r107_c59 bl_59 br_59 wl_107 vdd gnd cell_6t
Xbit_r108_c59 bl_59 br_59 wl_108 vdd gnd cell_6t
Xbit_r109_c59 bl_59 br_59 wl_109 vdd gnd cell_6t
Xbit_r110_c59 bl_59 br_59 wl_110 vdd gnd cell_6t
Xbit_r111_c59 bl_59 br_59 wl_111 vdd gnd cell_6t
Xbit_r112_c59 bl_59 br_59 wl_112 vdd gnd cell_6t
Xbit_r113_c59 bl_59 br_59 wl_113 vdd gnd cell_6t
Xbit_r114_c59 bl_59 br_59 wl_114 vdd gnd cell_6t
Xbit_r115_c59 bl_59 br_59 wl_115 vdd gnd cell_6t
Xbit_r116_c59 bl_59 br_59 wl_116 vdd gnd cell_6t
Xbit_r117_c59 bl_59 br_59 wl_117 vdd gnd cell_6t
Xbit_r118_c59 bl_59 br_59 wl_118 vdd gnd cell_6t
Xbit_r119_c59 bl_59 br_59 wl_119 vdd gnd cell_6t
Xbit_r120_c59 bl_59 br_59 wl_120 vdd gnd cell_6t
Xbit_r121_c59 bl_59 br_59 wl_121 vdd gnd cell_6t
Xbit_r122_c59 bl_59 br_59 wl_122 vdd gnd cell_6t
Xbit_r123_c59 bl_59 br_59 wl_123 vdd gnd cell_6t
Xbit_r124_c59 bl_59 br_59 wl_124 vdd gnd cell_6t
Xbit_r125_c59 bl_59 br_59 wl_125 vdd gnd cell_6t
Xbit_r126_c59 bl_59 br_59 wl_126 vdd gnd cell_6t
Xbit_r127_c59 bl_59 br_59 wl_127 vdd gnd cell_6t
Xbit_r0_c60 bl_60 br_60 wl_0 vdd gnd cell_6t
Xbit_r1_c60 bl_60 br_60 wl_1 vdd gnd cell_6t
Xbit_r2_c60 bl_60 br_60 wl_2 vdd gnd cell_6t
Xbit_r3_c60 bl_60 br_60 wl_3 vdd gnd cell_6t
Xbit_r4_c60 bl_60 br_60 wl_4 vdd gnd cell_6t
Xbit_r5_c60 bl_60 br_60 wl_5 vdd gnd cell_6t
Xbit_r6_c60 bl_60 br_60 wl_6 vdd gnd cell_6t
Xbit_r7_c60 bl_60 br_60 wl_7 vdd gnd cell_6t
Xbit_r8_c60 bl_60 br_60 wl_8 vdd gnd cell_6t
Xbit_r9_c60 bl_60 br_60 wl_9 vdd gnd cell_6t
Xbit_r10_c60 bl_60 br_60 wl_10 vdd gnd cell_6t
Xbit_r11_c60 bl_60 br_60 wl_11 vdd gnd cell_6t
Xbit_r12_c60 bl_60 br_60 wl_12 vdd gnd cell_6t
Xbit_r13_c60 bl_60 br_60 wl_13 vdd gnd cell_6t
Xbit_r14_c60 bl_60 br_60 wl_14 vdd gnd cell_6t
Xbit_r15_c60 bl_60 br_60 wl_15 vdd gnd cell_6t
Xbit_r16_c60 bl_60 br_60 wl_16 vdd gnd cell_6t
Xbit_r17_c60 bl_60 br_60 wl_17 vdd gnd cell_6t
Xbit_r18_c60 bl_60 br_60 wl_18 vdd gnd cell_6t
Xbit_r19_c60 bl_60 br_60 wl_19 vdd gnd cell_6t
Xbit_r20_c60 bl_60 br_60 wl_20 vdd gnd cell_6t
Xbit_r21_c60 bl_60 br_60 wl_21 vdd gnd cell_6t
Xbit_r22_c60 bl_60 br_60 wl_22 vdd gnd cell_6t
Xbit_r23_c60 bl_60 br_60 wl_23 vdd gnd cell_6t
Xbit_r24_c60 bl_60 br_60 wl_24 vdd gnd cell_6t
Xbit_r25_c60 bl_60 br_60 wl_25 vdd gnd cell_6t
Xbit_r26_c60 bl_60 br_60 wl_26 vdd gnd cell_6t
Xbit_r27_c60 bl_60 br_60 wl_27 vdd gnd cell_6t
Xbit_r28_c60 bl_60 br_60 wl_28 vdd gnd cell_6t
Xbit_r29_c60 bl_60 br_60 wl_29 vdd gnd cell_6t
Xbit_r30_c60 bl_60 br_60 wl_30 vdd gnd cell_6t
Xbit_r31_c60 bl_60 br_60 wl_31 vdd gnd cell_6t
Xbit_r32_c60 bl_60 br_60 wl_32 vdd gnd cell_6t
Xbit_r33_c60 bl_60 br_60 wl_33 vdd gnd cell_6t
Xbit_r34_c60 bl_60 br_60 wl_34 vdd gnd cell_6t
Xbit_r35_c60 bl_60 br_60 wl_35 vdd gnd cell_6t
Xbit_r36_c60 bl_60 br_60 wl_36 vdd gnd cell_6t
Xbit_r37_c60 bl_60 br_60 wl_37 vdd gnd cell_6t
Xbit_r38_c60 bl_60 br_60 wl_38 vdd gnd cell_6t
Xbit_r39_c60 bl_60 br_60 wl_39 vdd gnd cell_6t
Xbit_r40_c60 bl_60 br_60 wl_40 vdd gnd cell_6t
Xbit_r41_c60 bl_60 br_60 wl_41 vdd gnd cell_6t
Xbit_r42_c60 bl_60 br_60 wl_42 vdd gnd cell_6t
Xbit_r43_c60 bl_60 br_60 wl_43 vdd gnd cell_6t
Xbit_r44_c60 bl_60 br_60 wl_44 vdd gnd cell_6t
Xbit_r45_c60 bl_60 br_60 wl_45 vdd gnd cell_6t
Xbit_r46_c60 bl_60 br_60 wl_46 vdd gnd cell_6t
Xbit_r47_c60 bl_60 br_60 wl_47 vdd gnd cell_6t
Xbit_r48_c60 bl_60 br_60 wl_48 vdd gnd cell_6t
Xbit_r49_c60 bl_60 br_60 wl_49 vdd gnd cell_6t
Xbit_r50_c60 bl_60 br_60 wl_50 vdd gnd cell_6t
Xbit_r51_c60 bl_60 br_60 wl_51 vdd gnd cell_6t
Xbit_r52_c60 bl_60 br_60 wl_52 vdd gnd cell_6t
Xbit_r53_c60 bl_60 br_60 wl_53 vdd gnd cell_6t
Xbit_r54_c60 bl_60 br_60 wl_54 vdd gnd cell_6t
Xbit_r55_c60 bl_60 br_60 wl_55 vdd gnd cell_6t
Xbit_r56_c60 bl_60 br_60 wl_56 vdd gnd cell_6t
Xbit_r57_c60 bl_60 br_60 wl_57 vdd gnd cell_6t
Xbit_r58_c60 bl_60 br_60 wl_58 vdd gnd cell_6t
Xbit_r59_c60 bl_60 br_60 wl_59 vdd gnd cell_6t
Xbit_r60_c60 bl_60 br_60 wl_60 vdd gnd cell_6t
Xbit_r61_c60 bl_60 br_60 wl_61 vdd gnd cell_6t
Xbit_r62_c60 bl_60 br_60 wl_62 vdd gnd cell_6t
Xbit_r63_c60 bl_60 br_60 wl_63 vdd gnd cell_6t
Xbit_r64_c60 bl_60 br_60 wl_64 vdd gnd cell_6t
Xbit_r65_c60 bl_60 br_60 wl_65 vdd gnd cell_6t
Xbit_r66_c60 bl_60 br_60 wl_66 vdd gnd cell_6t
Xbit_r67_c60 bl_60 br_60 wl_67 vdd gnd cell_6t
Xbit_r68_c60 bl_60 br_60 wl_68 vdd gnd cell_6t
Xbit_r69_c60 bl_60 br_60 wl_69 vdd gnd cell_6t
Xbit_r70_c60 bl_60 br_60 wl_70 vdd gnd cell_6t
Xbit_r71_c60 bl_60 br_60 wl_71 vdd gnd cell_6t
Xbit_r72_c60 bl_60 br_60 wl_72 vdd gnd cell_6t
Xbit_r73_c60 bl_60 br_60 wl_73 vdd gnd cell_6t
Xbit_r74_c60 bl_60 br_60 wl_74 vdd gnd cell_6t
Xbit_r75_c60 bl_60 br_60 wl_75 vdd gnd cell_6t
Xbit_r76_c60 bl_60 br_60 wl_76 vdd gnd cell_6t
Xbit_r77_c60 bl_60 br_60 wl_77 vdd gnd cell_6t
Xbit_r78_c60 bl_60 br_60 wl_78 vdd gnd cell_6t
Xbit_r79_c60 bl_60 br_60 wl_79 vdd gnd cell_6t
Xbit_r80_c60 bl_60 br_60 wl_80 vdd gnd cell_6t
Xbit_r81_c60 bl_60 br_60 wl_81 vdd gnd cell_6t
Xbit_r82_c60 bl_60 br_60 wl_82 vdd gnd cell_6t
Xbit_r83_c60 bl_60 br_60 wl_83 vdd gnd cell_6t
Xbit_r84_c60 bl_60 br_60 wl_84 vdd gnd cell_6t
Xbit_r85_c60 bl_60 br_60 wl_85 vdd gnd cell_6t
Xbit_r86_c60 bl_60 br_60 wl_86 vdd gnd cell_6t
Xbit_r87_c60 bl_60 br_60 wl_87 vdd gnd cell_6t
Xbit_r88_c60 bl_60 br_60 wl_88 vdd gnd cell_6t
Xbit_r89_c60 bl_60 br_60 wl_89 vdd gnd cell_6t
Xbit_r90_c60 bl_60 br_60 wl_90 vdd gnd cell_6t
Xbit_r91_c60 bl_60 br_60 wl_91 vdd gnd cell_6t
Xbit_r92_c60 bl_60 br_60 wl_92 vdd gnd cell_6t
Xbit_r93_c60 bl_60 br_60 wl_93 vdd gnd cell_6t
Xbit_r94_c60 bl_60 br_60 wl_94 vdd gnd cell_6t
Xbit_r95_c60 bl_60 br_60 wl_95 vdd gnd cell_6t
Xbit_r96_c60 bl_60 br_60 wl_96 vdd gnd cell_6t
Xbit_r97_c60 bl_60 br_60 wl_97 vdd gnd cell_6t
Xbit_r98_c60 bl_60 br_60 wl_98 vdd gnd cell_6t
Xbit_r99_c60 bl_60 br_60 wl_99 vdd gnd cell_6t
Xbit_r100_c60 bl_60 br_60 wl_100 vdd gnd cell_6t
Xbit_r101_c60 bl_60 br_60 wl_101 vdd gnd cell_6t
Xbit_r102_c60 bl_60 br_60 wl_102 vdd gnd cell_6t
Xbit_r103_c60 bl_60 br_60 wl_103 vdd gnd cell_6t
Xbit_r104_c60 bl_60 br_60 wl_104 vdd gnd cell_6t
Xbit_r105_c60 bl_60 br_60 wl_105 vdd gnd cell_6t
Xbit_r106_c60 bl_60 br_60 wl_106 vdd gnd cell_6t
Xbit_r107_c60 bl_60 br_60 wl_107 vdd gnd cell_6t
Xbit_r108_c60 bl_60 br_60 wl_108 vdd gnd cell_6t
Xbit_r109_c60 bl_60 br_60 wl_109 vdd gnd cell_6t
Xbit_r110_c60 bl_60 br_60 wl_110 vdd gnd cell_6t
Xbit_r111_c60 bl_60 br_60 wl_111 vdd gnd cell_6t
Xbit_r112_c60 bl_60 br_60 wl_112 vdd gnd cell_6t
Xbit_r113_c60 bl_60 br_60 wl_113 vdd gnd cell_6t
Xbit_r114_c60 bl_60 br_60 wl_114 vdd gnd cell_6t
Xbit_r115_c60 bl_60 br_60 wl_115 vdd gnd cell_6t
Xbit_r116_c60 bl_60 br_60 wl_116 vdd gnd cell_6t
Xbit_r117_c60 bl_60 br_60 wl_117 vdd gnd cell_6t
Xbit_r118_c60 bl_60 br_60 wl_118 vdd gnd cell_6t
Xbit_r119_c60 bl_60 br_60 wl_119 vdd gnd cell_6t
Xbit_r120_c60 bl_60 br_60 wl_120 vdd gnd cell_6t
Xbit_r121_c60 bl_60 br_60 wl_121 vdd gnd cell_6t
Xbit_r122_c60 bl_60 br_60 wl_122 vdd gnd cell_6t
Xbit_r123_c60 bl_60 br_60 wl_123 vdd gnd cell_6t
Xbit_r124_c60 bl_60 br_60 wl_124 vdd gnd cell_6t
Xbit_r125_c60 bl_60 br_60 wl_125 vdd gnd cell_6t
Xbit_r126_c60 bl_60 br_60 wl_126 vdd gnd cell_6t
Xbit_r127_c60 bl_60 br_60 wl_127 vdd gnd cell_6t
Xbit_r0_c61 bl_61 br_61 wl_0 vdd gnd cell_6t
Xbit_r1_c61 bl_61 br_61 wl_1 vdd gnd cell_6t
Xbit_r2_c61 bl_61 br_61 wl_2 vdd gnd cell_6t
Xbit_r3_c61 bl_61 br_61 wl_3 vdd gnd cell_6t
Xbit_r4_c61 bl_61 br_61 wl_4 vdd gnd cell_6t
Xbit_r5_c61 bl_61 br_61 wl_5 vdd gnd cell_6t
Xbit_r6_c61 bl_61 br_61 wl_6 vdd gnd cell_6t
Xbit_r7_c61 bl_61 br_61 wl_7 vdd gnd cell_6t
Xbit_r8_c61 bl_61 br_61 wl_8 vdd gnd cell_6t
Xbit_r9_c61 bl_61 br_61 wl_9 vdd gnd cell_6t
Xbit_r10_c61 bl_61 br_61 wl_10 vdd gnd cell_6t
Xbit_r11_c61 bl_61 br_61 wl_11 vdd gnd cell_6t
Xbit_r12_c61 bl_61 br_61 wl_12 vdd gnd cell_6t
Xbit_r13_c61 bl_61 br_61 wl_13 vdd gnd cell_6t
Xbit_r14_c61 bl_61 br_61 wl_14 vdd gnd cell_6t
Xbit_r15_c61 bl_61 br_61 wl_15 vdd gnd cell_6t
Xbit_r16_c61 bl_61 br_61 wl_16 vdd gnd cell_6t
Xbit_r17_c61 bl_61 br_61 wl_17 vdd gnd cell_6t
Xbit_r18_c61 bl_61 br_61 wl_18 vdd gnd cell_6t
Xbit_r19_c61 bl_61 br_61 wl_19 vdd gnd cell_6t
Xbit_r20_c61 bl_61 br_61 wl_20 vdd gnd cell_6t
Xbit_r21_c61 bl_61 br_61 wl_21 vdd gnd cell_6t
Xbit_r22_c61 bl_61 br_61 wl_22 vdd gnd cell_6t
Xbit_r23_c61 bl_61 br_61 wl_23 vdd gnd cell_6t
Xbit_r24_c61 bl_61 br_61 wl_24 vdd gnd cell_6t
Xbit_r25_c61 bl_61 br_61 wl_25 vdd gnd cell_6t
Xbit_r26_c61 bl_61 br_61 wl_26 vdd gnd cell_6t
Xbit_r27_c61 bl_61 br_61 wl_27 vdd gnd cell_6t
Xbit_r28_c61 bl_61 br_61 wl_28 vdd gnd cell_6t
Xbit_r29_c61 bl_61 br_61 wl_29 vdd gnd cell_6t
Xbit_r30_c61 bl_61 br_61 wl_30 vdd gnd cell_6t
Xbit_r31_c61 bl_61 br_61 wl_31 vdd gnd cell_6t
Xbit_r32_c61 bl_61 br_61 wl_32 vdd gnd cell_6t
Xbit_r33_c61 bl_61 br_61 wl_33 vdd gnd cell_6t
Xbit_r34_c61 bl_61 br_61 wl_34 vdd gnd cell_6t
Xbit_r35_c61 bl_61 br_61 wl_35 vdd gnd cell_6t
Xbit_r36_c61 bl_61 br_61 wl_36 vdd gnd cell_6t
Xbit_r37_c61 bl_61 br_61 wl_37 vdd gnd cell_6t
Xbit_r38_c61 bl_61 br_61 wl_38 vdd gnd cell_6t
Xbit_r39_c61 bl_61 br_61 wl_39 vdd gnd cell_6t
Xbit_r40_c61 bl_61 br_61 wl_40 vdd gnd cell_6t
Xbit_r41_c61 bl_61 br_61 wl_41 vdd gnd cell_6t
Xbit_r42_c61 bl_61 br_61 wl_42 vdd gnd cell_6t
Xbit_r43_c61 bl_61 br_61 wl_43 vdd gnd cell_6t
Xbit_r44_c61 bl_61 br_61 wl_44 vdd gnd cell_6t
Xbit_r45_c61 bl_61 br_61 wl_45 vdd gnd cell_6t
Xbit_r46_c61 bl_61 br_61 wl_46 vdd gnd cell_6t
Xbit_r47_c61 bl_61 br_61 wl_47 vdd gnd cell_6t
Xbit_r48_c61 bl_61 br_61 wl_48 vdd gnd cell_6t
Xbit_r49_c61 bl_61 br_61 wl_49 vdd gnd cell_6t
Xbit_r50_c61 bl_61 br_61 wl_50 vdd gnd cell_6t
Xbit_r51_c61 bl_61 br_61 wl_51 vdd gnd cell_6t
Xbit_r52_c61 bl_61 br_61 wl_52 vdd gnd cell_6t
Xbit_r53_c61 bl_61 br_61 wl_53 vdd gnd cell_6t
Xbit_r54_c61 bl_61 br_61 wl_54 vdd gnd cell_6t
Xbit_r55_c61 bl_61 br_61 wl_55 vdd gnd cell_6t
Xbit_r56_c61 bl_61 br_61 wl_56 vdd gnd cell_6t
Xbit_r57_c61 bl_61 br_61 wl_57 vdd gnd cell_6t
Xbit_r58_c61 bl_61 br_61 wl_58 vdd gnd cell_6t
Xbit_r59_c61 bl_61 br_61 wl_59 vdd gnd cell_6t
Xbit_r60_c61 bl_61 br_61 wl_60 vdd gnd cell_6t
Xbit_r61_c61 bl_61 br_61 wl_61 vdd gnd cell_6t
Xbit_r62_c61 bl_61 br_61 wl_62 vdd gnd cell_6t
Xbit_r63_c61 bl_61 br_61 wl_63 vdd gnd cell_6t
Xbit_r64_c61 bl_61 br_61 wl_64 vdd gnd cell_6t
Xbit_r65_c61 bl_61 br_61 wl_65 vdd gnd cell_6t
Xbit_r66_c61 bl_61 br_61 wl_66 vdd gnd cell_6t
Xbit_r67_c61 bl_61 br_61 wl_67 vdd gnd cell_6t
Xbit_r68_c61 bl_61 br_61 wl_68 vdd gnd cell_6t
Xbit_r69_c61 bl_61 br_61 wl_69 vdd gnd cell_6t
Xbit_r70_c61 bl_61 br_61 wl_70 vdd gnd cell_6t
Xbit_r71_c61 bl_61 br_61 wl_71 vdd gnd cell_6t
Xbit_r72_c61 bl_61 br_61 wl_72 vdd gnd cell_6t
Xbit_r73_c61 bl_61 br_61 wl_73 vdd gnd cell_6t
Xbit_r74_c61 bl_61 br_61 wl_74 vdd gnd cell_6t
Xbit_r75_c61 bl_61 br_61 wl_75 vdd gnd cell_6t
Xbit_r76_c61 bl_61 br_61 wl_76 vdd gnd cell_6t
Xbit_r77_c61 bl_61 br_61 wl_77 vdd gnd cell_6t
Xbit_r78_c61 bl_61 br_61 wl_78 vdd gnd cell_6t
Xbit_r79_c61 bl_61 br_61 wl_79 vdd gnd cell_6t
Xbit_r80_c61 bl_61 br_61 wl_80 vdd gnd cell_6t
Xbit_r81_c61 bl_61 br_61 wl_81 vdd gnd cell_6t
Xbit_r82_c61 bl_61 br_61 wl_82 vdd gnd cell_6t
Xbit_r83_c61 bl_61 br_61 wl_83 vdd gnd cell_6t
Xbit_r84_c61 bl_61 br_61 wl_84 vdd gnd cell_6t
Xbit_r85_c61 bl_61 br_61 wl_85 vdd gnd cell_6t
Xbit_r86_c61 bl_61 br_61 wl_86 vdd gnd cell_6t
Xbit_r87_c61 bl_61 br_61 wl_87 vdd gnd cell_6t
Xbit_r88_c61 bl_61 br_61 wl_88 vdd gnd cell_6t
Xbit_r89_c61 bl_61 br_61 wl_89 vdd gnd cell_6t
Xbit_r90_c61 bl_61 br_61 wl_90 vdd gnd cell_6t
Xbit_r91_c61 bl_61 br_61 wl_91 vdd gnd cell_6t
Xbit_r92_c61 bl_61 br_61 wl_92 vdd gnd cell_6t
Xbit_r93_c61 bl_61 br_61 wl_93 vdd gnd cell_6t
Xbit_r94_c61 bl_61 br_61 wl_94 vdd gnd cell_6t
Xbit_r95_c61 bl_61 br_61 wl_95 vdd gnd cell_6t
Xbit_r96_c61 bl_61 br_61 wl_96 vdd gnd cell_6t
Xbit_r97_c61 bl_61 br_61 wl_97 vdd gnd cell_6t
Xbit_r98_c61 bl_61 br_61 wl_98 vdd gnd cell_6t
Xbit_r99_c61 bl_61 br_61 wl_99 vdd gnd cell_6t
Xbit_r100_c61 bl_61 br_61 wl_100 vdd gnd cell_6t
Xbit_r101_c61 bl_61 br_61 wl_101 vdd gnd cell_6t
Xbit_r102_c61 bl_61 br_61 wl_102 vdd gnd cell_6t
Xbit_r103_c61 bl_61 br_61 wl_103 vdd gnd cell_6t
Xbit_r104_c61 bl_61 br_61 wl_104 vdd gnd cell_6t
Xbit_r105_c61 bl_61 br_61 wl_105 vdd gnd cell_6t
Xbit_r106_c61 bl_61 br_61 wl_106 vdd gnd cell_6t
Xbit_r107_c61 bl_61 br_61 wl_107 vdd gnd cell_6t
Xbit_r108_c61 bl_61 br_61 wl_108 vdd gnd cell_6t
Xbit_r109_c61 bl_61 br_61 wl_109 vdd gnd cell_6t
Xbit_r110_c61 bl_61 br_61 wl_110 vdd gnd cell_6t
Xbit_r111_c61 bl_61 br_61 wl_111 vdd gnd cell_6t
Xbit_r112_c61 bl_61 br_61 wl_112 vdd gnd cell_6t
Xbit_r113_c61 bl_61 br_61 wl_113 vdd gnd cell_6t
Xbit_r114_c61 bl_61 br_61 wl_114 vdd gnd cell_6t
Xbit_r115_c61 bl_61 br_61 wl_115 vdd gnd cell_6t
Xbit_r116_c61 bl_61 br_61 wl_116 vdd gnd cell_6t
Xbit_r117_c61 bl_61 br_61 wl_117 vdd gnd cell_6t
Xbit_r118_c61 bl_61 br_61 wl_118 vdd gnd cell_6t
Xbit_r119_c61 bl_61 br_61 wl_119 vdd gnd cell_6t
Xbit_r120_c61 bl_61 br_61 wl_120 vdd gnd cell_6t
Xbit_r121_c61 bl_61 br_61 wl_121 vdd gnd cell_6t
Xbit_r122_c61 bl_61 br_61 wl_122 vdd gnd cell_6t
Xbit_r123_c61 bl_61 br_61 wl_123 vdd gnd cell_6t
Xbit_r124_c61 bl_61 br_61 wl_124 vdd gnd cell_6t
Xbit_r125_c61 bl_61 br_61 wl_125 vdd gnd cell_6t
Xbit_r126_c61 bl_61 br_61 wl_126 vdd gnd cell_6t
Xbit_r127_c61 bl_61 br_61 wl_127 vdd gnd cell_6t
Xbit_r0_c62 bl_62 br_62 wl_0 vdd gnd cell_6t
Xbit_r1_c62 bl_62 br_62 wl_1 vdd gnd cell_6t
Xbit_r2_c62 bl_62 br_62 wl_2 vdd gnd cell_6t
Xbit_r3_c62 bl_62 br_62 wl_3 vdd gnd cell_6t
Xbit_r4_c62 bl_62 br_62 wl_4 vdd gnd cell_6t
Xbit_r5_c62 bl_62 br_62 wl_5 vdd gnd cell_6t
Xbit_r6_c62 bl_62 br_62 wl_6 vdd gnd cell_6t
Xbit_r7_c62 bl_62 br_62 wl_7 vdd gnd cell_6t
Xbit_r8_c62 bl_62 br_62 wl_8 vdd gnd cell_6t
Xbit_r9_c62 bl_62 br_62 wl_9 vdd gnd cell_6t
Xbit_r10_c62 bl_62 br_62 wl_10 vdd gnd cell_6t
Xbit_r11_c62 bl_62 br_62 wl_11 vdd gnd cell_6t
Xbit_r12_c62 bl_62 br_62 wl_12 vdd gnd cell_6t
Xbit_r13_c62 bl_62 br_62 wl_13 vdd gnd cell_6t
Xbit_r14_c62 bl_62 br_62 wl_14 vdd gnd cell_6t
Xbit_r15_c62 bl_62 br_62 wl_15 vdd gnd cell_6t
Xbit_r16_c62 bl_62 br_62 wl_16 vdd gnd cell_6t
Xbit_r17_c62 bl_62 br_62 wl_17 vdd gnd cell_6t
Xbit_r18_c62 bl_62 br_62 wl_18 vdd gnd cell_6t
Xbit_r19_c62 bl_62 br_62 wl_19 vdd gnd cell_6t
Xbit_r20_c62 bl_62 br_62 wl_20 vdd gnd cell_6t
Xbit_r21_c62 bl_62 br_62 wl_21 vdd gnd cell_6t
Xbit_r22_c62 bl_62 br_62 wl_22 vdd gnd cell_6t
Xbit_r23_c62 bl_62 br_62 wl_23 vdd gnd cell_6t
Xbit_r24_c62 bl_62 br_62 wl_24 vdd gnd cell_6t
Xbit_r25_c62 bl_62 br_62 wl_25 vdd gnd cell_6t
Xbit_r26_c62 bl_62 br_62 wl_26 vdd gnd cell_6t
Xbit_r27_c62 bl_62 br_62 wl_27 vdd gnd cell_6t
Xbit_r28_c62 bl_62 br_62 wl_28 vdd gnd cell_6t
Xbit_r29_c62 bl_62 br_62 wl_29 vdd gnd cell_6t
Xbit_r30_c62 bl_62 br_62 wl_30 vdd gnd cell_6t
Xbit_r31_c62 bl_62 br_62 wl_31 vdd gnd cell_6t
Xbit_r32_c62 bl_62 br_62 wl_32 vdd gnd cell_6t
Xbit_r33_c62 bl_62 br_62 wl_33 vdd gnd cell_6t
Xbit_r34_c62 bl_62 br_62 wl_34 vdd gnd cell_6t
Xbit_r35_c62 bl_62 br_62 wl_35 vdd gnd cell_6t
Xbit_r36_c62 bl_62 br_62 wl_36 vdd gnd cell_6t
Xbit_r37_c62 bl_62 br_62 wl_37 vdd gnd cell_6t
Xbit_r38_c62 bl_62 br_62 wl_38 vdd gnd cell_6t
Xbit_r39_c62 bl_62 br_62 wl_39 vdd gnd cell_6t
Xbit_r40_c62 bl_62 br_62 wl_40 vdd gnd cell_6t
Xbit_r41_c62 bl_62 br_62 wl_41 vdd gnd cell_6t
Xbit_r42_c62 bl_62 br_62 wl_42 vdd gnd cell_6t
Xbit_r43_c62 bl_62 br_62 wl_43 vdd gnd cell_6t
Xbit_r44_c62 bl_62 br_62 wl_44 vdd gnd cell_6t
Xbit_r45_c62 bl_62 br_62 wl_45 vdd gnd cell_6t
Xbit_r46_c62 bl_62 br_62 wl_46 vdd gnd cell_6t
Xbit_r47_c62 bl_62 br_62 wl_47 vdd gnd cell_6t
Xbit_r48_c62 bl_62 br_62 wl_48 vdd gnd cell_6t
Xbit_r49_c62 bl_62 br_62 wl_49 vdd gnd cell_6t
Xbit_r50_c62 bl_62 br_62 wl_50 vdd gnd cell_6t
Xbit_r51_c62 bl_62 br_62 wl_51 vdd gnd cell_6t
Xbit_r52_c62 bl_62 br_62 wl_52 vdd gnd cell_6t
Xbit_r53_c62 bl_62 br_62 wl_53 vdd gnd cell_6t
Xbit_r54_c62 bl_62 br_62 wl_54 vdd gnd cell_6t
Xbit_r55_c62 bl_62 br_62 wl_55 vdd gnd cell_6t
Xbit_r56_c62 bl_62 br_62 wl_56 vdd gnd cell_6t
Xbit_r57_c62 bl_62 br_62 wl_57 vdd gnd cell_6t
Xbit_r58_c62 bl_62 br_62 wl_58 vdd gnd cell_6t
Xbit_r59_c62 bl_62 br_62 wl_59 vdd gnd cell_6t
Xbit_r60_c62 bl_62 br_62 wl_60 vdd gnd cell_6t
Xbit_r61_c62 bl_62 br_62 wl_61 vdd gnd cell_6t
Xbit_r62_c62 bl_62 br_62 wl_62 vdd gnd cell_6t
Xbit_r63_c62 bl_62 br_62 wl_63 vdd gnd cell_6t
Xbit_r64_c62 bl_62 br_62 wl_64 vdd gnd cell_6t
Xbit_r65_c62 bl_62 br_62 wl_65 vdd gnd cell_6t
Xbit_r66_c62 bl_62 br_62 wl_66 vdd gnd cell_6t
Xbit_r67_c62 bl_62 br_62 wl_67 vdd gnd cell_6t
Xbit_r68_c62 bl_62 br_62 wl_68 vdd gnd cell_6t
Xbit_r69_c62 bl_62 br_62 wl_69 vdd gnd cell_6t
Xbit_r70_c62 bl_62 br_62 wl_70 vdd gnd cell_6t
Xbit_r71_c62 bl_62 br_62 wl_71 vdd gnd cell_6t
Xbit_r72_c62 bl_62 br_62 wl_72 vdd gnd cell_6t
Xbit_r73_c62 bl_62 br_62 wl_73 vdd gnd cell_6t
Xbit_r74_c62 bl_62 br_62 wl_74 vdd gnd cell_6t
Xbit_r75_c62 bl_62 br_62 wl_75 vdd gnd cell_6t
Xbit_r76_c62 bl_62 br_62 wl_76 vdd gnd cell_6t
Xbit_r77_c62 bl_62 br_62 wl_77 vdd gnd cell_6t
Xbit_r78_c62 bl_62 br_62 wl_78 vdd gnd cell_6t
Xbit_r79_c62 bl_62 br_62 wl_79 vdd gnd cell_6t
Xbit_r80_c62 bl_62 br_62 wl_80 vdd gnd cell_6t
Xbit_r81_c62 bl_62 br_62 wl_81 vdd gnd cell_6t
Xbit_r82_c62 bl_62 br_62 wl_82 vdd gnd cell_6t
Xbit_r83_c62 bl_62 br_62 wl_83 vdd gnd cell_6t
Xbit_r84_c62 bl_62 br_62 wl_84 vdd gnd cell_6t
Xbit_r85_c62 bl_62 br_62 wl_85 vdd gnd cell_6t
Xbit_r86_c62 bl_62 br_62 wl_86 vdd gnd cell_6t
Xbit_r87_c62 bl_62 br_62 wl_87 vdd gnd cell_6t
Xbit_r88_c62 bl_62 br_62 wl_88 vdd gnd cell_6t
Xbit_r89_c62 bl_62 br_62 wl_89 vdd gnd cell_6t
Xbit_r90_c62 bl_62 br_62 wl_90 vdd gnd cell_6t
Xbit_r91_c62 bl_62 br_62 wl_91 vdd gnd cell_6t
Xbit_r92_c62 bl_62 br_62 wl_92 vdd gnd cell_6t
Xbit_r93_c62 bl_62 br_62 wl_93 vdd gnd cell_6t
Xbit_r94_c62 bl_62 br_62 wl_94 vdd gnd cell_6t
Xbit_r95_c62 bl_62 br_62 wl_95 vdd gnd cell_6t
Xbit_r96_c62 bl_62 br_62 wl_96 vdd gnd cell_6t
Xbit_r97_c62 bl_62 br_62 wl_97 vdd gnd cell_6t
Xbit_r98_c62 bl_62 br_62 wl_98 vdd gnd cell_6t
Xbit_r99_c62 bl_62 br_62 wl_99 vdd gnd cell_6t
Xbit_r100_c62 bl_62 br_62 wl_100 vdd gnd cell_6t
Xbit_r101_c62 bl_62 br_62 wl_101 vdd gnd cell_6t
Xbit_r102_c62 bl_62 br_62 wl_102 vdd gnd cell_6t
Xbit_r103_c62 bl_62 br_62 wl_103 vdd gnd cell_6t
Xbit_r104_c62 bl_62 br_62 wl_104 vdd gnd cell_6t
Xbit_r105_c62 bl_62 br_62 wl_105 vdd gnd cell_6t
Xbit_r106_c62 bl_62 br_62 wl_106 vdd gnd cell_6t
Xbit_r107_c62 bl_62 br_62 wl_107 vdd gnd cell_6t
Xbit_r108_c62 bl_62 br_62 wl_108 vdd gnd cell_6t
Xbit_r109_c62 bl_62 br_62 wl_109 vdd gnd cell_6t
Xbit_r110_c62 bl_62 br_62 wl_110 vdd gnd cell_6t
Xbit_r111_c62 bl_62 br_62 wl_111 vdd gnd cell_6t
Xbit_r112_c62 bl_62 br_62 wl_112 vdd gnd cell_6t
Xbit_r113_c62 bl_62 br_62 wl_113 vdd gnd cell_6t
Xbit_r114_c62 bl_62 br_62 wl_114 vdd gnd cell_6t
Xbit_r115_c62 bl_62 br_62 wl_115 vdd gnd cell_6t
Xbit_r116_c62 bl_62 br_62 wl_116 vdd gnd cell_6t
Xbit_r117_c62 bl_62 br_62 wl_117 vdd gnd cell_6t
Xbit_r118_c62 bl_62 br_62 wl_118 vdd gnd cell_6t
Xbit_r119_c62 bl_62 br_62 wl_119 vdd gnd cell_6t
Xbit_r120_c62 bl_62 br_62 wl_120 vdd gnd cell_6t
Xbit_r121_c62 bl_62 br_62 wl_121 vdd gnd cell_6t
Xbit_r122_c62 bl_62 br_62 wl_122 vdd gnd cell_6t
Xbit_r123_c62 bl_62 br_62 wl_123 vdd gnd cell_6t
Xbit_r124_c62 bl_62 br_62 wl_124 vdd gnd cell_6t
Xbit_r125_c62 bl_62 br_62 wl_125 vdd gnd cell_6t
Xbit_r126_c62 bl_62 br_62 wl_126 vdd gnd cell_6t
Xbit_r127_c62 bl_62 br_62 wl_127 vdd gnd cell_6t
Xbit_r0_c63 bl_63 br_63 wl_0 vdd gnd cell_6t
Xbit_r1_c63 bl_63 br_63 wl_1 vdd gnd cell_6t
Xbit_r2_c63 bl_63 br_63 wl_2 vdd gnd cell_6t
Xbit_r3_c63 bl_63 br_63 wl_3 vdd gnd cell_6t
Xbit_r4_c63 bl_63 br_63 wl_4 vdd gnd cell_6t
Xbit_r5_c63 bl_63 br_63 wl_5 vdd gnd cell_6t
Xbit_r6_c63 bl_63 br_63 wl_6 vdd gnd cell_6t
Xbit_r7_c63 bl_63 br_63 wl_7 vdd gnd cell_6t
Xbit_r8_c63 bl_63 br_63 wl_8 vdd gnd cell_6t
Xbit_r9_c63 bl_63 br_63 wl_9 vdd gnd cell_6t
Xbit_r10_c63 bl_63 br_63 wl_10 vdd gnd cell_6t
Xbit_r11_c63 bl_63 br_63 wl_11 vdd gnd cell_6t
Xbit_r12_c63 bl_63 br_63 wl_12 vdd gnd cell_6t
Xbit_r13_c63 bl_63 br_63 wl_13 vdd gnd cell_6t
Xbit_r14_c63 bl_63 br_63 wl_14 vdd gnd cell_6t
Xbit_r15_c63 bl_63 br_63 wl_15 vdd gnd cell_6t
Xbit_r16_c63 bl_63 br_63 wl_16 vdd gnd cell_6t
Xbit_r17_c63 bl_63 br_63 wl_17 vdd gnd cell_6t
Xbit_r18_c63 bl_63 br_63 wl_18 vdd gnd cell_6t
Xbit_r19_c63 bl_63 br_63 wl_19 vdd gnd cell_6t
Xbit_r20_c63 bl_63 br_63 wl_20 vdd gnd cell_6t
Xbit_r21_c63 bl_63 br_63 wl_21 vdd gnd cell_6t
Xbit_r22_c63 bl_63 br_63 wl_22 vdd gnd cell_6t
Xbit_r23_c63 bl_63 br_63 wl_23 vdd gnd cell_6t
Xbit_r24_c63 bl_63 br_63 wl_24 vdd gnd cell_6t
Xbit_r25_c63 bl_63 br_63 wl_25 vdd gnd cell_6t
Xbit_r26_c63 bl_63 br_63 wl_26 vdd gnd cell_6t
Xbit_r27_c63 bl_63 br_63 wl_27 vdd gnd cell_6t
Xbit_r28_c63 bl_63 br_63 wl_28 vdd gnd cell_6t
Xbit_r29_c63 bl_63 br_63 wl_29 vdd gnd cell_6t
Xbit_r30_c63 bl_63 br_63 wl_30 vdd gnd cell_6t
Xbit_r31_c63 bl_63 br_63 wl_31 vdd gnd cell_6t
Xbit_r32_c63 bl_63 br_63 wl_32 vdd gnd cell_6t
Xbit_r33_c63 bl_63 br_63 wl_33 vdd gnd cell_6t
Xbit_r34_c63 bl_63 br_63 wl_34 vdd gnd cell_6t
Xbit_r35_c63 bl_63 br_63 wl_35 vdd gnd cell_6t
Xbit_r36_c63 bl_63 br_63 wl_36 vdd gnd cell_6t
Xbit_r37_c63 bl_63 br_63 wl_37 vdd gnd cell_6t
Xbit_r38_c63 bl_63 br_63 wl_38 vdd gnd cell_6t
Xbit_r39_c63 bl_63 br_63 wl_39 vdd gnd cell_6t
Xbit_r40_c63 bl_63 br_63 wl_40 vdd gnd cell_6t
Xbit_r41_c63 bl_63 br_63 wl_41 vdd gnd cell_6t
Xbit_r42_c63 bl_63 br_63 wl_42 vdd gnd cell_6t
Xbit_r43_c63 bl_63 br_63 wl_43 vdd gnd cell_6t
Xbit_r44_c63 bl_63 br_63 wl_44 vdd gnd cell_6t
Xbit_r45_c63 bl_63 br_63 wl_45 vdd gnd cell_6t
Xbit_r46_c63 bl_63 br_63 wl_46 vdd gnd cell_6t
Xbit_r47_c63 bl_63 br_63 wl_47 vdd gnd cell_6t
Xbit_r48_c63 bl_63 br_63 wl_48 vdd gnd cell_6t
Xbit_r49_c63 bl_63 br_63 wl_49 vdd gnd cell_6t
Xbit_r50_c63 bl_63 br_63 wl_50 vdd gnd cell_6t
Xbit_r51_c63 bl_63 br_63 wl_51 vdd gnd cell_6t
Xbit_r52_c63 bl_63 br_63 wl_52 vdd gnd cell_6t
Xbit_r53_c63 bl_63 br_63 wl_53 vdd gnd cell_6t
Xbit_r54_c63 bl_63 br_63 wl_54 vdd gnd cell_6t
Xbit_r55_c63 bl_63 br_63 wl_55 vdd gnd cell_6t
Xbit_r56_c63 bl_63 br_63 wl_56 vdd gnd cell_6t
Xbit_r57_c63 bl_63 br_63 wl_57 vdd gnd cell_6t
Xbit_r58_c63 bl_63 br_63 wl_58 vdd gnd cell_6t
Xbit_r59_c63 bl_63 br_63 wl_59 vdd gnd cell_6t
Xbit_r60_c63 bl_63 br_63 wl_60 vdd gnd cell_6t
Xbit_r61_c63 bl_63 br_63 wl_61 vdd gnd cell_6t
Xbit_r62_c63 bl_63 br_63 wl_62 vdd gnd cell_6t
Xbit_r63_c63 bl_63 br_63 wl_63 vdd gnd cell_6t
Xbit_r64_c63 bl_63 br_63 wl_64 vdd gnd cell_6t
Xbit_r65_c63 bl_63 br_63 wl_65 vdd gnd cell_6t
Xbit_r66_c63 bl_63 br_63 wl_66 vdd gnd cell_6t
Xbit_r67_c63 bl_63 br_63 wl_67 vdd gnd cell_6t
Xbit_r68_c63 bl_63 br_63 wl_68 vdd gnd cell_6t
Xbit_r69_c63 bl_63 br_63 wl_69 vdd gnd cell_6t
Xbit_r70_c63 bl_63 br_63 wl_70 vdd gnd cell_6t
Xbit_r71_c63 bl_63 br_63 wl_71 vdd gnd cell_6t
Xbit_r72_c63 bl_63 br_63 wl_72 vdd gnd cell_6t
Xbit_r73_c63 bl_63 br_63 wl_73 vdd gnd cell_6t
Xbit_r74_c63 bl_63 br_63 wl_74 vdd gnd cell_6t
Xbit_r75_c63 bl_63 br_63 wl_75 vdd gnd cell_6t
Xbit_r76_c63 bl_63 br_63 wl_76 vdd gnd cell_6t
Xbit_r77_c63 bl_63 br_63 wl_77 vdd gnd cell_6t
Xbit_r78_c63 bl_63 br_63 wl_78 vdd gnd cell_6t
Xbit_r79_c63 bl_63 br_63 wl_79 vdd gnd cell_6t
Xbit_r80_c63 bl_63 br_63 wl_80 vdd gnd cell_6t
Xbit_r81_c63 bl_63 br_63 wl_81 vdd gnd cell_6t
Xbit_r82_c63 bl_63 br_63 wl_82 vdd gnd cell_6t
Xbit_r83_c63 bl_63 br_63 wl_83 vdd gnd cell_6t
Xbit_r84_c63 bl_63 br_63 wl_84 vdd gnd cell_6t
Xbit_r85_c63 bl_63 br_63 wl_85 vdd gnd cell_6t
Xbit_r86_c63 bl_63 br_63 wl_86 vdd gnd cell_6t
Xbit_r87_c63 bl_63 br_63 wl_87 vdd gnd cell_6t
Xbit_r88_c63 bl_63 br_63 wl_88 vdd gnd cell_6t
Xbit_r89_c63 bl_63 br_63 wl_89 vdd gnd cell_6t
Xbit_r90_c63 bl_63 br_63 wl_90 vdd gnd cell_6t
Xbit_r91_c63 bl_63 br_63 wl_91 vdd gnd cell_6t
Xbit_r92_c63 bl_63 br_63 wl_92 vdd gnd cell_6t
Xbit_r93_c63 bl_63 br_63 wl_93 vdd gnd cell_6t
Xbit_r94_c63 bl_63 br_63 wl_94 vdd gnd cell_6t
Xbit_r95_c63 bl_63 br_63 wl_95 vdd gnd cell_6t
Xbit_r96_c63 bl_63 br_63 wl_96 vdd gnd cell_6t
Xbit_r97_c63 bl_63 br_63 wl_97 vdd gnd cell_6t
Xbit_r98_c63 bl_63 br_63 wl_98 vdd gnd cell_6t
Xbit_r99_c63 bl_63 br_63 wl_99 vdd gnd cell_6t
Xbit_r100_c63 bl_63 br_63 wl_100 vdd gnd cell_6t
Xbit_r101_c63 bl_63 br_63 wl_101 vdd gnd cell_6t
Xbit_r102_c63 bl_63 br_63 wl_102 vdd gnd cell_6t
Xbit_r103_c63 bl_63 br_63 wl_103 vdd gnd cell_6t
Xbit_r104_c63 bl_63 br_63 wl_104 vdd gnd cell_6t
Xbit_r105_c63 bl_63 br_63 wl_105 vdd gnd cell_6t
Xbit_r106_c63 bl_63 br_63 wl_106 vdd gnd cell_6t
Xbit_r107_c63 bl_63 br_63 wl_107 vdd gnd cell_6t
Xbit_r108_c63 bl_63 br_63 wl_108 vdd gnd cell_6t
Xbit_r109_c63 bl_63 br_63 wl_109 vdd gnd cell_6t
Xbit_r110_c63 bl_63 br_63 wl_110 vdd gnd cell_6t
Xbit_r111_c63 bl_63 br_63 wl_111 vdd gnd cell_6t
Xbit_r112_c63 bl_63 br_63 wl_112 vdd gnd cell_6t
Xbit_r113_c63 bl_63 br_63 wl_113 vdd gnd cell_6t
Xbit_r114_c63 bl_63 br_63 wl_114 vdd gnd cell_6t
Xbit_r115_c63 bl_63 br_63 wl_115 vdd gnd cell_6t
Xbit_r116_c63 bl_63 br_63 wl_116 vdd gnd cell_6t
Xbit_r117_c63 bl_63 br_63 wl_117 vdd gnd cell_6t
Xbit_r118_c63 bl_63 br_63 wl_118 vdd gnd cell_6t
Xbit_r119_c63 bl_63 br_63 wl_119 vdd gnd cell_6t
Xbit_r120_c63 bl_63 br_63 wl_120 vdd gnd cell_6t
Xbit_r121_c63 bl_63 br_63 wl_121 vdd gnd cell_6t
Xbit_r122_c63 bl_63 br_63 wl_122 vdd gnd cell_6t
Xbit_r123_c63 bl_63 br_63 wl_123 vdd gnd cell_6t
Xbit_r124_c63 bl_63 br_63 wl_124 vdd gnd cell_6t
Xbit_r125_c63 bl_63 br_63 wl_125 vdd gnd cell_6t
Xbit_r126_c63 bl_63 br_63 wl_126 vdd gnd cell_6t
Xbit_r127_c63 bl_63 br_63 wl_127 vdd gnd cell_6t
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


.SUBCKT replica_column_0 bl_0 br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 wl_128 wl_129 wl_130 vdd gnd
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
* INPUT : wl_35 
* INPUT : wl_36 
* INPUT : wl_37 
* INPUT : wl_38 
* INPUT : wl_39 
* INPUT : wl_40 
* INPUT : wl_41 
* INPUT : wl_42 
* INPUT : wl_43 
* INPUT : wl_44 
* INPUT : wl_45 
* INPUT : wl_46 
* INPUT : wl_47 
* INPUT : wl_48 
* INPUT : wl_49 
* INPUT : wl_50 
* INPUT : wl_51 
* INPUT : wl_52 
* INPUT : wl_53 
* INPUT : wl_54 
* INPUT : wl_55 
* INPUT : wl_56 
* INPUT : wl_57 
* INPUT : wl_58 
* INPUT : wl_59 
* INPUT : wl_60 
* INPUT : wl_61 
* INPUT : wl_62 
* INPUT : wl_63 
* INPUT : wl_64 
* INPUT : wl_65 
* INPUT : wl_66 
* INPUT : wl_67 
* INPUT : wl_68 
* INPUT : wl_69 
* INPUT : wl_70 
* INPUT : wl_71 
* INPUT : wl_72 
* INPUT : wl_73 
* INPUT : wl_74 
* INPUT : wl_75 
* INPUT : wl_76 
* INPUT : wl_77 
* INPUT : wl_78 
* INPUT : wl_79 
* INPUT : wl_80 
* INPUT : wl_81 
* INPUT : wl_82 
* INPUT : wl_83 
* INPUT : wl_84 
* INPUT : wl_85 
* INPUT : wl_86 
* INPUT : wl_87 
* INPUT : wl_88 
* INPUT : wl_89 
* INPUT : wl_90 
* INPUT : wl_91 
* INPUT : wl_92 
* INPUT : wl_93 
* INPUT : wl_94 
* INPUT : wl_95 
* INPUT : wl_96 
* INPUT : wl_97 
* INPUT : wl_98 
* INPUT : wl_99 
* INPUT : wl_100 
* INPUT : wl_101 
* INPUT : wl_102 
* INPUT : wl_103 
* INPUT : wl_104 
* INPUT : wl_105 
* INPUT : wl_106 
* INPUT : wl_107 
* INPUT : wl_108 
* INPUT : wl_109 
* INPUT : wl_110 
* INPUT : wl_111 
* INPUT : wl_112 
* INPUT : wl_113 
* INPUT : wl_114 
* INPUT : wl_115 
* INPUT : wl_116 
* INPUT : wl_117 
* INPUT : wl_118 
* INPUT : wl_119 
* INPUT : wl_120 
* INPUT : wl_121 
* INPUT : wl_122 
* INPUT : wl_123 
* INPUT : wl_124 
* INPUT : wl_125 
* INPUT : wl_126 
* INPUT : wl_127 
* INPUT : wl_128 
* INPUT : wl_129 
* INPUT : wl_130 
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
Xrbc_34 bl_0 br_0 wl_34 vdd gnd replica_cell_6t
Xrbc_35 bl_0 br_0 wl_35 vdd gnd replica_cell_6t
Xrbc_36 bl_0 br_0 wl_36 vdd gnd replica_cell_6t
Xrbc_37 bl_0 br_0 wl_37 vdd gnd replica_cell_6t
Xrbc_38 bl_0 br_0 wl_38 vdd gnd replica_cell_6t
Xrbc_39 bl_0 br_0 wl_39 vdd gnd replica_cell_6t
Xrbc_40 bl_0 br_0 wl_40 vdd gnd replica_cell_6t
Xrbc_41 bl_0 br_0 wl_41 vdd gnd replica_cell_6t
Xrbc_42 bl_0 br_0 wl_42 vdd gnd replica_cell_6t
Xrbc_43 bl_0 br_0 wl_43 vdd gnd replica_cell_6t
Xrbc_44 bl_0 br_0 wl_44 vdd gnd replica_cell_6t
Xrbc_45 bl_0 br_0 wl_45 vdd gnd replica_cell_6t
Xrbc_46 bl_0 br_0 wl_46 vdd gnd replica_cell_6t
Xrbc_47 bl_0 br_0 wl_47 vdd gnd replica_cell_6t
Xrbc_48 bl_0 br_0 wl_48 vdd gnd replica_cell_6t
Xrbc_49 bl_0 br_0 wl_49 vdd gnd replica_cell_6t
Xrbc_50 bl_0 br_0 wl_50 vdd gnd replica_cell_6t
Xrbc_51 bl_0 br_0 wl_51 vdd gnd replica_cell_6t
Xrbc_52 bl_0 br_0 wl_52 vdd gnd replica_cell_6t
Xrbc_53 bl_0 br_0 wl_53 vdd gnd replica_cell_6t
Xrbc_54 bl_0 br_0 wl_54 vdd gnd replica_cell_6t
Xrbc_55 bl_0 br_0 wl_55 vdd gnd replica_cell_6t
Xrbc_56 bl_0 br_0 wl_56 vdd gnd replica_cell_6t
Xrbc_57 bl_0 br_0 wl_57 vdd gnd replica_cell_6t
Xrbc_58 bl_0 br_0 wl_58 vdd gnd replica_cell_6t
Xrbc_59 bl_0 br_0 wl_59 vdd gnd replica_cell_6t
Xrbc_60 bl_0 br_0 wl_60 vdd gnd replica_cell_6t
Xrbc_61 bl_0 br_0 wl_61 vdd gnd replica_cell_6t
Xrbc_62 bl_0 br_0 wl_62 vdd gnd replica_cell_6t
Xrbc_63 bl_0 br_0 wl_63 vdd gnd replica_cell_6t
Xrbc_64 bl_0 br_0 wl_64 vdd gnd replica_cell_6t
Xrbc_65 bl_0 br_0 wl_65 vdd gnd replica_cell_6t
Xrbc_66 bl_0 br_0 wl_66 vdd gnd replica_cell_6t
Xrbc_67 bl_0 br_0 wl_67 vdd gnd replica_cell_6t
Xrbc_68 bl_0 br_0 wl_68 vdd gnd replica_cell_6t
Xrbc_69 bl_0 br_0 wl_69 vdd gnd replica_cell_6t
Xrbc_70 bl_0 br_0 wl_70 vdd gnd replica_cell_6t
Xrbc_71 bl_0 br_0 wl_71 vdd gnd replica_cell_6t
Xrbc_72 bl_0 br_0 wl_72 vdd gnd replica_cell_6t
Xrbc_73 bl_0 br_0 wl_73 vdd gnd replica_cell_6t
Xrbc_74 bl_0 br_0 wl_74 vdd gnd replica_cell_6t
Xrbc_75 bl_0 br_0 wl_75 vdd gnd replica_cell_6t
Xrbc_76 bl_0 br_0 wl_76 vdd gnd replica_cell_6t
Xrbc_77 bl_0 br_0 wl_77 vdd gnd replica_cell_6t
Xrbc_78 bl_0 br_0 wl_78 vdd gnd replica_cell_6t
Xrbc_79 bl_0 br_0 wl_79 vdd gnd replica_cell_6t
Xrbc_80 bl_0 br_0 wl_80 vdd gnd replica_cell_6t
Xrbc_81 bl_0 br_0 wl_81 vdd gnd replica_cell_6t
Xrbc_82 bl_0 br_0 wl_82 vdd gnd replica_cell_6t
Xrbc_83 bl_0 br_0 wl_83 vdd gnd replica_cell_6t
Xrbc_84 bl_0 br_0 wl_84 vdd gnd replica_cell_6t
Xrbc_85 bl_0 br_0 wl_85 vdd gnd replica_cell_6t
Xrbc_86 bl_0 br_0 wl_86 vdd gnd replica_cell_6t
Xrbc_87 bl_0 br_0 wl_87 vdd gnd replica_cell_6t
Xrbc_88 bl_0 br_0 wl_88 vdd gnd replica_cell_6t
Xrbc_89 bl_0 br_0 wl_89 vdd gnd replica_cell_6t
Xrbc_90 bl_0 br_0 wl_90 vdd gnd replica_cell_6t
Xrbc_91 bl_0 br_0 wl_91 vdd gnd replica_cell_6t
Xrbc_92 bl_0 br_0 wl_92 vdd gnd replica_cell_6t
Xrbc_93 bl_0 br_0 wl_93 vdd gnd replica_cell_6t
Xrbc_94 bl_0 br_0 wl_94 vdd gnd replica_cell_6t
Xrbc_95 bl_0 br_0 wl_95 vdd gnd replica_cell_6t
Xrbc_96 bl_0 br_0 wl_96 vdd gnd replica_cell_6t
Xrbc_97 bl_0 br_0 wl_97 vdd gnd replica_cell_6t
Xrbc_98 bl_0 br_0 wl_98 vdd gnd replica_cell_6t
Xrbc_99 bl_0 br_0 wl_99 vdd gnd replica_cell_6t
Xrbc_100 bl_0 br_0 wl_100 vdd gnd replica_cell_6t
Xrbc_101 bl_0 br_0 wl_101 vdd gnd replica_cell_6t
Xrbc_102 bl_0 br_0 wl_102 vdd gnd replica_cell_6t
Xrbc_103 bl_0 br_0 wl_103 vdd gnd replica_cell_6t
Xrbc_104 bl_0 br_0 wl_104 vdd gnd replica_cell_6t
Xrbc_105 bl_0 br_0 wl_105 vdd gnd replica_cell_6t
Xrbc_106 bl_0 br_0 wl_106 vdd gnd replica_cell_6t
Xrbc_107 bl_0 br_0 wl_107 vdd gnd replica_cell_6t
Xrbc_108 bl_0 br_0 wl_108 vdd gnd replica_cell_6t
Xrbc_109 bl_0 br_0 wl_109 vdd gnd replica_cell_6t
Xrbc_110 bl_0 br_0 wl_110 vdd gnd replica_cell_6t
Xrbc_111 bl_0 br_0 wl_111 vdd gnd replica_cell_6t
Xrbc_112 bl_0 br_0 wl_112 vdd gnd replica_cell_6t
Xrbc_113 bl_0 br_0 wl_113 vdd gnd replica_cell_6t
Xrbc_114 bl_0 br_0 wl_114 vdd gnd replica_cell_6t
Xrbc_115 bl_0 br_0 wl_115 vdd gnd replica_cell_6t
Xrbc_116 bl_0 br_0 wl_116 vdd gnd replica_cell_6t
Xrbc_117 bl_0 br_0 wl_117 vdd gnd replica_cell_6t
Xrbc_118 bl_0 br_0 wl_118 vdd gnd replica_cell_6t
Xrbc_119 bl_0 br_0 wl_119 vdd gnd replica_cell_6t
Xrbc_120 bl_0 br_0 wl_120 vdd gnd replica_cell_6t
Xrbc_121 bl_0 br_0 wl_121 vdd gnd replica_cell_6t
Xrbc_122 bl_0 br_0 wl_122 vdd gnd replica_cell_6t
Xrbc_123 bl_0 br_0 wl_123 vdd gnd replica_cell_6t
Xrbc_124 bl_0 br_0 wl_124 vdd gnd replica_cell_6t
Xrbc_125 bl_0 br_0 wl_125 vdd gnd replica_cell_6t
Xrbc_126 bl_0 br_0 wl_126 vdd gnd replica_cell_6t
Xrbc_127 bl_0 br_0 wl_127 vdd gnd replica_cell_6t
Xrbc_128 bl_0 br_0 wl_128 vdd gnd replica_cell_6t
Xrbc_129 bl_0 br_0 wl_129 vdd gnd replica_cell_6t
Xrbc_130 bl_0 br_0 wl_130 vdd gnd dummy_cell_6t
.ENDS replica_column_0

.SUBCKT dummy_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 wl_0 vdd gnd
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
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
* INPUT : wl_0 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 64
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
Xbit_r0_c16 bl_16 br_16 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c17 bl_17 br_17 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c18 bl_18 br_18 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c19 bl_19 br_19 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c20 bl_20 br_20 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c21 bl_21 br_21 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c22 bl_22 br_22 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c23 bl_23 br_23 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c24 bl_24 br_24 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c25 bl_25 br_25 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c26 bl_26 br_26 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c27 bl_27 br_27 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c28 bl_28 br_28 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c29 bl_29 br_29 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c30 bl_30 br_30 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c31 bl_31 br_31 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c32 bl_32 br_32 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c33 bl_33 br_33 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c34 bl_34 br_34 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c35 bl_35 br_35 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c36 bl_36 br_36 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c37 bl_37 br_37 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c38 bl_38 br_38 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c39 bl_39 br_39 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c40 bl_40 br_40 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c41 bl_41 br_41 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c42 bl_42 br_42 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c43 bl_43 br_43 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c44 bl_44 br_44 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c45 bl_45 br_45 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c46 bl_46 br_46 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c47 bl_47 br_47 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c48 bl_48 br_48 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c49 bl_49 br_49 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c50 bl_50 br_50 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c51 bl_51 br_51 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c52 bl_52 br_52 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c53 bl_53 br_53 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c54 bl_54 br_54 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c55 bl_55 br_55 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c56 bl_56 br_56 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c57 bl_57 br_57 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c58 bl_58 br_58 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c59 bl_59 br_59 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c60 bl_60 br_60 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c61 bl_61 br_61 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c62 bl_62 br_62 wl_0 vdd gnd dummy_cell_6t
Xbit_r0_c63 bl_63 br_63 wl_0 vdd gnd dummy_cell_6t
.ENDS dummy_array_0

.SUBCKT dummy_array_1 bl_0 br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 wl_128 wl_129 wl_130 vdd gnd
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
* INPUT : wl_35 
* INPUT : wl_36 
* INPUT : wl_37 
* INPUT : wl_38 
* INPUT : wl_39 
* INPUT : wl_40 
* INPUT : wl_41 
* INPUT : wl_42 
* INPUT : wl_43 
* INPUT : wl_44 
* INPUT : wl_45 
* INPUT : wl_46 
* INPUT : wl_47 
* INPUT : wl_48 
* INPUT : wl_49 
* INPUT : wl_50 
* INPUT : wl_51 
* INPUT : wl_52 
* INPUT : wl_53 
* INPUT : wl_54 
* INPUT : wl_55 
* INPUT : wl_56 
* INPUT : wl_57 
* INPUT : wl_58 
* INPUT : wl_59 
* INPUT : wl_60 
* INPUT : wl_61 
* INPUT : wl_62 
* INPUT : wl_63 
* INPUT : wl_64 
* INPUT : wl_65 
* INPUT : wl_66 
* INPUT : wl_67 
* INPUT : wl_68 
* INPUT : wl_69 
* INPUT : wl_70 
* INPUT : wl_71 
* INPUT : wl_72 
* INPUT : wl_73 
* INPUT : wl_74 
* INPUT : wl_75 
* INPUT : wl_76 
* INPUT : wl_77 
* INPUT : wl_78 
* INPUT : wl_79 
* INPUT : wl_80 
* INPUT : wl_81 
* INPUT : wl_82 
* INPUT : wl_83 
* INPUT : wl_84 
* INPUT : wl_85 
* INPUT : wl_86 
* INPUT : wl_87 
* INPUT : wl_88 
* INPUT : wl_89 
* INPUT : wl_90 
* INPUT : wl_91 
* INPUT : wl_92 
* INPUT : wl_93 
* INPUT : wl_94 
* INPUT : wl_95 
* INPUT : wl_96 
* INPUT : wl_97 
* INPUT : wl_98 
* INPUT : wl_99 
* INPUT : wl_100 
* INPUT : wl_101 
* INPUT : wl_102 
* INPUT : wl_103 
* INPUT : wl_104 
* INPUT : wl_105 
* INPUT : wl_106 
* INPUT : wl_107 
* INPUT : wl_108 
* INPUT : wl_109 
* INPUT : wl_110 
* INPUT : wl_111 
* INPUT : wl_112 
* INPUT : wl_113 
* INPUT : wl_114 
* INPUT : wl_115 
* INPUT : wl_116 
* INPUT : wl_117 
* INPUT : wl_118 
* INPUT : wl_119 
* INPUT : wl_120 
* INPUT : wl_121 
* INPUT : wl_122 
* INPUT : wl_123 
* INPUT : wl_124 
* INPUT : wl_125 
* INPUT : wl_126 
* INPUT : wl_127 
* INPUT : wl_128 
* INPUT : wl_129 
* INPUT : wl_130 
* POWER : vdd 
* GROUND: gnd 
* rows: 131 cols: 1
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
Xbit_r35_c0 bl_0 br_0 wl_35 vdd gnd dummy_cell_6t
Xbit_r36_c0 bl_0 br_0 wl_36 vdd gnd dummy_cell_6t
Xbit_r37_c0 bl_0 br_0 wl_37 vdd gnd dummy_cell_6t
Xbit_r38_c0 bl_0 br_0 wl_38 vdd gnd dummy_cell_6t
Xbit_r39_c0 bl_0 br_0 wl_39 vdd gnd dummy_cell_6t
Xbit_r40_c0 bl_0 br_0 wl_40 vdd gnd dummy_cell_6t
Xbit_r41_c0 bl_0 br_0 wl_41 vdd gnd dummy_cell_6t
Xbit_r42_c0 bl_0 br_0 wl_42 vdd gnd dummy_cell_6t
Xbit_r43_c0 bl_0 br_0 wl_43 vdd gnd dummy_cell_6t
Xbit_r44_c0 bl_0 br_0 wl_44 vdd gnd dummy_cell_6t
Xbit_r45_c0 bl_0 br_0 wl_45 vdd gnd dummy_cell_6t
Xbit_r46_c0 bl_0 br_0 wl_46 vdd gnd dummy_cell_6t
Xbit_r47_c0 bl_0 br_0 wl_47 vdd gnd dummy_cell_6t
Xbit_r48_c0 bl_0 br_0 wl_48 vdd gnd dummy_cell_6t
Xbit_r49_c0 bl_0 br_0 wl_49 vdd gnd dummy_cell_6t
Xbit_r50_c0 bl_0 br_0 wl_50 vdd gnd dummy_cell_6t
Xbit_r51_c0 bl_0 br_0 wl_51 vdd gnd dummy_cell_6t
Xbit_r52_c0 bl_0 br_0 wl_52 vdd gnd dummy_cell_6t
Xbit_r53_c0 bl_0 br_0 wl_53 vdd gnd dummy_cell_6t
Xbit_r54_c0 bl_0 br_0 wl_54 vdd gnd dummy_cell_6t
Xbit_r55_c0 bl_0 br_0 wl_55 vdd gnd dummy_cell_6t
Xbit_r56_c0 bl_0 br_0 wl_56 vdd gnd dummy_cell_6t
Xbit_r57_c0 bl_0 br_0 wl_57 vdd gnd dummy_cell_6t
Xbit_r58_c0 bl_0 br_0 wl_58 vdd gnd dummy_cell_6t
Xbit_r59_c0 bl_0 br_0 wl_59 vdd gnd dummy_cell_6t
Xbit_r60_c0 bl_0 br_0 wl_60 vdd gnd dummy_cell_6t
Xbit_r61_c0 bl_0 br_0 wl_61 vdd gnd dummy_cell_6t
Xbit_r62_c0 bl_0 br_0 wl_62 vdd gnd dummy_cell_6t
Xbit_r63_c0 bl_0 br_0 wl_63 vdd gnd dummy_cell_6t
Xbit_r64_c0 bl_0 br_0 wl_64 vdd gnd dummy_cell_6t
Xbit_r65_c0 bl_0 br_0 wl_65 vdd gnd dummy_cell_6t
Xbit_r66_c0 bl_0 br_0 wl_66 vdd gnd dummy_cell_6t
Xbit_r67_c0 bl_0 br_0 wl_67 vdd gnd dummy_cell_6t
Xbit_r68_c0 bl_0 br_0 wl_68 vdd gnd dummy_cell_6t
Xbit_r69_c0 bl_0 br_0 wl_69 vdd gnd dummy_cell_6t
Xbit_r70_c0 bl_0 br_0 wl_70 vdd gnd dummy_cell_6t
Xbit_r71_c0 bl_0 br_0 wl_71 vdd gnd dummy_cell_6t
Xbit_r72_c0 bl_0 br_0 wl_72 vdd gnd dummy_cell_6t
Xbit_r73_c0 bl_0 br_0 wl_73 vdd gnd dummy_cell_6t
Xbit_r74_c0 bl_0 br_0 wl_74 vdd gnd dummy_cell_6t
Xbit_r75_c0 bl_0 br_0 wl_75 vdd gnd dummy_cell_6t
Xbit_r76_c0 bl_0 br_0 wl_76 vdd gnd dummy_cell_6t
Xbit_r77_c0 bl_0 br_0 wl_77 vdd gnd dummy_cell_6t
Xbit_r78_c0 bl_0 br_0 wl_78 vdd gnd dummy_cell_6t
Xbit_r79_c0 bl_0 br_0 wl_79 vdd gnd dummy_cell_6t
Xbit_r80_c0 bl_0 br_0 wl_80 vdd gnd dummy_cell_6t
Xbit_r81_c0 bl_0 br_0 wl_81 vdd gnd dummy_cell_6t
Xbit_r82_c0 bl_0 br_0 wl_82 vdd gnd dummy_cell_6t
Xbit_r83_c0 bl_0 br_0 wl_83 vdd gnd dummy_cell_6t
Xbit_r84_c0 bl_0 br_0 wl_84 vdd gnd dummy_cell_6t
Xbit_r85_c0 bl_0 br_0 wl_85 vdd gnd dummy_cell_6t
Xbit_r86_c0 bl_0 br_0 wl_86 vdd gnd dummy_cell_6t
Xbit_r87_c0 bl_0 br_0 wl_87 vdd gnd dummy_cell_6t
Xbit_r88_c0 bl_0 br_0 wl_88 vdd gnd dummy_cell_6t
Xbit_r89_c0 bl_0 br_0 wl_89 vdd gnd dummy_cell_6t
Xbit_r90_c0 bl_0 br_0 wl_90 vdd gnd dummy_cell_6t
Xbit_r91_c0 bl_0 br_0 wl_91 vdd gnd dummy_cell_6t
Xbit_r92_c0 bl_0 br_0 wl_92 vdd gnd dummy_cell_6t
Xbit_r93_c0 bl_0 br_0 wl_93 vdd gnd dummy_cell_6t
Xbit_r94_c0 bl_0 br_0 wl_94 vdd gnd dummy_cell_6t
Xbit_r95_c0 bl_0 br_0 wl_95 vdd gnd dummy_cell_6t
Xbit_r96_c0 bl_0 br_0 wl_96 vdd gnd dummy_cell_6t
Xbit_r97_c0 bl_0 br_0 wl_97 vdd gnd dummy_cell_6t
Xbit_r98_c0 bl_0 br_0 wl_98 vdd gnd dummy_cell_6t
Xbit_r99_c0 bl_0 br_0 wl_99 vdd gnd dummy_cell_6t
Xbit_r100_c0 bl_0 br_0 wl_100 vdd gnd dummy_cell_6t
Xbit_r101_c0 bl_0 br_0 wl_101 vdd gnd dummy_cell_6t
Xbit_r102_c0 bl_0 br_0 wl_102 vdd gnd dummy_cell_6t
Xbit_r103_c0 bl_0 br_0 wl_103 vdd gnd dummy_cell_6t
Xbit_r104_c0 bl_0 br_0 wl_104 vdd gnd dummy_cell_6t
Xbit_r105_c0 bl_0 br_0 wl_105 vdd gnd dummy_cell_6t
Xbit_r106_c0 bl_0 br_0 wl_106 vdd gnd dummy_cell_6t
Xbit_r107_c0 bl_0 br_0 wl_107 vdd gnd dummy_cell_6t
Xbit_r108_c0 bl_0 br_0 wl_108 vdd gnd dummy_cell_6t
Xbit_r109_c0 bl_0 br_0 wl_109 vdd gnd dummy_cell_6t
Xbit_r110_c0 bl_0 br_0 wl_110 vdd gnd dummy_cell_6t
Xbit_r111_c0 bl_0 br_0 wl_111 vdd gnd dummy_cell_6t
Xbit_r112_c0 bl_0 br_0 wl_112 vdd gnd dummy_cell_6t
Xbit_r113_c0 bl_0 br_0 wl_113 vdd gnd dummy_cell_6t
Xbit_r114_c0 bl_0 br_0 wl_114 vdd gnd dummy_cell_6t
Xbit_r115_c0 bl_0 br_0 wl_115 vdd gnd dummy_cell_6t
Xbit_r116_c0 bl_0 br_0 wl_116 vdd gnd dummy_cell_6t
Xbit_r117_c0 bl_0 br_0 wl_117 vdd gnd dummy_cell_6t
Xbit_r118_c0 bl_0 br_0 wl_118 vdd gnd dummy_cell_6t
Xbit_r119_c0 bl_0 br_0 wl_119 vdd gnd dummy_cell_6t
Xbit_r120_c0 bl_0 br_0 wl_120 vdd gnd dummy_cell_6t
Xbit_r121_c0 bl_0 br_0 wl_121 vdd gnd dummy_cell_6t
Xbit_r122_c0 bl_0 br_0 wl_122 vdd gnd dummy_cell_6t
Xbit_r123_c0 bl_0 br_0 wl_123 vdd gnd dummy_cell_6t
Xbit_r124_c0 bl_0 br_0 wl_124 vdd gnd dummy_cell_6t
Xbit_r125_c0 bl_0 br_0 wl_125 vdd gnd dummy_cell_6t
Xbit_r126_c0 bl_0 br_0 wl_126 vdd gnd dummy_cell_6t
Xbit_r127_c0 bl_0 br_0 wl_127 vdd gnd dummy_cell_6t
Xbit_r128_c0 bl_0 br_0 wl_128 vdd gnd dummy_cell_6t
Xbit_r129_c0 bl_0 br_0 wl_129 vdd gnd dummy_cell_6t
Xbit_r130_c0 bl_0 br_0 wl_130 vdd gnd dummy_cell_6t
.ENDS dummy_array_1

.SUBCKT replica_bitcell_array_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 rbl_bl_0 rbl_br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 rbl_wl_0 vdd gnd
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
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
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
* INPUT : wl_32 
* INPUT : wl_33 
* INPUT : wl_34 
* INPUT : wl_35 
* INPUT : wl_36 
* INPUT : wl_37 
* INPUT : wl_38 
* INPUT : wl_39 
* INPUT : wl_40 
* INPUT : wl_41 
* INPUT : wl_42 
* INPUT : wl_43 
* INPUT : wl_44 
* INPUT : wl_45 
* INPUT : wl_46 
* INPUT : wl_47 
* INPUT : wl_48 
* INPUT : wl_49 
* INPUT : wl_50 
* INPUT : wl_51 
* INPUT : wl_52 
* INPUT : wl_53 
* INPUT : wl_54 
* INPUT : wl_55 
* INPUT : wl_56 
* INPUT : wl_57 
* INPUT : wl_58 
* INPUT : wl_59 
* INPUT : wl_60 
* INPUT : wl_61 
* INPUT : wl_62 
* INPUT : wl_63 
* INPUT : wl_64 
* INPUT : wl_65 
* INPUT : wl_66 
* INPUT : wl_67 
* INPUT : wl_68 
* INPUT : wl_69 
* INPUT : wl_70 
* INPUT : wl_71 
* INPUT : wl_72 
* INPUT : wl_73 
* INPUT : wl_74 
* INPUT : wl_75 
* INPUT : wl_76 
* INPUT : wl_77 
* INPUT : wl_78 
* INPUT : wl_79 
* INPUT : wl_80 
* INPUT : wl_81 
* INPUT : wl_82 
* INPUT : wl_83 
* INPUT : wl_84 
* INPUT : wl_85 
* INPUT : wl_86 
* INPUT : wl_87 
* INPUT : wl_88 
* INPUT : wl_89 
* INPUT : wl_90 
* INPUT : wl_91 
* INPUT : wl_92 
* INPUT : wl_93 
* INPUT : wl_94 
* INPUT : wl_95 
* INPUT : wl_96 
* INPUT : wl_97 
* INPUT : wl_98 
* INPUT : wl_99 
* INPUT : wl_100 
* INPUT : wl_101 
* INPUT : wl_102 
* INPUT : wl_103 
* INPUT : wl_104 
* INPUT : wl_105 
* INPUT : wl_106 
* INPUT : wl_107 
* INPUT : wl_108 
* INPUT : wl_109 
* INPUT : wl_110 
* INPUT : wl_111 
* INPUT : wl_112 
* INPUT : wl_113 
* INPUT : wl_114 
* INPUT : wl_115 
* INPUT : wl_116 
* INPUT : wl_117 
* INPUT : wl_118 
* INPUT : wl_119 
* INPUT : wl_120 
* INPUT : wl_121 
* INPUT : wl_122 
* INPUT : wl_123 
* INPUT : wl_124 
* INPUT : wl_125 
* INPUT : wl_126 
* INPUT : wl_127 
* INPUT : rbl_wl_0 
* POWER : vdd 
* GROUND: gnd 
* rows: 128 cols: 64
Xbitcell_array bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 vdd gnd bitcell_array_0
Xreplica_col_0 rbl_bl_0 rbl_br_0 dummy_wl_bot rbl_wl_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 dummy_wl_top vdd gnd replica_column_0
Xdummy_row_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 rbl_wl_0 vdd gnd dummy_array_0
Xdummy_row_bot bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 dummy_wl_bot vdd gnd dummy_array_0
Xdummy_row_top bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 dummy_wl_top vdd gnd dummy_array_0
Xdummy_col_left dummy_bl_left dummy_br_left dummy_wl_bot rbl_wl_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 dummy_wl_top vdd gnd dummy_array_1
Xdummy_col_right dummy_bl_right dummy_br_right dummy_wl_bot rbl_wl_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 dummy_wl_top vdd gnd dummy_array_1
.ENDS replica_bitcell_array_0

.SUBCKT pinv_6 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_6

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
Xpre_inv_0 in_0 inbar_0 vdd gnd pinv_6
Xpre_inv_1 in_1 inbar_1 vdd gnd pinv_6
Xpre_inv_2 in_2 inbar_2 vdd gnd pinv_6
Xpre_nand_inv_0 Z_0 out_0 vdd gnd pinv_6
Xpre_nand_inv_1 Z_1 out_1 vdd gnd pinv_6
Xpre_nand_inv_2 Z_2 out_2 vdd gnd pinv_6
Xpre_nand_inv_3 Z_3 out_3 vdd gnd pinv_6
Xpre_nand_inv_4 Z_4 out_4 vdd gnd pinv_6
Xpre_nand_inv_5 Z_5 out_5 vdd gnd pinv_6
Xpre_nand_inv_6 Z_6 out_6 vdd gnd pinv_6
Xpre_nand_inv_7 Z_7 out_7 vdd gnd pinv_6
XXpre3x8_nand_0 inbar_0 inbar_1 inbar_2 Z_0 vdd gnd pnand3_1
XXpre3x8_nand_1 in_0 inbar_1 inbar_2 Z_1 vdd gnd pnand3_1
XXpre3x8_nand_2 inbar_0 in_1 inbar_2 Z_2 vdd gnd pnand3_1
XXpre3x8_nand_3 in_0 in_1 inbar_2 Z_3 vdd gnd pnand3_1
XXpre3x8_nand_4 inbar_0 inbar_1 in_2 Z_4 vdd gnd pnand3_1
XXpre3x8_nand_5 in_0 inbar_1 in_2 Z_5 vdd gnd pnand3_1
XXpre3x8_nand_6 inbar_0 in_1 in_2 Z_6 vdd gnd pnand3_1
XXpre3x8_nand_7 in_0 in_1 in_2 Z_7 vdd gnd pnand3_1
.ENDS hierarchical_predecode3x8_1

.SUBCKT bank dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 rbl_bl_0 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7 addr0_8 addr0_9 s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout0_2 
* OUTPUT: dout0_3 
* OUTPUT: dout0_4 
* OUTPUT: dout0_5 
* OUTPUT: dout0_6 
* OUTPUT: dout0_7 
* OUTPUT: rbl_bl_0 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : addr0_5 
* INPUT : addr0_6 
* INPUT : addr0_7 
* INPUT : addr0_8 
* INPUT : addr0_9 
* INPUT : s_en0 
* INPUT : p_en_bar0 
* INPUT : w_en0 
* INPUT : wl_en0 
* POWER : vdd 
* GROUND: gnd 
Xreplica_bitcell_array bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 rbl_bl_0 rbl_br_0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 wl_en0 vdd gnd replica_bitcell_array_0
Xport_data0 rbl_bl_0 rbl_br_0 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 sel0_0 sel0_1 sel0_2 sel0_3 sel0_4 sel0_5 sel0_6 sel0_7 s_en0 p_en_bar0 w_en0 vdd gnd port_data_0
Xport_address0 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7 addr0_8 addr0_9 wl_en0 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62 wl_63 wl_64 wl_65 wl_66 wl_67 wl_68 wl_69 wl_70 wl_71 wl_72 wl_73 wl_74 wl_75 wl_76 wl_77 wl_78 wl_79 wl_80 wl_81 wl_82 wl_83 wl_84 wl_85 wl_86 wl_87 wl_88 wl_89 wl_90 wl_91 wl_92 wl_93 wl_94 wl_95 wl_96 wl_97 wl_98 wl_99 wl_100 wl_101 wl_102 wl_103 wl_104 wl_105 wl_106 wl_107 wl_108 wl_109 wl_110 wl_111 wl_112 wl_113 wl_114 wl_115 wl_116 wl_117 wl_118 wl_119 wl_120 wl_121 wl_122 wl_123 wl_124 wl_125 wl_126 wl_127 vdd gnd port_address_0
Xcol_address_decoder0 addr0_0 addr0_1 addr0_2 sel0_0 sel0_1 sel0_2 sel0_3 sel0_4 sel0_5 sel0_6 sel0_7 vdd gnd hierarchical_predecode3x8_1
.ENDS bank

* ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT pinv_7 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pinv_7

* ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT pinv_8 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p
.ENDS pinv_8

.SUBCKT dff_buf_0 D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff D qint clk vdd gnd dff
Xdff_buf_inv1 qint Qb vdd gnd pinv_7
Xdff_buf_inv2 Qb Q vdd gnd pinv_8
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

.SUBCKT pinv_9 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p
.ENDS pinv_9

.SUBCKT pdriver_1 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 4]
Xbuf_inv1 A Zb1_int vdd gnd pinv_9
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_9
Xbuf_inv3 Zb2_int Z vdd gnd pinv_8
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

.SUBCKT pinv_10 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.865u l=0.05u pd=1.83u ps=1.83u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.28750000000000003u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS pinv_10

* ptx M{0} {1} nmos_vtg m=19 w=0.3025u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

* ptx M{0} {1} pmos_vtg m=19 w=0.91u l=0.05u pd=1.92u ps=1.92u as=0.11p ad=0.11p

.SUBCKT pinv_11 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=19 w=0.91u l=0.05u pd=1.92u ps=1.92u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=19 w=0.3025u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p
.ENDS pinv_11

.SUBCKT pbuf_0 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xbuf_inv1 A zb_int vdd gnd pinv_10
Xbuf_inv2 zb_int Z vdd gnd pinv_11
.ENDS pbuf_0

* ptx M{0} {1} nmos_vtg m=4 w=0.2925u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p

* ptx M{0} {1} pmos_vtg m=4 w=0.8775000000000001u l=0.05u pd=1.86u ps=1.86u as=0.11p ad=0.11p

.SUBCKT pinv_12 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.8775000000000001u l=0.05u pd=1.86u ps=1.86u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.2925u l=0.05u pd=0.68u ps=0.68u as=0.04p ad=0.04p
.ENDS pinv_12

* ptx M{0} {1} nmos_vtg m=12 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

* ptx M{0} {1} pmos_vtg m=12 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p

.SUBCKT pinv_13 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=12 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=12 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p
.ENDS pinv_13

.SUBCKT pdriver_2 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 1, 4, 13, 40]
Xbuf_inv1 A Zb1_int vdd gnd pinv_9
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_9
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_9
Xbuf_inv4 Zb3_int Zb4_int vdd gnd pinv_8
Xbuf_inv5 Zb4_int Zb5_int vdd gnd pinv_12
Xbuf_inv6 Zb5_int Z vdd gnd pinv_13
.ENDS pdriver_2

* ptx M{0} {1} nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p

.SUBCKT pinv_14 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p
.ENDS pinv_14

* ptx M{0} {1} nmos_vtg m=5 w=0.2525u l=0.05u pd=0.60u ps=0.60u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=5 w=0.755u l=0.05u pd=1.61u ps=1.61u as=0.09p ad=0.09p

.SUBCKT pinv_15 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.755u l=0.05u pd=1.61u ps=1.61u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.2525u l=0.05u pd=0.60u ps=0.60u as=0.03p ad=0.03p
.ENDS pinv_15

* ptx M{0} {1} nmos_vtg m=13 w=0.2975u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p

* ptx M{0} {1} pmos_vtg m=13 w=0.8925000000000001u l=0.05u pd=1.89u ps=1.89u as=0.11p ad=0.11p

.SUBCKT pinv_16 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=13 w=0.8925000000000001u l=0.05u pd=1.89u ps=1.89u as=0.11p ad=0.11p
Mpinv_nmos Z A gnd gnd nmos_vtg m=13 w=0.2975u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p
.ENDS pinv_16

.SUBCKT pdriver_3 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 2, 5, 14, 43]
Xbuf_inv1 A Zb1_int vdd gnd pinv_9
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_9
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_7
Xbuf_inv4 Zb3_int Zb4_int vdd gnd pinv_14
Xbuf_inv5 Zb4_int Zb5_int vdd gnd pinv_15
Xbuf_inv6 Zb5_int Z vdd gnd pinv_16
.ENDS pdriver_3

.SUBCKT pand3_0 A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand A B C zb_int vdd gnd pnand3_1
Xpand3_inv zb_int Z vdd gnd pinv_10
.ENDS pand3_0

* ptx M{0} {1} nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p

.SUBCKT pinv_17 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p
.ENDS pinv_17

.SUBCKT pand3_1 A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand A B C zb_int vdd gnd pnand3_1
Xpand3_inv zb_int Z vdd gnd pinv_17
.ENDS pand3_1

* ptx M{0} {1} nmos_vtg m=3 w=0.21u l=0.05u pd=0.52u ps=0.52u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=3 w=0.63u l=0.05u pd=1.36u ps=1.36u as=0.08p ad=0.08p

.SUBCKT pinv_18 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.63u l=0.05u pd=1.36u ps=1.36u as=0.08p ad=0.08p
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.21u l=0.05u pd=0.52u ps=0.52u as=0.03p ad=0.03p
.ENDS pinv_18

* ptx M{0} {1} nmos_vtg m=7 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* ptx M{0} {1} pmos_vtg m=7 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT pinv_19 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=7 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p
Mpinv_nmos Z A gnd gnd nmos_vtg m=7 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p
.ENDS pinv_19

.SUBCKT pdriver_4 A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 2, 7, 21]
Xbuf_inv1 A Zb1_int vdd gnd pinv_9
Xbuf_inv2 Zb1_int Zb2_int vdd gnd pinv_7
Xbuf_inv3 Zb2_int Zb3_int vdd gnd pinv_18
Xbuf_inv4 Zb3_int Z vdd gnd pinv_19
.ENDS pdriver_4

.SUBCKT delay_chain_0 in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0 in dout_1 vdd gnd pinv_5
Xdload_0_0 dout_1 n_0_0 vdd gnd pinv_5
Xdload_0_1 dout_1 n_0_1 vdd gnd pinv_5
Xdload_0_2 dout_1 n_0_2 vdd gnd pinv_5
Xdload_0_3 dout_1 n_0_3 vdd gnd pinv_5
Xdinv1 dout_1 dout_2 vdd gnd pinv_5
Xdload_1_0 dout_2 n_1_0 vdd gnd pinv_5
Xdload_1_1 dout_2 n_1_1 vdd gnd pinv_5
Xdload_1_2 dout_2 n_1_2 vdd gnd pinv_5
Xdload_1_3 dout_2 n_1_3 vdd gnd pinv_5
Xdinv2 dout_2 dout_3 vdd gnd pinv_5
Xdload_2_0 dout_3 n_2_0 vdd gnd pinv_5
Xdload_2_1 dout_3 n_2_1 vdd gnd pinv_5
Xdload_2_2 dout_3 n_2_2 vdd gnd pinv_5
Xdload_2_3 dout_3 n_2_3 vdd gnd pinv_5
Xdinv3 dout_3 dout_4 vdd gnd pinv_5
Xdload_3_0 dout_4 n_3_0 vdd gnd pinv_5
Xdload_3_1 dout_4 n_3_1 vdd gnd pinv_5
Xdload_3_2 dout_4 n_3_2 vdd gnd pinv_5
Xdload_3_3 dout_4 n_3_3 vdd gnd pinv_5
Xdinv4 dout_4 dout_5 vdd gnd pinv_5
Xdload_4_0 dout_5 n_4_0 vdd gnd pinv_5
Xdload_4_1 dout_5 n_4_1 vdd gnd pinv_5
Xdload_4_2 dout_5 n_4_2 vdd gnd pinv_5
Xdload_4_3 dout_5 n_4_3 vdd gnd pinv_5
Xdinv5 dout_5 dout_6 vdd gnd pinv_5
Xdload_5_0 dout_6 n_5_0 vdd gnd pinv_5
Xdload_5_1 dout_6 n_5_1 vdd gnd pinv_5
Xdload_5_2 dout_6 n_5_2 vdd gnd pinv_5
Xdload_5_3 dout_6 n_5_3 vdd gnd pinv_5
Xdinv6 dout_6 dout_7 vdd gnd pinv_5
Xdload_6_0 dout_7 n_6_0 vdd gnd pinv_5
Xdload_6_1 dout_7 n_6_1 vdd gnd pinv_5
Xdload_6_2 dout_7 n_6_2 vdd gnd pinv_5
Xdload_6_3 dout_7 n_6_3 vdd gnd pinv_5
Xdinv7 dout_7 dout_8 vdd gnd pinv_5
Xdload_7_0 dout_8 n_7_0 vdd gnd pinv_5
Xdload_7_1 dout_8 n_7_1 vdd gnd pinv_5
Xdload_7_2 dout_8 n_7_2 vdd gnd pinv_5
Xdload_7_3 dout_8 n_7_3 vdd gnd pinv_5
Xdinv8 dout_8 out vdd gnd pinv_5
Xdload_8_0 out n_8_0 vdd gnd pinv_5
Xdload_8_1 out n_8_1 vdd gnd pinv_5
Xdload_8_2 out n_8_2 vdd gnd pinv_5
Xdload_8_3 out n_8_3 vdd gnd pinv_5
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
* word_size 8
Xctrl_dffs csb web cs_bar cs we_bar we clk_buf vdd gnd dff_buf_array_0
Xclkbuf clk clk_buf vdd gnd pdriver_2
Xinv_clk_bar clk_buf clk_bar vdd gnd pinv_9
Xand2_gated_clk_bar cs clk_bar gated_clk_bar vdd gnd pand2_0
Xand2_gated_clk_buf clk_buf cs gated_clk_buf vdd gnd pand2_0
Xbuf_wl_en gated_clk_bar wl_en vdd gnd pdriver_3
Xrbl_bl_delay_inv rbl_bl_delay rbl_bl_delay_bar vdd gnd pinv_9
Xw_en_and we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd pand3_0
Xbuf_s_en_and rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd pand3_1
Xdelay_chain rbl_bl rbl_bl_delay vdd gnd delay_chain_0
Xnand_p_en_bar gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd pnand2_1
Xbuf_p_en_bar p_en_bar_unbuf p_en_bar vdd gnd pdriver_4
.ENDS control_logic_rw

.SUBCKT sram_sp_w8_b1024_freepdk45 din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7] addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] addr0[5] addr0[6] addr0[7] addr0[8] addr0[9] csb0 web0 clk0 dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6] dout0[7] vdd gnd
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : addr0[5] 
* INPUT : addr0[6] 
* INPUT : addr0[7] 
* INPUT : addr0[8] 
* INPUT : addr0[9] 
* INPUT : csb0 
* INPUT : web0 
* INPUT : clk0 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout0[2] 
* OUTPUT: dout0[3] 
* OUTPUT: dout0[4] 
* OUTPUT: dout0[5] 
* OUTPUT: dout0[6] 
* OUTPUT: dout0[7] 
* POWER : vdd 
* GROUND: gnd 
Xbank0 dout0[0] dout0[1] dout0[2] dout0[3] dout0[4] dout0[5] dout0[6] dout0[7] rbl_bl0 bank_din0[0] bank_din0[1] bank_din0[2] bank_din0[3] bank_din0[4] bank_din0[5] bank_din0[6] bank_din0[7] a0[0] a0[1] a0[2] a0[3] a0[4] a0[5] a0[6] a0[7] a0[8] a0[9] s_en0 p_en_bar0 w_en0 wl_en0 vdd gnd bank
Xcontrol0 csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd control_logic_rw
Xrow_address0 addr0[3] addr0[4] addr0[5] addr0[6] addr0[7] addr0[8] addr0[9] a0[3] a0[4] a0[5] a0[6] a0[7] a0[8] a0[9] clk_buf0 vdd gnd row_addr_dff
Xcol_address0 addr0[0] addr0[1] addr0[2] a0[0] a0[1] a0[2] clk_buf0 vdd gnd col_addr_dff
Xdata_dff0 din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7] bank_din0[0] bank_din0[1] bank_din0[2] bank_din0[3] bank_din0[4] bank_din0[5] bank_din0[6] bank_din0[7] clk_buf0 vdd gnd data_dff
.ENDS sram_sp_w8_b1024_freepdk45
