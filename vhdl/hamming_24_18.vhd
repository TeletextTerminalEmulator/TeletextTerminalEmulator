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

DATA_OUT(0)             <= '1' xor DATA_IN(0)   xor DATA_IN(1)  xor DATA_IN(3)  xor DATA_IN(4)  xor DATA_IN(6)  xor DATA_IN(8)  xor DATA_IN(10) xor DATA_IN(11) xor DATA_IN(13) xor DATA_IN(15) xor DATA_IN(17);
DATA_OUT(1)             <= '1' xor DATA_IN(0)   xor DATA_IN(2)  xor DATA_IN(3)  xor DATA_IN(5)  xor DATA_IN(6)  xor DATA_IN(9)  xor DATA_IN(10) xor DATA_IN(12) xor DATA_IN(13) xor DATA_IN(16) xor DATA_IN(17);
DATA_OUT(2)             <= DATA_IN(0);
DATA_OUT(3)             <= '1' xor DATA_IN(1)   xor DATA_IN(2)  xor DATA_IN(3)  xor DATA_IN(7)  xor DATA_IN(8)  xor DATA_IN(9)  xor DATA_IN(10) xor DATA_IN(14) xor DATA_IN(15) xor DATA_IN(16) xor DATA_IN(17);
DATA_OUT(6 downto 4)    <= DATA_IN(3 downto 1);
DATA_OUT(7)             <= '1' xor DATA_IN(4)   xor DATA_IN(5)  xor DATA_IN(6)  xor DATA_IN(7)  xor DATA_IN(8)  xor DATA_IN(9)  xor DATA_IN(10);
DATA_OUT(14 downto 8)   <= DATA_IN(10 downto 4);
DATA_OUT(15)            <= '1' xor DATA_IN(11)  xor DATA_IN(12) xor DATA_IN(13) xor DATA_IN(14) xor DATA_IN(15) xor DATA_IN(16) xor DATA_IN(17);
DATA_OUT(22 downto 16)  <= DATA_IN(17 downto 11);
DATA_OUT(23)            <= DATA_IN(0) xor DATA_IN(1) xor DATA_IN(2) xor DATA_IN(4) xor DATA_IN(5) xor DATA_IN(7) xor DATA_IN(10) xor DATA_IN(11) xor DATA_IN(12) xor DATA_IN(14) xor DATA_IN(17);

end Behavioral;