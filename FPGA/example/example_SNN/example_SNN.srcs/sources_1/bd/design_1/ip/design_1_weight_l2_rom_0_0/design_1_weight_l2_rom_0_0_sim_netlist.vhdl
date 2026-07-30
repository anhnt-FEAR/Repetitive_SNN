-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Mon Jul 24 17:01:42 2023
-- Host        : Doanh-Ngo running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/doanh/Work/SNN_Undervoltage_Stack_SRAM/FPGA/example/example_SNN/example_SNN.srcs/sources_1/bd/design_1/ip/design_1_weight_l2_rom_0_0/design_1_weight_l2_rom_0_0_sim_netlist.vhdl
-- Design      : design_1_weight_l2_rom_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_weight_l2_rom_0_0_weight_l2_rom is
  port (
    addr_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 79 downto 0 );
    we : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_weight_l2_rom_0_0_weight_l2_rom : entity is "weight_l2_rom";
end design_1_weight_l2_rom_0_0_weight_l2_rom;

architecture STRUCTURE of design_1_weight_l2_rom_0_0_weight_l2_rom is
  signal \^addr_out\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \addr_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \addr_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \addr_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[79]_i_1_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal g0_b16_n_0 : STD_LOGIC;
  signal g0_b17_n_0 : STD_LOGIC;
  signal g0_b18_n_0 : STD_LOGIC;
  signal g0_b19_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b20_n_0 : STD_LOGIC;
  signal g0_b21_n_0 : STD_LOGIC;
  signal g0_b22_n_0 : STD_LOGIC;
  signal g0_b23_n_0 : STD_LOGIC;
  signal g0_b24_n_0 : STD_LOGIC;
  signal g0_b25_n_0 : STD_LOGIC;
  signal g0_b26_n_0 : STD_LOGIC;
  signal g0_b27_n_0 : STD_LOGIC;
  signal g0_b28_n_0 : STD_LOGIC;
  signal g0_b29_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b30_n_0 : STD_LOGIC;
  signal g0_b31_n_0 : STD_LOGIC;
  signal g0_b32_n_0 : STD_LOGIC;
  signal g0_b33_n_0 : STD_LOGIC;
  signal g0_b34_n_0 : STD_LOGIC;
  signal g0_b35_n_0 : STD_LOGIC;
  signal g0_b36_n_0 : STD_LOGIC;
  signal g0_b37_n_0 : STD_LOGIC;
  signal g0_b38_n_0 : STD_LOGIC;
  signal g0_b39_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b40_n_0 : STD_LOGIC;
  signal g0_b41_n_0 : STD_LOGIC;
  signal g0_b42_n_0 : STD_LOGIC;
  signal g0_b43_n_0 : STD_LOGIC;
  signal g0_b44_n_0 : STD_LOGIC;
  signal g0_b45_n_0 : STD_LOGIC;
  signal g0_b46_n_0 : STD_LOGIC;
  signal g0_b47_n_0 : STD_LOGIC;
  signal g0_b48_n_0 : STD_LOGIC;
  signal g0_b49_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b50_n_0 : STD_LOGIC;
  signal g0_b51_n_0 : STD_LOGIC;
  signal g0_b52_n_0 : STD_LOGIC;
  signal g0_b53_n_0 : STD_LOGIC;
  signal g0_b54_n_0 : STD_LOGIC;
  signal g0_b55_n_0 : STD_LOGIC;
  signal g0_b56_n_0 : STD_LOGIC;
  signal g0_b57_n_0 : STD_LOGIC;
  signal g0_b58_n_0 : STD_LOGIC;
  signal g0_b59_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b60_n_0 : STD_LOGIC;
  signal g0_b61_n_0 : STD_LOGIC;
  signal g0_b62_n_0 : STD_LOGIC;
  signal g0_b63_n_0 : STD_LOGIC;
  signal g0_b64_n_0 : STD_LOGIC;
  signal g0_b65_n_0 : STD_LOGIC;
  signal g0_b66_n_0 : STD_LOGIC;
  signal g0_b67_n_0 : STD_LOGIC;
  signal g0_b68_n_0 : STD_LOGIC;
  signal g0_b69_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b70_n_0 : STD_LOGIC;
  signal g0_b71_n_0 : STD_LOGIC;
  signal g0_b72_n_0 : STD_LOGIC;
  signal g0_b73_n_0 : STD_LOGIC;
  signal g0_b74_n_0 : STD_LOGIC;
  signal g0_b75_n_0 : STD_LOGIC;
  signal g0_b76_n_0 : STD_LOGIC;
  signal g0_b77_n_0 : STD_LOGIC;
  signal g0_b78_n_0 : STD_LOGIC;
  signal g0_b79_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal \i[0]_i_2_n_0\ : STD_LOGIC;
  signal \i[0]_i_3_n_0\ : STD_LOGIC;
  signal \i[0]_i_4_n_0\ : STD_LOGIC;
  signal \i[0]_i_5_n_0\ : STD_LOGIC;
  signal \i[0]_i_6_n_0\ : STD_LOGIC;
  signal \i[12]_i_2_n_0\ : STD_LOGIC;
  signal \i[12]_i_3_n_0\ : STD_LOGIC;
  signal \i[12]_i_4_n_0\ : STD_LOGIC;
  signal \i[12]_i_5_n_0\ : STD_LOGIC;
  signal \i[16]_i_2_n_0\ : STD_LOGIC;
  signal \i[16]_i_3_n_0\ : STD_LOGIC;
  signal \i[16]_i_4_n_0\ : STD_LOGIC;
  signal \i[16]_i_5_n_0\ : STD_LOGIC;
  signal \i[20]_i_2_n_0\ : STD_LOGIC;
  signal \i[20]_i_3_n_0\ : STD_LOGIC;
  signal \i[20]_i_4_n_0\ : STD_LOGIC;
  signal \i[20]_i_5_n_0\ : STD_LOGIC;
  signal \i[24]_i_2_n_0\ : STD_LOGIC;
  signal \i[24]_i_3_n_0\ : STD_LOGIC;
  signal \i[24]_i_4_n_0\ : STD_LOGIC;
  signal \i[24]_i_5_n_0\ : STD_LOGIC;
  signal \i[28]_i_2_n_0\ : STD_LOGIC;
  signal \i[28]_i_3_n_0\ : STD_LOGIC;
  signal \i[28]_i_4_n_0\ : STD_LOGIC;
  signal \i[28]_i_5_n_0\ : STD_LOGIC;
  signal \i[4]_i_2_n_0\ : STD_LOGIC;
  signal \i[4]_i_3_n_0\ : STD_LOGIC;
  signal \i[4]_i_4_n_0\ : STD_LOGIC;
  signal \i[4]_i_5_n_0\ : STD_LOGIC;
  signal \i[8]_i_2_n_0\ : STD_LOGIC;
  signal \i[8]_i_3_n_0\ : STD_LOGIC;
  signal \i[8]_i_4_n_0\ : STD_LOGIC;
  signal \i[8]_i_5_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \i_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal read_reg : STD_LOGIC;
  signal \read_reg1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_5_n_1\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_5_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_5_n_3\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_7_n_1\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_7_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_7_n_3\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__0_n_1\ : STD_LOGIC;
  signal \read_reg1_carry__0_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__0_n_3\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_4_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_4_n_3\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_5_n_1\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_5_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_5_n_3\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \read_reg1_carry__1_n_1\ : STD_LOGIC;
  signal \read_reg1_carry__1_n_2\ : STD_LOGIC;
  signal \read_reg1_carry__1_n_3\ : STD_LOGIC;
  signal read_reg1_carry_i_10_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_11_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_12_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_13_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_14_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_15_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_16_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_17_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_18_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_19_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_1_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_5_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_5_n_1 : STD_LOGIC;
  signal read_reg1_carry_i_5_n_2 : STD_LOGIC;
  signal read_reg1_carry_i_5_n_3 : STD_LOGIC;
  signal read_reg1_carry_i_6_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_6_n_1 : STD_LOGIC;
  signal read_reg1_carry_i_6_n_2 : STD_LOGIC;
  signal read_reg1_carry_i_6_n_3 : STD_LOGIC;
  signal read_reg1_carry_i_7_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_7_n_1 : STD_LOGIC;
  signal read_reg1_carry_i_7_n_2 : STD_LOGIC;
  signal read_reg1_carry_i_7_n_3 : STD_LOGIC;
  signal read_reg1_carry_i_8_n_0 : STD_LOGIC;
  signal read_reg1_carry_i_9_n_0 : STD_LOGIC;
  signal read_reg1_carry_n_0 : STD_LOGIC;
  signal read_reg1_carry_n_1 : STD_LOGIC;
  signal read_reg1_carry_n_2 : STD_LOGIC;
  signal read_reg1_carry_n_3 : STD_LOGIC;
  signal read_reg2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal read_reg_i_1_n_0 : STD_LOGIC;
  signal \NLW_i_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_read_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_reg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_reg1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_read_reg1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_read_reg1_carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_read_reg1_carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_out[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_out[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_out[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_out[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_out[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_out[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_out[8]_i_1\ : label is "soft_lutpair0";
begin
  addr_out(9 downto 0) <= \^addr_out\(9 downto 0);
\addr_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_reg,
      I1 => \^addr_out\(0),
      O => \addr_out[0]_i_1_n_0\
    );
\addr_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^addr_out\(1),
      I1 => \^addr_out\(0),
      I2 => read_reg,
      O => p_0_in(1)
    );
\addr_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \^addr_out\(2),
      I1 => \^addr_out\(1),
      I2 => \^addr_out\(0),
      I3 => read_reg,
      O => p_0_in(2)
    );
\addr_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \^addr_out\(3),
      I1 => \^addr_out\(2),
      I2 => \^addr_out\(0),
      I3 => \^addr_out\(1),
      I4 => read_reg,
      O => p_0_in(3)
    );
\addr_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \^addr_out\(4),
      I1 => \^addr_out\(3),
      I2 => \^addr_out\(1),
      I3 => \^addr_out\(0),
      I4 => \^addr_out\(2),
      I5 => read_reg,
      O => p_0_in(4)
    );
\addr_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^addr_out\(5),
      I1 => \addr_out[5]_i_2_n_0\,
      I2 => read_reg,
      O => p_0_in(5)
    );
