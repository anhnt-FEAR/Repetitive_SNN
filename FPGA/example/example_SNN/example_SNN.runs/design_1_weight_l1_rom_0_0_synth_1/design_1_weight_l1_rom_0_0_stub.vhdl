-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Mon Jul 24 17:02:02 2023
-- Host        : Doanh-Ngo running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_weight_l1_rom_0_0_stub.vhdl
-- Design      : design_1_weight_l1_rom_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 383 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    cs : out STD_LOGIC;
    we : out STD_LOGIC;
    oe : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,data_out[383:0],addr_out[9:0],cs,we,oe";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "weight_l1_rom,Vivado 2017.1";
begin
end;
