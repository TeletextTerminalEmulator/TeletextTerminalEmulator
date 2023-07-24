----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2023 15:28:27
-- Design Name: 
-- Module Name: teletext_controller_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity teletext_controller_tb is
end teletext_controller_tb;

architecture Behavioral of teletext_controller_tb is

component teletext_controller
    Port ( CLK_IN : in STD_LOGIC;
           RESET : in STD_LOGIC;
           DATA_OUT : out STD_LOGIC;
           SYNC_OUT : out STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end component;

signal CLK_IN   : std_logic;
signal RESET    : std_logic;
signal DATA_OUT : std_logic;
signal SYNC_OUT : std_logic;
signal CLK_OUT  : std_logic;

constant TbPeriod : time := (1us) / 7;
signal TbClock : std_logic := '0';

signal packet : std_logic_vector (359 downto 0);

begin

teletext_ctrl: teletext_controller
port map (
    CLK_IN  => CLK_IN,
    RESET   => RESET,
    DATA_OUT=> DATA_OUT,
    SYNC_OUT=> SYNC_OUT,
    CLK_OUT => CLK_OUT
);

TbClock <= not TbClock after TbPeriod/2;
CLK_IN <= TbClock;

stimuli : process
begin
    RESET <= '1';
    wait for 10ns;
    RESET <= '0';
    while true loop
        wait until rising_edge(DATA_OUT);
        for i in 359 downto 0 loop
            wait until rising_edge(CLK_IN);
            packet(i) <= DATA_OUT;
        end loop;
    end loop;
end process;

end Behavioral;
