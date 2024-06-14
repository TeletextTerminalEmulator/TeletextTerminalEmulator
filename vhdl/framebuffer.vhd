----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.09.2023 16:09:59
-- Design Name: 
-- Module Name: framebuffer - Behavioral
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

Library UNISIM;
use UNISIM.vcomponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

use work.types_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity framebuffer is
Port (
    -- AXI side
    RESET           : in    std_logic;
    CLK_IN          : in    std_logic;
    
    WRITE_ENABLE    : in    std_logic;
    DATA_IN         : in    TELETEXT_CHAR;
    INPUT_LINE      : in    unsigned(5 downto 0);
    INPUT_COLUMN    : in    unsigned(5 downto 0);
    
    -- Teletextgenerator side
    LINE_OUT_CLOCK  : in    std_logic;
    LINE_OUT_INDEX  : in    unsigned(4 downto 0);
    FRAME           : in    std_logic;
    LINE_OUT        : out   TELETEXT_LINE
);    
end framebuffer;

architecture Behavioral of framebuffer is

signal data_out             : TELETEXT_CHAR                 := (others => '0');
signal read_address         : std_logic_vector(11 downto 0);
signal write_address        : std_logic_vector(11 downto 0);
signal current_column       : unsigned(5 downto 0)          := (others => '0');
signal next_column          : unsigned(5 downto 0);
signal current_out_index    : unsigned(4 downto 0)          := (others => '0');
signal current_frame        : std_logic;
signal frame_offset         : unsigned(5 downto 0);
signal next_line_out        : TELETEXT_LINE;
signal current_line_out     : TELETEXT_LINE                 := (others => (others => '0'));
signal write_enable_vec     : std_logic_vector(0 downto 0);

-- testing input

--signal next_input_char            : TELETEXT_CHAR;
--signal current_input_char         : TELETEXT_CHAR        := "0000000";
--signal next_input_column          : unsigned(5 downto 0);
--signal current_input_column       : unsigned(5 downto 0) := (others => '0');

--constant input_line               : unsigned(4 downto 0) := "10000";

begin

-- read_address <= std_logic_vector(current_out_index) & std_logic_vector((current_column + 1) mod TELETEXT_LINE'length);
-- write_address <= std_logic_vector(INPUT_LINE) & std_logic_vector(INPUT_COLUMN);
frame_offset <=
    to_unsigned(0, 6) when current_frame else to_unsigned(24, 6);
read_address <= 
    std_logic_vector((current_out_index + frame_offset) * to_unsigned(40, 6) + ((current_column + 1) mod TELETEXT_LINE'length));
write_address <= std_logic_vector(INPUT_LINE * to_unsigned(40, 6) + INPUT_COLUMN);
LINE_OUT <= current_line_out;
write_enable_vec(0) <= WRITE_ENABLE;

BRAM_SDP_MACRO_inst : BRAM_SDP_MACRO
   generic map (
      BRAM_SIZE => "18Kb", -- Target BRAM, "18Kb" or "36Kb" 
      DEVICE => "7SERIES", -- Target device: "VIRTEX5", "VIRTEX6", "7SERIES", "SPARTAN6" 
      WRITE_WIDTH => TELETEXT_CHAR'LENGTH,    -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH => TELETEXT_CHAR'LENGTH,     -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      DO_REG => 0, -- Optional output register (0 or 1)
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL", -- Collision check enable "ALL", "WARNING_ONLY", 
                                    -- "GENERATE_X_ONLY" or "NONE"       
      SRVAL => X"000000000000000000", --  Set/Reset value for port output
      WRITE_MODE => "WRITE_FIRST", -- Specify "READ_FIRST" for same clock or synchronous clocks
                                   --  Specify "WRITE_FIRST for asynchrononous clocks on ports
      INIT => X"000000000000000000", --  Initial values on output port
      -- The following INIT_xx declarations specify the initial contents of the RAM
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      
      -- The next set of INITP_xx are for the parity bits
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000")
   port map (
      DO => data_out,         -- Output read data port, width defined by READ_WIDTH parameter
      DI => DATA_IN,         -- Input write data port, width defined by WRITE_WIDTH parameter
      RDADDR => read_address(10 downto 0), -- Input read address, width defined by read port depth
      RDCLK => LINE_OUT_CLOCK,   -- 1-bit input read clock
      RDEN => '1',     -- 1-bit input read port enable
      REGCE => '1',     -- 1-bit input read output register enable
      RST => RESET,       -- 1-bit input reset 
      WE => write_enable_vec,         -- Input write enable, width defined by write port depth
      WRADDR => write_address(10 downto 0), -- Input write address, width defined by write port depth
      WRCLK => CLK_IN,   -- 1-bit input write clock
      WREN => '1'      -- 1-bit input write port enable
   );
   -- End of BRAM_SDP_MACRO_inst instantiation

    -- read section
    reg_out_p: process(LINE_OUT_CLOCK, next_column, LINE_OUT_INDEX, next_line_out, FRAME, current_frame)
    begin
        if rising_edge(LINE_OUT_CLOCK) then
            current_column <= next_column;
            current_out_index <= LINE_OUT_INDEX;
            current_line_out <= next_line_out;
            current_frame <= FRAME;
        end if;
    end process;
    
    read_col_p: process(current_column, current_out_index, LINE_OUT_INDEX)
    begin
        if current_out_index /= LINE_OUT_INDEX then
            next_column <= (others => '0');
        else
            next_column <= (current_column + 1) mod TELETEXT_LINE'length;
        end if;
    end process;
    
    ram_out_to_line_p: process(data_out, current_column, current_line_out)
    begin
        next_line_out <= current_line_out;
        next_line_out(to_integer(current_column)) <= data_out;
    end process;
    
    -- write section
--    reg_in_p: process(CLK_IN, next_input_char, next_input_column)
--    begin
--        if rising_edge(CLK_IN) then
--            current_input_char <= next_input_char;
--            current_input_column <= next_input_column;
--        end if;
--    end process;
    
--    write_bram: process(current_input_column, current_input_char)
--    begin
--        next_input_char <= std_logic_vector((unsigned(current_input_char) + 1) mod "1100000");
--        data_in <= std_logic_vector(unsigned(current_input_column) + "0100000");
--        next_input_column <= (current_input_column + 1) mod TELETEXT_LINE'length;
--    end process;
end Behavioral;
