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
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity teletext_controller is
    generic (
        AXI_DATA_WIDTH : integer := 32;
        AXI_ADDR_WIDTH : integer := 6
    );
    Port (
        TELETEXT_CLK : in STD_LOGIC;
        DATA_OUT : out STD_LOGIC;
        SYNC_OUT : out STD_LOGIC;
        
        -- Global Clock Signal
        S_AXI_ACLK	: in std_logic;
        -- Global Reset Signal. This Signal is Active LOW
        S_AXI_ARESETN	: in std_logic;
        -- Write address (issued by master, acceped by Slave)
        S_AXI_AWADDR	: in std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
        -- Write channel Protection type. This signal indicates the
            -- privilege and security level of the transaction, and whether
            -- the transaction is a data access or an instruction access.
        S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
        -- Write address valid. This signal indicates that the master signaling
            -- valid write address and control information.
        S_AXI_AWVALID	: in std_logic;
        -- Write address ready. This signal indicates that the slave is ready
            -- to accept an address and associated control signals.
        S_AXI_AWREADY	: out std_logic;
        -- Write data (issued by master, acceped by Slave) 
        S_AXI_WDATA	: in std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
        -- Write strobes. This signal indicates which byte lanes hold
            -- valid data. There is one write strobe bit for each eight
            -- bits of the write data bus.    
        S_AXI_WSTRB	: in std_logic_vector((AXI_DATA_WIDTH/8)-1 downto 0);
        -- Write valid. This signal indicates that valid write
            -- data and strobes are available.
        S_AXI_WVALID	: in std_logic;
        -- Write ready. This signal indicates that the slave
            -- can accept the write data.
        S_AXI_WREADY	: out std_logic;
        -- Write response. This signal indicates the status
            -- of the write transaction.
        S_AXI_BRESP	: out std_logic_vector(1 downto 0);
        -- Write response valid. This signal indicates that the channel
            -- is signaling a valid write response.
        S_AXI_BVALID	: out std_logic;
        -- Response ready. This signal indicates that the master
            -- can accept a write response.
        S_AXI_BREADY	: in std_logic;
        -- Read address (issued by master, acceped by Slave)
        S_AXI_ARADDR	: in std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
        -- Protection type. This signal indicates the privilege
            -- and security level of the transaction, and whether the
            -- transaction is a data access or an instruction access.
        S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
        -- Read address valid. This signal indicates that the channel
            -- is signaling valid read address and control information.
        S_AXI_ARVALID	: in std_logic;
        -- Read address ready. This signal indicates that the slave is
            -- ready to accept an address and associated control signals.
        S_AXI_ARREADY	: out std_logic;
        -- Read data (issued by slave)
        S_AXI_RDATA	: out std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
        -- Read response. This signal indicates the status of the
            -- read transfer.
        S_AXI_RRESP	: out std_logic_vector(1 downto 0);
        -- Read valid. This signal indicates that the channel is
            -- signaling the required read data.
        S_AXI_RVALID	: out std_logic;
        -- Read ready. This signal indicates that the master can
            -- accept the read data and response information.
        S_AXI_RREADY	: in std_logic
    );
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
        FRAME_FLAG          : out   std_logic;
        
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
        INPUT_LINE      : in    unsigned(5 downto 0);
        INPUT_COLUMN    : in    unsigned(5 downto 0);
    
        -- Teletextgenerator side
        LINE_OUT_CLOCK  : in    std_logic;
        LINE_OUT_INDEX  : in    unsigned(4 downto 0);
        FRAME           : in    std_logic;
        LINE_OUT        : out   TELETEXT_LINE
    );
end component;

signal reset : std_logic;
signal teletext_line : TELETEXT_LINE;
signal line_index : unsigned (4 downto 0);
signal frame : std_logic;

-- BRAM interface signals
signal current_write_enable     : std_logic := '0';
signal next_write_enable        : std_logic;
signal current_data_in          : TELETEXT_CHAR;
signal next_data_in             : TELETEXT_CHAR;
signal current_input_line       : unsigned(5 downto 0);
signal next_input_line          : unsigned(5 downto 0);
signal current_input_column     : unsigned(5 downto 0);
signal next_input_column        : unsigned(5 downto 0);

-- AXI4 Transaction registers

