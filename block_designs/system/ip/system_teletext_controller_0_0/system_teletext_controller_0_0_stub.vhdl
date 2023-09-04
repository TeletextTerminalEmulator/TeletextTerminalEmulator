-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Sep  4 15:06:15 2023
-- Host        : JOROLF-LAPTOP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_teletext_controller_0_0 -prefix
--               system_teletext_controller_0_0_ system_teletext_controller_0_0_stub.vhdl
-- Design      : system_teletext_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_teletext_controller_0_0 is
  Port ( 
    CLK_IN : in STD_LOGIC;
    RESET : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    SYNC_OUT : out STD_LOGIC;
    CLK_OUT : out STD_LOGIC
  );

end system_teletext_controller_0_0;

architecture stub of system_teletext_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_IN,RESET,DATA_OUT,SYNC_OUT,CLK_OUT";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "teletext_controller,Vivado 2022.2";
begin
end;
