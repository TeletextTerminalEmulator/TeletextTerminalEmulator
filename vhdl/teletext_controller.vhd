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
    generic (
        AXI_DATA_WIDTH : integer := 32;
        AXI_ADDR_WIDTH : integer := 6
    );
    Port ( CLK_IN : in STD_LOGIC;
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

signal reset : std_logic;
signal teletext_line : TELETEXT_LINE;
signal line_index : unsigned (4 downto 0);

-- BRAM interface signals
signal write_enable     : std_logic;
signal data_in          : TELETEXT_CHAR;
signal input_line       : unsigned(4 downto 0);
signal input_column     : unsigned(5 downto 0);

-- AXI4LITE signals

signal axi_awaddr	: std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
signal axi_awready	: std_logic;
signal axi_wready	: std_logic;
signal axi_bresp	: std_logic_vector(1 downto 0);
signal axi_bvalid	: std_logic;
signal axi_araddr	: std_logic_vector(AXI_ADDR_WIDTH-1 downto 0);
signal axi_arready	: std_logic;
signal axi_rdata	: std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
signal axi_rresp	: std_logic_vector(1 downto 0);
signal axi_rvalid	: std_logic;

-- AXI4LITE registers
signal current_page_control_bits : CONTROL_BITS := (
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
signal current_page_number : unsigned (7 downto 0) := (others => '0');
signal current_magazine_number : unsigned (2 downto 0) := "001";
signal next_page_control_bits : CONTROL_BITS;
signal next_page_number : unsigned (7 downto 0);
signal next_magazine_number : unsigned (2 downto 0);

begin

    S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
    
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
        DATA_OUT => DATA_OUT,
        SYNC_OUT => SYNC_OUT
    );
    
    framebuf: framebuffer
    port map(
        RESET => reset,
        CLK_IN => CLK_IN,
        
        WRITE_ENABLE => write_enable,
        DATA_IN => data_in,
        INPUT_LINE => input_line,
        INPUT_COLUMN => input_column,
        
        LINE_OUT_CLOCK => TELETEXT_CLK,
        LINE_OUT_INDEX => line_index,
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
            else
                current_page_control_bits <= next_page_control_bits;
                current_page_number <= next_page_number;
                current_magazine_number <= next_magazine_number;
            end if;
        end if;
    end process;

end Behavioral;