\addr_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^addr_out\(4),
      I1 => \^addr_out\(2),
      I2 => \^addr_out\(0),
      I3 => \^addr_out\(1),
      I4 => \^addr_out\(3),
      O => \addr_out[5]_i_2_n_0\
    );
\addr_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^addr_out\(6),
      I1 => \addr_out[9]_i_3_n_0\,
      I2 => read_reg,
      O => p_0_in(6)
    );
\addr_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \^addr_out\(7),
      I1 => \^addr_out\(6),
      I2 => \addr_out[9]_i_3_n_0\,
      I3 => read_reg,
      O => p_0_in(7)
    );
\addr_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \^addr_out\(8),
      I1 => \^addr_out\(7),
      I2 => \addr_out[9]_i_3_n_0\,
      I3 => \^addr_out\(6),
      I4 => read_reg,
      O => p_0_in(8)
    );
\addr_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \^addr_out\(9),
      I1 => \^addr_out\(8),
      I2 => \^addr_out\(6),
      I3 => \addr_out[9]_i_3_n_0\,
      I4 => \^addr_out\(7),
      I5 => read_reg,
      O => p_0_in(9)
    );
\addr_out[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \addr_out[9]_i_2_n_0\
    );
\addr_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^addr_out\(5),
      I1 => \^addr_out\(3),
      I2 => \^addr_out\(1),
      I3 => \^addr_out\(0),
      I4 => \^addr_out\(2),
      I5 => \^addr_out\(4),
      O => \addr_out[9]_i_3_n_0\
    );
