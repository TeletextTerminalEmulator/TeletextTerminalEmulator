----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2023 16:09:37
-- Design Name: 
-- Module Name: sync_generator - Behavioral
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

entity sync_generator is
    Port ( CLK_IN : in STD_LOGIC; -- CLK_IN expects 7MHz
           RESET_N: in STD_LOGIC;
           SYNC_OUT : out STD_LOGIC;
           PACKET_TRIGGER : out STD_LOGIC);
end sync_generator;

architecture Behavioral of sync_generator is
constant LINE_COUNT     : unsigned(9 downto 0) := TO_UNSIGNED(625, 10);
constant COLUMN_COUNT   : unsigned(9 downto 0) := TO_UNSIGNED(448, 10);

signal current_line     : unsigned(9 downto 0) := TO_UNSIGNED(1, 10);
signal next_line        : unsigned(9 downto 0);

signal current_column   : unsigned(9 downto 0) := TO_UNSIGNED(1, 10);
signal next_column      : unsigned(9 downto 0);

begin
    reg_p: process (CLK_IN, RESET_N)
    begin
        if (rising_edge(CLK_IN)) then
            if (RESET_N = '0') then
                current_line <= TO_UNSIGNED(1, 10);
                current_column <= TO_UNSIGNED(1, 10);
            else
                current_line <= next_line;
                current_column <= next_column;
            end if;
        end if;
    end process;
    
    next_p: process(current_line, current_column)
    begin
        if current_column >= COLUMN_COUNT then
            next_column <= TO_UNSIGNED(1, 10);
            if current_line >= LINE_COUNT then
                next_line <= TO_UNSIGNED(1, 10);
            else
                next_line <= current_line + "1";
            end if;   
        else
            next_column <= current_column + "1";
            next_line <= current_line;
        end if;
    
    end process;

    sync_p: process(current_line, current_column)
        variable line: integer range 1 to 625;
        variable column: integer range 1 to 448;
    begin
        line := to_integer(current_line);
        column := to_integer(current_column);
        case line is
            when 1 | 2 | 314 | 315 => -- two long syncs
                case column is
                    when 1 to 210 | 225 to 434 =>
                        SYNC_OUT <= '1';
                    when others =>
                        SYNC_OUT <= '0';
                end case;
            when 3 => -- one long sync, one short sync
                case column is
                    when 1 to 210 | 225 to 238 =>
                        SYNC_OUT <= '1';
                    when others =>
                        SYNC_OUT <= '0';
                end case;
            when 313 => -- one short sync, one long sync
                case column is
                    when 1 to 14 | 225 to 434 =>
                        SYNC_OUT <= '1';
                    when others =>
                        SYNC_OUT <= '0';
                end case;
           when 4 | 5 | 311 | 312 | 316 | 317 | 623 to 625 => -- two short syncs
                case column is
                    when 1 to 14 | 225 to 238 =>
                        SYNC_OUT <= '1';
                    when others =>
                        SYNC_OUT <= '0';
                end case;
           when others => -- one normal sync
                case column is
                    when 1 to 28 =>
                        SYNC_OUT <= '1';
                    when others =>
                        SYNC_OUT <= '0';
                end case;
        end case; 
    end process;
    
    packet: process(current_line, current_column)
        variable line: integer range 1 to 625;
        variable column: integer range 1 to 448;
    begin
        line := to_integer(current_line);
        column := to_integer(current_column);
        case line is
            when 6 to 22 | 318 to 335 =>
                case column is
                    when 71 =>
                        PACKET_TRIGGER <= '1';
                    when others =>
                        PACKET_TRIGGER <= '0';
                end case;
            when others =>
                PACKET_TRIGGER <= '0';
        end case;
    end process;

end Behavioral;
