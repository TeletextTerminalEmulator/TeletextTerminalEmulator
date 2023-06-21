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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity packet_page_header_generator is
    Port ( PAGE_NUMBER : in STD_LOGIC_VECTOR (7 downto 0);
           SUB_CODE : in STD_LOGIC_VECTOR (12 downto 0);
           CONTROL_BITS : in CONTROL_BITS;
           DATA_BYTES : in TELETEXT_CHAR (31 downto 0);
           PACKET_DATA : out STD_LOGIC_VECTOR (319 downto 0));
end packet_page_header_generator;

architecture Behavioral of packet_page_header_generator is

begin


end Behavioral;
