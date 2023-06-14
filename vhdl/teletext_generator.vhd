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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity teletext_generator is
    port(
        CLK_IN          : in    std_logic;
        RESET_N         : in    std_logic;
        
        DATA_OUT        : out   std_logic;
        SYNC_OUT        : out   std_logic
    );
end teletext_generator;

architecture Behavioral of teletext_generator is

component sync_generator
    port (CLK_IN            : in std_logic;
          RESET_N           : in std_logic;
          SYNC_OUT          : out std_logic;
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
    
component packet_generator
    port(
        MAGAZINE: in unsigned(2 downto 0);
        PACKET: in unsigned(3 downto 0);
        PACKET_DATA: out std_logic_vector(359 downto 0)
    );
end component;

signal packet_trigger   : std_logic;
signal teletext_packet  : std_logic_vector (359 downto 0) := (others => '1');

begin
    sync_gen : sync_generator
    port map (CLK_IN   => CLK_IN,
              RESET_N  => RESET_N,
              SYNC_OUT => SYNC_OUT,
              PACKET_TRIGGER => packet_trigger);
              
    data_out_shift : shift_register
    generic map(
        register_size => 360)
    port map(
        CLK_IN      => CLK_IN,
        RESET_N     => RESET_N,
        LOAD        => packet_trigger,
        DATA_IN     => teletext_packet,
        DATA_OUT    => DATA_OUT);
        
        
    packet_gen : packet_generator
    port map(
        MAGAZINE => "101",
        PACKET => "0110",
        PACKET_DATA => teletext_packet
    );
    
end Behavioral;
