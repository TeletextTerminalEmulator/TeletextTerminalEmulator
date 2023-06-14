----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2023 16:29:00
-- Design Name: 
-- Module Name: odd_parity - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity odd_parity is
    Port ( DATA_IN : in STD_LOGIC_VECTOR (6 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0));
end odd_parity;

architecture Behavioral of odd_parity is

begin
    DATA_OUT(6 downto 0) <= DATA_IN(6 downto 0);
    DATA_OUT(7) <= '1' xor DATA_IN(0) xor DATA_IN(1) xor DATA_IN(2) xor DATA_IN(3) xor DATA_IN(4) xor DATA_IN(5) xor DATA_IN(6);
end Behavioral;