signal current_axi_write_address  : std_logic_vector(AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
signal next_axi_write_address     : std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);

signal current_axi_write_response   : std_logic_vector(1 downto 0) := "00";
signal next_axi_write_response      : std_logic_vector(1 downto 0);

signal current_axi_read_response    : std_logic_vector(1 downto 0) := "00";
signal next_axi_read_response       : std_logic_vector(1 downto 0);

signal current_axi_read_data        : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal next_axi_read_data           : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);

-- AXI4 Transaction stages

signal current_axi_awready : std_logic := '1';
signal next_axi_awready : std_logic;
signal current_axi_dwready : std_logic := '0';
signal next_axi_dwready : std_logic;
signal current_axi_bvalid : std_logic := '0';
signal next_axi_bvalid : std_logic;

signal current_axi_arready : std_logic := '1';
signal next_axi_arready : std_logic;
signal current_axi_drvalid : std_logic := '0';
signal next_axi_drvalid : std_logic;

-- AXI4LITE registers
constant ADDRESS_LSB: integer := integer(ceil(log2(real(AXI_DATA_WIDTH / 8))));
constant ADDRESS_MSB: integer := 4 - 1 + ADDRESS_LSB; -- 

signal current_page_control_bits : CONTROL_BITS := (
    ERASE_PAGE => '0',
    NEWSFLASH => '0',
    SUBTITLE => '0',
    SUPPRESS_HEADER => '0',
    UPDATE_INDICATOR => '0',
    INTERRUPTED_SEQUENCE => '0',
    INHIBIT_DISPLAY => '0',
    MAGAZINE_SERIAL => '1',
    NATIONAL_OPTION_CHARACTER_SUBSET => "000"
);
signal current_page_number : unsigned (7 downto 0) := (others => '0');
signal current_magazine_number : unsigned (2 downto 0) := "001";
signal next_page_control_bits : CONTROL_BITS;
signal next_page_number : unsigned (7 downto 0);
signal next_magazine_number : unsigned (2 downto 0);

