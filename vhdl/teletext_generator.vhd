----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.05.2023 16:02:21
-- Design Name: 
-- Module Name: teletext_generator - Behavioral
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

entity teletext_generator is
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
end teletext_generator;

architecture Behavioral of teletext_generator is

component sync_generator
    port (CLK_IN            : in std_logic;
          RESET_N           : in std_logic;
          SYNC_OUT          : out std_logic;
          FRAME_TRIGGER     : out std_logic;
          PACKET_TRIGGER    : out STD_LOGIC);
    end component;
    
component shift_register
    Generic (
        register_size : integer
    );
    port (CLK_IN : in STD_LOGIC;
           RESET_N : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           DATA_IN : in STD_LOGIC_VECTOR ((register_size - 1) downto 0);
           DATA_OUT : out STD_LOGIC);
    end component;
    
component packet_header_generator
    port(
        MAGAZINE: in unsigned(2 downto 0);
        PACKET: in unsigned(4 downto 0);
        PACKET_HEADER_DATA: out std_logic_vector(39 downto 0)
    );
end component;

component packet_normal_generator
    port(
        DATA_BYTES: in TELETEXT_ARRAY(39 downto 0);
        PACKET_DATA: out STD_LOGIC_VECTOR(319 downto 0)
    );
end component;

component packet_page_header_generator
    port(
        PAGE_NUMBER : in unsigned (7 downto 0);
        PAGE_SUB_CODE : in unsigned (12 downto 0);
        CONTROL_BITS : in CONTROL_BITS;
        DATA_BYTES : in TELETEXT_ARRAY (31 downto 0);
        PACKET_DATA : out STD_LOGIC_VECTOR (319 downto 0)
    );
end component;

component packet_enhancement_generator is
    port(
        DESIGNATION_IN : in unsigned(3 downto 0);
        TRIPLETS_IN : in TRIPLET_ARRAY(12 downto 0);
        PACKET_DATA : out STD_LOGIC_VECTOR (319 downto 0)
    );
end component;

signal packet_trigger               : std_logic;
signal load_trigger                 : std_logic;
signal frame_trigger                : std_logic;
signal packet_designator            : unsigned (3 downto 0) := (others => '0');
signal teletext_packet              : std_logic_vector (359 downto 0) := (others => '1');
signal teletext_normal_data         : std_logic_vector (319 downto 0);
signal teletext_normal_data_const   : std_logic_vector (319 downto 0);
signal teletext_page_header_data    : std_logic_vector (319 downto 0); 
signal teletext_enhancement_data    : std_logic_vector (319 downto 0);

signal current_line                 : unsigned (4 downto 0) := (others => '0');
signal next_line                    : unsigned (4 downto 0) := (others => '0');

signal current_packet               : unsigned (4 downto 0);

-- 0 => header + enhancement data
-- 1 => display data
signal current_frame                : std_logic := '0';
signal next_frame                   : std_logic;

signal enhancement_triplets         : TRIPLET_ARRAY(12 downto 0) := (
    others => TERMINATION_MARKER_TRIPLET
);

