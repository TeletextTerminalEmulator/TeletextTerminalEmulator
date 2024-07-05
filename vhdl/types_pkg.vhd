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
use IEEE.NUMERIC_STD.ALL;

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
    subtype TELETEXT_LINE is TELETEXT_ARRAY(39 downto 0);
    type TELETEXT_FRAME is array (24 downto 0) of TELETEXT_LINE;
    
    
    type TRIPLET is record
        ADDRESS: unsigned(5 downto 0);
        MODE: unsigned(4 downto 0);
        DATA: unsigned(6 downto 0);
    end record TRIPLET;
    type TRIPLET_ARRAY is array (natural range <>) of TRIPLET;
    subtype TRIPLET_LINE is TRIPLET_ARRAY(12 downto 0);

    constant TERMINATION_MARKER_TRIPLET : TRIPLET := (
        ADDRESS => "111111",
        MODE => "11111",
        DATA => "1111111"
    );

    -- https://stackoverflow.com/questions/13584307/reverse-bit-order-on-vhdl
    function reverse_any_vector (a: std_logic_vector) return std_logic_vector;
    function convert_std_logic_to_teletext_line (a: std_logic_vector(279 downto 0)) return TELETEXT_LINE;
    function convert_std_logic_to_control_bits (a: std_logic_vector(10 downto 0)) return CONTROL_BITS;
    function convert_teletext_line_to_enhancements (a: TELETEXT_LINE) return TRIPLET_LINE;
end package types_pkg;

package body types_pkg is
    -- https://stackoverflow.com/questions/13584307/reverse-bit-order-on-vhdl
    function reverse_any_vector (a: std_logic_vector)
    return std_logic_vector is
        variable result: std_logic_vector(a'RANGE);
        alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
    begin
        for i in aa'RANGE loop
            result(i) := aa(i);
        end loop;
        return result;
    end reverse_any_vector;
    
    function convert_std_logic_to_control_bits (a: std_logic_vector(10 downto 0))
    return CONTROL_BITS is
        variable result: CONTROL_BITS;
    begin
        result.ERASE_PAGE:= a(0);
        result.NEWSFLASH:= a(1);
        result.SUBTITLE:= a(2);
        result.SUPPRESS_HEADER:= a(3);
        result.UPDATE_INDICATOR:= a(4);
        result.INTERRUPTED_SEQUENCE:= a(5);
        result.INHIBIT_DISPLAY:= a(6);
        result.MAGAZINE_SERIAL:= a(7);
        result.NATIONAL_OPTION_CHARACTER_SUBSET := a(10 downto 8);
        return result;
    end convert_std_logic_to_control_bits;
    
    function convert_std_logic_to_teletext_line (a: std_logic_vector(279 downto 0))
    return TELETEXT_LINE is
        variable result: TELETEXT_LINE;
    begin
        for i in result'RANGE loop
            result(i) := TELETEXT_CHAR(a((i*7 + 6) downto (i*7)));
        end loop;
        return result;
    end convert_std_logic_to_teletext_line;
    
    function convert_teletext_line_to_enhancements (a: TELETEXT_LINE)
    return TRIPLET_LINE is
        variable result: TRIPLET_LINE;
    begin
        for i in result'RANGE loop
            result(i).ADDRESS := unsigned(a(i * 3)(5 downto 0));
            result(i).MODE := unsigned(a((i * 3) + 1)(4 downto 0));
            result(i).DATA := unsigned(a((i * 3) + 2)(6 downto 0));
        end loop;
        return result;
    end convert_teletext_line_to_enhancements;
end package body types_pkg;