\addr_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => \addr_out[0]_i_1_n_0\,
      Q => \^addr_out\(0)
    );
\addr_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^addr_out\(1)
    );
\addr_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^addr_out\(2)
    );
\addr_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^addr_out\(3)
    );
\addr_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(4),
      Q => \^addr_out\(4)
    );
\addr_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(5),
      Q => \^addr_out\(5)
    );
\addr_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(6),
      Q => \^addr_out\(6)
    );
\addr_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(7),
      Q => \^addr_out\(7)
    );
\addr_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(8),
      Q => \^addr_out\(8)
    );
\addr_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => p_0_in(9),
      Q => \^addr_out\(9)
    );
cs_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \addr_out[9]_i_2_n_0\,
      D => read_reg,
      Q => we
    );
\data_out[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_n,
      I1 => read_reg,
      O => \data_out[79]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b0_n_0,
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b10_n_0,
      Q => data_out(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b11_n_0,
      Q => data_out(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b12_n_0,
      Q => data_out(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b13_n_0,
      Q => data_out(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b14_n_0,
      Q => data_out(14),
      R => '0'
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b15_n_0,
      Q => data_out(15),
      R => '0'
    );
\data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b16_n_0,
      Q => data_out(16),
      R => '0'
    );
\data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b17_n_0,
      Q => data_out(17),
      R => '0'
    );
\data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b18_n_0,
      Q => data_out(18),
      R => '0'
    );
\data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b19_n_0,
      Q => data_out(19),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b1_n_0,
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b20_n_0,
      Q => data_out(20),
      R => '0'
    );
\data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b21_n_0,
      Q => data_out(21),
      R => '0'
    );
\data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b22_n_0,
      Q => data_out(22),
      R => '0'
    );
\data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b23_n_0,
      Q => data_out(23),
      R => '0'
    );
\data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b24_n_0,
      Q => data_out(24),
      R => '0'
    );
\data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b25_n_0,
      Q => data_out(25),
      R => '0'
    );
\data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b26_n_0,
      Q => data_out(26),
      R => '0'
    );
\data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b27_n_0,
      Q => data_out(27),
      R => '0'
    );
\data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b28_n_0,
      Q => data_out(28),
      R => '0'
    );
\data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b29_n_0,
      Q => data_out(29),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b2_n_0,
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b30_n_0,
      Q => data_out(30),
      R => '0'
    );
\data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b31_n_0,
      Q => data_out(31),
      R => '0'
    );
\data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b32_n_0,
      Q => data_out(32),
      R => '0'
    );
\data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b33_n_0,
      Q => data_out(33),
      R => '0'
    );
\data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b34_n_0,
      Q => data_out(34),
      R => '0'
    );
\data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b35_n_0,
      Q => data_out(35),
      R => '0'
    );
\data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b36_n_0,
      Q => data_out(36),
      R => '0'
    );
\data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b37_n_0,
      Q => data_out(37),
      R => '0'
    );
\data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b38_n_0,
      Q => data_out(38),
      R => '0'
    );
\data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b39_n_0,
      Q => data_out(39),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b3_n_0,
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b40_n_0,
      Q => data_out(40),
      R => '0'
    );
\data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b41_n_0,
      Q => data_out(41),
      R => '0'
    );
\data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b42_n_0,
      Q => data_out(42),
      R => '0'
    );
\data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b43_n_0,
      Q => data_out(43),
      R => '0'
    );
\data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b44_n_0,
      Q => data_out(44),
      R => '0'
    );
\data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b45_n_0,
      Q => data_out(45),
      R => '0'
    );
\data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b46_n_0,
      Q => data_out(46),
      R => '0'
    );
\data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b47_n_0,
      Q => data_out(47),
      R => '0'
    );
\data_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b48_n_0,
      Q => data_out(48),
      R => '0'
    );
\data_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b49_n_0,
      Q => data_out(49),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b4_n_0,
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b50_n_0,
      Q => data_out(50),
      R => '0'
    );
\data_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b51_n_0,
      Q => data_out(51),
      R => '0'
    );
\data_out_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b52_n_0,
      Q => data_out(52),
      R => '0'
    );
\data_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b53_n_0,
      Q => data_out(53),
      R => '0'
    );
\data_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b54_n_0,
      Q => data_out(54),
      R => '0'
    );
\data_out_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b55_n_0,
      Q => data_out(55),
      R => '0'
    );
\data_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b56_n_0,
      Q => data_out(56),
      R => '0'
    );
\data_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b57_n_0,
      Q => data_out(57),
      R => '0'
    );
\data_out_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b58_n_0,
      Q => data_out(58),
      R => '0'
    );
\data_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b59_n_0,
      Q => data_out(59),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b5_n_0,
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b60_n_0,
      Q => data_out(60),
      R => '0'
    );
\data_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b61_n_0,
      Q => data_out(61),
      R => '0'
    );
\data_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b62_n_0,
      Q => data_out(62),
      R => '0'
    );
\data_out_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b63_n_0,
      Q => data_out(63),
      R => '0'
    );
\data_out_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b64_n_0,
      Q => data_out(64),
      R => '0'
    );
\data_out_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b65_n_0,
      Q => data_out(65),
      R => '0'
    );
\data_out_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b66_n_0,
      Q => data_out(66),
      R => '0'
    );
\data_out_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b67_n_0,
      Q => data_out(67),
      R => '0'
    );
\data_out_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b68_n_0,
      Q => data_out(68),
      R => '0'
    );
\data_out_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b69_n_0,
      Q => data_out(69),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b6_n_0,
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b70_n_0,
      Q => data_out(70),
      R => '0'
    );
