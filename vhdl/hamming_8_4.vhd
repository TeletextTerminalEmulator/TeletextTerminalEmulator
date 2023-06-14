----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2023 16:29:00
-- Design Name: 
-- Module Name: hamming_8-4 - Behavioral
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

entity hamming_8_4 is
    Port ( DATA_IN : in STD_LOGIC_VECTOR (3 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0));
end hamming_8_4;

architecture Behavioral of hamming_8_4 is

begin

    DATA_OUT(0) <= '1' xor DATA_IN(0) xor DATA_IN(2) xor DATA_IN(3);
    DATA_OUT(1) <= DATA_IN(0);
    DATA_OUT(2) <= '1' xor DATA_IN(0) xor DATA_IN(1) xor DATA_IN(3);
    DATA_OUT(3) <= DATA_IN(1);
    DATA_OUT(4) <= '1' xor DATA_IN(0) xor DATA_IN(1) xor DATA_IN(2);
    DATA_OUT(5) <= DATA_IN(2);
    DATA_OUT(6) <= DATA_IN(1) xor DATA_IN(2) xor DATA_IN(3);
    DATA_OUT(7) <= DATA_IN(3);

end Behavioral;
