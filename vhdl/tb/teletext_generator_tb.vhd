-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 14.6.2023 15:10:21 UTC

library ieee;
use ieee.std_logic_1164.all;

entity teletext_generator_tb is
end teletext_generator_tb;

architecture tb of teletext_generator_tb is

    component teletext_generator
        port (CLK_IN   : in std_logic;
              RESET_N  : in std_logic;
              DATA_OUT : out std_logic;
              SYNC_OUT : out std_logic);
    end component;

    signal CLK_IN   : std_logic;
    signal RESET_N  : std_logic;
    signal DATA_OUT : std_logic;
    signal SYNC_OUT : std_logic;

    constant TbPeriod : time := (1000 ns) / 7;
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : teletext_generator
    port map (CLK_IN   => CLK_IN,
              RESET_N  => RESET_N,
              DATA_OUT => DATA_OUT,
              SYNC_OUT => SYNC_OUT);

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