\data_out_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b71_n_0,
      Q => data_out(71),
      R => '0'
    );
\data_out_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b72_n_0,
      Q => data_out(72),
      R => '0'
    );
\data_out_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b73_n_0,
      Q => data_out(73),
      R => '0'
    );
\data_out_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b74_n_0,
      Q => data_out(74),
      R => '0'
    );
\data_out_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b75_n_0,
      Q => data_out(75),
      R => '0'
    );
\data_out_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b76_n_0,
      Q => data_out(76),
      R => '0'
    );
\data_out_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b77_n_0,
      Q => data_out(77),
      R => '0'
    );
\data_out_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b78_n_0,
      Q => data_out(78),
      R => '0'
    );
\data_out_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b79_n_0,
      Q => data_out(79),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b7_n_0,
      Q => data_out(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b8_n_0,
      Q => data_out(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => g0_b9_n_0,
      Q => data_out(9),
      R => '0'
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000816FC561C7BD"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000073059F64359"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B7A187B1C144"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E5483064784E"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b11_n_0
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C1DB9A1BB8BB"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b12_n_0
    );
g0_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003D2C19204C89"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b13_n_0
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022164CC25130"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b14_n_0
    );
g0_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A33E5EE25BFD"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b15_n_0
    );
g0_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A027B579ECE2"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b16_n_0
    );
g0_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C1039C7A5441"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b17_n_0
    );
g0_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000042DEA0EB261F"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b18_n_0
    );
g0_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011F124860146"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b19_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008C358B3DE3BA"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b2_n_0
    );
g0_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F4BB9F953D88"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b20_n_0
    );
g0_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000060CC56B30A0"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b21_n_0
    );
g0_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A04178E35F9D"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b22_n_0
    );
g0_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B449FDE37F9D"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b23_n_0
    );
g0_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003D534AAA8AD9"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b24_n_0
    );
g0_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000079434D50F796"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b25_n_0
    );
g0_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F63BA0988A5"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b26_n_0
    );
g0_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAABB0A0F9F5"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b27_n_0
    );
g0_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DA91DDA6DA53"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b28_n_0
    );
g0_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B46C6B4C4D8C"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b29_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000090D42711D5A"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b3_n_0
    );
g0_b30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000887453AE7EDC"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b30_n_0
    );
g0_b31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BC745BAE7FDC"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b31_n_0
    );
g0_b32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A6A48BC2ACDD"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b32_n_0
    );
g0_b33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002E6F1F854AB1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b33_n_0
    );
g0_b34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000090359761523"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b34_n_0
    );
g0_b35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005D5D56D60A22"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b35_n_0
    );
g0_b36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000033E1DA77969D"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b36_n_0
    );
g0_b37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E71048786740"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b37_n_0
    );
g0_b38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000941B4188BCB4"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b38_n_0
    );
g0_b39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F79F49FCBEB4"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b39_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002F02495F90B8"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b4_n_0
    );
g0_b40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000114FDDD07A1D"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b40_n_0
    );
g0_b41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCDB38EF86C7"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b41_n_0
    );
g0_b42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000271C43294582"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b42_n_0
    );
g0_b43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002618DFA1D0A4"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b43_n_0
    );
g0_b44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DC189EB15CE5"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b44_n_0
    );
g0_b45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000094622254B37E"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b45_n_0
    );
g0_b46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EADA8BD7557E"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b46_n_0
    );
g0_b47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EEDA8BD7557E"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b47_n_0
    );
g0_b48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000039AB51BD41F8"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b48_n_0
    );
g0_b49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E2B4393A546"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b49_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008C6581F24409"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b5_n_0
    );
g0_b50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A2E1B94852D"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b50_n_0
    );
g0_b51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EFE4DA3F2F53"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b51_n_0
    );
g0_b52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00009F410BB48EE2"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b52_n_0
    );
g0_b53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000054B800B43114"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b53_n_0
    );
g0_b54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000031674AA24191"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b54_n_0
    );
g0_b55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000077EFEFF64991"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b55_n_0
    );
g0_b56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC96F6B19F6E"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b56_n_0
    );
g0_b57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004D0D9D1813"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b57_n_0
    );
g0_b58: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F93B0B8E4A00"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b58_n_0
    );
g0_b59: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000691F1DE9632B"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b59_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000943002090E0E"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b6_n_0
    );
g0_b60: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F19AFBE27F02"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b60_n_0
    );
g0_b61: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000097E001416F0"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b61_n_0
    );
g0_b62: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003C673E28E663"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b62_n_0
    );
g0_b63: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003D7F3E28F663"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b63_n_0
    );
g0_b64: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000180E07B5D483"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b64_n_0
    );
g0_b65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A33DAAF58C75"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b65_n_0
    );
g0_b66: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002A7F87D5E1AF"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b66_n_0
    );
g0_b67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005E87CD456F30"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b67_n_0
    );
g0_b68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004C0B26F58251"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b68_n_0
    );
g0_b69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E5C8782CD14A"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b69_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DCFDA7FF6E1F"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b7_n_0
    );
g0_b70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00009A308140A6E4"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b70_n_0
    );
g0_b71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FEBCAFE6E7FC"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b71_n_0
    );
g0_b72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003A67F2FA3FE2"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b72_n_0
    );
g0_b73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000294AFD71BBA9"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b73_n_0
    );
g0_b74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BA280FC1DA10"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b74_n_0
    );
g0_b75: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000324364C2C69A"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b75_n_0
    );
g0_b76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002A4740699BD1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b76_n_0
    );
g0_b77: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008F240BD87680"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b77_n_0
    );
g0_b78: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000035091860A322"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b78_n_0
    );
g0_b79: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FBD18FCF3B6"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b79_n_0
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B84B88F0B3D1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000513C64A602D3"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => g0_b9_n_0
    );
