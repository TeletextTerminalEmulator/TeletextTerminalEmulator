----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.07.2023 15:54:18
-- Design Name: 
-- Module Name: teletext_controller - Behavioral
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

entity teletext_controller is
    Port ( CLK_IN : in STD_LOGIC;
           TELETEXT_CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           DATA_OUT : out STD_LOGIC;
           SYNC_OUT : out STD_LOGIC);
end teletext_controller;

architecture Behavioral of teletext_controller is

component teletext_generator is
    port(
        CLK_IN              : in    std_logic;
        RESET_N             : in    std_logic;
        LINE_IN             : in    TELETEXT_LINE;
        PAGE_CONTROL_BITS   : in    CONTROL_BITS;
        PAGE_NUMBER         : in    unsigned (7 downto 0);
        MAGAZINE_NUMBER     : in    unsigned (2 downto 0);
        
        LINE_INDEX          : out   unsigned (4 downto 0);
        
        DATA_OUT            : out   std_logic;
        SYNC_OUT            : out   std_logic
    );
end component;

component framebuffer is
    port(
        -- AXI side
        RESET           : in    std_logic;
        CLK_IN          : in    std_logic;
        
        WRITE_ENABLE    : in    std_logic;
        DATA_IN         : in    TELETEXT_CHAR;
        INPUT_LINE      : in    unsigned(4 downto 0);
        INPUT_COLUMN    : in    unsigned(5 downto 0);
    
        -- Teletextgenerator side
        LINE_OUT_CLOCK  : in    std_logic;
        LINE_OUT_INDEX  : in    unsigned(4 downto 0);
        LINE_OUT        : out   TELETEXT_LINE
    );
end component;

signal page_control_bits : CONTROL_BITS := (
    ERASE_PAGE => '0',
    NEWSFLASH => '0',
    SUBTITLE => '0',
    SUPPRESS_HEADER => '0',
    UPDATE_INDICATOR => '0',
    INTERRUPTED_SEQUENCE => '0',
    INHIBIT_DISPLAY => '0',
    MAGAZINE_SERIAL => '0',
    NATIONAL_OPTION_CHARACTER_SUBSET => "000"
);
signal page_number : unsigned (7 downto 0) := (others => '0');
signal magazine_number : unsigned (2 downto 0) := "001";
signal reset_n : std_logic;
signal teletext_line : TELETEXT_LINE;
signal line_index : unsigned (4 downto 0);

-- BRAM interface signals
signal write_enable     : std_logic;
signal data_in          : TELETEXT_CHAR;
signal input_line       : unsigned(4 downto 0);
signal input_column     : unsigned(5 downto 0);



begin
    reset_n <= not RESET;
    
    teletext_gen: teletext_generator
    port map(
        CLK_IN => TELETEXT_CLK,
        RESET_N => reset_n,
        LINE_IN => teletext_line,
        PAGE_CONTROL_BITS => page_control_bits,
        PAGE_NUMBER => page_number,
        MAGAZINE_NUMBER => magazine_number,
        LINE_INDEX => line_index,
        DATA_OUT => DATA_OUT,
        SYNC_OUT => SYNC_OUT
    );
    
    framebuf: framebuffer
    port map(
        RESET => RESET,
        CLK_IN => CLK_IN,
        
        WRITE_ENABLE => write_enable,
        DATA_IN => data_in,
        INPUT_LINE => input_line,
        INPUT_COLUMN => input_column,
        
        LINE_OUT_CLOCK => TELETEXT_CLK,
        LINE_OUT_INDEX => line_index,
        LINE_OUT => teletext_line 
    );

end Behavioral;
