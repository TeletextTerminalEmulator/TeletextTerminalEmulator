----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2023 16:06:38
-- Design Name: 
-- Module Name: packet_genenerator - Behavioral
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

entity packet_generator is
    port(
        MAGAZINE: in unsigned(2 downto 0);
        PACKET: in unsigned(3 downto 0);
        PACKET_DATA: out std_logic_vector(359 downto 0)
    );
end packet_generator;

architecture Behavioral of packet_generator is

    constant CLOCK_RUNIN : std_logic_vector(15 downto 0) := "0101010101010101";
    
    constant FRAMING_CODE : std_logic_vector(7 downto 0) := "00100111";
    
    component hamming_8_4 is
        Port ( DATA_IN : in STD_LOGIC_VECTOR (3 downto 0);
               DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0));
    end component;


begin
    PACKET_DATA(15 downto 0) <= CLOCK_RUNIN;
    PACKET_DATA(23 downto 16) <= FRAMING_CODE;
    
    magazine_ham : hamming_8_4 
    port map(
        DATA_IN(2 downto 0) => std_logic_vector(MAGAZINE),
        DATA_IN(3) => '0',
        DATA_OUT => PACKET_DATA(31 downto 24)
    );
    
    packet_ham : hamming_8_4
    port map(
        DATA_IN => std_logic_vector(PACKET),
        DATA_OUT => PACKET_DATA(39 downto 32)
    );

end Behavioral;
