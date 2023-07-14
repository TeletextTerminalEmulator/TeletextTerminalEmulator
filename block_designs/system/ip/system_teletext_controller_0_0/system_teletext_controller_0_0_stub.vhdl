-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jul 14 11:47:15 2023
-- Host        : nippon running 64-bit Ubuntu 16.04.7 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /homes/jwachsmuth/Dokumente/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_stub.vhdl
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
