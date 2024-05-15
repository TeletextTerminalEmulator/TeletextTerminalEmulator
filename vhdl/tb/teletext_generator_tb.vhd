-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 14.6.2023 15:10:21 UTC

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity teletext_generator_tb is
end teletext_generator_tb;

architecture tb of teletext_generator_tb is

    component teletext_generator
        port (CLK_IN              : in    std_logic;
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

    signal CLK_IN   : std_logic;
    signal RESET_N  : std_logic;
    
    signal DATA_OUT : std_logic;
    signal SYNC_OUT : std_logic;
    
    signal LINE_INDEX   : unsigned(4 downto 0);

    constant PAGE_CONTROL_BITS : CONTROL_BITS := (
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
    constant PAGE_NUMBER : unsigned (7 downto 0) := "00010001";
    
    constant EMPTY_LINE : TELETEXT_LINE := (others => "0100000");

    constant TbPeriod : time := (1000 ns) / 7;
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

    signal packet : std_logic_vector (359 downto 0);
    
    signal packet_num: unsigned(4 downto 0);
    
    type logic_triplet is array(12 downto 0) of std_logic_vector(17 downto 0);
    type logic_triplet_hamming is array(12 downto 0) of std_logic_vector(23 downto 0);
    type logic_triplet_parity is array(12 downto 0) of std_logic_vector(5 downto 0);
    
    signal triplet_hamming: logic_triplet_hamming;
    signal hamming_parity: logic_triplet_parity;
    signal triplet: logic_triplet;
    
    signal triplet_decoded: TRIPLET_ARRAY(12 downto 0);

begin

    dut : teletext_generator
    port map (CLK_IN            => CLK_IN,
              RESET_N           => RESET_N,
              
              LINE_IN           => EMPTY_LINE,
              LINE_INDEX        => LINE_INDEX,
              
              MAGAZINE_NUMBER   => "001",
              
              PAGE_CONTROL_BITS => PAGE_CONTROL_BITS,
              PAGE_NUMBER       => PAGE_NUMBER,
              DATA_OUT          => DATA_OUT,
              SYNC_OUT          => SYNC_OUT);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that CLK_IN is really your main clock signal
    CLK_IN <= TbClock;
    
    packet_num <= unsigned(packet(320 downto 320) & packet(322) & packet(324) & packet(326) & packet(328));
    
    triplets: for I in 0 to 12 generate
        
        triplet_hamming(I) <= reverse_any_vector(packet((311 - I * 24) downto (288 - I * 24)));
        
        triplet(I) <= triplet_hamming(I)(22 downto 16) & triplet_hamming(I)(14 downto 8) & triplet_hamming(I)(6 downto 4) & triplet_hamming(I)(2);
        
        triplet_decoded(I).ADDRESS <= unsigned(triplet(I)(5 downto 0));
        triplet_decoded(I).MODE <= unsigned(triplet(I)(10 downto 6));
        triplet_decoded(I).DATA <= unsigned(triplet(I)(17 downto 11));
    
        hamming_parity(I)(0) <= xor (triplet_hamming(I)(0 downto 0) & triplet_hamming(I)(2) & triplet_hamming(I)(4) & triplet_hamming(I)(6)
            & triplet_hamming(I)(8) & triplet_hamming(I)(10) & triplet_hamming(I)(12) & triplet_hamming(I)(14) 
            & triplet_hamming(I)(16) & triplet_hamming(I)(18) & triplet_hamming(I)(20) & triplet_hamming(I)(22));
            
        hamming_parity(I)(1) <= xor (triplet_hamming(I)(2 downto 1) & triplet_hamming(I)(6 downto 5) & triplet_hamming(I)(10 downto 9) & triplet_hamming(I)(14 downto 13) & triplet_hamming(I)(18 downto 17) & triplet_hamming(I)(22 downto 21));
    
        hamming_parity(I)(2) <= xor (triplet_hamming(I)(6 downto 3) & triplet_hamming(I)(14 downto 11) & triplet_hamming(I)(22 downto 19));
        
        hamming_parity(I)(3) <= xor triplet_hamming(I)(14 downto 7);
        
        hamming_parity(I)(4) <= xor triplet_hamming(I)(22 downto 15);
        
        hamming_parity(I)(5) <= xor triplet_hamming(I);
    
    end generate;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed

        -- Reset generation
        -- EDIT: Check that RESET_N is really your reset signal
        RESET_N <= '0';
        wait for 100 ns;
        RESET_N <= '1';
        wait for 100 ns;

        
        for k in 0 to 50 loop

            wait until rising_edge(DATA_OUT);
            for i in 359 downto 0 loop
                wait until rising_edge(CLK_IN);
                packet(i) <= DATA_OUT;
            end loop;
            wait until rising_edge(CLK_IN);
            report to_hstring(packet);
            report to_hstring(reverse_any_vector(packet));
            
            assert packet_num /= 24 report "last packet" severity failure;
            
            if packet_num = 26 then
                report "Enhancement received!";
                for i in 0 to 12 loop
                report "Triplet " & to_string(i) & ": Address=" & to_string(triplet_decoded(i).ADDRESS) &
                        ", Mode=" & to_string(triplet_decoded(i).MODE) &
                        ", Data=" & to_string(triplet_decoded(i).DATA);
                end loop;
            end if;
        end loop;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        assert false report "end of simulation" severity note;
        
        wait;
    end process;

end tb;