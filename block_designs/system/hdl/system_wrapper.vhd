--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sun Oct 29 23:52:05 2023
--Host        : JOROLF-LAPTOP running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    CLK_IN : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    RESET : in STD_LOGIC;
    SYNC_OUT : out STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    RESET : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    SYNC_OUT : out STD_LOGIC;
    CLK_IN : in STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      CLK_IN => CLK_IN,
      DATA_OUT => DATA_OUT,
      RESET => RESET,
      SYNC_OUT => SYNC_OUT
    );
end STRUCTURE;
