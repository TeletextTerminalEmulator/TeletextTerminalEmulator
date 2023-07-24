-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Mon Jul 24 15:23:17 2023
-- Host        : Memmert running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/jwachsmuth/Documents/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_stub.vhdl
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
attribute X_CORE_INFO of stub : architecture is "teletext_controller,Vivado 2022.2.2";
begin
end;