\i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => i_reg(0),
      O => \i[0]_i_2_n_0\
    );
\i[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => i_reg(3),
      O => \i[0]_i_3_n_0\
    );
\i[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => i_reg(2),
      O => \i[0]_i_4_n_0\
    );
\i[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => i_reg(1),
      O => \i[0]_i_5_n_0\
    );
\i[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => i_reg(0),
      I1 => \p_0_in__0\,
      O => \i[0]_i_6_n_0\
    );
\i[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(15),
      O => \i[12]_i_2_n_0\
    );
\i[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(14),
      O => \i[12]_i_3_n_0\
    );
\i[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(13),
      O => \i[12]_i_4_n_0\
    );
\i[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(12),
      O => \i[12]_i_5_n_0\
    );
\i[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(19),
      O => \i[16]_i_2_n_0\
    );
\i[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(18),
      O => \i[16]_i_3_n_0\
    );
\i[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(17),
      O => \i[16]_i_4_n_0\
    );
\i[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(16),
      O => \i[16]_i_5_n_0\
    );
\i[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(23),
      O => \i[20]_i_2_n_0\
    );
\i[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(22),
      O => \i[20]_i_3_n_0\
    );
\i[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(21),
      O => \i[20]_i_4_n_0\
    );
\i[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(20),
      O => \i[20]_i_5_n_0\
    );
\i[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(27),
      O => \i[24]_i_2_n_0\
    );
\i[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(26),
      O => \i[24]_i_3_n_0\
    );
\i[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(25),
      O => \i[24]_i_4_n_0\
    );
\i[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(24),
      O => \i[24]_i_5_n_0\
    );
\i[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(31),
      O => \i[28]_i_2_n_0\
    );
\i[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(30),
      O => \i[28]_i_3_n_0\
    );
\i[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(29),
      O => \i[28]_i_4_n_0\
    );
\i[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(28),
      O => \i[28]_i_5_n_0\
    );
\i[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(7),
      O => \i[4]_i_2_n_0\
    );
\i[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(6),
      O => \i[4]_i_3_n_0\
    );
\i[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => i_reg(5),
      O => \i[4]_i_4_n_0\
    );
\i[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => i_reg(4),
      O => \i[4]_i_5_n_0\
    );
\i[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(11),
      O => \i[8]_i_2_n_0\
    );
\i[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(10),
      O => \i[8]_i_3_n_0\
    );
\i[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(9),
      O => \i[8]_i_4_n_0\
    );
\i[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => \i_reg__0\(8),
      O => \i[8]_i_5_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[0]_i_1_n_7\,
      Q => i_reg(0),
      R => '0'
    );
\i_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[0]_i_1_n_0\,
      CO(2) => \i_reg[0]_i_1_n_1\,
      CO(1) => \i_reg[0]_i_1_n_2\,
      CO(0) => \i_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i[0]_i_2_n_0\,
      O(3) => \i_reg[0]_i_1_n_4\,
      O(2) => \i_reg[0]_i_1_n_5\,
      O(1) => \i_reg[0]_i_1_n_6\,
      O(0) => \i_reg[0]_i_1_n_7\,
      S(3) => \i[0]_i_3_n_0\,
      S(2) => \i[0]_i_4_n_0\,
      S(1) => \i[0]_i_5_n_0\,
      S(0) => \i[0]_i_6_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[8]_i_1_n_5\,
      Q => \i_reg__0\(10),
      R => '0'
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[8]_i_1_n_4\,
      Q => \i_reg__0\(11),
      R => '0'
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[12]_i_1_n_7\,
      Q => \i_reg__0\(12),
      R => '0'
    );
\i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_1_n_0\,
      CO(3) => \i_reg[12]_i_1_n_0\,
      CO(2) => \i_reg[12]_i_1_n_1\,
      CO(1) => \i_reg[12]_i_1_n_2\,
      CO(0) => \i_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_1_n_4\,
      O(2) => \i_reg[12]_i_1_n_5\,
      O(1) => \i_reg[12]_i_1_n_6\,
      O(0) => \i_reg[12]_i_1_n_7\,
      S(3) => \i[12]_i_2_n_0\,
      S(2) => \i[12]_i_3_n_0\,
      S(1) => \i[12]_i_4_n_0\,
      S(0) => \i[12]_i_5_n_0\
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[12]_i_1_n_6\,
      Q => \i_reg__0\(13),
      R => '0'
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[12]_i_1_n_5\,
      Q => \i_reg__0\(14),
      R => '0'
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[12]_i_1_n_4\,
      Q => \i_reg__0\(15),
      R => '0'
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[16]_i_1_n_7\,
      Q => \i_reg__0\(16),
      R => '0'
    );
\i_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_1_n_0\,
      CO(3) => \i_reg[16]_i_1_n_0\,
      CO(2) => \i_reg[16]_i_1_n_1\,
      CO(1) => \i_reg[16]_i_1_n_2\,
      CO(0) => \i_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_1_n_4\,
      O(2) => \i_reg[16]_i_1_n_5\,
      O(1) => \i_reg[16]_i_1_n_6\,
      O(0) => \i_reg[16]_i_1_n_7\,
      S(3) => \i[16]_i_2_n_0\,
      S(2) => \i[16]_i_3_n_0\,
      S(1) => \i[16]_i_4_n_0\,
      S(0) => \i[16]_i_5_n_0\
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[16]_i_1_n_6\,
      Q => \i_reg__0\(17),
      R => '0'
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[16]_i_1_n_5\,
      Q => \i_reg__0\(18),
      R => '0'
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[16]_i_1_n_4\,
      Q => \i_reg__0\(19),
      R => '0'
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[0]_i_1_n_6\,
      Q => i_reg(1),
      R => '0'
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[20]_i_1_n_7\,
      Q => \i_reg__0\(20),
      R => '0'
    );