begin
    S_AXI_AWREADY	<= current_axi_awready;
	S_AXI_WREADY	<= current_axi_dwready;
	S_AXI_BRESP	<= current_axi_write_response;
	S_AXI_BVALID	<= current_axi_bvalid;
	
	S_AXI_ARREADY	<= current_axi_arready;
	S_AXI_RDATA	<= current_axi_read_data;
	S_AXI_RRESP	<= current_axi_read_response;
	S_AXI_RVALID	<= current_axi_drvalid;
    
    reset <= not S_AXI_ARESETN;
    
    teletext_gen: teletext_generator
    port map(
        CLK_IN => TELETEXT_CLK,
        RESET_N => S_AXI_ARESETN,
        LINE_IN => teletext_line,
        PAGE_CONTROL_BITS => current_page_control_bits,
        PAGE_NUMBER => current_page_number,
        MAGAZINE_NUMBER => current_magazine_number,
        LINE_INDEX => line_index,
        FRAME_FLAG => frame,
        DATA_OUT => DATA_OUT,
        SYNC_OUT => SYNC_OUT
    );
    
    framebuf: framebuffer
    port map(
        RESET => reset,
        CLK_IN => S_AXI_ACLK,
        
        WRITE_ENABLE => current_write_enable,
        DATA_IN => current_data_in,
        INPUT_LINE => current_input_line,
        INPUT_COLUMN => current_input_column,
        
        LINE_OUT_CLOCK => TELETEXT_CLK,
        LINE_OUT_INDEX => line_index,
        FRAME => frame,
        LINE_OUT => teletext_line 
    );

    reg_p: process (S_AXI_ACLK, S_AXI_ARESETN)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                current_page_control_bits <= (
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
                current_page_number <= (others => '0');
                current_magazine_number <= "001";
                
                current_axi_write_address <= (others => '0');
                current_axi_write_response <= (others => '0');
                
                current_axi_awready <= '1';
                current_axi_dwready <= '0';
                current_axi_bvalid <= '0';
                
                current_write_enable <= '0';
                current_data_in <= (others => '0');
                current_input_line <= (others => '0');
                current_input_column <= (others => '0');
                
                current_axi_read_data <= (others => '0');
                current_axi_read_response <= "00";
                
                current_axi_arready <= '1';
                current_axi_drvalid <= '0';
            else
                current_page_control_bits <= next_page_control_bits;
                current_page_number <= next_page_number;
                current_magazine_number <= next_magazine_number;
                
                current_axi_write_address <= next_axi_write_address;
                current_axi_write_response <= next_axi_write_response;
                
                current_axi_awready <= next_axi_awready;
                current_axi_dwready <= next_axi_dwready;
                current_axi_bvalid <= next_axi_bvalid;
                
                current_write_enable <= next_write_enable;
                current_data_in <= next_data_in;
                current_input_line <= next_input_line;
                current_input_column <= next_input_column;
                
                current_axi_read_data <= next_axi_read_data;
                current_axi_read_response <= next_axi_read_response;
                
                current_axi_arready <= next_axi_arready;
                current_axi_drvalid <= next_axi_drvalid;
            end if;
        end if;
    end process;
    
    write_address_handshake: process(S_AXI_AWVALID, S_AXI_AWADDR, S_AXI_BREADY, current_axi_write_address, current_axi_awready, current_axi_bvalid)
    begin
        next_axi_write_address <= current_axi_write_address;
        next_axi_awready <= current_axi_awready;
    
        if S_AXI_AWVALID = '1' and current_axi_awready = '1' then
            next_axi_write_address <= S_AXI_AWADDR;
            next_axi_awready <= '0';
        elsif S_AXI_BREADY = '1' and current_axi_bvalid = '1' then
            next_axi_awready <= '1';
        end if;
    end process;
    
    write_data_handshake: process(S_AXI_AWVALID, S_AXI_WVALID, current_axi_awready, current_axi_dwready, current_axi_write_response,
                                    current_page_number, current_magazine_number, current_page_control_bits, current_axi_write_address,
                                    S_AXI_WDATA, S_AXI_WSTRB, current_write_enable, current_data_in, current_input_line, current_input_column)
    begin
        next_axi_dwready <= current_axi_dwready;
        -- Should be handled here because the response depends on the place the data is written to
        next_axi_write_response <= current_axi_write_response; 
        
        next_page_number <= current_page_number;
        next_magazine_number <= current_magazine_number;
        next_page_control_bits <= current_page_control_bits;
        
        next_write_enable <= current_write_enable;
        next_data_in <= current_data_in;
        next_input_line <= current_input_line;
        next_input_column <= current_input_column;
        
        if S_AXI_AWVALID = '1' and current_axi_awready = '1' then
            next_axi_dwready <= '1';
        elsif S_AXI_WVALID = '1' and current_axi_dwready = '1' then
            next_axi_dwready <= '0';
            next_axi_write_response <= "00";
            
            case current_axi_write_address(ADDRESS_MSB downto ADDRESS_LSB) is
                when "0000" =>
                    if S_AXI_WSTRB(0) = '1' then next_page_number <= unsigned(S_AXI_WDATA(7 downto 0)); end if;
                    if S_AXI_WSTRB(1) = '1' then next_magazine_number <= unsigned(S_AXI_WDATA(10 downto 8)); end if;
                    
                    if S_AXI_WSTRB(3 downto 2) /= "00" then
                        next_axi_write_response <= "10"; -- SLVERR
                    end if;
                when "0100" =>
                    if S_AXI_WSTRB(0) = '1' then next_page_control_bits.ERASE_PAGE <= S_AXI_WDATA(0); end if;
                    if S_AXI_WSTRB(1) = '1' then next_page_control_bits.NEWSFLASH <= S_AXI_WDATA(8); end if;
                    if S_AXI_WSTRB(2) = '1' then next_page_control_bits.SUBTITLE <= S_AXI_WDATA(16); end if;
                    if S_AXI_WSTRB(3) = '1' then next_page_control_bits.SUPPRESS_HEADER <= S_AXI_WDATA(24); end if;
                when "0101" =>
                    if S_AXI_WSTRB(0) = '1' then next_page_control_bits.UPDATE_INDICATOR <= S_AXI_WDATA(0); end if;
                    if S_AXI_WSTRB(1) = '1' then next_page_control_bits.INTERRUPTED_SEQUENCE <= S_AXI_WDATA(8); end if;
                    if S_AXI_WSTRB(2) = '1' then next_page_control_bits.INHIBIT_DISPLAY <= S_AXI_WDATA(16); end if;
                    if S_AXI_WSTRB(3) = '1' then next_page_control_bits.MAGAZINE_SERIAL <= S_AXI_WDATA(24); end if;
                when "0110" =>
                    if S_AXI_WSTRB(0) = '1' then next_page_control_bits.NATIONAL_OPTION_CHARACTER_SUBSET <= S_AXI_WDATA(2 downto 0); end if;
                    
                    if S_AXI_WSTRB(3 downto 1) /= "000" then
                        next_axi_write_response <= "10"; -- SLVERR
                    end if;
                when "1000" =>
                    if S_AXI_WSTRB = "1111" then
                        next_input_line <= unsigned(S_AXI_WDATA(29 downto 24));
                        next_input_column <= unsigned(S_AXI_WDATA(21 downto 16));
                        next_data_in <= S_AXI_WDATA(6 downto 0);
                        next_write_enable <= '1';
                    else
                        next_axi_write_response <= "10"; -- SLVERR
                    end if;
                when others =>
                    next_axi_write_response <= "10";
            end case;
        elsif current_write_enable = '1' then
            next_write_enable <= '0';
        end if;
    end process;
    
    write_response_handshake: process(current_axi_dwready, S_AXI_WVALID, current_axi_dwready, S_AXI_BREADY, current_axi_bvalid)
    begin
        next_axi_bvalid <= current_axi_bvalid;
        if S_AXI_WVALID = '1' and current_axi_dwready = '1' then
            next_axi_bvalid <= '1';
        elsif S_AXI_BREADY = '1' and current_axi_bvalid = '1' then
            next_axi_bvalid <= '0';
        end if;        
    end process;

    read_address_handshake: process(current_axi_arready, S_AXI_ARVALID, S_AXI_ARADDR, S_AXI_RREADY, current_axi_drvalid)
    begin
        next_axi_arready <= current_axi_arready;
    
        if S_AXI_ARVALID = '1' and current_axi_arready = '1' then
            next_axi_arready <= '0';
        elsif S_AXI_RREADY = '1' and current_axi_drvalid = '1' then
            next_axi_arready <= '1';
        end if;
    end process;
    
    read_data_handshake: process(S_AXI_RREADY, current_axi_drvalid)
    begin
        next_axi_drvalid <= current_axi_drvalid;
        next_axi_read_response <= current_axi_read_response;
        if S_AXI_ARVALID = '1' and current_axi_arready = '1' then
            next_axi_read_response <= "00"; -- OKAY
            next_axi_read_data <= (others => '0');
            case S_AXI_ARADDR(ADDRESS_MSB downto ADDRESS_LSB) is
                when "0000" =>
                    next_axi_read_data(7 downto 0) <= std_logic_vector(current_page_number);
                    next_axi_read_data(10 downto 8) <= std_logic_vector(current_magazine_number);
                when "0100" =>
                    next_axi_read_data(0) <= current_page_control_bits.ERASE_PAGE;
                    next_axi_read_data(8) <= current_page_control_bits.NEWSFLASH;
                    next_axi_read_data(16) <= current_page_control_bits.SUBTITLE;
                    next_axi_read_data(24) <= current_page_control_bits.SUPPRESS_HEADER;
                when "0101" =>
                    next_axi_read_data(0) <= current_page_control_bits.UPDATE_INDICATOR;
                    next_axi_read_data(8) <= current_page_control_bits.INTERRUPTED_SEQUENCE;
                    next_axi_read_data(16) <= current_page_control_bits.INHIBIT_DISPLAY;
                    next_axi_read_data(24) <= current_page_control_bits.MAGAZINE_SERIAL;
                when "0110" =>
                    next_axi_read_data(2 downto 0) <= current_page_control_bits.NATIONAL_OPTION_CHARACTER_SUBSET;
				when "1000" =>
					next_axi_read_data(29 downto 24) <= std_logic_vector(current_input_line);
					next_axi_read_data(21 downto 16) <= std_logic_vector(current_input_column);
					next_axi_read_data(6 downto 0) <= current_data_in;
                when others =>
                    next_axi_read_response <= "10"; -- SLVERR
            end case;
            next_axi_drvalid <= '1';
        elsif S_AXI_RREADY = '1' and current_axi_drvalid = '1' then
            next_axi_drvalid <= '0';
        end if;
    end process;
end Behavioral;
