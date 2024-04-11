----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.01.2024 13:46:18
-- Design Name: 
-- Module Name: packet_enhancement_generator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity packet_enhancement_generator is
    Port ( DESIGNATION_IN : in unsigned(3 downto 0);
           TRIPLETS_IN : in TRIPLET_ARRAY(12 downto 0);
           PACKET_DATA : out STD_LOGIC_VECTOR (319 downto 0));
end packet_enhancement_generator;

architecture Behavioral of packet_enhancement_generator is

    component hamming_8_4 is
        Port ( DATA_IN : in STD_LOGIC_VECTOR (3 downto 0);
               DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component hamming_24_18 is
        Port ( DATA_IN : in STD_LOGIC_VECTOR (17 downto 0);
               DATA_OUT : out STD_LOGIC_VECTOR (23 downto 0));
    end component;

begin

    designation_ham : hamming_8_4
    port map(
        DATA_IN(3 downto 0) => std_logic_vector(DESIGNATION_IN(3 downto 0)),
        DATA_OUT => PACKET_DATA(7 downto 0)
    );
    
    triplets_ham :
    for I in 0 to 12 generate
        triplets_hamx : hamming_24_18 port map (
            DATA_IN =>
                reverse_any_vector(std_logic_vector(TRIPLETS_IN(I).ADDRESS)) &
                reverse_any_vector(std_logic_vector(TRIPLETS_IN(I).MODE)) &
                reverse_any_vector(std_logic_vector(TRIPLETS_IN(I).DATA)),
            DATA_OUT => PACKET_DATA((I * 24) + 23 + 8 downto I * 24 + 8)
        );
    end generate;

end Behavioral;