\i_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CO(3) => \i_reg[20]_i_1_n_0\,
      CO(2) => \i_reg[20]_i_1_n_1\,
      CO(1) => \i_reg[20]_i_1_n_2\,
      CO(0) => \i_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_1_n_4\,
      O(2) => \i_reg[20]_i_1_n_5\,
      O(1) => \i_reg[20]_i_1_n_6\,
      O(0) => \i_reg[20]_i_1_n_7\,
      S(3) => \i[20]_i_2_n_0\,
      S(2) => \i[20]_i_3_n_0\,
      S(1) => \i[20]_i_4_n_0\,
      S(0) => \i[20]_i_5_n_0\
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[20]_i_1_n_6\,
      Q => \i_reg__0\(21),
      R => '0'
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[20]_i_1_n_5\,
      Q => \i_reg__0\(22),
      R => '0'
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[20]_i_1_n_4\,
      Q => \i_reg__0\(23),
      R => '0'
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[24]_i_1_n_7\,
      Q => \i_reg__0\(24),
      R => '0'
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_1_n_0\,
      CO(3) => \i_reg[24]_i_1_n_0\,
      CO(2) => \i_reg[24]_i_1_n_1\,
      CO(1) => \i_reg[24]_i_1_n_2\,
      CO(0) => \i_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[24]_i_1_n_4\,
      O(2) => \i_reg[24]_i_1_n_5\,
      O(1) => \i_reg[24]_i_1_n_6\,
      O(0) => \i_reg[24]_i_1_n_7\,
      S(3) => \i[24]_i_2_n_0\,
      S(2) => \i[24]_i_3_n_0\,
      S(1) => \i[24]_i_4_n_0\,
      S(0) => \i[24]_i_5_n_0\
    );
\i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[24]_i_1_n_6\,
      Q => \i_reg__0\(25),
      R => '0'
    );
\i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[24]_i_1_n_5\,
      Q => \i_reg__0\(26),
      R => '0'
    );
\i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[24]_i_1_n_4\,
      Q => \i_reg__0\(27),
      R => '0'
    );
\i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[28]_i_1_n_7\,
      Q => \i_reg__0\(28),
      R => '0'
    );
\i_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[24]_i_1_n_0\,
      CO(3) => \NLW_i_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \i_reg[28]_i_1_n_1\,
      CO(1) => \i_reg[28]_i_1_n_2\,
      CO(0) => \i_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[28]_i_1_n_4\,
      O(2) => \i_reg[28]_i_1_n_5\,
      O(1) => \i_reg[28]_i_1_n_6\,
      O(0) => \i_reg[28]_i_1_n_7\,
      S(3) => \i[28]_i_2_n_0\,
      S(2) => \i[28]_i_3_n_0\,
      S(1) => \i[28]_i_4_n_0\,
      S(0) => \i[28]_i_5_n_0\
    );
\i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[28]_i_1_n_6\,
      Q => \i_reg__0\(29),
      R => '0'
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[0]_i_1_n_5\,
      Q => i_reg(2),
      R => '0'
    );
\i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[28]_i_1_n_5\,
      Q => \i_reg__0\(30),
      R => '0'
    );
\i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[28]_i_1_n_4\,
      Q => \i_reg__0\(31),
      R => '0'
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[0]_i_1_n_4\,
      Q => i_reg(3),
      R => '0'
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[4]_i_1_n_7\,
      Q => i_reg(4),
      R => '0'
    );
\i_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[0]_i_1_n_0\,
      CO(3) => \i_reg[4]_i_1_n_0\,
      CO(2) => \i_reg[4]_i_1_n_1\,
      CO(1) => \i_reg[4]_i_1_n_2\,
      CO(0) => \i_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_1_n_4\,
      O(2) => \i_reg[4]_i_1_n_5\,
      O(1) => \i_reg[4]_i_1_n_6\,
      O(0) => \i_reg[4]_i_1_n_7\,
      S(3) => \i[4]_i_2_n_0\,
      S(2) => \i[4]_i_3_n_0\,
      S(1) => \i[4]_i_4_n_0\,
      S(0) => \i[4]_i_5_n_0\
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[4]_i_1_n_6\,
      Q => i_reg(5),
      R => '0'
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[4]_i_1_n_5\,
      Q => \i_reg__0\(6),
      R => '0'
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[4]_i_1_n_4\,
      Q => \i_reg__0\(7),
      R => '0'
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[8]_i_1_n_7\,
      Q => \i_reg__0\(8),
      R => '0'
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_1_n_0\,
      CO(3) => \i_reg[8]_i_1_n_0\,
      CO(2) => \i_reg[8]_i_1_n_1\,
      CO(1) => \i_reg[8]_i_1_n_2\,
      CO(0) => \i_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_1_n_4\,
      O(2) => \i_reg[8]_i_1_n_5\,
      O(1) => \i_reg[8]_i_1_n_6\,
      O(0) => \i_reg[8]_i_1_n_7\,
      S(3) => \i[8]_i_2_n_0\,
      S(2) => \i[8]_i_3_n_0\,
      S(1) => \i[8]_i_4_n_0\,
      S(0) => \i[8]_i_5_n_0\
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[79]_i_1_n_0\,
      D => \i_reg[8]_i_1_n_6\,
      Q => \i_reg__0\(9),
      R => '0'
    );
read_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => read_reg1_carry_n_0,
      CO(2) => read_reg1_carry_n_1,
      CO(1) => read_reg1_carry_n_2,
      CO(0) => read_reg1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_read_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => read_reg1_carry_i_1_n_0,
      S(2) => read_reg1_carry_i_2_n_0,
      S(1) => read_reg1_carry_i_3_n_0,
      S(0) => read_reg1_carry_i_4_n_0
    );
