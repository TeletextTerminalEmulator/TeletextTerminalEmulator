----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.06.2023 17:16:23
-- Design Name: 
-- Module Name: shift_register - Behavioral
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

entity shift_register is
    Generic (
        register_size : integer
    );
    Port ( CLK_IN : in STD_LOGIC;
           RESET_N : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           DATA_IN : in STD_LOGIC_VECTOR ((register_size - 1) downto 0);
           DATA_OUT : out STD_LOGIC);
end shift_register;

architecture Behavioral of shift_register is

    signal current_state    : STD_LOGIC_VECTOR ((register_size - 1) downto 0);
    signal next_state       : STD_LOGIC_VECTOR ((register_size - 1) downto 0);

begin

    DATA_OUT <= current_state(0);

    reg_p : process(CLK_IN, RESET_N)
    begin
        if rising_edge(CLK_IN) then
            if RESET_N = '0' then
                current_state <= (others => '0');
            else
                current_state <= next_state;
            end if;
        end if;
    end process;
    
    shift_p : process(LOAD, current_state)
    begin
        if LOAD = '1' then
            next_state <= data_in;
        else
            next_state <= '0' & current_state((register_size - 1) downto 1);
        end if;
    end process;

end Behavioral;