begin
    
    -- Set active position to row 1, column 0
    enhancement_triplets(0)     <= (
        ADDRESS => to_unsigned(41, TERMINATION_MARKER_TRIPLET.ADDRESS'length),
        MODE => to_unsigned(4, TERMINATION_MARKER_TRIPLET.MODE'length),
        DATA => to_unsigned(0, TERMINATION_MARKER_TRIPLET.DATA'length)
    );
    
    -- G2 character (music note)
    enhancement_triplets(1)     <= (
        ADDRESS => to_unsigned(2, TERMINATION_MARKER_TRIPLET.ADDRESS'length),
        MODE => to_unsigned(15, TERMINATION_MARKER_TRIPLET.MODE'length),
        DATA => to_unsigned(16#55#, TERMINATION_MARKER_TRIPLET.DATA'length)
    );
    
    -- G3 character (Arrow pointing right)
    enhancement_triplets(2)     <= (
        ADDRESS => to_unsigned(5, TERMINATION_MARKER_TRIPLET.ADDRESS'length),
        MODE => to_unsigned(2, TERMINATION_MARKER_TRIPLET.MODE'length),
        DATA => to_unsigned(16#5B#, TERMINATION_MARKER_TRIPLET.DATA'length)
    );
    
    -- Set background color to green at the start of row 1
    enhancement_triplets(3)     <= (
        ADDRESS => to_unsigned(0, TERMINATION_MARKER_TRIPLET.ADDRESS'length),
        MODE => to_unsigned(3, TERMINATION_MARKER_TRIPLET.MODE'length),
        DATA => to_unsigned(2, TERMINATION_MARKER_TRIPLET.DATA'length)
    );

    LINE_INDEX <= current_line;

    sync_gen : sync_generator
    port map (CLK_IN   => CLK_IN,
              RESET_N  => RESET_N,
              SYNC_OUT => SYNC_OUT,
              FRAME_TRIGGER => frame_trigger,
              PACKET_TRIGGER => packet_trigger);
              
    data_out_shift : shift_register
    generic map(
        register_size => 360)
    port map(
        CLK_IN      => CLK_IN,
        RESET_N     => RESET_N,
        LOAD        => load_trigger,
        DATA_IN     => teletext_packet,
        DATA_OUT    => DATA_OUT);
        
        
    packet_header_gen : packet_header_generator
    port map(
        MAGAZINE => MAGAZINE_NUMBER,
        PACKET => current_packet,
        PACKET_HEADER_DATA => teletext_packet(39 downto 0)
    );
    
    packet_normal_gen : packet_normal_generator
    port map(
        DATA_BYTES => LINE_IN,
        PACKET_DATA => teletext_normal_data
    );
    
    packet_enhancement_gen : packet_enhancement_generator
    port map(
        DESIGNATION_IN => packet_designator,
        TRIPLETS_IN => enhancement_triplets,
        PACKET_DATA => teletext_enhancement_data
    );
    
    packet_page_header_gen : packet_page_header_generator
    port map(
        PAGE_NUMBER => PAGE_NUMBER,
        PAGE_SUB_CODE => (others => '0'),
        CONTROL_BITS => PAGE_CONTROL_BITS,
        DATA_BYTES => LINE_IN(39 downto 8),
        PACKET_DATA => teletext_page_header_data
    );
    
    reg_p: process (CLK_IN)
    begin
        if rising_edge(CLK_IN) then
            if RESET_N = '0' then
                current_line <= (others => '0');
                current_frame <= '0';
            else
                current_line <= next_line;
                current_frame <= next_frame;
            end if;
        end if;
    end process;
    
    advance_line: process (packet_trigger, frame_trigger, current_line)
    begin
        next_frame <= current_frame;

        if packet_trigger = '1' then
            next_line <= current_line + 1;
        elsif frame_trigger = '1' then
            next_line <= (others => '0');
            next_frame <= not current_frame;
        else
            next_line <= current_line;
        end if;
    end process;
    
    switch_generator: process (current_line, teletext_page_header_data, teletext_normal_data, teletext_enhancement_data, packet_trigger)
    begin
        load_trigger <= packet_trigger;
        teletext_packet(359 downto 40) <= (others => '0');
        current_packet <= (others => '1');

        if current_frame = '0' then
            if current_line = 0 then
                teletext_packet(359 downto 40) <= teletext_page_header_data;
                current_packet <= to_unsigned(0, current_packet'length);
            elsif current_line = 1 then
                -- TODO: Packet designations
                teletext_packet(359 downto 40) <= teletext_enhancement_data;
                current_packet <= to_unsigned(26, current_packet'length);
            else
                load_trigger <= '0';
            end if;
        else
            if current_line > 0 and current_line <= 24 then
                teletext_packet(359 downto 40) <= teletext_normal_data;
                current_packet <= current_line;
            else
                load_trigger <= '0';
            end if;
        end if;
    end process;
end Behavioral;
