----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2023 16:39:07
-- Design Name: 
-- Module Name: types_pkg - nono
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

package types_pkg is
    type CONTROL_BITS is record
        ERASE_PAGE: std_logic;
        NEWSFLASH: std_logic;
        SUBTITLE: std_logic;
        SUPPRESS_HEADER: std_logic;
        UPDATE_INDICATOR: std_logic;
        INTERRUPTED_SEQUENCE: std_logic;
        INHIBIT_DISPLAY: std_logic;
        MAGAZINE_SERIAL: std_logic;
        NATIONAL_OPTION_CHARACTER_SUBSET: std_logic_vector(2 downto 0);
    end record CONTROL_BITS;
    
    subtype TELETEXT_CHAR is std_logic_vector(6 downto 0);
    type TELETEXT_ARRAY is array (natural range <>) of TELETEXT_CHAR;
    type TELETEXT_FRAME is array (24 downto 0) of TELETEXT_ARRAY(39 downto 0);
end package types_pkg;