\read_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => read_reg1_carry_n_0,
      CO(3) => \read_reg1_carry__0_n_0\,
      CO(2) => \read_reg1_carry__0_n_1\,
      CO(1) => \read_reg1_carry__0_n_2\,
      CO(0) => \read_reg1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_read_reg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_reg1_carry__0_i_1_n_0\,
      S(2) => \read_reg1_carry__0_i_2_n_0\,
      S(1) => \read_reg1_carry__0_i_3_n_0\,
      S(0) => \read_reg1_carry__0_i_4_n_0\
    );
\read_reg1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(23),
      I1 => read_reg2(22),
      I2 => read_reg2(21),
      O => \read_reg1_carry__0_i_1_n_0\
    );
\read_reg1_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(22),
      O => \read_reg1_carry__0_i_10_n_0\
    );
\read_reg1_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(21),
      O => \read_reg1_carry__0_i_11_n_0\
    );
\read_reg1_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(20),
      O => \read_reg1_carry__0_i_12_n_0\
    );
\read_reg1_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(19),
      O => \read_reg1_carry__0_i_13_n_0\
    );
\read_reg1_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(18),
      O => \read_reg1_carry__0_i_14_n_0\
    );
\read_reg1_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(17),
      O => \read_reg1_carry__0_i_15_n_0\
    );
\read_reg1_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(16),
      O => \read_reg1_carry__0_i_16_n_0\
    );
\read_reg1_carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(15),
      O => \read_reg1_carry__0_i_17_n_0\
    );
\read_reg1_carry__0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(14),
      O => \read_reg1_carry__0_i_18_n_0\
    );
\read_reg1_carry__0_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(13),
      O => \read_reg1_carry__0_i_19_n_0\
    );
\read_reg1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(20),
      I1 => read_reg2(19),
      I2 => read_reg2(18),
      O => \read_reg1_carry__0_i_2_n_0\
    );
\read_reg1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(17),
      I1 => read_reg2(16),
      I2 => read_reg2(15),
      O => \read_reg1_carry__0_i_3_n_0\
    );
\read_reg1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(14),
      I1 => read_reg2(13),
      I2 => read_reg2(12),
      O => \read_reg1_carry__0_i_4_n_0\
    );
\read_reg1_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_reg1_carry__0_i_6_n_0\,
      CO(3) => \read_reg1_carry__0_i_5_n_0\,
      CO(2) => \read_reg1_carry__0_i_5_n_1\,
      CO(1) => \read_reg1_carry__0_i_5_n_2\,
      CO(0) => \read_reg1_carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(24 downto 21),
      S(3) => \read_reg1_carry__0_i_8_n_0\,
      S(2) => \read_reg1_carry__0_i_9_n_0\,
      S(1) => \read_reg1_carry__0_i_10_n_0\,
      S(0) => \read_reg1_carry__0_i_11_n_0\
    );
\read_reg1_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_reg1_carry__0_i_7_n_0\,
      CO(3) => \read_reg1_carry__0_i_6_n_0\,
      CO(2) => \read_reg1_carry__0_i_6_n_1\,
      CO(1) => \read_reg1_carry__0_i_6_n_2\,
      CO(0) => \read_reg1_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(20 downto 17),
      S(3) => \read_reg1_carry__0_i_12_n_0\,
      S(2) => \read_reg1_carry__0_i_13_n_0\,
      S(1) => \read_reg1_carry__0_i_14_n_0\,
      S(0) => \read_reg1_carry__0_i_15_n_0\
    );
\read_reg1_carry__0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => read_reg1_carry_i_5_n_0,
      CO(3) => \read_reg1_carry__0_i_7_n_0\,
      CO(2) => \read_reg1_carry__0_i_7_n_1\,
      CO(1) => \read_reg1_carry__0_i_7_n_2\,
      CO(0) => \read_reg1_carry__0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(16 downto 13),
      S(3) => \read_reg1_carry__0_i_16_n_0\,
      S(2) => \read_reg1_carry__0_i_17_n_0\,
      S(1) => \read_reg1_carry__0_i_18_n_0\,
      S(0) => \read_reg1_carry__0_i_19_n_0\
    );
\read_reg1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(24),
      O => \read_reg1_carry__0_i_8_n_0\
    );
\read_reg1_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(23),
      O => \read_reg1_carry__0_i_9_n_0\
    );
\read_reg1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_reg1_carry__0_n_0\,
      CO(3) => \NLW_read_reg1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \read_reg1_carry__1_n_1\,
      CO(1) => \read_reg1_carry__1_n_2\,
      CO(0) => \read_reg1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \p_0_in__0\,
      O(2 downto 0) => \NLW_read_reg1_carry__1_O_UNCONNECTED\(2 downto 0),
      S(3) => '1',
      S(2) => \read_reg1_carry__1_i_1_n_0\,
      S(1) => \read_reg1_carry__1_i_2_n_0\,
      S(0) => \read_reg1_carry__1_i_3_n_0\
    );
\read_reg1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_reg2(30),
      I1 => read_reg2(31),
      O => \read_reg1_carry__1_i_1_n_0\
    );
\read_reg1_carry__1_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(27),
      O => \read_reg1_carry__1_i_10_n_0\
    );
\read_reg1_carry__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(26),
      O => \read_reg1_carry__1_i_11_n_0\
    );
\read_reg1_carry__1_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(25),
      O => \read_reg1_carry__1_i_12_n_0\
    );
\read_reg1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(29),
      I1 => read_reg2(28),
      I2 => read_reg2(27),
      O => \read_reg1_carry__1_i_2_n_0\
    );
\read_reg1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(26),
      I1 => read_reg2(25),
      I2 => read_reg2(24),
      O => \read_reg1_carry__1_i_3_n_0\
    );
