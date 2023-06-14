-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 31.5.2023 15:18:01 UTC

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity sync_generator_tb is
end sync_generator_tb;

architecture tb of sync_generator_tb is

    component sync_generator
        port (CLK_IN   : in std_logic;
              RESET_N  : in std_logic;
              SYNC_OUT : out std_logic;
              PACKET_TRIGGER : out STD_LOGIC);
    end component;

    signal CLK_IN   : std_logic;
    signal RESET_N  : std_logic;
    signal SYNC_OUT : std_logic;
    signal PACKET_TRIGGER : std_logic;

    constant TbPeriod : time := (1000 ns) / 7;
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : sync_generator
    port map (CLK_IN   => CLK_IN,
              RESET_N  => RESET_N,
              SYNC_OUT => SYNC_OUT,
              PACKET_TRIGGER => PACKET_TRIGGER);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that CLK_IN is really your main clock signal
    CLK_IN <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed

        -- Reset generation
        -- EDIT: Check that RESET_N is really your reset signal
        RESET_N <= '0';
        wait for 100 ns;
        RESET_N <= '1';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for (1000 ms) / 25;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;
