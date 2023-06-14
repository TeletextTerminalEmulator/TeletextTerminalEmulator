----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2023 16:29:00
-- Design Name: 
-- Module Name: hamming_24-18 - Behavioral
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

entity hamming_24_18 is
    Port ( DATA_IN : in STD_LOGIC_VECTOR (17 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (23 downto 0));
end hamming_24_18;

architecture Behavioral of hamming_24_18 is

begin


end Behavioral;
