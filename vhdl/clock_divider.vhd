----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.07.2023 17:23:23
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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

entity clock_divider is
    Port ( CLK_IN : in STD_LOGIC;
           CLK_OUT : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is

signal current_count: integer;
signal next_count: integer;

begin

reg_p: process(CLK_IN)
begin
    if rising_edge(CLK_IN) then
        current_count <= next_count;
    else
        current_count <= current_count;
    end if;
end process;

counter: process(current_count)
begin
    if current_count < 50 then
        CLK_OUT <= '1';
    else
        CLK_OUT <= '0';
    end if;
    next_count <= (current_count + 7) mod 100;
end process;

end Behavioral;
