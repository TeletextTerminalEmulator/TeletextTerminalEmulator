----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.05.2023 16:02:21
-- Design Name: 
-- Module Name: teletext_generator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity teletext_generator is
    port(
        CLK_IN          : in    std_logic;
        RESET_N         : in    std_logic;
        
        DATA_OUT        : out   std_logic;
        SYNC_OUT        : out   std_logic
    );
end teletext_generator;

architecture Behavioral of teletext_generator is

constant LINE_COUNT     : unsigned(9 downto 0) := TO_UNSIGNED(625, 10);
constant COLUMN_COUNT   : unsigned(9 downto 0) := TO_UNSIGNED(444, 10);

signal current_line     : unsigned(9 downto 0);
signal next_line        : unsigned(9 downto 0);

signal current_column   : unsigned(9 downto 0);
signal next_column      : unsigned(9 downto 0);

begin

    reg_p: process (CLK_IN)
    begin
        if (rising_edge(CLK_IN)) then
            if (RESET_N = '0') then
                current_line <= (others => '0');
                current_column <= (others => '0');
            else
                current_line <= next_line;
                current_column <= next_column;
            end if;
        end if;
    end process;
    
    next_p: process(current_line, current_column)
    begin
        if current_column >= COLUMN_COUNT - 1 then
            next_column <= (others => '0');
            if current_line >= LINE_COUNT - 1 then
                next_line <= (others => '0');
            else
                next_line <= current_line + "1";
            end if;   
        else
            next_column <= current_column + "1";
        end if;
    
    end process;

    sync_p: process(current_line, current_column)
    begin
        
    end process;
    
end Behavioral;
