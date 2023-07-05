----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2023 16:37:42
-- Design Name: 
-- Module Name: packet_page_header_generator - Behavioral
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

entity packet_page_header_generator is
    Port ( PAGE_NUMBER : in unsigned (7 downto 0);
           PAGE_SUB_CODE : in unsigned (12 downto 0);
           CONTROL_BITS : in CONTROL_BITS;
           DATA_BYTES : in TELETEXT_ARRAY (31 downto 0);
           PACKET_DATA : out STD_LOGIC_VECTOR (319 downto 0));
end packet_page_header_generator;

architecture Behavioral of packet_page_header_generator is
    
    component hamming_8_4 is
        Port ( DATA_IN : in STD_LOGIC_VECTOR (3 downto 0);
               DATA_OUT : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component odd_parity
        port(DATA_IN: in std_logic_vector (6 downto 0);
             DATA_OUT: out std_logic_vector (7 downto 0));
    end component;
    
begin

    page_units_ham : hamming_8_4 
    port map(
        DATA_IN(3 downto 0) => std_logic_vector(PAGE_NUMBER(3 downto 0)),
        DATA_OUT => PACKET_DATA(7 downto 0)
    );
    
    page_tens_ham : hamming_8_4 
    port map(
        DATA_IN(3 downto 0) => std_logic_vector(PAGE_NUMBER(7 downto 4)),
        DATA_OUT => PACKET_DATA(15 downto 8)
    );
    
    page_sub_1_ham : hamming_8_4 
    port map(
        DATA_IN(3 downto 0) => std_logic_vector(PAGE_SUB_CODE(3 downto 0)),
        DATA_OUT => PACKET_DATA(23 downto 16)
    );
    
    page_sub_2_ham : hamming_8_4 
    port map(
        DATA_IN(2 downto 0) => std_logic_vector(PAGE_SUB_CODE(6 downto 4)),
        DATA_IN(3) => CONTROL_BITS.ERASE_PAGE,
        DATA_OUT => PACKET_DATA(31 downto 24)
    );
    
    page_sub_3_ham : hamming_8_4 
    port map(
        DATA_IN(3 downto 0) => std_logic_vector(PAGE_SUB_CODE(10 downto 7)),
        DATA_OUT => PACKET_DATA(39 downto 32)
    );
    
    page_sub_4_ham : hamming_8_4 
    port map(
        DATA_IN(1 downto 0) => std_logic_vector(PAGE_SUB_CODE(12 downto 11)),
        DATA_IN(2) => CONTROL_BITS.NEWSFLASH,
        DATA_IN(3) => CONTROL_BITS.SUBTITLE,
        DATA_OUT => PACKET_DATA(47 downto 40)
    );
    
    control_bits_1_ham : hamming_8_4 
    port map(
        DATA_IN(0) => CONTROL_BITS.SUPPRESS_HEADER,
        DATA_IN(1) => CONTROL_BITS.UPDATE_INDICATOR,
        DATA_IN(2) => CONTROL_BITS.INTERRUPTED_SEQUENCE,
        DATA_IN(3) => CONTROL_BITS.INHIBIT_DISPLAY,
        DATA_OUT => PACKET_DATA(55 downto 48)
    );
    
    control_bits_2_ham : hamming_8_4 
    port map(
        DATA_IN(0) => CONTROL_BITS.MAGAZINE_SERIAL,
        DATA_IN(3 downto 1) => CONTROL_BITS.NATIONAL_OPTION_CHARACTER_SUBSET,
        DATA_OUT => PACKET_DATA(63 downto 56)
    );
    
    odd_parities:
    for I in 8 to 39 generate
        odd_parityx : odd_parity port map (
            DATA_IN => std_logic_vector(DATA_BYTES(I - 8)),
            DATA_OUT => PACKET_DATA((I * 8) + 7 downto I * 8)
        );
    end generate;

end Behavioral;
