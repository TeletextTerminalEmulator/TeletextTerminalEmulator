----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2023 16:37:42
-- Design Name: 
-- Module Name: packet_normal_generator - Behavioral
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
use work.types_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity packet_normal_generator is
    Port ( DATA_BYTES : in TELETEXT_ARRAY (39 downto 0);
           PACKET_DATA : out STD_LOGIC_VECTOR (319 downto 0));
end packet_normal_generator;

architecture Behavioral of packet_normal_generator is
    component odd_parity
        port(DATA_IN: in std_logic_vector (6 downto 0);
             DATA_OUT: out std_logic_vector (7 downto 0));
    end component;
begin
    odd_parities:
    for I in 0 to 39 generate
        odd_parityx : odd_parity port map (
            DATA_IN => std_logic_vector(DATA_BYTES(I)),
            DATA_OUT => PACKET_DATA((I * 8) + 7 downto I * 8)
        );
    end generate;
end Behavioral;