\read_reg1_carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_reg1_carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW_read_reg1_carry__1_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \read_reg1_carry__1_i_4_n_2\,
      CO(0) => \read_reg1_carry__1_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_read_reg1_carry__1_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => read_reg2(31 downto 29),
      S(3) => '0',
      S(2) => \read_reg1_carry__1_i_6_n_0\,
      S(1) => \read_reg1_carry__1_i_7_n_0\,
      S(0) => \read_reg1_carry__1_i_8_n_0\
    );
\read_reg1_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_reg1_carry__0_i_5_n_0\,
      CO(3) => \read_reg1_carry__1_i_5_n_0\,
      CO(2) => \read_reg1_carry__1_i_5_n_1\,
      CO(1) => \read_reg1_carry__1_i_5_n_2\,
      CO(0) => \read_reg1_carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(28 downto 25),
      S(3) => \read_reg1_carry__1_i_9_n_0\,
      S(2) => \read_reg1_carry__1_i_10_n_0\,
      S(1) => \read_reg1_carry__1_i_11_n_0\,
      S(0) => \read_reg1_carry__1_i_12_n_0\
    );
\read_reg1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(31),
      O => \read_reg1_carry__1_i_6_n_0\
    );
\read_reg1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(30),
      O => \read_reg1_carry__1_i_7_n_0\
    );
\read_reg1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(29),
      O => \read_reg1_carry__1_i_8_n_0\
    );
\read_reg1_carry__1_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(28),
      O => \read_reg1_carry__1_i_9_n_0\
    );
read_reg1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(11),
      I1 => read_reg2(10),
      I2 => read_reg2(9),
      O => read_reg1_carry_i_1_n_0
    );
read_reg1_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(10),
      O => read_reg1_carry_i_10_n_0
    );
read_reg1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(9),
      O => read_reg1_carry_i_11_n_0
    );
read_reg1_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(8),
      O => read_reg1_carry_i_12_n_0
    );
read_reg1_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(7),
      O => read_reg1_carry_i_13_n_0
    );
read_reg1_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(6),
      O => read_reg1_carry_i_14_n_0
    );
read_reg1_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(5),
      O => read_reg1_carry_i_15_n_0
    );
read_reg1_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(4),
      O => read_reg1_carry_i_16_n_0
    );
read_reg1_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(3),
      O => read_reg1_carry_i_17_n_0
    );
read_reg1_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(2),
      O => read_reg1_carry_i_18_n_0
    );
read_reg1_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(1),
      O => read_reg1_carry_i_19_n_0
    );
read_reg1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => read_reg2(8),
      I1 => read_reg2(7),
      I2 => read_reg2(6),
      O => read_reg1_carry_i_2_n_0
    );
read_reg1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => read_reg2(5),
      I1 => read_reg2(4),
      I2 => read_reg2(3),
      O => read_reg1_carry_i_3_n_0
    );
read_reg1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_reg(0),
      I1 => read_reg2(2),
      I2 => read_reg2(1),
      O => read_reg1_carry_i_4_n_0
    );
read_reg1_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => read_reg1_carry_i_6_n_0,
      CO(3) => read_reg1_carry_i_5_n_0,
      CO(2) => read_reg1_carry_i_5_n_1,
      CO(1) => read_reg1_carry_i_5_n_2,
      CO(0) => read_reg1_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(12 downto 9),
      S(3) => read_reg1_carry_i_8_n_0,
      S(2) => read_reg1_carry_i_9_n_0,
      S(1) => read_reg1_carry_i_10_n_0,
      S(0) => read_reg1_carry_i_11_n_0
    );
read_reg1_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => read_reg1_carry_i_7_n_0,
      CO(3) => read_reg1_carry_i_6_n_0,
      CO(2) => read_reg1_carry_i_6_n_1,
      CO(1) => read_reg1_carry_i_6_n_2,
      CO(0) => read_reg1_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(8 downto 5),
      S(3) => read_reg1_carry_i_12_n_0,
      S(2) => read_reg1_carry_i_13_n_0,
      S(1) => read_reg1_carry_i_14_n_0,
      S(0) => read_reg1_carry_i_15_n_0
    );
read_reg1_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => read_reg1_carry_i_7_n_0,
      CO(2) => read_reg1_carry_i_7_n_1,
      CO(1) => read_reg1_carry_i_7_n_2,
      CO(0) => read_reg1_carry_i_7_n_3,
      CYINIT => i_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => read_reg2(4 downto 1),
      S(3) => read_reg1_carry_i_16_n_0,
      S(2) => read_reg1_carry_i_17_n_0,
      S(1) => read_reg1_carry_i_18_n_0,
      S(0) => read_reg1_carry_i_19_n_0
    );
read_reg1_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(12),
      O => read_reg1_carry_i_8_n_0
    );
read_reg1_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg__0\(11),
      O => read_reg1_carry_i_9_n_0
    );
read_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_reg,
      I1 => \p_0_in__0\,
      O => read_reg_i_1_n_0
    );
read_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => read_reg_i_1_n_0,
      PRE => \addr_out[9]_i_2_n_0\,
      Q => read_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_weight_l2_rom_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 79 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    cs : out STD_LOGIC;
    we : out STD_LOGIC;
    oe : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_weight_l2_rom_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_weight_l2_rom_0_0 : entity is "design_1_weight_l2_rom_0_0,weight_l2_rom,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_weight_l2_rom_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_weight_l2_rom_0_0 : entity is "weight_l2_rom,Vivado 2017.1";
end design_1_weight_l2_rom_0_0;

architecture STRUCTURE of design_1_weight_l2_rom_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^we\ : STD_LOGIC;
begin
  cs <= \^we\;
  oe <= \<const0>\;
  we <= \^we\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_weight_l2_rom_0_0_weight_l2_rom
     port map (
      addr_out(9 downto 0) => addr_out(9 downto 0),
      clk => clk,
      data_out(79 downto 0) => data_out(79 downto 0),
      rst_n => rst_n,
      we => \^we\
    );
end STRUCTURE;
