-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Oct 29 23:54:03 2023
-- Host        : JOROLF-LAPTOP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Jorol/Documents/Uni/teletext/teletext/block_designs/system/ip/system_teletext_controller_0_0/system_teletext_controller_0_0_sim_netlist.vhdl
-- Design      : system_teletext_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0_shift_register is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 335 downto 0 );
    \current_line_reg[2]\ : out STD_LOGIC;
    teletext_page_header_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 335 downto 0 );
    \current_state_reg[23]_0\ : in STD_LOGIC;
    \current_state_reg[40]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    TELETEXT_CLK : in STD_LOGIC;
    \CONTROL_BITS[UPDATE_INDICATOR]\ : in STD_LOGIC;
    \CONTROL_BITS[INTERRUPTED_SEQUENCE]\ : in STD_LOGIC;
    \CONTROL_BITS[INHIBIT_DISPLAY]\ : in STD_LOGIC;
    \CONTROL_BITS[SUPPRESS_HEADER]\ : in STD_LOGIC;
    \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \CONTROL_BITS[MAGAZINE_SERIAL]\ : in STD_LOGIC;
    \current_state_reg[54]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_teletext_controller_0_0_shift_register : entity is "shift_register";
end system_teletext_controller_0_0_shift_register;

architecture STRUCTURE of system_teletext_controller_0_0_shift_register is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal current_state : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal next_state : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \control_bits_1_ham/current_state[92]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \control_bits_1_ham/current_state[94]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \control_bits_2_ham/current_state[100]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \control_bits_2_ham/current_state[102]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_state[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_state[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_state[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_state[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_state[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current_state[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current_state[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_state[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_state[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_state[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_state[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_state[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_state[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_state[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_state[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current_state[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current_state[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_state[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_state[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_state[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_state[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \current_state[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \page_tens_ham/current_state[52]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \page_tens_ham/current_state[54]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \page_units_ham/current_state[44]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \page_units_ham/current_state[46]_i_2\ : label is "soft_lutpair3";
begin
  SR(0) <= \^sr\(0);
\control_bits_1_ham/current_state[90]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \CONTROL_BITS[SUPPRESS_HEADER]\,
      I1 => \CONTROL_BITS[UPDATE_INDICATOR]\,
      I2 => \CONTROL_BITS[INHIBIT_DISPLAY]\,
      O => teletext_page_header_data(6)
    );
\control_bits_1_ham/current_state[92]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \CONTROL_BITS[INTERRUPTED_SEQUENCE]\,
      I1 => \CONTROL_BITS[SUPPRESS_HEADER]\,
      I2 => \CONTROL_BITS[UPDATE_INDICATOR]\,
      O => teletext_page_header_data(7)
    );
\control_bits_1_ham/current_state[94]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \CONTROL_BITS[UPDATE_INDICATOR]\,
      I1 => \CONTROL_BITS[INTERRUPTED_SEQUENCE]\,
      I2 => \CONTROL_BITS[INHIBIT_DISPLAY]\,
      O => teletext_page_header_data(8)
    );
\control_bits_2_ham/current_state[100]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(1),
      I1 => \CONTROL_BITS[MAGAZINE_SERIAL]\,
      I2 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(0),
      O => teletext_page_header_data(10)
    );
\control_bits_2_ham/current_state[102]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(0),
      I1 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(1),
      I2 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2),
      O => teletext_page_header_data(11)
    );
\control_bits_2_ham/current_state[98]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \CONTROL_BITS[MAGAZINE_SERIAL]\,
      I1 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(0),
      I2 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2),
      O => teletext_page_header_data(9)
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(1),
      I1 => \current_state_reg[23]_0\,
      O => next_state(0)
    );
\current_state[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(11),
      I1 => \current_state_reg[23]_0\,
      O => next_state(10)
    );
\current_state[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(12),
      I1 => \current_state_reg[23]_0\,
      O => next_state(11)
    );
\current_state[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(13),
      I1 => \current_state_reg[23]_0\,
      O => next_state(12)
    );
\current_state[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(14),
      I1 => \current_state_reg[23]_0\,
      O => next_state(13)
    );
\current_state[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(15),
      I1 => \current_state_reg[23]_0\,
      O => next_state(14)
    );
\current_state[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(16),
      I1 => \current_state_reg[23]_0\,
      O => next_state(15)
    );
\current_state[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(17),
      I1 => \current_state_reg[23]_0\,
      O => next_state(16)
    );
\current_state[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(18),
      I1 => \current_state_reg[23]_0\,
      O => next_state(17)
    );
\current_state[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(19),
      I1 => \current_state_reg[23]_0\,
      O => next_state(18)
    );
\current_state[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(20),
      I1 => \current_state_reg[23]_0\,
      O => next_state(19)
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(2),
      I1 => \current_state_reg[23]_0\,
      O => next_state(1)
    );
\current_state[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(21),
      I1 => \current_state_reg[23]_0\,
      O => next_state(20)
    );
\current_state[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(22),
      I1 => \current_state_reg[23]_0\,
      O => next_state(21)
    );
\current_state[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(23),
      I1 => \current_state_reg[23]_0\,
      O => next_state(22)
    );
\current_state[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(24),
      I1 => \current_state_reg[23]_0\,
      O => next_state(23)
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(3),
      I1 => \current_state_reg[23]_0\,
      O => next_state(2)
    );
\current_state[351]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \current_state_reg[40]_0\(2),
      I1 => \current_state_reg[40]_0\(1),
      I2 => \current_state_reg[40]_0\(0),
      I3 => \current_state_reg[40]_0\(4),
      I4 => \current_state_reg[40]_0\(3),
      O => \current_line_reg[2]\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(4),
      I1 => \current_state_reg[23]_0\,
      O => next_state(3)
    );
\current_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(5),
      I1 => \current_state_reg[23]_0\,
      O => next_state(4)
    );
\current_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(6),
      I1 => \current_state_reg[23]_0\,
      O => next_state(5)
    );
\current_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(7),
      I1 => \current_state_reg[23]_0\,
      O => next_state(6)
    );
\current_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(8),
      I1 => \current_state_reg[23]_0\,
      O => next_state(7)
    );
\current_state[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_state(9),
      I1 => \current_state_reg[23]_0\,
      O => next_state(8)
    );
\current_state[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(10),
      I1 => \current_state_reg[23]_0\,
      O => next_state(9)
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(0),
      Q => Q(0),
      R => \^sr\(0)
    );
\current_state_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(76),
      Q => Q(76),
      R => \^sr\(0)
    );
\current_state_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(77),
      Q => Q(77),
      R => \^sr\(0)
    );
\current_state_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(78),
      Q => Q(78),
      R => \^sr\(0)
    );
\current_state_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(79),
      Q => Q(79),
      R => \^sr\(0)
    );
\current_state_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(80),
      Q => Q(80),
      R => \^sr\(0)
    );
\current_state_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(81),
      Q => Q(81),
      R => \^sr\(0)
    );
\current_state_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(82),
      Q => Q(82),
      R => \^sr\(0)
    );
\current_state_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(83),
      Q => Q(83),
      R => \^sr\(0)
    );
\current_state_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(84),
      Q => Q(84),
      R => \^sr\(0)
    );
\current_state_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(85),
      Q => Q(85),
      R => \^sr\(0)
    );
\current_state_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(10),
      Q => current_state(10),
      R => \^sr\(0)
    );
\current_state_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(86),
      Q => Q(86),
      R => \^sr\(0)
    );
\current_state_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(87),
      Q => Q(87),
      R => \^sr\(0)
    );
\current_state_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(88),
      Q => Q(88),
      R => \^sr\(0)
    );
\current_state_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(89),
      Q => Q(89),
      R => \^sr\(0)
    );
\current_state_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(90),
      Q => Q(90),
      R => \^sr\(0)
    );
\current_state_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(91),
      Q => Q(91),
      R => \^sr\(0)
    );
\current_state_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(92),
      Q => Q(92),
      R => \^sr\(0)
    );
\current_state_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(93),
      Q => Q(93),
      R => \^sr\(0)
    );
\current_state_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(94),
      Q => Q(94),
      R => \^sr\(0)
    );
\current_state_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(95),
      Q => Q(95),
      R => \^sr\(0)
    );
\current_state_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(11),
      Q => current_state(11),
      R => \^sr\(0)
    );
\current_state_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(96),
      Q => Q(96),
      R => \^sr\(0)
    );
\current_state_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(97),
      Q => Q(97),
      R => \^sr\(0)
    );
\current_state_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(98),
      Q => Q(98),
      R => \^sr\(0)
    );
\current_state_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(99),
      Q => Q(99),
      R => \^sr\(0)
    );
\current_state_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(100),
      Q => Q(100),
      R => \^sr\(0)
    );
\current_state_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(101),
      Q => Q(101),
      R => \^sr\(0)
    );
\current_state_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(102),
      Q => Q(102),
      R => \^sr\(0)
    );
\current_state_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(103),
      Q => Q(103),
      R => \^sr\(0)
    );
\current_state_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(104),
      Q => Q(104),
      R => \^sr\(0)
    );
\current_state_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(105),
      Q => Q(105),
      R => \^sr\(0)
    );
\current_state_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(12),
      Q => current_state(12),
      R => \^sr\(0)
    );
\current_state_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(106),
      Q => Q(106),
      R => \^sr\(0)
    );
\current_state_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(107),
      Q => Q(107),
      R => \^sr\(0)
    );
\current_state_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(108),
      Q => Q(108),
      R => \^sr\(0)
    );
\current_state_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(109),
      Q => Q(109),
      R => \^sr\(0)
    );
\current_state_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(110),
      Q => Q(110),
      R => \^sr\(0)
    );
\current_state_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(111),
      Q => Q(111),
      R => \^sr\(0)
    );
\current_state_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(112),
      Q => Q(112),
      R => \^sr\(0)
    );
\current_state_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(113),
      Q => Q(113),
      R => \^sr\(0)
    );
\current_state_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(114),
      Q => Q(114),
      R => \^sr\(0)
    );
\current_state_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(115),
      Q => Q(115),
      R => \^sr\(0)
    );
\current_state_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(13),
      Q => current_state(13),
      R => \^sr\(0)
    );
\current_state_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(116),
      Q => Q(116),
      R => \^sr\(0)
    );
\current_state_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(117),
      Q => Q(117),
      R => \^sr\(0)
    );
\current_state_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(118),
      Q => Q(118),
      R => \^sr\(0)
    );
\current_state_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(119),
      Q => Q(119),
      R => \^sr\(0)
    );
\current_state_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(120),
      Q => Q(120),
      R => \^sr\(0)
    );
\current_state_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(121),
      Q => Q(121),
      R => \^sr\(0)
    );
\current_state_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(122),
      Q => Q(122),
      R => \^sr\(0)
    );
\current_state_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(123),
      Q => Q(123),
      R => \^sr\(0)
    );
\current_state_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(124),
      Q => Q(124),
      R => \^sr\(0)
    );
\current_state_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(125),
      Q => Q(125),
      R => \^sr\(0)
    );
\current_state_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(14),
      Q => current_state(14),
      R => \^sr\(0)
    );
\current_state_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(126),
      Q => Q(126),
      R => \^sr\(0)
    );
\current_state_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(127),
      Q => Q(127),
      R => \^sr\(0)
    );
\current_state_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(128),
      Q => Q(128),
      R => \^sr\(0)
    );
\current_state_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(129),
      Q => Q(129),
      R => \^sr\(0)
    );
\current_state_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(130),
      Q => Q(130),
      R => \^sr\(0)
    );
\current_state_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(131),
      Q => Q(131),
      R => \^sr\(0)
    );
\current_state_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(132),
      Q => Q(132),
      R => \^sr\(0)
    );
\current_state_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(133),
      Q => Q(133),
      R => \^sr\(0)
    );
\current_state_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(134),
      Q => Q(134),
      R => \^sr\(0)
    );
\current_state_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(135),
      Q => Q(135),
      R => \^sr\(0)
    );
\current_state_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(15),
      Q => current_state(15),
      R => \^sr\(0)
    );
\current_state_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(136),
      Q => Q(136),
      R => \^sr\(0)
    );
\current_state_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(137),
      Q => Q(137),
      R => \^sr\(0)
    );
\current_state_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(138),
      Q => Q(138),
      R => \^sr\(0)
    );
\current_state_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(139),
      Q => Q(139),
      R => \^sr\(0)
    );
\current_state_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(140),
      Q => Q(140),
      R => \^sr\(0)
    );
\current_state_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(141),
      Q => Q(141),
      R => \^sr\(0)
    );
\current_state_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(142),
      Q => Q(142),
      R => \^sr\(0)
    );
\current_state_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(143),
      Q => Q(143),
      R => \^sr\(0)
    );
\current_state_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(144),
      Q => Q(144),
      R => \^sr\(0)
    );
\current_state_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(145),
      Q => Q(145),
      R => \^sr\(0)
    );
\current_state_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(16),
      Q => current_state(16),
      R => \^sr\(0)
    );
\current_state_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(146),
      Q => Q(146),
      R => \^sr\(0)
    );
\current_state_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(147),
      Q => Q(147),
      R => \^sr\(0)
    );
\current_state_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(148),
      Q => Q(148),
      R => \^sr\(0)
    );
\current_state_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(149),
      Q => Q(149),
      R => \^sr\(0)
    );
\current_state_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(150),
      Q => Q(150),
      R => \^sr\(0)
    );
\current_state_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(151),
      Q => Q(151),
      R => \^sr\(0)
    );
\current_state_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(152),
      Q => Q(152),
      R => \^sr\(0)
    );
\current_state_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(153),
      Q => Q(153),
      R => \^sr\(0)
    );
\current_state_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(154),
      Q => Q(154),
      R => \^sr\(0)
    );
\current_state_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(155),
      Q => Q(155),
      R => \^sr\(0)
    );
\current_state_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(17),
      Q => current_state(17),
      R => \^sr\(0)
    );
\current_state_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(156),
      Q => Q(156),
      R => \^sr\(0)
    );
\current_state_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(157),
      Q => Q(157),
      R => \^sr\(0)
    );
\current_state_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(158),
      Q => Q(158),
      R => \^sr\(0)
    );
\current_state_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(159),
      Q => Q(159),
      R => \^sr\(0)
    );
\current_state_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(160),
      Q => Q(160),
      R => \^sr\(0)
    );
\current_state_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(161),
      Q => Q(161),
      R => \^sr\(0)
    );
\current_state_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(162),
      Q => Q(162),
      R => \^sr\(0)
    );
\current_state_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(163),
      Q => Q(163),
      R => \^sr\(0)
    );
\current_state_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(164),
      Q => Q(164),
      R => \^sr\(0)
    );
\current_state_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(165),
      Q => Q(165),
      R => \^sr\(0)
    );
\current_state_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(18),
      Q => current_state(18),
      R => \^sr\(0)
    );
\current_state_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(166),
      Q => Q(166),
      R => \^sr\(0)
    );
\current_state_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(167),
      Q => Q(167),
      R => \^sr\(0)
    );
\current_state_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(168),
      Q => Q(168),
      R => \^sr\(0)
    );
\current_state_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(169),
      Q => Q(169),
      R => \^sr\(0)
    );
\current_state_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(170),
      Q => Q(170),
      R => \^sr\(0)
    );
\current_state_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(171),
      Q => Q(171),
      R => \^sr\(0)
    );
\current_state_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(172),
      Q => Q(172),
      R => \^sr\(0)
    );
\current_state_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(173),
      Q => Q(173),
      R => \^sr\(0)
    );
\current_state_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(174),
      Q => Q(174),
      R => \^sr\(0)
    );
\current_state_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(175),
      Q => Q(175),
      R => \^sr\(0)
    );
\current_state_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(19),
      Q => current_state(19),
      R => \^sr\(0)
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => \^sr\(0)
    );
\current_state_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(176),
      Q => Q(176),
      R => \^sr\(0)
    );
\current_state_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(177),
      Q => Q(177),
      R => \^sr\(0)
    );
\current_state_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(178),
      Q => Q(178),
      R => \^sr\(0)
    );
\current_state_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(179),
      Q => Q(179),
      R => \^sr\(0)
    );
\current_state_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(180),
      Q => Q(180),
      R => \^sr\(0)
    );
\current_state_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(181),
      Q => Q(181),
      R => \^sr\(0)
    );
\current_state_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(182),
      Q => Q(182),
      R => \^sr\(0)
    );
\current_state_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(183),
      Q => Q(183),
      R => \^sr\(0)
    );
\current_state_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(184),
      Q => Q(184),
      R => \^sr\(0)
    );
\current_state_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(185),
      Q => Q(185),
      R => \^sr\(0)
    );
\current_state_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(20),
      Q => current_state(20),
      R => \^sr\(0)
    );
\current_state_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(186),
      Q => Q(186),
      R => \^sr\(0)
    );
\current_state_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(187),
      Q => Q(187),
      R => \^sr\(0)
    );
\current_state_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(188),
      Q => Q(188),
      R => \^sr\(0)
    );
\current_state_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(189),
      Q => Q(189),
      R => \^sr\(0)
    );
\current_state_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(190),
      Q => Q(190),
      R => \^sr\(0)
    );
\current_state_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(191),
      Q => Q(191),
      R => \^sr\(0)
    );
\current_state_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(192),
      Q => Q(192),
      R => \^sr\(0)
    );
\current_state_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(193),
      Q => Q(193),
      R => \^sr\(0)
    );
\current_state_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(194),
      Q => Q(194),
      R => \^sr\(0)
    );
\current_state_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(195),
      Q => Q(195),
      R => \^sr\(0)
    );
\current_state_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(21),
      Q => current_state(21),
      R => \^sr\(0)
    );
\current_state_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(196),
      Q => Q(196),
      R => \^sr\(0)
    );
\current_state_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(197),
      Q => Q(197),
      R => \^sr\(0)
    );
\current_state_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(198),
      Q => Q(198),
      R => \^sr\(0)
    );
\current_state_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(199),
      Q => Q(199),
      R => \^sr\(0)
    );
\current_state_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(200),
      Q => Q(200),
      R => \^sr\(0)
    );
\current_state_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(201),
      Q => Q(201),
      R => \^sr\(0)
    );
\current_state_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(202),
      Q => Q(202),
      R => \^sr\(0)
    );
\current_state_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(203),
      Q => Q(203),
      R => \^sr\(0)
    );
\current_state_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(204),
      Q => Q(204),
      R => \^sr\(0)
    );
\current_state_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(205),
      Q => Q(205),
      R => \^sr\(0)
    );
\current_state_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(22),
      Q => current_state(22),
      R => \^sr\(0)
    );
\current_state_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(206),
      Q => Q(206),
      R => \^sr\(0)
    );
\current_state_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(207),
      Q => Q(207),
      R => \^sr\(0)
    );
\current_state_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(208),
      Q => Q(208),
      R => \^sr\(0)
    );
\current_state_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(209),
      Q => Q(209),
      R => \^sr\(0)
    );
\current_state_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(210),
      Q => Q(210),
      R => \^sr\(0)
    );
\current_state_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(211),
      Q => Q(211),
      R => \^sr\(0)
    );
\current_state_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(212),
      Q => Q(212),
      R => \^sr\(0)
    );
\current_state_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(213),
      Q => Q(213),
      R => \^sr\(0)
    );
\current_state_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(214),
      Q => Q(214),
      R => \^sr\(0)
    );
\current_state_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(215),
      Q => Q(215),
      R => \^sr\(0)
    );
\current_state_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(23),
      Q => current_state(23),
      R => \^sr\(0)
    );
\current_state_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(216),
      Q => Q(216),
      R => \^sr\(0)
    );
\current_state_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(217),
      Q => Q(217),
      R => \^sr\(0)
    );
\current_state_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(218),
      Q => Q(218),
      R => \^sr\(0)
    );
\current_state_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(219),
      Q => Q(219),
      R => \^sr\(0)
    );
\current_state_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(220),
      Q => Q(220),
      R => \^sr\(0)
    );
\current_state_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(221),
      Q => Q(221),
      R => \^sr\(0)
    );
\current_state_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(222),
      Q => Q(222),
      R => \^sr\(0)
    );
\current_state_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(223),
      Q => Q(223),
      R => \^sr\(0)
    );
\current_state_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(224),
      Q => Q(224),
      R => \^sr\(0)
    );
\current_state_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(225),
      Q => Q(225),
      R => \^sr\(0)
    );
\current_state_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(0),
      Q => current_state(24),
      R => \^sr\(0)
    );
\current_state_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(226),
      Q => Q(226),
      R => \^sr\(0)
    );
\current_state_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(227),
      Q => Q(227),
      R => \^sr\(0)
    );
\current_state_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(228),
      Q => Q(228),
      R => \^sr\(0)
    );
\current_state_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(229),
      Q => Q(229),
      R => \^sr\(0)
    );
\current_state_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(230),
      Q => Q(230),
      R => \^sr\(0)
    );
\current_state_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(231),
      Q => Q(231),
      R => \^sr\(0)
    );
\current_state_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(232),
      Q => Q(232),
      R => \^sr\(0)
    );
\current_state_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(233),
      Q => Q(233),
      R => \^sr\(0)
    );
\current_state_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(234),
      Q => Q(234),
      R => \^sr\(0)
    );
\current_state_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(235),
      Q => Q(235),
      R => \^sr\(0)
    );
\current_state_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => \^sr\(0)
    );
\current_state_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(236),
      Q => Q(236),
      R => \^sr\(0)
    );
\current_state_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(237),
      Q => Q(237),
      R => \^sr\(0)
    );
\current_state_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(238),
      Q => Q(238),
      R => \^sr\(0)
    );
\current_state_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(239),
      Q => Q(239),
      R => \^sr\(0)
    );
\current_state_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(240),
      Q => Q(240),
      R => \^sr\(0)
    );
\current_state_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(241),
      Q => Q(241),
      R => \^sr\(0)
    );
\current_state_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(242),
      Q => Q(242),
      R => \^sr\(0)
    );
\current_state_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(243),
      Q => Q(243),
      R => \^sr\(0)
    );
\current_state_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(244),
      Q => Q(244),
      R => \^sr\(0)
    );
\current_state_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(245),
      Q => Q(245),
      R => \^sr\(0)
    );
\current_state_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => \^sr\(0)
    );
\current_state_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(246),
      Q => Q(246),
      R => \^sr\(0)
    );
\current_state_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(247),
      Q => Q(247),
      R => \^sr\(0)
    );
\current_state_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(248),
      Q => Q(248),
      R => \^sr\(0)
    );
\current_state_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(249),
      Q => Q(249),
      R => \^sr\(0)
    );
\current_state_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(250),
      Q => Q(250),
      R => \^sr\(0)
    );
\current_state_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(251),
      Q => Q(251),
      R => \^sr\(0)
    );
\current_state_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(252),
      Q => Q(252),
      R => \^sr\(0)
    );
\current_state_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(253),
      Q => Q(253),
      R => \^sr\(0)
    );
\current_state_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(254),
      Q => Q(254),
      R => \^sr\(0)
    );
\current_state_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(255),
      Q => Q(255),
      R => \^sr\(0)
    );
\current_state_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => \^sr\(0)
    );
\current_state_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(256),
      Q => Q(256),
      R => \^sr\(0)
    );
\current_state_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(257),
      Q => Q(257),
      R => \^sr\(0)
    );
\current_state_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(258),
      Q => Q(258),
      R => \^sr\(0)
    );
\current_state_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(259),
      Q => Q(259),
      R => \^sr\(0)
    );
\current_state_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(260),
      Q => Q(260),
      R => \^sr\(0)
    );
\current_state_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(261),
      Q => Q(261),
      R => \^sr\(0)
    );
\current_state_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(262),
      Q => Q(262),
      R => \^sr\(0)
    );
\current_state_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(263),
      Q => Q(263),
      R => \^sr\(0)
    );
\current_state_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(264),
      Q => Q(264),
      R => \^sr\(0)
    );
\current_state_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(265),
      Q => Q(265),
      R => \^sr\(0)
    );
\current_state_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => \^sr\(0)
    );
\current_state_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(266),
      Q => Q(266),
      R => \^sr\(0)
    );
\current_state_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(267),
      Q => Q(267),
      R => \^sr\(0)
    );
\current_state_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(268),
      Q => Q(268),
      R => \^sr\(0)
    );
\current_state_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(269),
      Q => Q(269),
      R => \^sr\(0)
    );
\current_state_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(270),
      Q => Q(270),
      R => \^sr\(0)
    );
\current_state_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(271),
      Q => Q(271),
      R => \^sr\(0)
    );
\current_state_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(272),
      Q => Q(272),
      R => \^sr\(0)
    );
\current_state_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(273),
      Q => Q(273),
      R => \^sr\(0)
    );
\current_state_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(274),
      Q => Q(274),
      R => \^sr\(0)
    );
\current_state_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(275),
      Q => Q(275),
      R => \^sr\(0)
    );
\current_state_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => \^sr\(0)
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(2),
      Q => current_state(2),
      R => \^sr\(0)
    );
\current_state_reg[300]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(276),
      Q => Q(276),
      R => \^sr\(0)
    );
\current_state_reg[301]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(277),
      Q => Q(277),
      R => \^sr\(0)
    );
\current_state_reg[302]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(278),
      Q => Q(278),
      R => \^sr\(0)
    );
\current_state_reg[303]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(279),
      Q => Q(279),
      R => \^sr\(0)
    );
\current_state_reg[304]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(280),
      Q => Q(280),
      R => \^sr\(0)
    );
\current_state_reg[305]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(281),
      Q => Q(281),
      R => \^sr\(0)
    );
\current_state_reg[306]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(282),
      Q => Q(282),
      R => \^sr\(0)
    );
\current_state_reg[307]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(283),
      Q => Q(283),
      R => \^sr\(0)
    );
\current_state_reg[308]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(284),
      Q => Q(284),
      R => \^sr\(0)
    );
\current_state_reg[309]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(285),
      Q => Q(285),
      R => \^sr\(0)
    );
\current_state_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => \^sr\(0)
    );
\current_state_reg[310]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(286),
      Q => Q(286),
      R => \^sr\(0)
    );
\current_state_reg[311]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(287),
      Q => Q(287),
      R => \^sr\(0)
    );
\current_state_reg[312]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(288),
      Q => Q(288),
      R => \^sr\(0)
    );
\current_state_reg[313]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(289),
      Q => Q(289),
      R => \^sr\(0)
    );
\current_state_reg[314]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(290),
      Q => Q(290),
      R => \^sr\(0)
    );
\current_state_reg[315]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(291),
      Q => Q(291),
      R => \^sr\(0)
    );
\current_state_reg[316]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(292),
      Q => Q(292),
      R => \^sr\(0)
    );
\current_state_reg[317]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(293),
      Q => Q(293),
      R => \^sr\(0)
    );
\current_state_reg[318]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(294),
      Q => Q(294),
      R => \^sr\(0)
    );
\current_state_reg[319]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(295),
      Q => Q(295),
      R => \^sr\(0)
    );
\current_state_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => \^sr\(0)
    );
\current_state_reg[320]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(296),
      Q => Q(296),
      R => \^sr\(0)
    );
\current_state_reg[321]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(297),
      Q => Q(297),
      R => \^sr\(0)
    );
\current_state_reg[322]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(298),
      Q => Q(298),
      R => \^sr\(0)
    );
\current_state_reg[323]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(299),
      Q => Q(299),
      R => \^sr\(0)
    );
\current_state_reg[324]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(300),
      Q => Q(300),
      R => \^sr\(0)
    );
\current_state_reg[325]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(301),
      Q => Q(301),
      R => \^sr\(0)
    );
\current_state_reg[326]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(302),
      Q => Q(302),
      R => \^sr\(0)
    );
\current_state_reg[327]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(303),
      Q => Q(303),
      R => \^sr\(0)
    );
\current_state_reg[328]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(304),
      Q => Q(304),
      R => \^sr\(0)
    );
\current_state_reg[329]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(305),
      Q => Q(305),
      R => \^sr\(0)
    );
\current_state_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => \^sr\(0)
    );
\current_state_reg[330]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(306),
      Q => Q(306),
      R => \^sr\(0)
    );
\current_state_reg[331]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(307),
      Q => Q(307),
      R => \^sr\(0)
    );
\current_state_reg[332]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(308),
      Q => Q(308),
      R => \^sr\(0)
    );
\current_state_reg[333]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(309),
      Q => Q(309),
      R => \^sr\(0)
    );
\current_state_reg[334]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(310),
      Q => Q(310),
      R => \^sr\(0)
    );
\current_state_reg[335]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(311),
      Q => Q(311),
      R => \^sr\(0)
    );
\current_state_reg[336]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(312),
      Q => Q(312),
      R => \^sr\(0)
    );
\current_state_reg[337]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(313),
      Q => Q(313),
      R => \^sr\(0)
    );
\current_state_reg[338]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(314),
      Q => Q(314),
      R => \^sr\(0)
    );
\current_state_reg[339]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(315),
      Q => Q(315),
      R => \^sr\(0)
    );
\current_state_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => \^sr\(0)
    );
\current_state_reg[340]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(316),
      Q => Q(316),
      R => \^sr\(0)
    );
\current_state_reg[341]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(317),
      Q => Q(317),
      R => \^sr\(0)
    );
\current_state_reg[342]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(318),
      Q => Q(318),
      R => \^sr\(0)
    );
\current_state_reg[343]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(319),
      Q => Q(319),
      R => \^sr\(0)
    );
\current_state_reg[344]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(320),
      Q => Q(320),
      R => \^sr\(0)
    );
\current_state_reg[345]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(321),
      Q => Q(321),
      R => \^sr\(0)
    );
\current_state_reg[346]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(322),
      Q => Q(322),
      R => \^sr\(0)
    );
\current_state_reg[347]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(323),
      Q => Q(323),
      R => \^sr\(0)
    );
\current_state_reg[348]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(324),
      Q => Q(324),
      R => \^sr\(0)
    );
\current_state_reg[349]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(325),
      Q => Q(325),
      R => \^sr\(0)
    );
\current_state_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => \^sr\(0)
    );
\current_state_reg[350]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(326),
      Q => Q(326),
      R => \^sr\(0)
    );
\current_state_reg[351]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(327),
      Q => Q(327),
      R => \^sr\(0)
    );
\current_state_reg[352]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(328),
      Q => Q(328),
      R => \^sr\(0)
    );
\current_state_reg[353]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(329),
      Q => Q(329),
      R => \^sr\(0)
    );
\current_state_reg[354]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(330),
      Q => Q(330),
      R => \^sr\(0)
    );
\current_state_reg[355]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(331),
      Q => Q(331),
      R => \^sr\(0)
    );
\current_state_reg[356]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(332),
      Q => Q(332),
      R => \^sr\(0)
    );
\current_state_reg[357]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(333),
      Q => Q(333),
      R => \^sr\(0)
    );
\current_state_reg[358]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(334),
      Q => Q(334),
      R => \^sr\(0)
    );
\current_state_reg[359]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(335),
      Q => Q(335),
      R => \^sr\(0)
    );
\current_state_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => \^sr\(0)
    );
\current_state_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => \^sr\(0)
    );
\current_state_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => \^sr\(0)
    );
\current_state_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => \^sr\(0)
    );
\current_state_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => \^sr\(0)
    );
\current_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(3),
      Q => current_state(3),
      R => \^sr\(0)
    );
\current_state_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => \^sr\(0)
    );
\current_state_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => \^sr\(0)
    );
\current_state_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(18),
      Q => Q(18),
      R => \^sr\(0)
    );
\current_state_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(19),
      Q => Q(19),
      R => \^sr\(0)
    );
\current_state_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(20),
      Q => Q(20),
      R => \^sr\(0)
    );
\current_state_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(21),
      Q => Q(21),
      R => \^sr\(0)
    );
\current_state_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(22),
      Q => Q(22),
      R => \^sr\(0)
    );
\current_state_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(23),
      Q => Q(23),
      R => \^sr\(0)
    );
\current_state_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(24),
      Q => Q(24),
      R => \^sr\(0)
    );
\current_state_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(25),
      Q => Q(25),
      R => \^sr\(0)
    );
\current_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(4),
      Q => current_state(4),
      R => \^sr\(0)
    );
\current_state_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(26),
      Q => Q(26),
      R => \^sr\(0)
    );
\current_state_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(27),
      Q => Q(27),
      R => \^sr\(0)
    );
\current_state_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(28),
      Q => Q(28),
      R => \^sr\(0)
    );
\current_state_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(29),
      Q => Q(29),
      R => \^sr\(0)
    );
\current_state_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(30),
      Q => Q(30),
      R => \^sr\(0)
    );
\current_state_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(31),
      Q => Q(31),
      R => \^sr\(0)
    );
\current_state_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(32),
      Q => Q(32),
      R => \^sr\(0)
    );
\current_state_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(33),
      Q => Q(33),
      R => \^sr\(0)
    );
\current_state_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(34),
      Q => Q(34),
      R => \^sr\(0)
    );
\current_state_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(35),
      Q => Q(35),
      R => \^sr\(0)
    );
\current_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(5),
      Q => current_state(5),
      R => \^sr\(0)
    );
\current_state_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(36),
      Q => Q(36),
      R => \^sr\(0)
    );
\current_state_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(37),
      Q => Q(37),
      R => \^sr\(0)
    );
\current_state_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(38),
      Q => Q(38),
      R => \^sr\(0)
    );
\current_state_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(39),
      Q => Q(39),
      R => \^sr\(0)
    );
\current_state_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(40),
      Q => Q(40),
      R => \^sr\(0)
    );
\current_state_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(41),
      Q => Q(41),
      R => \^sr\(0)
    );
\current_state_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(42),
      Q => Q(42),
      R => \^sr\(0)
    );
\current_state_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(43),
      Q => Q(43),
      R => \^sr\(0)
    );
\current_state_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(44),
      Q => Q(44),
      R => \^sr\(0)
    );
\current_state_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(45),
      Q => Q(45),
      R => \^sr\(0)
    );
\current_state_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(6),
      Q => current_state(6),
      R => \^sr\(0)
    );
\current_state_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(46),
      Q => Q(46),
      R => \^sr\(0)
    );
\current_state_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(47),
      Q => Q(47),
      R => \^sr\(0)
    );
\current_state_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(48),
      Q => Q(48),
      R => \^sr\(0)
    );
\current_state_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(49),
      Q => Q(49),
      R => \^sr\(0)
    );
\current_state_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(50),
      Q => Q(50),
      R => \^sr\(0)
    );
\current_state_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(51),
      Q => Q(51),
      R => \^sr\(0)
    );
\current_state_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(52),
      Q => Q(52),
      R => \^sr\(0)
    );
\current_state_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(53),
      Q => Q(53),
      R => \^sr\(0)
    );
\current_state_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(54),
      Q => Q(54),
      R => \^sr\(0)
    );
\current_state_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(55),
      Q => Q(55),
      R => \^sr\(0)
    );
\current_state_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(7),
      Q => current_state(7),
      R => \^sr\(0)
    );
\current_state_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(56),
      Q => Q(56),
      R => \^sr\(0)
    );
\current_state_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(57),
      Q => Q(57),
      R => \^sr\(0)
    );
\current_state_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(58),
      Q => Q(58),
      R => \^sr\(0)
    );
\current_state_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(59),
      Q => Q(59),
      R => \^sr\(0)
    );
\current_state_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(60),
      Q => Q(60),
      R => \^sr\(0)
    );
\current_state_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(61),
      Q => Q(61),
      R => \^sr\(0)
    );
\current_state_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(62),
      Q => Q(62),
      R => \^sr\(0)
    );
\current_state_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(63),
      Q => Q(63),
      R => \^sr\(0)
    );
\current_state_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(64),
      Q => Q(64),
      R => \^sr\(0)
    );
\current_state_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(65),
      Q => Q(65),
      R => \^sr\(0)
    );
\current_state_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(8),
      Q => current_state(8),
      R => \^sr\(0)
    );
\current_state_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(66),
      Q => Q(66),
      R => \^sr\(0)
    );
\current_state_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(67),
      Q => Q(67),
      R => \^sr\(0)
    );
\current_state_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(68),
      Q => Q(68),
      R => \^sr\(0)
    );
\current_state_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(69),
      Q => Q(69),
      R => \^sr\(0)
    );
\current_state_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(70),
      Q => Q(70),
      R => \^sr\(0)
    );
\current_state_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(71),
      Q => Q(71),
      R => \^sr\(0)
    );
\current_state_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(72),
      Q => Q(72),
      R => \^sr\(0)
    );
\current_state_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(73),
      Q => Q(73),
      R => \^sr\(0)
    );
\current_state_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(74),
      Q => Q(74),
      R => \^sr\(0)
    );
\current_state_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => D(75),
      Q => Q(75),
      R => \^sr\(0)
    );
\current_state_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => next_state(9),
      Q => current_state(9),
      R => \^sr\(0)
    );
\page_tens_ham/current_state[50]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \current_state_reg[54]_0\(4),
      I1 => \current_state_reg[54]_0\(5),
      I2 => \current_state_reg[54]_0\(7),
      O => teletext_page_header_data(3)
    );
\page_tens_ham/current_state[52]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \current_state_reg[54]_0\(6),
      I1 => \current_state_reg[54]_0\(4),
      I2 => \current_state_reg[54]_0\(5),
      O => teletext_page_header_data(4)
    );
\page_tens_ham/current_state[54]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \current_state_reg[54]_0\(5),
      I1 => \current_state_reg[54]_0\(6),
      I2 => \current_state_reg[54]_0\(7),
      O => teletext_page_header_data(5)
    );
\page_units_ham/current_state[42]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \current_state_reg[54]_0\(0),
      I1 => \current_state_reg[54]_0\(1),
      I2 => \current_state_reg[54]_0\(3),
      O => teletext_page_header_data(0)
    );
\page_units_ham/current_state[44]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \current_state_reg[54]_0\(2),
      I1 => \current_state_reg[54]_0\(0),
      I2 => \current_state_reg[54]_0\(1),
      O => teletext_page_header_data(1)
    );
\page_units_ham/current_state[46]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \current_state_reg[54]_0\(1),
      I1 => \current_state_reg[54]_0\(2),
      I2 => \current_state_reg[54]_0\(3),
      O => teletext_page_header_data(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0_sync_generator is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 334 downto 0 );
    \current_line_reg[0]_0\ : out STD_LOGIC;
    \current_line_reg[0]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SYNC_OUT : out STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    \current_state_reg[86]\ : in STD_LOGIC;
    \current_state_reg[86]_0\ : in STD_LOGIC;
    \current_state_reg[40]\ : in STD_LOGIC;
    \current_state_reg[86]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 334 downto 0 );
    \current_state_reg[64]\ : in STD_LOGIC;
    \current_state_reg[70]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[38]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    current_magazine_number : in STD_LOGIC_VECTOR ( 2 downto 0 );
    teletext_page_header_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \current_state_reg[46]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[55]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PACKET_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \current_state_reg[54]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[62]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[78]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[94]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \CONTROL_BITS[SUPPRESS_HEADER]\ : in STD_LOGIC;
    \CONTROL_BITS[UPDATE_INDICATOR]\ : in STD_LOGIC;
    \CONTROL_BITS[INTERRUPTED_SEQUENCE]\ : in STD_LOGIC;
    \CONTROL_BITS[INHIBIT_DISPLAY]\ : in STD_LOGIC;
    \current_state_reg[102]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \CONTROL_BITS[MAGAZINE_SERIAL]\ : in STD_LOGIC;
    \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_state_reg[110]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[351]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \current_state_reg[118]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[126]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[134]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[142]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[150]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[158]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[166]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[174]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[182]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[190]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[198]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[206]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[214]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[222]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[230]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[238]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[246]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[254]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[262]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[270]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[278]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[286]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[294]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[302]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[310]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[318]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[326]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[334]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[342]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[350]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[358]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    TELETEXT_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_teletext_controller_0_0_sync_generator : entity is "sync_generator";
end system_teletext_controller_0_0_sync_generator;

architecture STRUCTURE of system_teletext_controller_0_0_sync_generator is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SYNC_OUT_INST_0_i_10_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_11_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_12_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_13_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_14_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_15_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_16_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_17_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_18_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_19_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_1_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_20_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_21_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_22_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_23_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_24_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_25_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_26_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_27_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_28_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_29_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_2_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_3_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_4_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_5_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_6_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_7_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_8_n_0 : STD_LOGIC;
  signal SYNC_OUT_INST_0_i_9_n_0 : STD_LOGIC;
  signal \current_column[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_column[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \current_column[6]_i_2_n_0\ : STD_LOGIC;
  signal \current_column[9]_i_1_n_0\ : STD_LOGIC;
  signal \current_column[9]_i_3_n_0\ : STD_LOGIC;
  signal current_column_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \current_column_reg__0\ : STD_LOGIC_VECTOR ( 9 to 9 );
  signal current_line0 : STD_LOGIC;
  signal \current_line[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \current_line[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \current_line[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_line[4]_i_4_n_0\ : STD_LOGIC;
  signal \current_line[4]_i_5_n_0\ : STD_LOGIC;
  signal \current_line[4]_i_6_n_0\ : STD_LOGIC;
  signal \current_line[9]_i_3_n_0\ : STD_LOGIC;
  signal \current_line[9]_i_4_n_0\ : STD_LOGIC;
  signal current_line_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^current_line_reg[0]_0\ : STD_LOGIC;
  signal \^current_line_reg[0]_1\ : STD_LOGIC;
  signal \current_state[231]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[39]_i_8_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_12 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_13 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_19 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_21 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_22 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_23 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_24 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_25 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_26 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_27 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_28 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of SYNC_OUT_INST_0_i_29 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_column[2]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \current_column[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \current_column[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \current_column[6]_i_2\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \current_column[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \current_column[9]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \current_column[9]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \current_line[2]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \current_line[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \current_line[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \current_line[4]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \current_line[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current_line[9]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \current_line[9]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \current_state[104]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \current_state[105]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \current_state[106]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \current_state[107]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \current_state[108]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \current_state[109]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \current_state[110]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \current_state[112]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \current_state[113]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \current_state[114]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \current_state[115]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \current_state[116]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \current_state[117]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \current_state[118]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \current_state[120]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \current_state[121]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \current_state[122]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \current_state[123]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \current_state[124]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \current_state[125]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \current_state[126]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \current_state[128]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \current_state[129]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \current_state[130]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \current_state[131]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \current_state[132]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \current_state[133]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \current_state[134]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \current_state[136]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \current_state[137]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \current_state[138]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \current_state[139]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \current_state[140]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \current_state[141]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \current_state[142]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \current_state[144]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \current_state[145]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \current_state[146]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \current_state[147]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \current_state[148]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \current_state[149]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \current_state[150]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \current_state[152]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \current_state[153]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \current_state[154]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \current_state[155]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \current_state[156]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \current_state[157]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \current_state[158]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \current_state[160]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \current_state[161]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \current_state[162]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \current_state[163]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \current_state[164]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \current_state[165]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \current_state[166]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \current_state[168]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \current_state[169]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \current_state[170]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \current_state[171]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \current_state[172]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \current_state[173]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \current_state[174]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \current_state[176]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \current_state[177]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \current_state[178]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \current_state[179]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \current_state[180]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \current_state[181]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \current_state[182]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \current_state[184]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \current_state[185]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \current_state[186]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \current_state[187]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \current_state[188]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \current_state[189]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \current_state[190]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \current_state[192]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \current_state[193]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \current_state[194]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \current_state[195]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \current_state[196]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \current_state[197]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \current_state[198]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \current_state[200]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \current_state[201]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \current_state[202]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \current_state[203]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \current_state[204]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \current_state[205]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \current_state[206]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \current_state[208]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \current_state[209]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \current_state[210]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \current_state[211]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \current_state[212]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \current_state[213]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \current_state[214]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \current_state[216]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \current_state[217]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \current_state[218]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \current_state[219]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \current_state[220]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \current_state[221]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \current_state[222]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \current_state[224]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \current_state[225]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \current_state[226]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \current_state[227]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \current_state[228]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \current_state[229]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \current_state[230]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \current_state[232]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \current_state[233]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \current_state[234]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \current_state[235]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \current_state[236]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \current_state[237]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \current_state[238]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \current_state[240]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \current_state[241]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \current_state[242]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \current_state[243]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \current_state[244]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \current_state[245]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \current_state[246]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \current_state[248]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \current_state[249]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \current_state[250]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \current_state[251]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \current_state[252]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \current_state[253]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \current_state[254]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \current_state[256]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \current_state[257]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \current_state[258]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \current_state[259]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \current_state[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \current_state[260]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \current_state[261]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \current_state[262]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \current_state[264]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \current_state[265]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \current_state[266]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \current_state[267]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \current_state[268]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \current_state[269]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \current_state[270]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \current_state[272]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \current_state[273]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \current_state[274]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \current_state[275]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \current_state[276]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \current_state[277]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \current_state[278]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \current_state[27]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \current_state[280]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \current_state[281]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \current_state[282]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \current_state[283]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \current_state[284]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \current_state[285]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \current_state[286]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \current_state[288]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \current_state[289]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \current_state[290]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \current_state[291]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \current_state[292]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \current_state[293]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \current_state[294]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \current_state[296]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \current_state[297]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \current_state[298]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \current_state[299]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \current_state[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \current_state[300]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \current_state[301]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \current_state[302]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \current_state[304]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \current_state[305]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \current_state[306]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \current_state[307]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \current_state[308]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \current_state[309]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \current_state[310]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \current_state[312]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \current_state[313]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \current_state[314]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \current_state[315]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \current_state[316]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \current_state[317]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \current_state[318]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \current_state[31]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \current_state[320]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \current_state[321]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \current_state[322]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \current_state[323]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \current_state[324]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \current_state[325]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \current_state[326]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \current_state[328]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \current_state[329]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \current_state[330]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \current_state[331]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \current_state[332]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \current_state[333]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \current_state[334]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \current_state[336]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \current_state[337]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \current_state[338]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \current_state[339]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \current_state[33]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \current_state[340]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \current_state[341]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \current_state[342]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \current_state[344]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \current_state[345]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \current_state[346]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \current_state[347]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \current_state[348]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \current_state[349]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \current_state[350]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \current_state[352]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \current_state[353]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \current_state[354]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \current_state[355]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \current_state[356]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \current_state[357]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \current_state[358]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \current_state[35]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \current_state[39]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \current_state[39]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_state[39]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current_state[39]_i_8\ : label is "soft_lutpair19";
begin
  SS(0) <= \^ss\(0);
  \current_line_reg[0]_0\ <= \^current_line_reg[0]_0\;
  \current_line_reg[0]_1\ <= \^current_line_reg[0]_1\;
SYNC_OUT_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8FFB8B8B800"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_1_n_0,
      I1 => SYNC_OUT_INST_0_i_2_n_0,
      I2 => SYNC_OUT_INST_0_i_3_n_0,
      I3 => SYNC_OUT_INST_0_i_4_n_0,
      I4 => SYNC_OUT_INST_0_i_5_n_0,
      I5 => SYNC_OUT_INST_0_i_6_n_0,
      O => SYNC_OUT
    );
SYNC_OUT_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEFAA20"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_7_n_0,
      I1 => SYNC_OUT_INST_0_i_8_n_0,
      I2 => SYNC_OUT_INST_0_i_9_n_0,
      I3 => SYNC_OUT_INST_0_i_10_n_0,
      I4 => SYNC_OUT_INST_0_i_11_n_0,
      I5 => SYNC_OUT_INST_0_i_12_n_0,
      O => SYNC_OUT_INST_0_i_1_n_0
    );
SYNC_OUT_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5FFFFFFFFFF7E"
    )
        port map (
      I0 => current_line_reg(5),
      I1 => current_line_reg(4),
      I2 => current_line_reg(8),
      I3 => current_line_reg(7),
      I4 => current_line_reg(9),
      I5 => current_line_reg(6),
      O => SYNC_OUT_INST_0_i_10_n_0
    );
SYNC_OUT_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFFFFFFF"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_27_n_0,
      I1 => current_column_reg(8),
      I2 => current_column_reg(5),
      I3 => current_column_reg(6),
      I4 => current_column_reg(7),
      I5 => SYNC_OUT_INST_0_i_23_n_0,
      O => SYNC_OUT_INST_0_i_11_n_0
    );
SYNC_OUT_INST_0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15151555"
    )
        port map (
      I0 => current_column_reg(8),
      I1 => current_column_reg(6),
      I2 => current_column_reg(7),
      I3 => current_column_reg(5),
      I4 => SYNC_OUT_INST_0_i_24_n_0,
      O => SYNC_OUT_INST_0_i_12_n_0
    );
SYNC_OUT_INST_0_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7FF3C00"
    )
        port map (
      I0 => current_line_reg(0),
      I1 => current_line_reg(4),
      I2 => current_line_reg(3),
      I3 => current_line_reg(2),
      I4 => current_line_reg(1),
      O => SYNC_OUT_INST_0_i_13_n_0
    );
SYNC_OUT_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFFDFFFFF7EF7FF"
    )
        port map (
      I0 => current_line_reg(5),
      I1 => current_line_reg(6),
      I2 => current_line_reg(3),
      I3 => current_line_reg(4),
      I4 => current_line_reg(2),
      I5 => current_line_reg(8),
      O => SYNC_OUT_INST_0_i_14_n_0
    );
SYNC_OUT_INST_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => current_column_reg(3),
      I1 => current_column_reg(2),
      I2 => current_column_reg(1),
      I3 => current_column_reg(0),
      I4 => current_column_reg(4),
      I5 => SYNC_OUT_INST_0_i_22_n_0,
      O => SYNC_OUT_INST_0_i_15_n_0
    );
SYNC_OUT_INST_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_23_n_0,
      I1 => current_column_reg(8),
      I2 => current_column_reg(7),
      I3 => current_column_reg(5),
      I4 => current_column_reg(6),
      I5 => SYNC_OUT_INST_0_i_27_n_0,
      O => SYNC_OUT_INST_0_i_16_n_0
    );
SYNC_OUT_INST_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_28_n_0,
      I1 => current_line_reg(3),
      I2 => current_line_reg(2),
      I3 => current_line_reg(9),
      I4 => current_line_reg(7),
      I5 => current_line_reg(8),
      O => SYNC_OUT_INST_0_i_17_n_0
    );
SYNC_OUT_INST_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000001"
    )
        port map (
      I0 => current_line_reg(8),
      I1 => current_line_reg(6),
      I2 => SYNC_OUT_INST_0_i_29_n_0,
      I3 => current_line_reg(5),
      I4 => current_line_reg(4),
      I5 => current_line_reg(3),
      O => SYNC_OUT_INST_0_i_18_n_0
    );
SYNC_OUT_INST_0_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F75FFFF5"
    )
        port map (
      I0 => current_line_reg(0),
      I1 => current_line_reg(5),
      I2 => current_line_reg(3),
      I3 => current_line_reg(4),
      I4 => current_line_reg(2),
      O => SYNC_OUT_INST_0_i_19_n_0
    );
SYNC_OUT_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFB4"
    )
        port map (
      I0 => current_line_reg(8),
      I1 => current_line_reg(5),
      I2 => current_line_reg(9),
      I3 => current_line_reg(7),
      I4 => SYNC_OUT_INST_0_i_13_n_0,
      I5 => SYNC_OUT_INST_0_i_14_n_0,
      O => SYNC_OUT_INST_0_i_2_n_0
    );
SYNC_OUT_INST_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0FFFFFFD0"
    )
        port map (
      I0 => current_line_reg(9),
      I1 => current_line_reg(8),
      I2 => current_line_reg(6),
      I3 => current_line_reg(3),
      I4 => current_line_reg(4),
      I5 => current_line_reg(1),
      O => SYNC_OUT_INST_0_i_20_n_0
    );
SYNC_OUT_INST_0_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"36F63FFE"
    )
        port map (
      I0 => current_line_reg(8),
      I1 => current_line_reg(5),
      I2 => current_line_reg(6),
      I3 => current_line_reg(3),
      I4 => current_line_reg(4),
      O => SYNC_OUT_INST_0_i_21_n_0
    );
SYNC_OUT_INST_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_column_reg(6),
      I1 => current_column_reg(5),
      I2 => current_column_reg(7),
      I3 => current_column_reg(8),
      O => SYNC_OUT_INST_0_i_22_n_0
    );
SYNC_OUT_INST_0_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => current_column_reg(0),
      I1 => current_column_reg(1),
      I2 => current_column_reg(3),
      I3 => current_column_reg(4),
      I4 => current_column_reg(2),
      O => SYNC_OUT_INST_0_i_23_n_0
    );
SYNC_OUT_INST_0_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => current_column_reg(4),
      I1 => current_column_reg(2),
      I2 => current_column_reg(3),
      I3 => current_column_reg(1),
      I4 => current_column_reg(0),
      O => SYNC_OUT_INST_0_i_24_n_0
    );
SYNC_OUT_INST_0_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_line_reg(1),
      I1 => current_line_reg(0),
      O => SYNC_OUT_INST_0_i_25_n_0
    );
SYNC_OUT_INST_0_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => current_line_reg(1),
      I1 => current_line_reg(5),
      I2 => current_line_reg(4),
      O => SYNC_OUT_INST_0_i_26_n_0
    );
SYNC_OUT_INST_0_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => current_column_reg(4),
      I1 => current_column_reg(0),
      I2 => current_column_reg(1),
      I3 => current_column_reg(2),
      I4 => current_column_reg(3),
      O => SYNC_OUT_INST_0_i_27_n_0
    );
SYNC_OUT_INST_0_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => current_line_reg(6),
      I1 => current_line_reg(5),
      I2 => current_line_reg(4),
      O => SYNC_OUT_INST_0_i_28_n_0
    );
SYNC_OUT_INST_0_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_line_reg(7),
      I1 => current_line_reg(9),
      O => SYNC_OUT_INST_0_i_29_n_0
    );
SYNC_OUT_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F2FF22220200"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_7_n_0,
      I1 => SYNC_OUT_INST_0_i_15_n_0,
      I2 => SYNC_OUT_INST_0_i_8_n_0,
      I3 => SYNC_OUT_INST_0_i_9_n_0,
      I4 => SYNC_OUT_INST_0_i_10_n_0,
      I5 => SYNC_OUT_INST_0_i_16_n_0,
      O => SYNC_OUT_INST_0_i_3_n_0
    );
SYNC_OUT_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0EEEEEEEE0"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_17_n_0,
      I1 => SYNC_OUT_INST_0_i_18_n_0,
      I2 => current_line_reg(2),
      I3 => current_line_reg(3),
      I4 => current_line_reg(4),
      I5 => current_line_reg(1),
      O => SYNC_OUT_INST_0_i_4_n_0
    );
SYNC_OUT_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001101"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_19_n_0,
      I1 => current_line_reg(7),
      I2 => current_line_reg(9),
      I3 => current_line_reg(6),
      I4 => SYNC_OUT_INST_0_i_20_n_0,
      I5 => SYNC_OUT_INST_0_i_21_n_0,
      O => SYNC_OUT_INST_0_i_5_n_0
    );
SYNC_OUT_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808001"
    )
        port map (
      I0 => current_column_reg(4),
      I1 => current_column_reg(2),
      I2 => current_column_reg(3),
      I3 => current_column_reg(0),
      I4 => current_column_reg(1),
      I5 => SYNC_OUT_INST_0_i_22_n_0,
      O => SYNC_OUT_INST_0_i_6_n_0
    );
SYNC_OUT_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AFFFC000FFFF"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_23_n_0,
      I1 => SYNC_OUT_INST_0_i_24_n_0,
      I2 => current_column_reg(5),
      I3 => current_column_reg(7),
      I4 => current_column_reg(8),
      I5 => current_column_reg(6),
      O => SYNC_OUT_INST_0_i_7_n_0
    );
SYNC_OUT_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030004040000000F"
    )
        port map (
      I0 => current_line_reg(6),
      I1 => current_line_reg(4),
      I2 => SYNC_OUT_INST_0_i_25_n_0,
      I3 => current_line_reg(5),
      I4 => current_line_reg(3),
      I5 => current_line_reg(2),
      O => SYNC_OUT_INST_0_i_8_n_0
    );
SYNC_OUT_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBEEEFEFFBEEEBEF"
    )
        port map (
      I0 => SYNC_OUT_INST_0_i_26_n_0,
      I1 => current_line_reg(3),
      I2 => current_line_reg(6),
      I3 => current_line_reg(4),
      I4 => current_line_reg(2),
      I5 => current_line_reg(0),
      O => SYNC_OUT_INST_0_i_9_n_0
    );
\current_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_column_reg(0),
      O => \current_column[0]_i_1_n_0\
    );
\current_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_column_reg(1),
      I1 => current_column_reg(0),
      O => \p_0_in__1\(1)
    );
\current_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => current_column_reg(2),
      I1 => current_column_reg(1),
      I2 => current_column_reg(0),
      O => \p_0_in__1\(2)
    );
\current_column[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => current_column_reg(0),
      I1 => current_column_reg(1),
      I2 => current_column_reg(2),
      I3 => current_column_reg(3),
      O => \p_0_in__1\(3)
    );
\current_column[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => current_column_reg(4),
      I1 => current_column_reg(0),
      I2 => current_column_reg(1),
      I3 => current_column_reg(2),
      I4 => current_column_reg(3),
      O => \p_0_in__1\(4)
    );
\current_column[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => current_column_reg(5),
      I1 => current_column_reg(3),
      I2 => current_column_reg(2),
      I3 => current_column_reg(4),
      I4 => current_column_reg(1),
      I5 => current_column_reg(0),
      O => \current_column[5]_i_1__0_n_0\
    );
\current_column[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => current_column_reg(6),
      I1 => \current_column[6]_i_2_n_0\,
      I2 => current_column_reg(4),
      I3 => current_column_reg(2),
      I4 => current_column_reg(3),
      I5 => current_column_reg(5),
      O => \p_0_in__1\(6)
    );
\current_column[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_column_reg(1),
      I1 => current_column_reg(0),
      O => \current_column[6]_i_2_n_0\
    );
\current_column[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => current_column_reg(7),
      I1 => current_column_reg(5),
      I2 => \current_column[9]_i_3_n_0\,
      I3 => current_column_reg(6),
      O => \p_0_in__1\(7)
    );
\current_column[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => current_column_reg(8),
      I1 => current_column_reg(7),
      I2 => current_column_reg(6),
      I3 => current_column_reg(5),
      I4 => \current_column[9]_i_3_n_0\,
      O => \p_0_in__1\(8)
    );
\current_column[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD555"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => current_column_reg(8),
      I2 => current_column_reg(7),
      I3 => current_column_reg(6),
      I4 => \current_column_reg__0\(9),
      O => \current_column[9]_i_1_n_0\
    );
\current_column[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => current_column_reg(8),
      I1 => \current_column[9]_i_3_n_0\,
      I2 => current_column_reg(5),
      I3 => current_column_reg(6),
      I4 => current_column_reg(7),
      O => \p_0_in__1\(9)
    );
\current_column[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => current_column_reg(0),
      I1 => current_column_reg(1),
      I2 => current_column_reg(4),
      I3 => current_column_reg(2),
      I4 => current_column_reg(3),
      O => \current_column[9]_i_3_n_0\
    );
\current_column_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_column[0]_i_1_n_0\,
      Q => current_column_reg(0),
      S => \current_column[9]_i_1_n_0\
    );
\current_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(1),
      Q => current_column_reg(1),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(2),
      Q => current_column_reg(2),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(3),
      Q => current_column_reg(3),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(4),
      Q => current_column_reg(4),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_column[5]_i_1__0_n_0\,
      Q => current_column_reg(5),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(6),
      Q => current_column_reg(6),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(7),
      Q => current_column_reg(7),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(8),
      Q => current_column_reg(8),
      R => \current_column[9]_i_1_n_0\
    );
\current_column_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \p_0_in__1\(9),
      Q => \current_column_reg__0\(9),
      R => \current_column[9]_i_1_n_0\
    );
\current_line[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_line_reg(0),
      O => \current_line[0]_i_1__0_n_0\
    );
\current_line[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_line_reg(1),
      I1 => current_line_reg(0),
      O => \p_0_in__0\(1)
    );
\current_line[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => current_line_reg(2),
      I1 => current_line_reg(0),
      I2 => current_line_reg(1),
      O => \current_line[2]_i_1__0_n_0\
    );
\current_line[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_line_reg(3),
      I1 => current_line_reg(1),
      I2 => current_line_reg(0),
      I3 => current_line_reg(2),
      O => \p_0_in__0\(3)
    );
\current_line[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => current_line_reg(4),
      I1 => current_line_reg(2),
      I2 => current_line_reg(0),
      I3 => current_line_reg(1),
      I4 => current_line_reg(3),
      O => \current_line[4]_i_1_n_0\
    );
\current_line[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444440FFFFFFFF"
    )
        port map (
      I0 => \current_line[4]_i_4_n_0\,
      I1 => current_line_reg(9),
      I2 => \current_line[4]_i_5_n_0\,
      I3 => current_line_reg(8),
      I4 => current_line_reg(7),
      I5 => S_AXI_ARESETN,
      O => \^ss\(0)
    );
\current_line[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_state[39]_i_2_n_0\,
      O => E(0)
    );
\current_line[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \current_column_reg__0\(9),
      I1 => current_column_reg(6),
      I2 => current_column_reg(7),
      I3 => current_column_reg(8),
      O => \current_line[4]_i_4_n_0\
    );
\current_line[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => current_line_reg(4),
      I1 => current_line_reg(5),
      I2 => current_line_reg(6),
      I3 => \current_line[4]_i_6_n_0\,
      I4 => current_line_reg(1),
      I5 => current_line_reg(0),
      O => \current_line[4]_i_5_n_0\
    );
\current_line[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => current_line_reg(2),
      I1 => current_line_reg(3),
      O => \current_line[4]_i_6_n_0\
    );
\current_line[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => current_line_reg(5),
      I1 => current_line_reg(3),
      I2 => current_line_reg(1),
      I3 => current_line_reg(0),
      I4 => current_line_reg(2),
      I5 => current_line_reg(4),
      O => \p_0_in__0\(5)
    );
\current_line[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => current_line_reg(6),
      I1 => current_line_reg(3),
      I2 => current_line_reg(1),
      I3 => current_line_reg(0),
      I4 => current_line_reg(2),
      I5 => \current_line[9]_i_4_n_0\,
      O => \p_0_in__0\(6)
    );
\current_line[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => current_line_reg(7),
      I1 => \current_line[9]_i_3_n_0\,
      I2 => current_line_reg(6),
      I3 => current_line_reg(5),
      I4 => current_line_reg(4),
      O => \p_0_in__0\(7)
    );
\current_line[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => current_line_reg(8),
      I1 => current_line_reg(7),
      I2 => current_line_reg(4),
      I3 => current_line_reg(5),
      I4 => current_line_reg(6),
      I5 => \current_line[9]_i_3_n_0\,
      O => \p_0_in__0\(8)
    );
\current_line[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => current_column_reg(8),
      I1 => current_column_reg(7),
      I2 => current_column_reg(6),
      I3 => \current_column_reg__0\(9),
      O => current_line0
    );
\current_line[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AAAAAAAAAAAAA"
    )
        port map (
      I0 => current_line_reg(9),
      I1 => \current_line[9]_i_3_n_0\,
      I2 => current_line_reg(6),
      I3 => \current_line[9]_i_4_n_0\,
      I4 => current_line_reg(7),
      I5 => current_line_reg(8),
      O => \p_0_in__0\(9)
    );
\current_line[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => current_line_reg(3),
      I1 => current_line_reg(1),
      I2 => current_line_reg(0),
      I3 => current_line_reg(2),
      O => \current_line[9]_i_3_n_0\
    );
\current_line[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_line_reg(4),
      I1 => current_line_reg(5),
      O => \current_line[9]_i_4_n_0\
    );
\current_line_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \current_line[0]_i_1__0_n_0\,
      Q => current_line_reg(0),
      S => \^ss\(0)
    );
\current_line_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(1),
      Q => current_line_reg(1),
      R => \^ss\(0)
    );
\current_line_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \current_line[2]_i_1__0_n_0\,
      Q => current_line_reg(2),
      R => \^ss\(0)
    );
\current_line_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(3),
      Q => current_line_reg(3),
      R => \^ss\(0)
    );
\current_line_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \current_line[4]_i_1_n_0\,
      Q => current_line_reg(4),
      R => \^ss\(0)
    );
\current_line_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(5),
      Q => current_line_reg(5),
      R => \^ss\(0)
    );
\current_line_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(6),
      Q => current_line_reg(6),
      R => \^ss\(0)
    );
\current_line_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(7),
      Q => current_line_reg(7),
      R => \^ss\(0)
    );
\current_line_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(8),
      Q => current_line_reg(8),
      R => \^ss\(0)
    );
\current_line_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => current_line0,
      D => \p_0_in__0\(9),
      Q => current_line_reg(9),
      R => \^ss\(0)
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555555555555"
    )
        port map (
      I0 => \current_state[39]_i_2_n_0\,
      I1 => \current_state_reg[38]\(0),
      I2 => \current_state_reg[38]\(1),
      I3 => \current_state_reg[38]\(2),
      I4 => \current_state_reg[38]\(3),
      I5 => \current_state_reg[38]\(4),
      O => \^current_line_reg[0]_0\
    );
\current_state[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(14),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(4),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(76),
      O => D(76)
    );
\current_state[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(1),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(5),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(77),
      O => D(77)
    );
\current_state[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(15),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(6),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(78),
      O => D(78)
    );
\current_state[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2),
      I1 => \current_state_reg[40]\,
      I2 => PACKET_DATA(7),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(79),
      O => D(79)
    );
\current_state[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(80),
      O => D(80)
    );
\current_state[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(81),
      O => D(81)
    );
\current_state[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(82),
      O => D(82)
    );
\current_state[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(83),
      O => D(83)
    );
\current_state[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(84),
      O => D(84)
    );
\current_state[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(85),
      O => D(85)
    );
\current_state[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[110]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(86),
      O => D(86)
    );
\current_state[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(0),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(0),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(87),
      O => D(87)
    );
\current_state[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(88),
      O => D(88)
    );
\current_state[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(89),
      O => D(89)
    );
\current_state[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(90),
      O => D(90)
    );
\current_state[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(91),
      O => D(91)
    );
\current_state[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(92),
      O => D(92)
    );
\current_state[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(93),
      O => D(93)
    );
\current_state[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[118]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(94),
      O => D(94)
    );
\current_state[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(1),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(1),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(95),
      O => D(95)
    );
\current_state[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(96),
      O => D(96)
    );
\current_state[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(97),
      O => D(97)
    );
\current_state[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(98),
      O => D(98)
    );
\current_state[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(99),
      O => D(99)
    );
\current_state[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(100),
      O => D(100)
    );
\current_state[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(101),
      O => D(101)
    );
\current_state[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[126]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(102),
      O => D(102)
    );
\current_state[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(2),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(2),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(103),
      O => D(103)
    );
\current_state[128]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(104),
      O => D(104)
    );
\current_state[129]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(105),
      O => D(105)
    );
\current_state[130]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(106),
      O => D(106)
    );
\current_state[131]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(107),
      O => D(107)
    );
\current_state[132]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(108),
      O => D(108)
    );
\current_state[133]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(109),
      O => D(109)
    );
\current_state[134]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[134]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(110),
      O => D(110)
    );
\current_state[135]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(3),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(3),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(111),
      O => D(111)
    );
\current_state[136]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(112),
      O => D(112)
    );
\current_state[137]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(113),
      O => D(113)
    );
\current_state[138]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(114),
      O => D(114)
    );
\current_state[139]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(115),
      O => D(115)
    );
\current_state[140]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(116),
      O => D(116)
    );
\current_state[141]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(117),
      O => D(117)
    );
\current_state[142]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[142]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(118),
      O => D(118)
    );
\current_state[143]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(4),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(4),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(119),
      O => D(119)
    );
\current_state[144]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(120),
      O => D(120)
    );
\current_state[145]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(121),
      O => D(121)
    );
\current_state[146]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(122),
      O => D(122)
    );
\current_state[147]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(123),
      O => D(123)
    );
\current_state[148]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(124),
      O => D(124)
    );
\current_state[149]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(125),
      O => D(125)
    );
\current_state[150]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[150]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(126),
      O => D(126)
    );
\current_state[151]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(5),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(5),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(127),
      O => D(127)
    );
\current_state[152]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(128),
      O => D(128)
    );
\current_state[153]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(129),
      O => D(129)
    );
\current_state[154]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(130),
      O => D(130)
    );
\current_state[155]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(131),
      O => D(131)
    );
\current_state[156]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(132),
      O => D(132)
    );
\current_state[157]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(133),
      O => D(133)
    );
\current_state[158]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[158]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(134),
      O => D(134)
    );
\current_state[159]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(6),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(6),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(135),
      O => D(135)
    );
\current_state[160]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(136),
      O => D(136)
    );
\current_state[161]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(137),
      O => D(137)
    );
\current_state[162]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(138),
      O => D(138)
    );
\current_state[163]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(139),
      O => D(139)
    );
\current_state[164]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(140),
      O => D(140)
    );
\current_state[165]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(141),
      O => D(141)
    );
\current_state[166]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[166]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(142),
      O => D(142)
    );
\current_state[167]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(7),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(7),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(143),
      O => D(143)
    );
\current_state[168]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(144),
      O => D(144)
    );
\current_state[169]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(145),
      O => D(145)
    );
\current_state[170]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(146),
      O => D(146)
    );
\current_state[171]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(147),
      O => D(147)
    );
\current_state[172]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(148),
      O => D(148)
    );
\current_state[173]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(149),
      O => D(149)
    );
\current_state[174]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[174]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(150),
      O => D(150)
    );
\current_state[175]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(8),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(8),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(151),
      O => D(151)
    );
\current_state[176]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(152),
      O => D(152)
    );
\current_state[177]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(153),
      O => D(153)
    );
\current_state[178]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(154),
      O => D(154)
    );
\current_state[179]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(155),
      O => D(155)
    );
\current_state[180]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(156),
      O => D(156)
    );
\current_state[181]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(157),
      O => D(157)
    );
\current_state[182]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[182]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(158),
      O => D(158)
    );
\current_state[183]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(9),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(9),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(159),
      O => D(159)
    );
\current_state[184]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(160),
      O => D(160)
    );
\current_state[185]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(161),
      O => D(161)
    );
\current_state[186]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(162),
      O => D(162)
    );
\current_state[187]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(163),
      O => D(163)
    );
\current_state[188]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(164),
      O => D(164)
    );
\current_state[189]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(165),
      O => D(165)
    );
\current_state[190]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[190]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(166),
      O => D(166)
    );
\current_state[191]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(10),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(10),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(167),
      O => D(167)
    );
\current_state[192]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(168),
      O => D(168)
    );
\current_state[193]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(169),
      O => D(169)
    );
\current_state[194]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(170),
      O => D(170)
    );
\current_state[195]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(171),
      O => D(171)
    );
\current_state[196]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(172),
      O => D(172)
    );
\current_state[197]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(173),
      O => D(173)
    );
\current_state[198]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[198]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(174),
      O => D(174)
    );
\current_state[199]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(11),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(11),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(175),
      O => D(175)
    );
\current_state[200]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(176),
      O => D(176)
    );
\current_state[201]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(177),
      O => D(177)
    );
\current_state[202]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(178),
      O => D(178)
    );
\current_state[203]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(179),
      O => D(179)
    );
\current_state[204]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(180),
      O => D(180)
    );
\current_state[205]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(181),
      O => D(181)
    );
\current_state[206]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[206]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(182),
      O => D(182)
    );
\current_state[207]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(12),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(12),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(183),
      O => D(183)
    );
\current_state[208]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(184),
      O => D(184)
    );
\current_state[209]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(185),
      O => D(185)
    );
\current_state[210]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(186),
      O => D(186)
    );
\current_state[211]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(187),
      O => D(187)
    );
\current_state[212]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(188),
      O => D(188)
    );
\current_state[213]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(189),
      O => D(189)
    );
\current_state[214]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[214]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(190),
      O => D(190)
    );
\current_state[215]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(13),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(13),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(191),
      O => D(191)
    );
\current_state[216]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(192),
      O => D(192)
    );
\current_state[217]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(193),
      O => D(193)
    );
\current_state[218]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(194),
      O => D(194)
    );
\current_state[219]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(195),
      O => D(195)
    );
\current_state[220]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(196),
      O => D(196)
    );
\current_state[221]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(197),
      O => D(197)
    );
\current_state[222]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[222]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(198),
      O => D(198)
    );
\current_state[223]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(14),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(14),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(199),
      O => D(199)
    );
\current_state[224]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(0),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(200),
      O => D(200)
    );
\current_state[225]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(1),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(201),
      O => D(201)
    );
\current_state[226]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(2),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(202),
      O => D(202)
    );
\current_state[227]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(3),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(203),
      O => D(203)
    );
\current_state[228]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(4),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(204),
      O => D(204)
    );
\current_state[229]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(5),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(205),
      O => D(205)
    );
\current_state[230]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[230]\(6),
      I1 => \current_state[231]_i_3_n_0\,
      I2 => Q(206),
      O => D(206)
    );
\current_state[231]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(15),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(15),
      I3 => \current_state[231]_i_3_n_0\,
      I4 => Q(207),
      O => D(207)
    );
\current_state[231]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555555555555"
    )
        port map (
      I0 => \current_state[39]_i_2_n_0\,
      I1 => \current_state_reg[38]\(0),
      I2 => \current_state_reg[38]\(1),
      I3 => \current_state_reg[38]\(2),
      I4 => \current_state_reg[38]\(3),
      I5 => \current_state_reg[38]\(4),
      O => \current_state[231]_i_3_n_0\
    );
\current_state[232]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(208),
      O => D(208)
    );
\current_state[233]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(209),
      O => D(209)
    );
\current_state[234]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(210),
      O => D(210)
    );
\current_state[235]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(211),
      O => D(211)
    );
\current_state[236]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(212),
      O => D(212)
    );
\current_state[237]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(213),
      O => D(213)
    );
\current_state[238]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[238]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(214),
      O => D(214)
    );
\current_state[239]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(16),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(16),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(215),
      O => D(215)
    );
\current_state[240]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(216),
      O => D(216)
    );
\current_state[241]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(217),
      O => D(217)
    );
\current_state[242]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(218),
      O => D(218)
    );
\current_state[243]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(219),
      O => D(219)
    );
\current_state[244]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(220),
      O => D(220)
    );
\current_state[245]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(221),
      O => D(221)
    );
\current_state[246]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[246]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(222),
      O => D(222)
    );
\current_state[247]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(17),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(17),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(223),
      O => D(223)
    );
\current_state[248]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(224),
      O => D(224)
    );
\current_state[249]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(225),
      O => D(225)
    );
\current_state[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => current_magazine_number(0),
      I1 => \current_state_reg[38]\(0),
      I2 => current_magazine_number(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(0),
      O => D(0)
    );
\current_state[250]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(226),
      O => D(226)
    );
\current_state[251]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(227),
      O => D(227)
    );
\current_state[252]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(228),
      O => D(228)
    );
\current_state[253]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(229),
      O => D(229)
    );
\current_state[254]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[254]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(230),
      O => D(230)
    );
\current_state[255]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(18),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(18),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(231),
      O => D(231)
    );
\current_state[256]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(232),
      O => D(232)
    );
\current_state[257]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(233),
      O => D(233)
    );
\current_state[258]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(234),
      O => D(234)
    );
\current_state[259]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(235),
      O => D(235)
    );
\current_state[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_magazine_number(0),
      I1 => \^current_line_reg[0]_0\,
      I2 => Q(1),
      O => D(1)
    );
\current_state[260]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(236),
      O => D(236)
    );
\current_state[261]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(237),
      O => D(237)
    );
\current_state[262]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[262]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(238),
      O => D(238)
    );
\current_state[263]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(19),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(19),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(239),
      O => D(239)
    );
\current_state[264]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(240),
      O => D(240)
    );
\current_state[265]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(241),
      O => D(241)
    );
\current_state[266]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(242),
      O => D(242)
    );
\current_state[267]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(243),
      O => D(243)
    );
\current_state[268]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(244),
      O => D(244)
    );
\current_state[269]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(245),
      O => D(245)
    );
\current_state[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => \current_state_reg[38]\(0),
      I1 => current_magazine_number(0),
      I2 => current_magazine_number(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(2),
      O => D(2)
    );
\current_state[270]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[270]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(246),
      O => D(246)
    );
\current_state[271]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(20),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(20),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(247),
      O => D(247)
    );
\current_state[272]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(248),
      O => D(248)
    );
\current_state[273]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(249),
      O => D(249)
    );
\current_state[274]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(250),
      O => D(250)
    );
\current_state[275]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(251),
      O => D(251)
    );
\current_state[276]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(252),
      O => D(252)
    );
\current_state[277]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(253),
      O => D(253)
    );
\current_state[278]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[278]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(254),
      O => D(254)
    );
\current_state[279]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(21),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(21),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(255),
      O => D(255)
    );
\current_state[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_magazine_number(1),
      I1 => \^current_line_reg[0]_0\,
      I2 => Q(3),
      O => D(3)
    );
\current_state[280]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(256),
      O => D(256)
    );
\current_state[281]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(257),
      O => D(257)
    );
\current_state[282]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(258),
      O => D(258)
    );
\current_state[283]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(259),
      O => D(259)
    );
\current_state[284]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(260),
      O => D(260)
    );
\current_state[285]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(261),
      O => D(261)
    );
\current_state[286]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[286]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(262),
      O => D(262)
    );
\current_state[287]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(22),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(22),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(263),
      O => D(263)
    );
\current_state[288]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(264),
      O => D(264)
    );
\current_state[289]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(265),
      O => D(265)
    );
\current_state[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => current_magazine_number(2),
      I1 => current_magazine_number(0),
      I2 => current_magazine_number(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(4),
      O => D(4)
    );
\current_state[290]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(266),
      O => D(266)
    );
\current_state[291]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(267),
      O => D(267)
    );
\current_state[292]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(268),
      O => D(268)
    );
\current_state[293]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(269),
      O => D(269)
    );
\current_state[294]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[294]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(270),
      O => D(270)
    );
\current_state[295]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(23),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(23),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(271),
      O => D(271)
    );
\current_state[296]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(272),
      O => D(272)
    );
\current_state[297]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(273),
      O => D(273)
    );
\current_state[298]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(274),
      O => D(274)
    );
\current_state[299]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(275),
      O => D(275)
    );
\current_state[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => current_magazine_number(2),
      I1 => \^current_line_reg[0]_0\,
      I2 => Q(5),
      O => D(5)
    );
\current_state[300]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(276),
      O => D(276)
    );
\current_state[301]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(277),
      O => D(277)
    );
\current_state[302]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[302]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(278),
      O => D(278)
    );
\current_state[303]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(24),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(24),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(279),
      O => D(279)
    );
\current_state[304]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(280),
      O => D(280)
    );
\current_state[305]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(281),
      O => D(281)
    );
\current_state[306]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(282),
      O => D(282)
    );
\current_state[307]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(283),
      O => D(283)
    );
\current_state[308]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(284),
      O => D(284)
    );
\current_state[309]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(285),
      O => D(285)
    );
\current_state[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => current_magazine_number(1),
      I1 => \current_state_reg[38]\(0),
      I2 => current_magazine_number(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(6),
      O => D(6)
    );
\current_state[310]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[310]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(286),
      O => D(286)
    );
\current_state[311]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(25),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(25),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(287),
      O => D(287)
    );
\current_state[312]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(288),
      O => D(288)
    );
\current_state[313]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(289),
      O => D(289)
    );
\current_state[314]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(290),
      O => D(290)
    );
\current_state[315]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(291),
      O => D(291)
    );
\current_state[316]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(292),
      O => D(292)
    );
\current_state[317]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(293),
      O => D(293)
    );
\current_state[318]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[318]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(294),
      O => D(294)
    );
\current_state[319]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(26),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(26),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(295),
      O => D(295)
    );
\current_state[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[38]\(0),
      I1 => \^current_line_reg[0]_0\,
      I2 => Q(7),
      O => D(7)
    );
\current_state[320]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(296),
      O => D(296)
    );
\current_state[321]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(297),
      O => D(297)
    );
\current_state[322]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(298),
      O => D(298)
    );
\current_state[323]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(299),
      O => D(299)
    );
\current_state[324]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(300),
      O => D(300)
    );
\current_state[325]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(301),
      O => D(301)
    );
\current_state[326]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[326]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(302),
      O => D(302)
    );
\current_state[327]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(27),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(27),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(303),
      O => D(303)
    );
\current_state[328]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(304),
      O => D(304)
    );
\current_state[329]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(305),
      O => D(305)
    );
\current_state[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => \current_state_reg[38]\(1),
      I1 => \current_state_reg[38]\(4),
      I2 => \current_state_reg[38]\(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(8),
      O => D(8)
    );
\current_state[330]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(306),
      O => D(306)
    );
\current_state[331]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(307),
      O => D(307)
    );
\current_state[332]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(308),
      O => D(308)
    );
\current_state[333]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(309),
      O => D(309)
    );
\current_state[334]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[334]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(310),
      O => D(310)
    );
\current_state[335]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(28),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(28),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(311),
      O => D(311)
    );
\current_state[336]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(312),
      O => D(312)
    );
\current_state[337]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(313),
      O => D(313)
    );
\current_state[338]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(314),
      O => D(314)
    );
\current_state[339]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(315),
      O => D(315)
    );
\current_state[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[38]\(1),
      I1 => \^current_line_reg[0]_0\,
      I2 => Q(9),
      O => D(9)
    );
\current_state[340]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(316),
      O => D(316)
    );
\current_state[341]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(317),
      O => D(317)
    );
\current_state[342]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[342]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(318),
      O => D(318)
    );
\current_state[343]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(29),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(29),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(319),
      O => D(319)
    );
\current_state[344]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(320),
      O => D(320)
    );
\current_state[345]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(321),
      O => D(321)
    );
\current_state[346]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(322),
      O => D(322)
    );
\current_state[347]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(323),
      O => D(323)
    );
\current_state[348]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(324),
      O => D(324)
    );
\current_state[349]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(325),
      O => D(325)
    );
\current_state[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => \current_state_reg[38]\(4),
      I1 => \current_state_reg[38]\(1),
      I2 => \current_state_reg[38]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(10),
      O => D(10)
    );
\current_state[350]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[350]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(326),
      O => D(326)
    );
\current_state[351]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[351]\(30),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[351]\(30),
      I3 => \^current_line_reg[0]_1\,
      I4 => Q(327),
      O => D(327)
    );
\current_state[352]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(0),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(328),
      O => D(328)
    );
\current_state[353]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(1),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(329),
      O => D(329)
    );
\current_state[354]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(2),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(330),
      O => D(330)
    );
\current_state[355]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(3),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(331),
      O => D(331)
    );
\current_state[356]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(4),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(332),
      O => D(332)
    );
\current_state[357]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(5),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(333),
      O => D(333)
    );
\current_state[358]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[358]\(6),
      I1 => \^current_line_reg[0]_1\,
      I2 => Q(334),
      O => D(334)
    );
\current_state[359]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555555555555"
    )
        port map (
      I0 => \current_state[39]_i_2_n_0\,
      I1 => \current_state_reg[38]\(0),
      I2 => \current_state_reg[38]\(1),
      I3 => \current_state_reg[38]\(2),
      I4 => \current_state_reg[38]\(3),
      I5 => \current_state_reg[38]\(4),
      O => \^current_line_reg[0]_1\
    );
\current_state[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_state_reg[38]\(2),
      I1 => \^current_line_reg[0]_0\,
      I2 => Q(11),
      O => D(11)
    );
\current_state[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => \current_state_reg[38]\(3),
      I1 => \current_state_reg[38]\(1),
      I2 => \current_state_reg[38]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(12),
      O => D(12)
    );
\current_state[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \^current_line_reg[0]_0\,
      I1 => Q(13),
      I2 => \current_state[39]_i_2_n_0\,
      I3 => \current_state_reg[38]\(3),
      O => D(13)
    );
\current_state[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \current_state_reg[38]\(2),
      I1 => \current_state_reg[38]\(4),
      I2 => \current_state_reg[38]\(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(14),
      O => D(14)
    );
\current_state[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \^current_line_reg[0]_0\,
      I1 => Q(15),
      I2 => \current_state[39]_i_2_n_0\,
      I3 => \current_state_reg[38]\(4),
      O => D(15)
    );
\current_state[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => \current_state[39]_i_3_n_0\,
      I1 => \current_state[39]_i_4_n_0\,
      I2 => \current_state[39]_i_5_n_0\,
      I3 => \current_state[39]_i_6_n_0\,
      I4 => \current_state[39]_i_7_n_0\,
      I5 => \current_state[39]_i_8_n_0\,
      O => \current_state[39]_i_2_n_0\
    );
\current_state[39]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => current_line_reg(9),
      I1 => current_line_reg(7),
      I2 => current_column_reg(6),
      I3 => current_column_reg(3),
      I4 => current_column_reg(4),
      O => \current_state[39]_i_3_n_0\
    );
\current_state[39]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => current_column_reg(5),
      I1 => current_column_reg(7),
      I2 => current_column_reg(8),
      I3 => current_column_reg(2),
      I4 => current_column_reg(1),
      I5 => current_column_reg(0),
      O => \current_state[39]_i_4_n_0\
    );
\current_state[39]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FC"
    )
        port map (
      I0 => current_line_reg(4),
      I1 => current_line_reg(5),
      I2 => current_line_reg(6),
      I3 => current_line_reg(8),
      O => \current_state[39]_i_5_n_0\
    );
\current_state[39]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0A5A5A5"
    )
        port map (
      I0 => current_line_reg(3),
      I1 => current_line_reg(0),
      I2 => current_line_reg(4),
      I3 => current_line_reg(2),
      I4 => current_line_reg(1),
      I5 => current_line_reg(8),
      O => \current_state[39]_i_6_n_0\
    );
\current_state[39]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_line_reg(8),
      I1 => current_line_reg(6),
      O => \current_state[39]_i_7_n_0\
    );
\current_state[39]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => current_line_reg(4),
      I1 => current_line_reg(5),
      I2 => current_line_reg(3),
      I3 => current_line_reg(2),
      I4 => current_line_reg(1),
      O => \current_state[39]_i_8_n_0\
    );
\current_state[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(0),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(0),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(16),
      O => D(16)
    );
\current_state[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(0),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(17),
      O => D(17)
    );
\current_state[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(1),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(18),
      O => D(18)
    );
\current_state[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(1),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(19),
      O => D(19)
    );
\current_state[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(2),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(4),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(20),
      O => D(20)
    );
\current_state[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(2),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(5),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(21),
      O => D(21)
    );
\current_state[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(3),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[46]\(6),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(22),
      O => D(22)
    );
\current_state[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(3),
      I1 => \current_state_reg[40]\,
      I2 => PACKET_DATA(0),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(23),
      O => D(23)
    );
\current_state[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(4),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(0),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(24),
      O => D(24)
    );
\current_state[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(4),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(25),
      O => D(25)
    );
\current_state[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(5),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(26),
      O => D(26)
    );
\current_state[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(5),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(27),
      O => D(27)
    );
\current_state[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(6),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(4),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(28),
      O => D(28)
    );
\current_state[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(6),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(5),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(29),
      O => D(29)
    );
\current_state[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(7),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[54]\(6),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(30),
      O => D(30)
    );
\current_state[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[55]\(7),
      I1 => \current_state_reg[40]\,
      I2 => PACKET_DATA(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(31),
      O => D(31)
    );
\current_state[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[62]\(0),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(32),
      O => D(32)
    );
\current_state[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[62]\(1),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(33),
      O => D(33)
    );
\current_state[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[62]\(2),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(34),
      O => D(34)
    );
\current_state[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[62]\(3),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(35),
      O => D(35)
    );
\current_state[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[62]\(4),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(36),
      O => D(36)
    );
\current_state[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[62]\(5),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(37),
      O => D(37)
    );
\current_state[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[62]\(6),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(38),
      O => D(38)
    );
\current_state[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => PACKET_DATA(2),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(39),
      O => D(39)
    );
\current_state[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \current_state_reg[64]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[70]\(0),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(40),
      O => D(40)
    );
\current_state[65]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[70]\(1),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(41),
      O => D(41)
    );
\current_state[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \current_state_reg[64]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[70]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(42),
      O => D(42)
    );
\current_state[67]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[70]\(3),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(43),
      O => D(43)
    );
\current_state[68]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[70]\(4),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(44),
      O => D(44)
    );
\current_state[69]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[70]\(5),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(45),
      O => D(45)
    );
\current_state[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[64]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[70]\(6),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(46),
      O => D(46)
    );
\current_state[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[64]\,
      I1 => \current_state_reg[40]\,
      I2 => PACKET_DATA(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(47),
      O => D(47)
    );
\current_state[72]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[78]\(0),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(48),
      O => D(48)
    );
\current_state[73]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[78]\(1),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(49),
      O => D(49)
    );
\current_state[74]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[78]\(2),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(50),
      O => D(50)
    );
\current_state[75]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[78]\(3),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(51),
      O => D(51)
    );
\current_state[76]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \current_state_reg[78]\(4),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(52),
      O => D(52)
    );
\current_state[77]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[78]\(5),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(53),
      O => D(53)
    );
\current_state[78]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[78]\(6),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(54),
      O => D(54)
    );
\current_state[79]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => PACKET_DATA(4),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(55),
      O => D(55)
    );
\current_state[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90FFFF9F900000"
    )
        port map (
      I0 => \current_state_reg[86]\,
      I1 => \current_state_reg[86]_0\,
      I2 => \current_state_reg[40]\,
      I3 => \current_state_reg[86]_1\(0),
      I4 => \^current_line_reg[0]_0\,
      I5 => Q(56),
      O => D(56)
    );
\current_state[81]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[86]_1\(1),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(57),
      O => D(57)
    );
\current_state[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \current_state_reg[86]_0\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[86]_1\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(58),
      O => D(58)
    );
\current_state[83]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \current_state_reg[86]_1\(3),
      I1 => \current_state_reg[40]\,
      I2 => \^current_line_reg[0]_0\,
      I3 => Q(59),
      O => D(59)
    );
\current_state[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \current_state_reg[86]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[86]_1\(4),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(60),
      O => D(60)
    );
\current_state[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[86]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[86]_1\(5),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(61),
      O => D(61)
    );
\current_state[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60FFFF6F600000"
    )
        port map (
      I0 => \current_state_reg[86]_0\,
      I1 => \current_state_reg[86]\,
      I2 => \current_state_reg[40]\,
      I3 => \current_state_reg[86]_1\(6),
      I4 => \^current_line_reg[0]_0\,
      I5 => Q(62),
      O => D(62)
    );
\current_state[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \current_state_reg[86]_0\,
      I1 => \current_state_reg[40]\,
      I2 => PACKET_DATA(5),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(63),
      O => D(63)
    );
\current_state[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(8),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(0),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(64),
      O => D(64)
    );
\current_state[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[SUPPRESS_HEADER]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(65),
      O => D(65)
    );
\current_state[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(9),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(66),
      O => D(66)
    );
\current_state[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[UPDATE_INDICATOR]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(67),
      O => D(67)
    );
\current_state[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(10),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(4),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(68),
      O => D(68)
    );
\current_state[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[INTERRUPTED_SEQUENCE]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(5),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(69),
      O => D(69)
    );
\current_state[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(11),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[94]\(6),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(70),
      O => D(70)
    );
\current_state[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[INHIBIT_DISPLAY]\,
      I1 => \current_state_reg[40]\,
      I2 => PACKET_DATA(6),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(71),
      O => D(71)
    );
\current_state[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(12),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(0),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(72),
      O => D(72)
    );
\current_state[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[MAGAZINE_SERIAL]\,
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(1),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(73),
      O => D(73)
    );
\current_state[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => teletext_page_header_data(13),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(2),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(74),
      O => D(74)
    );
\current_state[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(0),
      I1 => \current_state_reg[40]\,
      I2 => \current_state_reg[102]\(3),
      I3 => \^current_line_reg[0]_0\,
      I4 => Q(75),
      O => D(75)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO is
  port (
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    TELETEXT_CLK : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO : entity is "unimacro_BRAM_SDP_MACRO";
end system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO;

architecture STRUCTURE of system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO is
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_100\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_101\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_102\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_103\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_104\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_105\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_113\ : STD_LOGIC;
  signal \sdp_bl.ramb18_dp_bl.ram18_bl_n_99\ : STD_LOGIC;
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_100\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_101\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_102\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_103\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_104\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_105\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_113\ <= 'Z';
  \sdp_bl.ramb18_dp_bl.ram18_bl_n_99\ <= 'Z';
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => ADDRARDADDR(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => TELETEXT_CLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 7) => B"000000000",
      DIBDI(6) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_99\,
      DIBDI(5) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_100\,
      DIBDI(4) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_101\,
      DIBDI(3) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_102\,
      DIBDI(2) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_103\,
      DIBDI(1) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_104\,
      DIBDI(0) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_105\,
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 7) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOADO_UNCONNECTED\(15 downto 7),
      DOADO(6 downto 0) => D(6 downto 0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => p_0_in,
      RSTRAMB => p_0_in,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_113\,
      WEBWE(2) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_113\,
      WEBWE(1) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_113\,
      WEBWE(0) => \sdp_bl.ramb18_dp_bl.ram18_bl_n_113\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0_framebuffer is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[8][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    teletext_page_header_data : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \current_line_out_reg[9][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[10][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[11][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[12][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[13][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[14][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[15][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[16][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[17][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[18][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[19][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[20][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[21][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[22][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[23][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[24][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[25][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[26][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[27][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[28][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[29][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[30][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[31][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[32][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[33][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[34][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[35][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[36][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[37][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[38][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[7][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[6][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[5][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[4][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[3][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[2][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[1][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_line_out_reg[0][6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    PACKET_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TELETEXT_CLK : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \current_state_reg[359]\ : in STD_LOGIC;
    \current_out_index_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_teletext_controller_0_0_framebuffer : entity is "framebuffer";
end system_teletext_controller_0_0_framebuffer;

architecture STRUCTURE of system_teletext_controller_0_0_framebuffer is
  signal DO : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal RDADDR : STD_LOGIC_VECTOR ( 10 downto 3 );
  signal current_column : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \current_column[5]_i_1_n_0\ : STD_LOGIC;
  signal \current_column[5]_i_2_n_0\ : STD_LOGIC;
  signal \current_line_out[11][6]_i_1_n_0\ : STD_LOGIC;
  signal \current_line_out[13][6]_i_1_n_0\ : STD_LOGIC;
  signal \current_line_out[19][6]_i_1_n_0\ : STD_LOGIC;
  signal \current_line_out[35][6]_i_1_n_0\ : STD_LOGIC;
  signal \current_line_out[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \current_line_out[7][6]_i_1_n_0\ : STD_LOGIC;
  signal \^current_line_out_reg[0][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[10][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[11][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[12][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[13][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[14][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[15][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[16][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[17][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[18][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[19][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[1][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[20][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[21][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[22][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[23][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[24][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[25][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[26][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[27][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[28][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[29][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[2][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[30][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[31][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[32][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[33][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[34][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[35][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[36][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[37][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[38][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[3][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[4][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[5][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[6][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[7][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[8][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^current_line_out_reg[9][6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \current_state[111]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[119]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[127]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[135]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[143]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[151]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[159]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[167]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[175]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[183]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[191]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[199]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[207]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[215]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[223]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[231]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[239]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[247]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[255]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[263]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[271]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[279]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[287]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[295]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[303]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[311]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[319]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[327]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[335]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[343]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[351]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[359]_i_2_n_0\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[10]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[12]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[14]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[15]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[16]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[17]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[18]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[20]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[21]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[22]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[23]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[24]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[25]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[26]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[27]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[28]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[29]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[30]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[31]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[32]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[33]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[34]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[36]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[37]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[38]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[39]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[8]\ : STD_LOGIC;
  signal \next_line_out_reg_n_0_[9]\ : STD_LOGIC;
  signal \odd_parities[0].odd_parityx/current_state[47]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[1].odd_parityx/current_state[55]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[2].odd_parityx/current_state[63]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[3].odd_parityx/current_state[71]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[4].odd_parityx/current_state[79]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[5].odd_parityx/current_state[87]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[6].odd_parityx/current_state[95]_i_3_n_0\ : STD_LOGIC;
  signal \odd_parities[7].odd_parityx/current_state[103]_i_3_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  \current_line_out_reg[0][6]_0\(6 downto 0) <= \^current_line_out_reg[0][6]_0\(6 downto 0);
  \current_line_out_reg[10][6]_0\(6 downto 0) <= \^current_line_out_reg[10][6]_0\(6 downto 0);
  \current_line_out_reg[11][6]_0\(6 downto 0) <= \^current_line_out_reg[11][6]_0\(6 downto 0);
  \current_line_out_reg[12][6]_0\(6 downto 0) <= \^current_line_out_reg[12][6]_0\(6 downto 0);
  \current_line_out_reg[13][6]_0\(6 downto 0) <= \^current_line_out_reg[13][6]_0\(6 downto 0);
  \current_line_out_reg[14][6]_0\(6 downto 0) <= \^current_line_out_reg[14][6]_0\(6 downto 0);
  \current_line_out_reg[15][6]_0\(6 downto 0) <= \^current_line_out_reg[15][6]_0\(6 downto 0);
  \current_line_out_reg[16][6]_0\(6 downto 0) <= \^current_line_out_reg[16][6]_0\(6 downto 0);
  \current_line_out_reg[17][6]_0\(6 downto 0) <= \^current_line_out_reg[17][6]_0\(6 downto 0);
  \current_line_out_reg[18][6]_0\(6 downto 0) <= \^current_line_out_reg[18][6]_0\(6 downto 0);
  \current_line_out_reg[19][6]_0\(6 downto 0) <= \^current_line_out_reg[19][6]_0\(6 downto 0);
  \current_line_out_reg[1][6]_0\(6 downto 0) <= \^current_line_out_reg[1][6]_0\(6 downto 0);
  \current_line_out_reg[20][6]_0\(6 downto 0) <= \^current_line_out_reg[20][6]_0\(6 downto 0);
  \current_line_out_reg[21][6]_0\(6 downto 0) <= \^current_line_out_reg[21][6]_0\(6 downto 0);
  \current_line_out_reg[22][6]_0\(6 downto 0) <= \^current_line_out_reg[22][6]_0\(6 downto 0);
  \current_line_out_reg[23][6]_0\(6 downto 0) <= \^current_line_out_reg[23][6]_0\(6 downto 0);
  \current_line_out_reg[24][6]_0\(6 downto 0) <= \^current_line_out_reg[24][6]_0\(6 downto 0);
  \current_line_out_reg[25][6]_0\(6 downto 0) <= \^current_line_out_reg[25][6]_0\(6 downto 0);
  \current_line_out_reg[26][6]_0\(6 downto 0) <= \^current_line_out_reg[26][6]_0\(6 downto 0);
  \current_line_out_reg[27][6]_0\(6 downto 0) <= \^current_line_out_reg[27][6]_0\(6 downto 0);
  \current_line_out_reg[28][6]_0\(6 downto 0) <= \^current_line_out_reg[28][6]_0\(6 downto 0);
  \current_line_out_reg[29][6]_0\(6 downto 0) <= \^current_line_out_reg[29][6]_0\(6 downto 0);
  \current_line_out_reg[2][6]_0\(6 downto 0) <= \^current_line_out_reg[2][6]_0\(6 downto 0);
  \current_line_out_reg[30][6]_0\(6 downto 0) <= \^current_line_out_reg[30][6]_0\(6 downto 0);
  \current_line_out_reg[31][6]_0\(6 downto 0) <= \^current_line_out_reg[31][6]_0\(6 downto 0);
  \current_line_out_reg[32][6]_0\(6 downto 0) <= \^current_line_out_reg[32][6]_0\(6 downto 0);
  \current_line_out_reg[33][6]_0\(6 downto 0) <= \^current_line_out_reg[33][6]_0\(6 downto 0);
  \current_line_out_reg[34][6]_0\(6 downto 0) <= \^current_line_out_reg[34][6]_0\(6 downto 0);
  \current_line_out_reg[35][6]_0\(6 downto 0) <= \^current_line_out_reg[35][6]_0\(6 downto 0);
  \current_line_out_reg[36][6]_0\(6 downto 0) <= \^current_line_out_reg[36][6]_0\(6 downto 0);
  \current_line_out_reg[37][6]_0\(6 downto 0) <= \^current_line_out_reg[37][6]_0\(6 downto 0);
  \current_line_out_reg[38][6]_0\(6 downto 0) <= \^current_line_out_reg[38][6]_0\(6 downto 0);
  \current_line_out_reg[3][6]_0\(6 downto 0) <= \^current_line_out_reg[3][6]_0\(6 downto 0);
  \current_line_out_reg[4][6]_0\(6 downto 0) <= \^current_line_out_reg[4][6]_0\(6 downto 0);
  \current_line_out_reg[5][6]_0\(6 downto 0) <= \^current_line_out_reg[5][6]_0\(6 downto 0);
  \current_line_out_reg[6][6]_0\(6 downto 0) <= \^current_line_out_reg[6][6]_0\(6 downto 0);
  \current_line_out_reg[7][6]_0\(6 downto 0) <= \^current_line_out_reg[7][6]_0\(6 downto 0);
  \current_line_out_reg[8][6]_0\(6 downto 0) <= \^current_line_out_reg[8][6]_0\(6 downto 0);
  \current_line_out_reg[9][6]_0\(6 downto 0) <= \^current_line_out_reg[9][6]_0\(6 downto 0);
BRAM_SDP_MACRO_inst: entity work.system_teletext_controller_0_0_unimacro_BRAM_SDP_MACRO
     port map (
      ADDRARDADDR(10 downto 3) => RDADDR(10 downto 3),
      ADDRARDADDR(2 downto 0) => plusOp(2 downto 0),
      D(6 downto 0) => DO(6 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      TELETEXT_CLK => TELETEXT_CLK,
      p_0_in => p_0_in
    );
\current_column[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => RDADDR(9),
      I1 => \current_out_index_reg[4]_0\(3),
      I2 => \current_column[5]_i_2_n_0\,
      I3 => \current_out_index_reg[4]_0\(4),
      I4 => RDADDR(10),
      O => \current_column[5]_i_1_n_0\
    );
\current_column[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => RDADDR(6),
      I1 => \current_out_index_reg[4]_0\(0),
      I2 => \current_out_index_reg[4]_0\(1),
      I3 => RDADDR(7),
      I4 => \current_out_index_reg[4]_0\(2),
      I5 => RDADDR(8),
      O => \current_column[5]_i_2_n_0\
    );
\current_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => plusOp(0),
      Q => current_column(0),
      R => \current_column[5]_i_1_n_0\
    );
\current_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => plusOp(1),
      Q => current_column(1),
      R => \current_column[5]_i_1_n_0\
    );
\current_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => plusOp(2),
      Q => current_column(2),
      R => \current_column[5]_i_1_n_0\
    );
\current_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => RDADDR(3),
      Q => current_column(3),
      R => \current_column[5]_i_1_n_0\
    );
\current_column_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => RDADDR(4),
      Q => current_column(4),
      R => \current_column[5]_i_1_n_0\
    );
\current_column_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => RDADDR(5),
      Q => current_column(5),
      R => \current_column[5]_i_1_n_0\
    );
\current_line_out[11][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(5),
      I3 => current_column(3),
      I4 => current_column(1),
      I5 => current_column(0),
      O => \current_line_out[11][6]_i_1_n_0\
    );
\current_line_out[13][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(1),
      I2 => current_column(5),
      I3 => current_column(3),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \current_line_out[13][6]_i_1_n_0\
    );
\current_line_out[19][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(4),
      I4 => current_column(1),
      I5 => current_column(0),
      O => \current_line_out[19][6]_i_1_n_0\
    );
\current_line_out[35][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(5),
      I4 => current_column(1),
      I5 => current_column(0),
      O => \current_line_out[35][6]_i_1_n_0\
    );
\current_line_out[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(1),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \current_line_out[3][6]_i_1_n_0\
    );
\current_line_out[7][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \current_line_out[7][6]_i_1_n_0\
    );
\current_line_out_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(0),
      Q => \^current_line_out_reg[0][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(1),
      Q => \^current_line_out_reg[0][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(2),
      Q => \^current_line_out_reg[0][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(3),
      Q => \^current_line_out_reg[0][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(4),
      Q => \^current_line_out_reg[0][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(5),
      Q => \^current_line_out_reg[0][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[0]\,
      D => DO(6),
      Q => \^current_line_out_reg[0][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(0),
      Q => \^current_line_out_reg[10][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(1),
      Q => \^current_line_out_reg[10][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(2),
      Q => \^current_line_out_reg[10][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(3),
      Q => \^current_line_out_reg[10][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(4),
      Q => \^current_line_out_reg[10][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(5),
      Q => \^current_line_out_reg[10][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[10]\,
      D => DO(6),
      Q => \^current_line_out_reg[10][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(0),
      Q => \^current_line_out_reg[11][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(1),
      Q => \^current_line_out_reg[11][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(2),
      Q => \^current_line_out_reg[11][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(3),
      Q => \^current_line_out_reg[11][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(4),
      Q => \^current_line_out_reg[11][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(5),
      Q => \^current_line_out_reg[11][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[11][6]_i_1_n_0\,
      D => DO(6),
      Q => \^current_line_out_reg[11][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(0),
      Q => \^current_line_out_reg[12][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(1),
      Q => \^current_line_out_reg[12][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(2),
      Q => \^current_line_out_reg[12][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(3),
      Q => \^current_line_out_reg[12][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(4),
      Q => \^current_line_out_reg[12][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(5),
      Q => \^current_line_out_reg[12][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[12]\,
      D => DO(6),
      Q => \^current_line_out_reg[12][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(0),
      Q => \^current_line_out_reg[13][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(1),
      Q => \^current_line_out_reg[13][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(2),
      Q => \^current_line_out_reg[13][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(3),
      Q => \^current_line_out_reg[13][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(4),
      Q => \^current_line_out_reg[13][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(5),
      Q => \^current_line_out_reg[13][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[13][6]_i_1_n_0\,
      D => DO(6),
      Q => \^current_line_out_reg[13][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(0),
      Q => \^current_line_out_reg[14][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(1),
      Q => \^current_line_out_reg[14][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(2),
      Q => \^current_line_out_reg[14][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(3),
      Q => \^current_line_out_reg[14][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(4),
      Q => \^current_line_out_reg[14][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(5),
      Q => \^current_line_out_reg[14][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[14]\,
      D => DO(6),
      Q => \^current_line_out_reg[14][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(0),
      Q => \^current_line_out_reg[15][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(1),
      Q => \^current_line_out_reg[15][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(2),
      Q => \^current_line_out_reg[15][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(3),
      Q => \^current_line_out_reg[15][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(4),
      Q => \^current_line_out_reg[15][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(5),
      Q => \^current_line_out_reg[15][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[15]\,
      D => DO(6),
      Q => \^current_line_out_reg[15][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(0),
      Q => \^current_line_out_reg[16][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(1),
      Q => \^current_line_out_reg[16][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(2),
      Q => \^current_line_out_reg[16][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(3),
      Q => \^current_line_out_reg[16][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(4),
      Q => \^current_line_out_reg[16][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(5),
      Q => \^current_line_out_reg[16][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[16]\,
      D => DO(6),
      Q => \^current_line_out_reg[16][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[17][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(0),
      Q => \^current_line_out_reg[17][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(1),
      Q => \^current_line_out_reg[17][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(2),
      Q => \^current_line_out_reg[17][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(3),
      Q => \^current_line_out_reg[17][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(4),
      Q => \^current_line_out_reg[17][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(5),
      Q => \^current_line_out_reg[17][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[17]\,
      D => DO(6),
      Q => \^current_line_out_reg[17][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(0),
      Q => \^current_line_out_reg[18][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(1),
      Q => \^current_line_out_reg[18][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(2),
      Q => \^current_line_out_reg[18][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(3),
      Q => \^current_line_out_reg[18][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(4),
      Q => \^current_line_out_reg[18][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(5),
      Q => \^current_line_out_reg[18][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[18]\,
      D => DO(6),
      Q => \^current_line_out_reg[18][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(0),
      Q => \^current_line_out_reg[19][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(1),
      Q => \^current_line_out_reg[19][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(2),
      Q => \^current_line_out_reg[19][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(3),
      Q => \^current_line_out_reg[19][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(4),
      Q => \^current_line_out_reg[19][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(5),
      Q => \^current_line_out_reg[19][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[19][6]_i_1_n_0\,
      D => DO(6),
      Q => \^current_line_out_reg[19][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(0),
      Q => \^current_line_out_reg[1][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(1),
      Q => \^current_line_out_reg[1][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(2),
      Q => \^current_line_out_reg[1][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(3),
      Q => \^current_line_out_reg[1][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(4),
      Q => \^current_line_out_reg[1][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(5),
      Q => \^current_line_out_reg[1][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[1]\,
      D => DO(6),
      Q => \^current_line_out_reg[1][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[20][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(0),
      Q => \^current_line_out_reg[20][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[20][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(1),
      Q => \^current_line_out_reg[20][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[20][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(2),
      Q => \^current_line_out_reg[20][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[20][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(3),
      Q => \^current_line_out_reg[20][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[20][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(4),
      Q => \^current_line_out_reg[20][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[20][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(5),
      Q => \^current_line_out_reg[20][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[20][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[20]\,
      D => DO(6),
      Q => \^current_line_out_reg[20][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[21][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(0),
      Q => \^current_line_out_reg[21][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[21][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(1),
      Q => \^current_line_out_reg[21][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[21][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(2),
      Q => \^current_line_out_reg[21][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[21][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(3),
      Q => \^current_line_out_reg[21][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[21][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(4),
      Q => \^current_line_out_reg[21][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[21][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(5),
      Q => \^current_line_out_reg[21][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[21][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[21]\,
      D => DO(6),
      Q => \^current_line_out_reg[21][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[22][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(0),
      Q => \^current_line_out_reg[22][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[22][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(1),
      Q => \^current_line_out_reg[22][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[22][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(2),
      Q => \^current_line_out_reg[22][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[22][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(3),
      Q => \^current_line_out_reg[22][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[22][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(4),
      Q => \^current_line_out_reg[22][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[22][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(5),
      Q => \^current_line_out_reg[22][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[22][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[22]\,
      D => DO(6),
      Q => \^current_line_out_reg[22][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[23][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(0),
      Q => \^current_line_out_reg[23][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[23][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(1),
      Q => \^current_line_out_reg[23][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[23][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(2),
      Q => \^current_line_out_reg[23][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[23][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(3),
      Q => \^current_line_out_reg[23][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[23][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(4),
      Q => \^current_line_out_reg[23][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[23][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(5),
      Q => \^current_line_out_reg[23][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[23][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[23]\,
      D => DO(6),
      Q => \^current_line_out_reg[23][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[24][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(0),
      Q => \^current_line_out_reg[24][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[24][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(1),
      Q => \^current_line_out_reg[24][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[24][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(2),
      Q => \^current_line_out_reg[24][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[24][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(3),
      Q => \^current_line_out_reg[24][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[24][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(4),
      Q => \^current_line_out_reg[24][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[24][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(5),
      Q => \^current_line_out_reg[24][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[24][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[24]\,
      D => DO(6),
      Q => \^current_line_out_reg[24][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[25][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(0),
      Q => \^current_line_out_reg[25][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[25][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(1),
      Q => \^current_line_out_reg[25][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[25][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(2),
      Q => \^current_line_out_reg[25][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[25][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(3),
      Q => \^current_line_out_reg[25][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[25][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(4),
      Q => \^current_line_out_reg[25][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[25][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(5),
      Q => \^current_line_out_reg[25][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[25][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[25]\,
      D => DO(6),
      Q => \^current_line_out_reg[25][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[26][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(0),
      Q => \^current_line_out_reg[26][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[26][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(1),
      Q => \^current_line_out_reg[26][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[26][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(2),
      Q => \^current_line_out_reg[26][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[26][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(3),
      Q => \^current_line_out_reg[26][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[26][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(4),
      Q => \^current_line_out_reg[26][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[26][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(5),
      Q => \^current_line_out_reg[26][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[26][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[26]\,
      D => DO(6),
      Q => \^current_line_out_reg[26][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[27][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(0),
      Q => \^current_line_out_reg[27][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[27][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(1),
      Q => \^current_line_out_reg[27][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[27][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(2),
      Q => \^current_line_out_reg[27][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[27][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(3),
      Q => \^current_line_out_reg[27][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[27][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(4),
      Q => \^current_line_out_reg[27][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[27][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(5),
      Q => \^current_line_out_reg[27][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[27][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[27]\,
      D => DO(6),
      Q => \^current_line_out_reg[27][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[28][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(0),
      Q => \^current_line_out_reg[28][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[28][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(1),
      Q => \^current_line_out_reg[28][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[28][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(2),
      Q => \^current_line_out_reg[28][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[28][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(3),
      Q => \^current_line_out_reg[28][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[28][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(4),
      Q => \^current_line_out_reg[28][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[28][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(5),
      Q => \^current_line_out_reg[28][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[28][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[28]\,
      D => DO(6),
      Q => \^current_line_out_reg[28][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[29][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(0),
      Q => \^current_line_out_reg[29][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[29][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(1),
      Q => \^current_line_out_reg[29][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[29][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(2),
      Q => \^current_line_out_reg[29][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[29][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(3),
      Q => \^current_line_out_reg[29][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[29][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(4),
      Q => \^current_line_out_reg[29][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[29][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(5),
      Q => \^current_line_out_reg[29][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[29][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[29]\,
      D => DO(6),
      Q => \^current_line_out_reg[29][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(0),
      Q => \^current_line_out_reg[2][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(1),
      Q => \^current_line_out_reg[2][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(2),
      Q => \^current_line_out_reg[2][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(3),
      Q => \^current_line_out_reg[2][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(4),
      Q => \^current_line_out_reg[2][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(5),
      Q => \^current_line_out_reg[2][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[2]\,
      D => DO(6),
      Q => \^current_line_out_reg[2][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[30][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(0),
      Q => \^current_line_out_reg[30][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[30][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(1),
      Q => \^current_line_out_reg[30][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[30][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(2),
      Q => \^current_line_out_reg[30][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[30][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(3),
      Q => \^current_line_out_reg[30][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[30][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(4),
      Q => \^current_line_out_reg[30][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[30][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(5),
      Q => \^current_line_out_reg[30][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[30][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[30]\,
      D => DO(6),
      Q => \^current_line_out_reg[30][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[31][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(0),
      Q => \^current_line_out_reg[31][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[31][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(1),
      Q => \^current_line_out_reg[31][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[31][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(2),
      Q => \^current_line_out_reg[31][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[31][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(3),
      Q => \^current_line_out_reg[31][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[31][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(4),
      Q => \^current_line_out_reg[31][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[31][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(5),
      Q => \^current_line_out_reg[31][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[31][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[31]\,
      D => DO(6),
      Q => \^current_line_out_reg[31][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[32][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(0),
      Q => \^current_line_out_reg[32][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[32][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(1),
      Q => \^current_line_out_reg[32][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[32][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(2),
      Q => \^current_line_out_reg[32][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[32][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(3),
      Q => \^current_line_out_reg[32][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[32][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(4),
      Q => \^current_line_out_reg[32][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[32][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(5),
      Q => \^current_line_out_reg[32][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[32][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[32]\,
      D => DO(6),
      Q => \^current_line_out_reg[32][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[33][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(0),
      Q => \^current_line_out_reg[33][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[33][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(1),
      Q => \^current_line_out_reg[33][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[33][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(2),
      Q => \^current_line_out_reg[33][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[33][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(3),
      Q => \^current_line_out_reg[33][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[33][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(4),
      Q => \^current_line_out_reg[33][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[33][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(5),
      Q => \^current_line_out_reg[33][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[33][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[33]\,
      D => DO(6),
      Q => \^current_line_out_reg[33][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[34][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(0),
      Q => \^current_line_out_reg[34][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[34][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(1),
      Q => \^current_line_out_reg[34][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[34][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(2),
      Q => \^current_line_out_reg[34][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[34][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(3),
      Q => \^current_line_out_reg[34][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[34][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(4),
      Q => \^current_line_out_reg[34][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[34][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(5),
      Q => \^current_line_out_reg[34][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[34][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[34]\,
      D => DO(6),
      Q => \^current_line_out_reg[34][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[35][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(0),
      Q => \^current_line_out_reg[35][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[35][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(1),
      Q => \^current_line_out_reg[35][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[35][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(2),
      Q => \^current_line_out_reg[35][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[35][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(3),
      Q => \^current_line_out_reg[35][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[35][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(4),
      Q => \^current_line_out_reg[35][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[35][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(5),
      Q => \^current_line_out_reg[35][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[35][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[35][6]_i_1_n_0\,
      D => DO(6),
      Q => \^current_line_out_reg[35][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[36][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(0),
      Q => \^current_line_out_reg[36][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[36][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(1),
      Q => \^current_line_out_reg[36][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[36][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(2),
      Q => \^current_line_out_reg[36][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[36][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(3),
      Q => \^current_line_out_reg[36][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[36][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(4),
      Q => \^current_line_out_reg[36][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[36][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(5),
      Q => \^current_line_out_reg[36][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[36][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[36]\,
      D => DO(6),
      Q => \^current_line_out_reg[36][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[37][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(0),
      Q => \^current_line_out_reg[37][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[37][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(1),
      Q => \^current_line_out_reg[37][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[37][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(2),
      Q => \^current_line_out_reg[37][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[37][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(3),
      Q => \^current_line_out_reg[37][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[37][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(4),
      Q => \^current_line_out_reg[37][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[37][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(5),
      Q => \^current_line_out_reg[37][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[37][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[37]\,
      D => DO(6),
      Q => \^current_line_out_reg[37][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[38][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(0),
      Q => \^current_line_out_reg[38][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[38][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(1),
      Q => \^current_line_out_reg[38][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[38][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(2),
      Q => \^current_line_out_reg[38][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[38][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(3),
      Q => \^current_line_out_reg[38][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[38][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(4),
      Q => \^current_line_out_reg[38][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[38][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(5),
      Q => \^current_line_out_reg[38][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[38][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[38]\,
      D => DO(6),
      Q => \^current_line_out_reg[38][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[39][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(0),
      Q => \^q\(0),
      R => '0'
    );
\current_line_out_reg[39][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(1),
      Q => \^q\(1),
      R => '0'
    );
\current_line_out_reg[39][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(2),
      Q => \^q\(2),
      R => '0'
    );
\current_line_out_reg[39][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(3),
      Q => \^q\(3),
      R => '0'
    );
\current_line_out_reg[39][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(4),
      Q => \^q\(4),
      R => '0'
    );
\current_line_out_reg[39][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(5),
      Q => \^q\(5),
      R => '0'
    );
\current_line_out_reg[39][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[39]\,
      D => DO(6),
      Q => \^q\(6),
      R => '0'
    );
\current_line_out_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(0),
      Q => \^current_line_out_reg[3][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(1),
      Q => \^current_line_out_reg[3][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(2),
      Q => \^current_line_out_reg[3][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(3),
      Q => \^current_line_out_reg[3][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(4),
      Q => \^current_line_out_reg[3][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(5),
      Q => \^current_line_out_reg[3][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[3][6]_i_1_n_0\,
      D => DO(6),
      Q => \^current_line_out_reg[3][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(0),
      Q => \^current_line_out_reg[4][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(1),
      Q => \^current_line_out_reg[4][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(2),
      Q => \^current_line_out_reg[4][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(3),
      Q => \^current_line_out_reg[4][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(4),
      Q => \^current_line_out_reg[4][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(5),
      Q => \^current_line_out_reg[4][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[4]\,
      D => DO(6),
      Q => \^current_line_out_reg[4][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(0),
      Q => \^current_line_out_reg[5][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(1),
      Q => \^current_line_out_reg[5][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(2),
      Q => \^current_line_out_reg[5][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(3),
      Q => \^current_line_out_reg[5][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(4),
      Q => \^current_line_out_reg[5][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(5),
      Q => \^current_line_out_reg[5][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[5]\,
      D => DO(6),
      Q => \^current_line_out_reg[5][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(0),
      Q => \^current_line_out_reg[6][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(1),
      Q => \^current_line_out_reg[6][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(2),
      Q => \^current_line_out_reg[6][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(3),
      Q => \^current_line_out_reg[6][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(4),
      Q => \^current_line_out_reg[6][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(5),
      Q => \^current_line_out_reg[6][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[6]\,
      D => DO(6),
      Q => \^current_line_out_reg[6][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(0),
      Q => \^current_line_out_reg[7][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(1),
      Q => \^current_line_out_reg[7][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(2),
      Q => \^current_line_out_reg[7][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(3),
      Q => \^current_line_out_reg[7][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(4),
      Q => \^current_line_out_reg[7][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(5),
      Q => \^current_line_out_reg[7][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \current_line_out[7][6]_i_1_n_0\,
      D => DO(6),
      Q => \^current_line_out_reg[7][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(0),
      Q => \^current_line_out_reg[8][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(1),
      Q => \^current_line_out_reg[8][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(2),
      Q => \^current_line_out_reg[8][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(3),
      Q => \^current_line_out_reg[8][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(4),
      Q => \^current_line_out_reg[8][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(5),
      Q => \^current_line_out_reg[8][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[8]\,
      D => DO(6),
      Q => \^current_line_out_reg[8][6]_0\(6),
      R => '0'
    );
\current_line_out_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(0),
      Q => \^current_line_out_reg[9][6]_0\(0),
      R => '0'
    );
\current_line_out_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(1),
      Q => \^current_line_out_reg[9][6]_0\(1),
      R => '0'
    );
\current_line_out_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(2),
      Q => \^current_line_out_reg[9][6]_0\(2),
      R => '0'
    );
\current_line_out_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(3),
      Q => \^current_line_out_reg[9][6]_0\(3),
      R => '0'
    );
\current_line_out_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(4),
      Q => \^current_line_out_reg[9][6]_0\(4),
      R => '0'
    );
\current_line_out_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(5),
      Q => \^current_line_out_reg[9][6]_0\(5),
      R => '0'
    );
\current_line_out_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => \next_line_out_reg_n_0_[9]\,
      D => DO(6),
      Q => \^current_line_out_reg[9][6]_0\(6),
      R => '0'
    );
\current_out_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_out_index_reg[4]_0\(0),
      Q => RDADDR(6),
      R => '0'
    );
\current_out_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_out_index_reg[4]_0\(1),
      Q => RDADDR(7),
      R => '0'
    );
\current_out_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_out_index_reg[4]_0\(2),
      Q => RDADDR(8),
      R => '0'
    );
\current_out_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_out_index_reg[4]_0\(3),
      Q => RDADDR(9),
      R => '0'
    );
\current_out_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => '1',
      D => \current_out_index_reg[4]_0\(4),
      Q => RDADDR(10),
      R => '0'
    );
\current_state[111]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[8][6]_0\(2),
      I1 => \^current_line_out_reg[8][6]_0\(3),
      I2 => \^current_line_out_reg[8][6]_0\(1),
      I3 => \current_state[111]_i_3_n_0\,
      O => teletext_page_header_data(0)
    );
\current_state[111]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[8][6]_0\(5),
      I1 => \^current_line_out_reg[8][6]_0\(4),
      I2 => \^current_line_out_reg[8][6]_0\(0),
      I3 => \^current_line_out_reg[8][6]_0\(6),
      O => \current_state[111]_i_3_n_0\
    );
\current_state[119]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[9][6]_0\(2),
      I1 => \^current_line_out_reg[9][6]_0\(3),
      I2 => \^current_line_out_reg[9][6]_0\(1),
      I3 => \current_state[119]_i_3_n_0\,
      O => teletext_page_header_data(1)
    );
\current_state[119]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[9][6]_0\(5),
      I1 => \^current_line_out_reg[9][6]_0\(4),
      I2 => \^current_line_out_reg[9][6]_0\(0),
      I3 => \^current_line_out_reg[9][6]_0\(6),
      O => \current_state[119]_i_3_n_0\
    );
\current_state[127]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[10][6]_0\(2),
      I1 => \^current_line_out_reg[10][6]_0\(3),
      I2 => \^current_line_out_reg[10][6]_0\(1),
      I3 => \current_state[127]_i_3_n_0\,
      O => teletext_page_header_data(2)
    );
\current_state[127]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[10][6]_0\(5),
      I1 => \^current_line_out_reg[10][6]_0\(4),
      I2 => \^current_line_out_reg[10][6]_0\(0),
      I3 => \^current_line_out_reg[10][6]_0\(6),
      O => \current_state[127]_i_3_n_0\
    );
\current_state[135]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[11][6]_0\(2),
      I1 => \^current_line_out_reg[11][6]_0\(3),
      I2 => \^current_line_out_reg[11][6]_0\(1),
      I3 => \current_state[135]_i_3_n_0\,
      O => teletext_page_header_data(3)
    );
\current_state[135]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[11][6]_0\(5),
      I1 => \^current_line_out_reg[11][6]_0\(4),
      I2 => \^current_line_out_reg[11][6]_0\(0),
      I3 => \^current_line_out_reg[11][6]_0\(6),
      O => \current_state[135]_i_3_n_0\
    );
\current_state[143]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[12][6]_0\(2),
      I1 => \^current_line_out_reg[12][6]_0\(3),
      I2 => \^current_line_out_reg[12][6]_0\(1),
      I3 => \current_state[143]_i_3_n_0\,
      O => teletext_page_header_data(4)
    );
\current_state[143]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[12][6]_0\(5),
      I1 => \^current_line_out_reg[12][6]_0\(4),
      I2 => \^current_line_out_reg[12][6]_0\(0),
      I3 => \^current_line_out_reg[12][6]_0\(6),
      O => \current_state[143]_i_3_n_0\
    );
\current_state[151]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[13][6]_0\(2),
      I1 => \^current_line_out_reg[13][6]_0\(3),
      I2 => \^current_line_out_reg[13][6]_0\(1),
      I3 => \current_state[151]_i_3_n_0\,
      O => teletext_page_header_data(5)
    );
\current_state[151]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[13][6]_0\(5),
      I1 => \^current_line_out_reg[13][6]_0\(4),
      I2 => \^current_line_out_reg[13][6]_0\(0),
      I3 => \^current_line_out_reg[13][6]_0\(6),
      O => \current_state[151]_i_3_n_0\
    );
\current_state[159]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[14][6]_0\(2),
      I1 => \^current_line_out_reg[14][6]_0\(3),
      I2 => \^current_line_out_reg[14][6]_0\(1),
      I3 => \current_state[159]_i_3_n_0\,
      O => teletext_page_header_data(6)
    );
\current_state[159]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[14][6]_0\(5),
      I1 => \^current_line_out_reg[14][6]_0\(4),
      I2 => \^current_line_out_reg[14][6]_0\(0),
      I3 => \^current_line_out_reg[14][6]_0\(6),
      O => \current_state[159]_i_3_n_0\
    );
\current_state[167]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[15][6]_0\(2),
      I1 => \^current_line_out_reg[15][6]_0\(3),
      I2 => \^current_line_out_reg[15][6]_0\(1),
      I3 => \current_state[167]_i_3_n_0\,
      O => teletext_page_header_data(7)
    );
\current_state[167]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[15][6]_0\(5),
      I1 => \^current_line_out_reg[15][6]_0\(4),
      I2 => \^current_line_out_reg[15][6]_0\(0),
      I3 => \^current_line_out_reg[15][6]_0\(6),
      O => \current_state[167]_i_3_n_0\
    );
\current_state[175]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[16][6]_0\(2),
      I1 => \^current_line_out_reg[16][6]_0\(3),
      I2 => \^current_line_out_reg[16][6]_0\(1),
      I3 => \current_state[175]_i_3_n_0\,
      O => teletext_page_header_data(8)
    );
\current_state[175]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[16][6]_0\(5),
      I1 => \^current_line_out_reg[16][6]_0\(4),
      I2 => \^current_line_out_reg[16][6]_0\(0),
      I3 => \^current_line_out_reg[16][6]_0\(6),
      O => \current_state[175]_i_3_n_0\
    );
\current_state[183]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[17][6]_0\(2),
      I1 => \^current_line_out_reg[17][6]_0\(3),
      I2 => \^current_line_out_reg[17][6]_0\(1),
      I3 => \current_state[183]_i_3_n_0\,
      O => teletext_page_header_data(9)
    );
\current_state[183]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[17][6]_0\(5),
      I1 => \^current_line_out_reg[17][6]_0\(4),
      I2 => \^current_line_out_reg[17][6]_0\(0),
      I3 => \^current_line_out_reg[17][6]_0\(6),
      O => \current_state[183]_i_3_n_0\
    );
\current_state[191]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[18][6]_0\(2),
      I1 => \^current_line_out_reg[18][6]_0\(3),
      I2 => \^current_line_out_reg[18][6]_0\(1),
      I3 => \current_state[191]_i_3_n_0\,
      O => teletext_page_header_data(10)
    );
\current_state[191]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[18][6]_0\(5),
      I1 => \^current_line_out_reg[18][6]_0\(4),
      I2 => \^current_line_out_reg[18][6]_0\(0),
      I3 => \^current_line_out_reg[18][6]_0\(6),
      O => \current_state[191]_i_3_n_0\
    );
\current_state[199]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[19][6]_0\(2),
      I1 => \^current_line_out_reg[19][6]_0\(3),
      I2 => \^current_line_out_reg[19][6]_0\(1),
      I3 => \current_state[199]_i_3_n_0\,
      O => teletext_page_header_data(11)
    );
\current_state[199]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[19][6]_0\(5),
      I1 => \^current_line_out_reg[19][6]_0\(4),
      I2 => \^current_line_out_reg[19][6]_0\(0),
      I3 => \^current_line_out_reg[19][6]_0\(6),
      O => \current_state[199]_i_3_n_0\
    );
\current_state[207]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[20][6]_0\(2),
      I1 => \^current_line_out_reg[20][6]_0\(3),
      I2 => \^current_line_out_reg[20][6]_0\(1),
      I3 => \current_state[207]_i_3_n_0\,
      O => teletext_page_header_data(12)
    );
\current_state[207]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[20][6]_0\(5),
      I1 => \^current_line_out_reg[20][6]_0\(4),
      I2 => \^current_line_out_reg[20][6]_0\(0),
      I3 => \^current_line_out_reg[20][6]_0\(6),
      O => \current_state[207]_i_3_n_0\
    );
\current_state[215]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[21][6]_0\(2),
      I1 => \^current_line_out_reg[21][6]_0\(3),
      I2 => \^current_line_out_reg[21][6]_0\(1),
      I3 => \current_state[215]_i_3_n_0\,
      O => teletext_page_header_data(13)
    );
\current_state[215]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[21][6]_0\(5),
      I1 => \^current_line_out_reg[21][6]_0\(4),
      I2 => \^current_line_out_reg[21][6]_0\(0),
      I3 => \^current_line_out_reg[21][6]_0\(6),
      O => \current_state[215]_i_3_n_0\
    );
\current_state[223]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[22][6]_0\(2),
      I1 => \^current_line_out_reg[22][6]_0\(3),
      I2 => \^current_line_out_reg[22][6]_0\(1),
      I3 => \current_state[223]_i_3_n_0\,
      O => teletext_page_header_data(14)
    );
\current_state[223]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[22][6]_0\(5),
      I1 => \^current_line_out_reg[22][6]_0\(4),
      I2 => \^current_line_out_reg[22][6]_0\(0),
      I3 => \^current_line_out_reg[22][6]_0\(6),
      O => \current_state[223]_i_3_n_0\
    );
\current_state[231]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[23][6]_0\(2),
      I1 => \^current_line_out_reg[23][6]_0\(3),
      I2 => \^current_line_out_reg[23][6]_0\(1),
      I3 => \current_state[231]_i_4_n_0\,
      O => teletext_page_header_data(15)
    );
\current_state[231]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[23][6]_0\(5),
      I1 => \^current_line_out_reg[23][6]_0\(4),
      I2 => \^current_line_out_reg[23][6]_0\(0),
      I3 => \^current_line_out_reg[23][6]_0\(6),
      O => \current_state[231]_i_4_n_0\
    );
\current_state[239]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[24][6]_0\(2),
      I1 => \^current_line_out_reg[24][6]_0\(3),
      I2 => \^current_line_out_reg[24][6]_0\(1),
      I3 => \current_state[239]_i_3_n_0\,
      O => teletext_page_header_data(16)
    );
\current_state[239]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[24][6]_0\(5),
      I1 => \^current_line_out_reg[24][6]_0\(4),
      I2 => \^current_line_out_reg[24][6]_0\(0),
      I3 => \^current_line_out_reg[24][6]_0\(6),
      O => \current_state[239]_i_3_n_0\
    );
\current_state[247]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[25][6]_0\(2),
      I1 => \^current_line_out_reg[25][6]_0\(3),
      I2 => \^current_line_out_reg[25][6]_0\(1),
      I3 => \current_state[247]_i_3_n_0\,
      O => teletext_page_header_data(17)
    );
\current_state[247]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[25][6]_0\(5),
      I1 => \^current_line_out_reg[25][6]_0\(4),
      I2 => \^current_line_out_reg[25][6]_0\(0),
      I3 => \^current_line_out_reg[25][6]_0\(6),
      O => \current_state[247]_i_3_n_0\
    );
\current_state[255]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[26][6]_0\(2),
      I1 => \^current_line_out_reg[26][6]_0\(3),
      I2 => \^current_line_out_reg[26][6]_0\(1),
      I3 => \current_state[255]_i_3_n_0\,
      O => teletext_page_header_data(18)
    );
\current_state[255]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[26][6]_0\(5),
      I1 => \^current_line_out_reg[26][6]_0\(4),
      I2 => \^current_line_out_reg[26][6]_0\(0),
      I3 => \^current_line_out_reg[26][6]_0\(6),
      O => \current_state[255]_i_3_n_0\
    );
\current_state[263]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[27][6]_0\(2),
      I1 => \^current_line_out_reg[27][6]_0\(3),
      I2 => \^current_line_out_reg[27][6]_0\(1),
      I3 => \current_state[263]_i_3_n_0\,
      O => teletext_page_header_data(19)
    );
\current_state[263]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[27][6]_0\(5),
      I1 => \^current_line_out_reg[27][6]_0\(4),
      I2 => \^current_line_out_reg[27][6]_0\(0),
      I3 => \^current_line_out_reg[27][6]_0\(6),
      O => \current_state[263]_i_3_n_0\
    );
\current_state[271]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[28][6]_0\(2),
      I1 => \^current_line_out_reg[28][6]_0\(3),
      I2 => \^current_line_out_reg[28][6]_0\(1),
      I3 => \current_state[271]_i_3_n_0\,
      O => teletext_page_header_data(20)
    );
\current_state[271]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[28][6]_0\(5),
      I1 => \^current_line_out_reg[28][6]_0\(4),
      I2 => \^current_line_out_reg[28][6]_0\(0),
      I3 => \^current_line_out_reg[28][6]_0\(6),
      O => \current_state[271]_i_3_n_0\
    );
\current_state[279]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[29][6]_0\(2),
      I1 => \^current_line_out_reg[29][6]_0\(3),
      I2 => \^current_line_out_reg[29][6]_0\(1),
      I3 => \current_state[279]_i_3_n_0\,
      O => teletext_page_header_data(21)
    );
\current_state[279]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[29][6]_0\(5),
      I1 => \^current_line_out_reg[29][6]_0\(4),
      I2 => \^current_line_out_reg[29][6]_0\(0),
      I3 => \^current_line_out_reg[29][6]_0\(6),
      O => \current_state[279]_i_3_n_0\
    );
\current_state[287]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[30][6]_0\(2),
      I1 => \^current_line_out_reg[30][6]_0\(3),
      I2 => \^current_line_out_reg[30][6]_0\(1),
      I3 => \current_state[287]_i_3_n_0\,
      O => teletext_page_header_data(22)
    );
\current_state[287]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[30][6]_0\(5),
      I1 => \^current_line_out_reg[30][6]_0\(4),
      I2 => \^current_line_out_reg[30][6]_0\(0),
      I3 => \^current_line_out_reg[30][6]_0\(6),
      O => \current_state[287]_i_3_n_0\
    );
\current_state[295]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[31][6]_0\(2),
      I1 => \^current_line_out_reg[31][6]_0\(3),
      I2 => \^current_line_out_reg[31][6]_0\(1),
      I3 => \current_state[295]_i_3_n_0\,
      O => teletext_page_header_data(23)
    );
\current_state[295]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[31][6]_0\(5),
      I1 => \^current_line_out_reg[31][6]_0\(4),
      I2 => \^current_line_out_reg[31][6]_0\(0),
      I3 => \^current_line_out_reg[31][6]_0\(6),
      O => \current_state[295]_i_3_n_0\
    );
\current_state[303]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[32][6]_0\(2),
      I1 => \^current_line_out_reg[32][6]_0\(3),
      I2 => \^current_line_out_reg[32][6]_0\(1),
      I3 => \current_state[303]_i_3_n_0\,
      O => teletext_page_header_data(24)
    );
\current_state[303]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[32][6]_0\(5),
      I1 => \^current_line_out_reg[32][6]_0\(4),
      I2 => \^current_line_out_reg[32][6]_0\(0),
      I3 => \^current_line_out_reg[32][6]_0\(6),
      O => \current_state[303]_i_3_n_0\
    );
\current_state[311]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[33][6]_0\(2),
      I1 => \^current_line_out_reg[33][6]_0\(3),
      I2 => \^current_line_out_reg[33][6]_0\(1),
      I3 => \current_state[311]_i_3_n_0\,
      O => teletext_page_header_data(25)
    );
\current_state[311]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[33][6]_0\(5),
      I1 => \^current_line_out_reg[33][6]_0\(4),
      I2 => \^current_line_out_reg[33][6]_0\(0),
      I3 => \^current_line_out_reg[33][6]_0\(6),
      O => \current_state[311]_i_3_n_0\
    );
\current_state[319]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[34][6]_0\(2),
      I1 => \^current_line_out_reg[34][6]_0\(3),
      I2 => \^current_line_out_reg[34][6]_0\(1),
      I3 => \current_state[319]_i_3_n_0\,
      O => teletext_page_header_data(26)
    );
\current_state[319]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[34][6]_0\(5),
      I1 => \^current_line_out_reg[34][6]_0\(4),
      I2 => \^current_line_out_reg[34][6]_0\(0),
      I3 => \^current_line_out_reg[34][6]_0\(6),
      O => \current_state[319]_i_3_n_0\
    );
\current_state[327]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[35][6]_0\(2),
      I1 => \^current_line_out_reg[35][6]_0\(3),
      I2 => \^current_line_out_reg[35][6]_0\(1),
      I3 => \current_state[327]_i_3_n_0\,
      O => teletext_page_header_data(27)
    );
\current_state[327]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[35][6]_0\(5),
      I1 => \^current_line_out_reg[35][6]_0\(4),
      I2 => \^current_line_out_reg[35][6]_0\(0),
      I3 => \^current_line_out_reg[35][6]_0\(6),
      O => \current_state[327]_i_3_n_0\
    );
\current_state[335]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[36][6]_0\(2),
      I1 => \^current_line_out_reg[36][6]_0\(3),
      I2 => \^current_line_out_reg[36][6]_0\(1),
      I3 => \current_state[335]_i_3_n_0\,
      O => teletext_page_header_data(28)
    );
\current_state[335]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[36][6]_0\(5),
      I1 => \^current_line_out_reg[36][6]_0\(4),
      I2 => \^current_line_out_reg[36][6]_0\(0),
      I3 => \^current_line_out_reg[36][6]_0\(6),
      O => \current_state[335]_i_3_n_0\
    );
\current_state[343]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[37][6]_0\(2),
      I1 => \^current_line_out_reg[37][6]_0\(3),
      I2 => \^current_line_out_reg[37][6]_0\(1),
      I3 => \current_state[343]_i_3_n_0\,
      O => teletext_page_header_data(29)
    );
\current_state[343]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[37][6]_0\(5),
      I1 => \^current_line_out_reg[37][6]_0\(4),
      I2 => \^current_line_out_reg[37][6]_0\(0),
      I3 => \^current_line_out_reg[37][6]_0\(6),
      O => \current_state[343]_i_3_n_0\
    );
\current_state[351]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[38][6]_0\(2),
      I1 => \^current_line_out_reg[38][6]_0\(3),
      I2 => \^current_line_out_reg[38][6]_0\(1),
      I3 => \current_state[351]_i_4_n_0\,
      O => teletext_page_header_data(30)
    );
\current_state[351]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[38][6]_0\(5),
      I1 => \^current_line_out_reg[38][6]_0\(4),
      I2 => \^current_line_out_reg[38][6]_0\(0),
      I3 => \^current_line_out_reg[38][6]_0\(6),
      O => \current_state[351]_i_4_n_0\
    );
\current_state[359]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96690000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \current_state[359]_i_2_n_0\,
      I4 => \current_state_reg[359]\,
      O => D(0)
    );
\current_state[359]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(6),
      O => \current_state[359]_i_2_n_0\
    );
\next_line_out_reg[0]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(0),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[0]\
    );
\next_line_out_reg[10]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(5),
      I3 => current_column(0),
      I4 => current_column(1),
      I5 => current_column(3),
      O => \next_line_out_reg_n_0_[10]\
    );
\next_line_out_reg[12]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(1),
      I2 => current_column(5),
      I3 => current_column(0),
      I4 => current_column(2),
      I5 => current_column(3),
      O => \next_line_out_reg_n_0_[12]\
    );
\next_line_out_reg[14]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(0),
      I2 => current_column(5),
      I3 => current_column(3),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[14]\
    );
\next_line_out_reg[15]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[15]\
    );
\next_line_out_reg[16]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(4),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[16]\
    );
\next_line_out_reg[17]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(1),
      I4 => current_column(0),
      I5 => current_column(4),
      O => \next_line_out_reg_n_0_[17]\
    );
\next_line_out_reg[18]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(0),
      I4 => current_column(1),
      I5 => current_column(4),
      O => \next_line_out_reg_n_0_[18]\
    );
\next_line_out_reg[1]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(0),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[1]\
    );
\next_line_out_reg[20]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(1),
      I2 => current_column(3),
      I3 => current_column(0),
      I4 => current_column(2),
      I5 => current_column(4),
      O => \next_line_out_reg_n_0_[20]\
    );
\next_line_out_reg[21]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(1),
      I2 => current_column(3),
      I3 => current_column(4),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[21]\
    );
\next_line_out_reg[22]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(0),
      I2 => current_column(3),
      I3 => current_column(4),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[22]\
    );
\next_line_out_reg[23]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(4),
      I2 => current_column(3),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[23]\
    );
\next_line_out_reg[24]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(1),
      I2 => current_column(2),
      I3 => current_column(0),
      I4 => current_column(3),
      I5 => current_column(4),
      O => \next_line_out_reg_n_0_[24]\
    );
\next_line_out_reg[25]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(1),
      I2 => current_column(2),
      I3 => current_column(4),
      I4 => current_column(0),
      I5 => current_column(3),
      O => \next_line_out_reg_n_0_[25]\
    );
\next_line_out_reg[26]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(0),
      I2 => current_column(2),
      I3 => current_column(4),
      I4 => current_column(1),
      I5 => current_column(3),
      O => \next_line_out_reg_n_0_[26]\
    );
\next_line_out_reg[27]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(4),
      I2 => current_column(2),
      I3 => current_column(3),
      I4 => current_column(1),
      I5 => current_column(0),
      O => \next_line_out_reg_n_0_[27]\
    );
\next_line_out_reg[28]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(0),
      I2 => current_column(1),
      I3 => current_column(4),
      I4 => current_column(2),
      I5 => current_column(3),
      O => \next_line_out_reg_n_0_[28]\
    );
\next_line_out_reg[29]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(4),
      I2 => current_column(1),
      I3 => current_column(3),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[29]\
    );
\next_line_out_reg[2]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(1),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[2]\
    );
\next_line_out_reg[30]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(4),
      I2 => current_column(0),
      I3 => current_column(3),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[30]\
    );
\next_line_out_reg[31]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(3),
      I2 => current_column(4),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[31]\
    );
\next_line_out_reg[32]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(5),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[32]\
    );
\next_line_out_reg[33]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(1),
      I4 => current_column(0),
      I5 => current_column(5),
      O => \next_line_out_reg_n_0_[33]\
    );
\next_line_out_reg[34]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(3),
      I3 => current_column(0),
      I4 => current_column(1),
      I5 => current_column(5),
      O => \next_line_out_reg_n_0_[34]\
    );
\next_line_out_reg[36]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(1),
      I2 => current_column(3),
      I3 => current_column(0),
      I4 => current_column(2),
      I5 => current_column(5),
      O => \next_line_out_reg_n_0_[36]\
    );
\next_line_out_reg[37]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(1),
      I2 => current_column(3),
      I3 => current_column(5),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[37]\
    );
\next_line_out_reg[38]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(0),
      I2 => current_column(3),
      I3 => current_column(5),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[38]\
    );
\next_line_out_reg[39]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(5),
      I2 => current_column(3),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[39]\
    );
\next_line_out_reg[4]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[4]\
    );
\next_line_out_reg[5]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(1),
      I4 => current_column(0),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[5]\
    );
\next_line_out_reg[6]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(3),
      I2 => current_column(5),
      I3 => current_column(0),
      I4 => current_column(1),
      I5 => current_column(2),
      O => \next_line_out_reg_n_0_[6]\
    );
\next_line_out_reg[8]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(5),
      I3 => current_column(3),
      I4 => current_column(0),
      I5 => current_column(1),
      O => \next_line_out_reg_n_0_[8]\
    );
\next_line_out_reg[9]\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(2),
      I2 => current_column(5),
      I3 => current_column(1),
      I4 => current_column(0),
      I5 => current_column(3),
      O => \next_line_out_reg_n_0_[9]\
    );
\odd_parities[0].odd_parityx/current_state[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[0][6]_0\(2),
      I1 => \^current_line_out_reg[0][6]_0\(3),
      I2 => \^current_line_out_reg[0][6]_0\(1),
      I3 => \odd_parities[0].odd_parityx/current_state[47]_i_3_n_0\,
      O => PACKET_DATA(0)
    );
\odd_parities[0].odd_parityx/current_state[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[0][6]_0\(5),
      I1 => \^current_line_out_reg[0][6]_0\(4),
      I2 => \^current_line_out_reg[0][6]_0\(0),
      I3 => \^current_line_out_reg[0][6]_0\(6),
      O => \odd_parities[0].odd_parityx/current_state[47]_i_3_n_0\
    );
\odd_parities[1].odd_parityx/current_state[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[1][6]_0\(2),
      I1 => \^current_line_out_reg[1][6]_0\(3),
      I2 => \^current_line_out_reg[1][6]_0\(1),
      I3 => \odd_parities[1].odd_parityx/current_state[55]_i_3_n_0\,
      O => PACKET_DATA(1)
    );
\odd_parities[1].odd_parityx/current_state[55]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[1][6]_0\(5),
      I1 => \^current_line_out_reg[1][6]_0\(4),
      I2 => \^current_line_out_reg[1][6]_0\(0),
      I3 => \^current_line_out_reg[1][6]_0\(6),
      O => \odd_parities[1].odd_parityx/current_state[55]_i_3_n_0\
    );
\odd_parities[2].odd_parityx/current_state[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[2][6]_0\(2),
      I1 => \^current_line_out_reg[2][6]_0\(3),
      I2 => \^current_line_out_reg[2][6]_0\(1),
      I3 => \odd_parities[2].odd_parityx/current_state[63]_i_3_n_0\,
      O => PACKET_DATA(2)
    );
\odd_parities[2].odd_parityx/current_state[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[2][6]_0\(5),
      I1 => \^current_line_out_reg[2][6]_0\(4),
      I2 => \^current_line_out_reg[2][6]_0\(0),
      I3 => \^current_line_out_reg[2][6]_0\(6),
      O => \odd_parities[2].odd_parityx/current_state[63]_i_3_n_0\
    );
\odd_parities[3].odd_parityx/current_state[71]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[3][6]_0\(2),
      I1 => \^current_line_out_reg[3][6]_0\(3),
      I2 => \^current_line_out_reg[3][6]_0\(1),
      I3 => \odd_parities[3].odd_parityx/current_state[71]_i_3_n_0\,
      O => PACKET_DATA(3)
    );
\odd_parities[3].odd_parityx/current_state[71]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[3][6]_0\(5),
      I1 => \^current_line_out_reg[3][6]_0\(4),
      I2 => \^current_line_out_reg[3][6]_0\(0),
      I3 => \^current_line_out_reg[3][6]_0\(6),
      O => \odd_parities[3].odd_parityx/current_state[71]_i_3_n_0\
    );
\odd_parities[4].odd_parityx/current_state[79]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[4][6]_0\(2),
      I1 => \^current_line_out_reg[4][6]_0\(3),
      I2 => \^current_line_out_reg[4][6]_0\(1),
      I3 => \odd_parities[4].odd_parityx/current_state[79]_i_3_n_0\,
      O => PACKET_DATA(4)
    );
\odd_parities[4].odd_parityx/current_state[79]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[4][6]_0\(5),
      I1 => \^current_line_out_reg[4][6]_0\(4),
      I2 => \^current_line_out_reg[4][6]_0\(0),
      I3 => \^current_line_out_reg[4][6]_0\(6),
      O => \odd_parities[4].odd_parityx/current_state[79]_i_3_n_0\
    );
\odd_parities[5].odd_parityx/current_state[87]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[5][6]_0\(2),
      I1 => \^current_line_out_reg[5][6]_0\(3),
      I2 => \^current_line_out_reg[5][6]_0\(1),
      I3 => \odd_parities[5].odd_parityx/current_state[87]_i_3_n_0\,
      O => PACKET_DATA(5)
    );
\odd_parities[5].odd_parityx/current_state[87]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[5][6]_0\(5),
      I1 => \^current_line_out_reg[5][6]_0\(4),
      I2 => \^current_line_out_reg[5][6]_0\(0),
      I3 => \^current_line_out_reg[5][6]_0\(6),
      O => \odd_parities[5].odd_parityx/current_state[87]_i_3_n_0\
    );
\odd_parities[6].odd_parityx/current_state[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[6][6]_0\(2),
      I1 => \^current_line_out_reg[6][6]_0\(3),
      I2 => \^current_line_out_reg[6][6]_0\(1),
      I3 => \odd_parities[6].odd_parityx/current_state[95]_i_3_n_0\,
      O => PACKET_DATA(6)
    );
\odd_parities[6].odd_parityx/current_state[95]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[6][6]_0\(5),
      I1 => \^current_line_out_reg[6][6]_0\(4),
      I2 => \^current_line_out_reg[6][6]_0\(0),
      I3 => \^current_line_out_reg[6][6]_0\(6),
      O => \odd_parities[6].odd_parityx/current_state[95]_i_3_n_0\
    );
\odd_parities[7].odd_parityx/current_state[103]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^current_line_out_reg[7][6]_0\(2),
      I1 => \^current_line_out_reg[7][6]_0\(3),
      I2 => \^current_line_out_reg[7][6]_0\(1),
      I3 => \odd_parities[7].odd_parityx/current_state[103]_i_3_n_0\,
      O => PACKET_DATA(7)
    );
\odd_parities[7].odd_parityx/current_state[103]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^current_line_out_reg[7][6]_0\(5),
      I1 => \^current_line_out_reg[7][6]_0\(4),
      I2 => \^current_line_out_reg[7][6]_0\(0),
      I3 => \^current_line_out_reg[7][6]_0\(6),
      O => \odd_parities[7].odd_parityx/current_state[103]_i_3_n_0\
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000002AAA"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(2),
      I2 => current_column(0),
      I3 => current_column(1),
      I4 => current_column(3),
      I5 => current_column(4),
      O => RDADDR(5)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFD55540000000"
    )
        port map (
      I0 => current_column(5),
      I1 => current_column(2),
      I2 => current_column(0),
      I3 => current_column(1),
      I4 => current_column(3),
      I5 => current_column(4),
      O => RDADDR(4)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4338383838383838"
    )
        port map (
      I0 => current_column(4),
      I1 => current_column(5),
      I2 => current_column(3),
      I3 => current_column(2),
      I4 => current_column(0),
      I5 => current_column(1),
      O => RDADDR(3)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => current_column(0),
      I1 => current_column(1),
      I2 => current_column(2),
      O => plusOp(2)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_column(0),
      I1 => current_column(1),
      O => plusOp(1)
    );
\sdp_bl.ramb18_dp_bl.ram18_bl_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_column(0),
      O => plusOp(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0_teletext_generator is
  port (
    p_0_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \current_line_reg[0]_0\ : out STD_LOGIC;
    SYNC_OUT : out STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \current_state_reg[86]\ : in STD_LOGIC;
    \current_state_reg[86]_0\ : in STD_LOGIC;
    \current_state_reg[86]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[64]\ : in STD_LOGIC;
    \current_state_reg[70]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    current_magazine_number : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_state_reg[351]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \current_state_reg[46]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[55]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PACKET_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \current_state_reg[54]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[62]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[78]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[94]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \CONTROL_BITS[SUPPRESS_HEADER]\ : in STD_LOGIC;
    \CONTROL_BITS[UPDATE_INDICATOR]\ : in STD_LOGIC;
    \CONTROL_BITS[INTERRUPTED_SEQUENCE]\ : in STD_LOGIC;
    \CONTROL_BITS[INHIBIT_DISPLAY]\ : in STD_LOGIC;
    \current_state_reg[102]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \CONTROL_BITS[MAGAZINE_SERIAL]\ : in STD_LOGIC;
    \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_state_reg[110]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[118]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[126]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[134]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[142]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[150]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[158]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[166]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[174]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[182]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[190]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[198]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[206]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[214]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[222]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[230]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[238]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[246]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[254]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[262]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[270]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[278]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[286]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[294]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[302]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[310]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[318]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[326]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[334]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[342]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[350]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \current_state_reg[358]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    TELETEXT_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_teletext_controller_0_0_teletext_generator : entity is "teletext_generator";
end system_teletext_controller_0_0_teletext_generator;

architecture STRUCTURE of system_teletext_controller_0_0_teletext_generator is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 359 downto 25 );
  signal data_out_shift_n_337 : STD_LOGIC;
  signal next_line : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 358 downto 24 );
  signal packet_trigger : STD_LOGIC;
  signal sync_gen_n_0 : STD_LOGIC;
  signal sync_gen_n_336 : STD_LOGIC;
  signal teletext_page_header_data : STD_LOGIC_VECTOR ( 62 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_line[1]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \current_line[2]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \current_line[3]_i_1__0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \current_line[4]_i_3\ : label is "soft_lutpair146";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\current_line[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => next_line(0)
    );
\current_line[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => next_line(1)
    );
\current_line[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => next_line(2)
    );
\current_line[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => next_line(3)
    );
\current_line[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => next_line(4)
    );
\current_line_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => packet_trigger,
      D => next_line(0),
      Q => \^q\(0),
      R => sync_gen_n_0
    );
\current_line_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => packet_trigger,
      D => next_line(1),
      Q => \^q\(1),
      R => sync_gen_n_0
    );
\current_line_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => packet_trigger,
      D => next_line(2),
      Q => \^q\(2),
      R => sync_gen_n_0
    );
\current_line_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => packet_trigger,
      D => next_line(3),
      Q => \^q\(3),
      R => sync_gen_n_0
    );
\current_line_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => TELETEXT_CLK,
      CE => packet_trigger,
      D => next_line(4),
      Q => \^q\(4),
      R => sync_gen_n_0
    );
\current_state[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \current_state_reg[55]\(0),
      I1 => \current_state_reg[55]\(2),
      I2 => \current_state_reg[55]\(3),
      O => teletext_page_header_data(0)
    );
\current_state[48]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \current_state_reg[55]\(4),
      I1 => \current_state_reg[55]\(6),
      I2 => \current_state_reg[55]\(7),
      O => teletext_page_header_data(8)
    );
\current_state[88]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \CONTROL_BITS[SUPPRESS_HEADER]\,
      I1 => \CONTROL_BITS[INTERRUPTED_SEQUENCE]\,
      I2 => \CONTROL_BITS[INHIBIT_DISPLAY]\,
      O => teletext_page_header_data(48)
    );
\current_state[96]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \CONTROL_BITS[MAGAZINE_SERIAL]\,
      I1 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(1),
      I2 => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2),
      O => teletext_page_header_data(56)
    );
data_out_shift: entity work.system_teletext_controller_0_0_shift_register
     port map (
      \CONTROL_BITS[INHIBIT_DISPLAY]\ => \CONTROL_BITS[INHIBIT_DISPLAY]\,
      \CONTROL_BITS[INTERRUPTED_SEQUENCE]\ => \CONTROL_BITS[INTERRUPTED_SEQUENCE]\,
      \CONTROL_BITS[MAGAZINE_SERIAL]\ => \CONTROL_BITS[MAGAZINE_SERIAL]\,
      \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2 downto 0) => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2 downto 0),
      \CONTROL_BITS[SUPPRESS_HEADER]\ => \CONTROL_BITS[SUPPRESS_HEADER]\,
      \CONTROL_BITS[UPDATE_INDICATOR]\ => \CONTROL_BITS[UPDATE_INDICATOR]\,
      D(335) => D(0),
      D(334 downto 0) => next_state(358 downto 24),
      Q(335 downto 1) => current_state(359 downto 25),
      Q(0) => DATA_OUT,
      SR(0) => p_0_in,
      S_AXI_ARESETN => S_AXI_ARESETN,
      TELETEXT_CLK => TELETEXT_CLK,
      \current_line_reg[2]\ => data_out_shift_n_337,
      \current_state_reg[23]_0\ => sync_gen_n_336,
      \current_state_reg[40]_0\(4 downto 0) => \^q\(4 downto 0),
      \current_state_reg[54]_0\(7 downto 0) => \current_state_reg[55]\(7 downto 0),
      teletext_page_header_data(11) => teletext_page_header_data(62),
      teletext_page_header_data(10) => teletext_page_header_data(60),
      teletext_page_header_data(9) => teletext_page_header_data(58),
      teletext_page_header_data(8) => teletext_page_header_data(54),
      teletext_page_header_data(7) => teletext_page_header_data(52),
      teletext_page_header_data(6) => teletext_page_header_data(50),
      teletext_page_header_data(5) => teletext_page_header_data(14),
      teletext_page_header_data(4) => teletext_page_header_data(12),
      teletext_page_header_data(3) => teletext_page_header_data(10),
      teletext_page_header_data(2) => teletext_page_header_data(6),
      teletext_page_header_data(1) => teletext_page_header_data(4),
      teletext_page_header_data(0) => teletext_page_header_data(2)
    );
sync_gen: entity work.system_teletext_controller_0_0_sync_generator
     port map (
      \CONTROL_BITS[INHIBIT_DISPLAY]\ => \CONTROL_BITS[INHIBIT_DISPLAY]\,
      \CONTROL_BITS[INTERRUPTED_SEQUENCE]\ => \CONTROL_BITS[INTERRUPTED_SEQUENCE]\,
      \CONTROL_BITS[MAGAZINE_SERIAL]\ => \CONTROL_BITS[MAGAZINE_SERIAL]\,
      \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2 downto 0) => \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2 downto 0),
      \CONTROL_BITS[SUPPRESS_HEADER]\ => \CONTROL_BITS[SUPPRESS_HEADER]\,
      \CONTROL_BITS[UPDATE_INDICATOR]\ => \CONTROL_BITS[UPDATE_INDICATOR]\,
      D(334 downto 0) => next_state(358 downto 24),
      E(0) => packet_trigger,
      PACKET_DATA(7 downto 0) => PACKET_DATA(7 downto 0),
      Q(334 downto 0) => current_state(359 downto 25),
      SS(0) => sync_gen_n_0,
      SYNC_OUT => SYNC_OUT,
      S_AXI_ARESETN => S_AXI_ARESETN,
      TELETEXT_CLK => TELETEXT_CLK,
      \current_line_reg[0]_0\ => sync_gen_n_336,
      \current_line_reg[0]_1\ => \current_line_reg[0]_0\,
      current_magazine_number(2 downto 0) => current_magazine_number(2 downto 0),
      \current_state_reg[102]\(6 downto 0) => \current_state_reg[102]\(6 downto 0),
      \current_state_reg[110]\(6 downto 0) => \current_state_reg[110]\(6 downto 0),
      \current_state_reg[118]\(6 downto 0) => \current_state_reg[118]\(6 downto 0),
      \current_state_reg[126]\(6 downto 0) => \current_state_reg[126]\(6 downto 0),
      \current_state_reg[134]\(6 downto 0) => \current_state_reg[134]\(6 downto 0),
      \current_state_reg[142]\(6 downto 0) => \current_state_reg[142]\(6 downto 0),
      \current_state_reg[150]\(6 downto 0) => \current_state_reg[150]\(6 downto 0),
      \current_state_reg[158]\(6 downto 0) => \current_state_reg[158]\(6 downto 0),
      \current_state_reg[166]\(6 downto 0) => \current_state_reg[166]\(6 downto 0),
      \current_state_reg[174]\(6 downto 0) => \current_state_reg[174]\(6 downto 0),
      \current_state_reg[182]\(6 downto 0) => \current_state_reg[182]\(6 downto 0),
      \current_state_reg[190]\(6 downto 0) => \current_state_reg[190]\(6 downto 0),
      \current_state_reg[198]\(6 downto 0) => \current_state_reg[198]\(6 downto 0),
      \current_state_reg[206]\(6 downto 0) => \current_state_reg[206]\(6 downto 0),
      \current_state_reg[214]\(6 downto 0) => \current_state_reg[214]\(6 downto 0),
      \current_state_reg[222]\(6 downto 0) => \current_state_reg[222]\(6 downto 0),
      \current_state_reg[230]\(6 downto 0) => \current_state_reg[230]\(6 downto 0),
      \current_state_reg[238]\(6 downto 0) => \current_state_reg[238]\(6 downto 0),
      \current_state_reg[246]\(6 downto 0) => \current_state_reg[246]\(6 downto 0),
      \current_state_reg[254]\(6 downto 0) => \current_state_reg[254]\(6 downto 0),
      \current_state_reg[262]\(6 downto 0) => \current_state_reg[262]\(6 downto 0),
      \current_state_reg[270]\(6 downto 0) => \current_state_reg[270]\(6 downto 0),
      \current_state_reg[278]\(6 downto 0) => \current_state_reg[278]\(6 downto 0),
      \current_state_reg[286]\(6 downto 0) => \current_state_reg[286]\(6 downto 0),
      \current_state_reg[294]\(6 downto 0) => \current_state_reg[294]\(6 downto 0),
      \current_state_reg[302]\(6 downto 0) => \current_state_reg[302]\(6 downto 0),
      \current_state_reg[310]\(6 downto 0) => \current_state_reg[310]\(6 downto 0),
      \current_state_reg[318]\(6 downto 0) => \current_state_reg[318]\(6 downto 0),
      \current_state_reg[326]\(6 downto 0) => \current_state_reg[326]\(6 downto 0),
      \current_state_reg[334]\(6 downto 0) => \current_state_reg[334]\(6 downto 0),
      \current_state_reg[342]\(6 downto 0) => \current_state_reg[342]\(6 downto 0),
      \current_state_reg[350]\(6 downto 0) => \current_state_reg[350]\(6 downto 0),
      \current_state_reg[351]\(30 downto 0) => \current_state_reg[351]\(30 downto 0),
      \current_state_reg[358]\(6 downto 0) => \current_state_reg[358]\(6 downto 0),
      \current_state_reg[38]\(4 downto 0) => \^q\(4 downto 0),
      \current_state_reg[40]\ => data_out_shift_n_337,
      \current_state_reg[46]\(6 downto 0) => \current_state_reg[46]\(6 downto 0),
      \current_state_reg[54]\(6 downto 0) => \current_state_reg[54]\(6 downto 0),
      \current_state_reg[55]\(7 downto 0) => \current_state_reg[55]\(7 downto 0),
      \current_state_reg[62]\(6 downto 0) => \current_state_reg[62]\(6 downto 0),
      \current_state_reg[64]\ => \current_state_reg[64]\,
      \current_state_reg[70]\(6 downto 0) => \current_state_reg[70]\(6 downto 0),
      \current_state_reg[78]\(6 downto 0) => \current_state_reg[78]\(6 downto 0),
      \current_state_reg[86]\ => \current_state_reg[86]\,
      \current_state_reg[86]_0\ => \current_state_reg[86]_0\,
      \current_state_reg[86]_1\(6 downto 0) => \current_state_reg[86]_1\(6 downto 0),
      \current_state_reg[94]\(6 downto 0) => \current_state_reg[94]\(6 downto 0),
      teletext_page_header_data(15) => teletext_page_header_data(62),
      teletext_page_header_data(14) => teletext_page_header_data(60),
      teletext_page_header_data(13) => teletext_page_header_data(58),
      teletext_page_header_data(12) => teletext_page_header_data(56),
      teletext_page_header_data(11) => teletext_page_header_data(54),
      teletext_page_header_data(10) => teletext_page_header_data(52),
      teletext_page_header_data(9) => teletext_page_header_data(50),
      teletext_page_header_data(8) => teletext_page_header_data(48),
      teletext_page_header_data(7) => teletext_page_header_data(14),
      teletext_page_header_data(6) => teletext_page_header_data(12),
      teletext_page_header_data(5) => teletext_page_header_data(10),
      teletext_page_header_data(4) => teletext_page_header_data(8),
      teletext_page_header_data(3) => teletext_page_header_data(6),
      teletext_page_header_data(2) => teletext_page_header_data(4),
      teletext_page_header_data(1) => teletext_page_header_data(2),
      teletext_page_header_data(0) => teletext_page_header_data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0_teletext_controller is
  port (
    DATA_OUT : out STD_LOGIC;
    SYNC_OUT : out STD_LOGIC;
    current_axi_awready_reg_0 : out STD_LOGIC;
    current_axi_dwready_reg_0 : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    TELETEXT_CLK : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_teletext_controller_0_0_teletext_controller : entity is "teletext_controller";
end system_teletext_controller_0_0_teletext_controller;

architecture STRUCTURE of system_teletext_controller_0_0_teletext_controller is
  signal PACKET_DATA : STD_LOGIC_VECTOR ( 63 downto 7 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal current_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^current_axi_awready_reg_0\ : STD_LOGIC;
  signal current_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal current_axi_dwready_i_1_n_0 : STD_LOGIC;
  signal \^current_axi_dwready_reg_0\ : STD_LOGIC;
  signal \current_axi_write_response[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_axi_write_response[1]_i_2_n_0\ : STD_LOGIC;
  signal current_magazine_number : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_magazine_number[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_magazine_number[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_magazine_number[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[ERASE_PAGE]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[ERASE_PAGE]_i_2_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[INHIBIT_DISPLAY]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[MAGAZINE_SERIAL]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[NEWSFLASH]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[SUBTITLE]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[SUPPRESS_HEADER]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[UPDATE_INDICATOR]_i_1_n_0\ : STD_LOGIC;
  signal \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0\ : STD_LOGIC;
  signal \current_page_control_bits_reg[ERASE_PAGE_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[NEWSFLASH_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[SUBTITLE_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[SUPPRESS_HEADER_n_0_]\ : STD_LOGIC;
  signal \current_page_control_bits_reg[UPDATE_INDICATOR_n_0_]\ : STD_LOGIC;
  signal current_page_number : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \current_page_number[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_shift/next_state\ : STD_LOGIC_VECTOR ( 359 to 359 );
  signal \data_out_shift/p_0_in\ : STD_LOGIC;
  signal line_index : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal next_axi_write_response : STD_LOGIC;
  signal next_magazine_number : STD_LOGIC;
  signal \next_page_control_bits[ERASE_PAGE]118_out\ : STD_LOGIC;
  signal \next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET]\ : STD_LOGIC;
  signal next_page_number : STD_LOGIC;
  signal p_0_in_40 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal teletext_gen_n_6 : STD_LOGIC;
  signal \teletext_line[0]_39\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[10]_29\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[11]_28\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[12]_27\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[13]_26\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[14]_25\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[15]_24\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[16]_23\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[17]_22\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[18]_21\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[19]_20\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[1]_38\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[20]_19\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[21]_18\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[22]_17\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[23]_16\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[24]_15\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[25]_14\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[26]_13\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[27]_12\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[28]_11\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[29]_10\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[2]_37\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[30]_9\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[31]_8\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[32]_7\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[33]_6\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[34]_5\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[35]_4\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[36]_3\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[37]_2\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[38]_1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[39]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[3]_36\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[4]_35\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[5]_34\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[6]_33\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[7]_32\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[8]_31\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \teletext_line[9]_30\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal teletext_page_header_data : STD_LOGIC_VECTOR ( 311 downto 71 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_axi_write_response[1]_i_3\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \current_magazine_number[1]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \current_magazine_number[2]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \current_magazine_number[2]_i_2\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \current_page_control_bits[ERASE_PAGE]_i_2\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_2\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \current_page_control_bits[UPDATE_INDICATOR]_i_2\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \current_page_number[7]_i_2\ : label is "soft_lutpair150";
begin
  S_AXI_BRESP(0) <= \^s_axi_bresp\(0);
  S_AXI_BVALID <= \^s_axi_bvalid\;
  current_axi_awready_reg_0 <= \^current_axi_awready_reg_0\;
  current_axi_dwready_reg_0 <= \^current_axi_dwready_reg_0\;
current_axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_BREADY,
      I2 => \^current_axi_awready_reg_0\,
      I3 => S_AXI_AWVALID,
      O => current_axi_awready_i_1_n_0
    );
current_axi_awready_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => current_axi_awready_i_1_n_0,
      Q => \^current_axi_awready_reg_0\,
      S => \data_out_shift/p_0_in\
    );
current_axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => S_AXI_BREADY,
      I2 => \^current_axi_dwready_reg_0\,
      I3 => S_AXI_WVALID,
      O => current_axi_bvalid_i_1_n_0
    );
current_axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => current_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \data_out_shift/p_0_in\
    );
current_axi_dwready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^current_axi_dwready_reg_0\,
      I1 => S_AXI_WVALID,
      I2 => \^current_axi_awready_reg_0\,
      I3 => S_AXI_AWVALID,
      O => current_axi_dwready_i_1_n_0
    );
current_axi_dwready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => current_axi_dwready_i_1_n_0,
      Q => \^current_axi_dwready_reg_0\,
      R => \data_out_shift/p_0_in\
    );
\current_axi_write_address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^current_axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      O => \next_page_control_bits[ERASE_PAGE]118_out\
    );
\current_axi_write_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \next_page_control_bits[ERASE_PAGE]118_out\,
      D => S_AXI_AWADDR(0),
      Q => p_0_in_40(0),
      R => \data_out_shift/p_0_in\
    );
\current_axi_write_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \next_page_control_bits[ERASE_PAGE]118_out\,
      D => S_AXI_AWADDR(1),
      Q => p_0_in_40(1),
      R => \data_out_shift/p_0_in\
    );
\current_axi_write_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \next_page_control_bits[ERASE_PAGE]118_out\,
      D => S_AXI_AWADDR(2),
      Q => p_0_in_40(2),
      R => \data_out_shift/p_0_in\
    );
\current_axi_write_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \next_page_control_bits[ERASE_PAGE]118_out\,
      D => S_AXI_AWADDR(3),
      Q => p_0_in_40(3),
      R => \data_out_shift/p_0_in\
    );
\current_axi_write_response[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8AFFFFFF8A0000"
    )
        port map (
      I0 => p_0_in_40(0),
      I1 => p_0_in_40(1),
      I2 => p_0_in_40(2),
      I3 => \current_axi_write_response[1]_i_2_n_0\,
      I4 => next_axi_write_response,
      I5 => \^s_axi_bresp\(0),
      O => \current_axi_write_response[1]_i_1_n_0\
    );
\current_axi_write_response[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFC3C3C3C0"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => p_0_in_40(3),
      I2 => p_0_in_40(2),
      I3 => S_AXI_WSTRB(3),
      I4 => S_AXI_WSTRB(2),
      I5 => p_0_in_40(1),
      O => \current_axi_write_response[1]_i_2_n_0\
    );
\current_axi_write_response[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^current_axi_dwready_reg_0\,
      I1 => S_AXI_WVALID,
      I2 => \^current_axi_awready_reg_0\,
      I3 => S_AXI_AWVALID,
      O => next_axi_write_response
    );
\current_axi_write_response_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_axi_write_response[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => \data_out_shift/p_0_in\
    );
\current_magazine_number[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => next_magazine_number,
      I2 => current_magazine_number(0),
      O => \current_magazine_number[0]_i_1_n_0\
    );
\current_magazine_number[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => next_magazine_number,
      I2 => current_magazine_number(1),
      O => \current_magazine_number[1]_i_1_n_0\
    );
\current_magazine_number[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(10),
      I1 => next_magazine_number,
      I2 => current_magazine_number(2),
      O => \current_magazine_number[2]_i_1_n_0\
    );
\current_magazine_number[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => p_0_in_40(2),
      I2 => p_0_in_40(0),
      I3 => p_0_in_40(1),
      I4 => \current_page_number[7]_i_2_n_0\,
      O => next_magazine_number
    );
\current_magazine_number_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_magazine_number[0]_i_1_n_0\,
      Q => current_magazine_number(0),
      S => \data_out_shift/p_0_in\
    );
\current_magazine_number_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_magazine_number[1]_i_1_n_0\,
      Q => current_magazine_number(1),
      R => \data_out_shift/p_0_in\
    );
\current_magazine_number_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_magazine_number[2]_i_1_n_0\,
      Q => current_magazine_number(2),
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits[ERASE_PAGE]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \current_page_control_bits[ERASE_PAGE]_i_2_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => \current_page_control_bits_reg[ERASE_PAGE_n_0_]\,
      O => \current_page_control_bits[ERASE_PAGE]_i_1_n_0\
    );
\current_page_control_bits[ERASE_PAGE]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_0_in_40(1),
      I1 => p_0_in_40(2),
      I2 => \current_page_number[7]_i_2_n_0\,
      I3 => p_0_in_40(0),
      O => \current_page_control_bits[ERASE_PAGE]_i_2_n_0\
    );
\current_page_control_bits[INHIBIT_DISPLAY]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => \current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_]\,
      O => \current_page_control_bits[INHIBIT_DISPLAY]_i_1_n_0\
    );
\current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => \current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_]\,
      O => \current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1_n_0\
    );
\current_page_control_bits[MAGAZINE_SERIAL]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => \current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_]\,
      O => \current_page_control_bits[MAGAZINE_SERIAL]_i_1_n_0\
    );
\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET]\,
      I2 => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0]\,
      O => \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1_n_0\
    );
\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => \next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET]\,
      I2 => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1]\,
      O => \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1_n_0\
    );
\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => \next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET]\,
      I2 => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2]\,
      O => \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1_n_0\
    );
\current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => p_0_in_40(2),
      I1 => S_AXI_WSTRB(0),
      I2 => p_0_in_40(1),
      I3 => p_0_in_40(0),
      I4 => \current_page_number[7]_i_2_n_0\,
      O => \next_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET]\
    );
\current_page_control_bits[NEWSFLASH]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => \current_page_control_bits[ERASE_PAGE]_i_2_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => \current_page_control_bits_reg[NEWSFLASH_n_0_]\,
      O => \current_page_control_bits[NEWSFLASH]_i_1_n_0\
    );
\current_page_control_bits[SUBTITLE]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => \current_page_control_bits[ERASE_PAGE]_i_2_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => \current_page_control_bits_reg[SUBTITLE_n_0_]\,
      O => \current_page_control_bits[SUBTITLE]_i_1_n_0\
    );
\current_page_control_bits[SUPPRESS_HEADER]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => \current_page_control_bits[ERASE_PAGE]_i_2_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => \current_page_control_bits_reg[SUPPRESS_HEADER_n_0_]\,
      O => \current_page_control_bits[SUPPRESS_HEADER]_i_1_n_0\
    );
\current_page_control_bits[UPDATE_INDICATOR]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => \current_page_control_bits_reg[UPDATE_INDICATOR_n_0_]\,
      O => \current_page_control_bits[UPDATE_INDICATOR]_i_1_n_0\
    );
\current_page_control_bits[UPDATE_INDICATOR]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in_40(1),
      I1 => p_0_in_40(2),
      I2 => \current_page_number[7]_i_2_n_0\,
      I3 => p_0_in_40(0),
      O => \current_page_control_bits[UPDATE_INDICATOR]_i_2_n_0\
    );
\current_page_control_bits_reg[ERASE_PAGE]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[ERASE_PAGE]_i_1_n_0\,
      Q => \current_page_control_bits_reg[ERASE_PAGE_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[INHIBIT_DISPLAY]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[INHIBIT_DISPLAY]_i_1_n_0\,
      Q => \current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[INTERRUPTED_SEQUENCE]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[INTERRUPTED_SEQUENCE]_i_1_n_0\,
      Q => \current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[MAGAZINE_SERIAL]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[MAGAZINE_SERIAL]_i_1_n_0\,
      Q => \current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][0]_i_1_n_0\,
      Q => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][1]_i_1_n_0\,
      Q => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[NATIONAL_OPTION_CHARACTER_SUBSET][2]_i_1_n_0\,
      Q => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[NEWSFLASH]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[NEWSFLASH]_i_1_n_0\,
      Q => \current_page_control_bits_reg[NEWSFLASH_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[SUBTITLE]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[SUBTITLE]_i_1_n_0\,
      Q => \current_page_control_bits_reg[SUBTITLE_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[SUPPRESS_HEADER]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[SUPPRESS_HEADER]_i_1_n_0\,
      Q => \current_page_control_bits_reg[SUPPRESS_HEADER_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_control_bits_reg[UPDATE_INDICATOR]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \current_page_control_bits[UPDATE_INDICATOR]_i_1_n_0\,
      Q => \current_page_control_bits_reg[UPDATE_INDICATOR_n_0_]\,
      R => \data_out_shift/p_0_in\
    );
\current_page_number[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => p_0_in_40(2),
      I2 => p_0_in_40(0),
      I3 => p_0_in_40(1),
      I4 => \current_page_number[7]_i_2_n_0\,
      O => next_page_number
    );
\current_page_number[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^current_axi_awready_reg_0\,
      I2 => S_AXI_WVALID,
      I3 => \^current_axi_dwready_reg_0\,
      I4 => p_0_in_40(3),
      O => \current_page_number[7]_i_2_n_0\
    );
\current_page_number_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(0),
      Q => current_page_number(0),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(1),
      Q => current_page_number(1),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(2),
      Q => current_page_number(2),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(3),
      Q => current_page_number(3),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(4),
      Q => current_page_number(4),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(5),
      Q => current_page_number(5),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(6),
      Q => current_page_number(6),
      R => \data_out_shift/p_0_in\
    );
\current_page_number_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => next_page_number,
      D => S_AXI_WDATA(7),
      Q => current_page_number(7),
      R => \data_out_shift/p_0_in\
    );
framebuf: entity work.system_teletext_controller_0_0_framebuffer
     port map (
      D(0) => \data_out_shift/next_state\(359),
      PACKET_DATA(7) => PACKET_DATA(63),
      PACKET_DATA(6) => PACKET_DATA(55),
      PACKET_DATA(5) => PACKET_DATA(47),
      PACKET_DATA(4) => PACKET_DATA(39),
      PACKET_DATA(3) => PACKET_DATA(31),
      PACKET_DATA(2) => PACKET_DATA(23),
      PACKET_DATA(1) => PACKET_DATA(15),
      PACKET_DATA(0) => PACKET_DATA(7),
      Q(6 downto 0) => \teletext_line[39]_0\(6 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      TELETEXT_CLK => TELETEXT_CLK,
      \current_line_out_reg[0][6]_0\(6 downto 0) => \teletext_line[0]_39\(6 downto 0),
      \current_line_out_reg[10][6]_0\(6 downto 0) => \teletext_line[10]_29\(6 downto 0),
      \current_line_out_reg[11][6]_0\(6 downto 0) => \teletext_line[11]_28\(6 downto 0),
      \current_line_out_reg[12][6]_0\(6 downto 0) => \teletext_line[12]_27\(6 downto 0),
      \current_line_out_reg[13][6]_0\(6 downto 0) => \teletext_line[13]_26\(6 downto 0),
      \current_line_out_reg[14][6]_0\(6 downto 0) => \teletext_line[14]_25\(6 downto 0),
      \current_line_out_reg[15][6]_0\(6 downto 0) => \teletext_line[15]_24\(6 downto 0),
      \current_line_out_reg[16][6]_0\(6 downto 0) => \teletext_line[16]_23\(6 downto 0),
      \current_line_out_reg[17][6]_0\(6 downto 0) => \teletext_line[17]_22\(6 downto 0),
      \current_line_out_reg[18][6]_0\(6 downto 0) => \teletext_line[18]_21\(6 downto 0),
      \current_line_out_reg[19][6]_0\(6 downto 0) => \teletext_line[19]_20\(6 downto 0),
      \current_line_out_reg[1][6]_0\(6 downto 0) => \teletext_line[1]_38\(6 downto 0),
      \current_line_out_reg[20][6]_0\(6 downto 0) => \teletext_line[20]_19\(6 downto 0),
      \current_line_out_reg[21][6]_0\(6 downto 0) => \teletext_line[21]_18\(6 downto 0),
      \current_line_out_reg[22][6]_0\(6 downto 0) => \teletext_line[22]_17\(6 downto 0),
      \current_line_out_reg[23][6]_0\(6 downto 0) => \teletext_line[23]_16\(6 downto 0),
      \current_line_out_reg[24][6]_0\(6 downto 0) => \teletext_line[24]_15\(6 downto 0),
      \current_line_out_reg[25][6]_0\(6 downto 0) => \teletext_line[25]_14\(6 downto 0),
      \current_line_out_reg[26][6]_0\(6 downto 0) => \teletext_line[26]_13\(6 downto 0),
      \current_line_out_reg[27][6]_0\(6 downto 0) => \teletext_line[27]_12\(6 downto 0),
      \current_line_out_reg[28][6]_0\(6 downto 0) => \teletext_line[28]_11\(6 downto 0),
      \current_line_out_reg[29][6]_0\(6 downto 0) => \teletext_line[29]_10\(6 downto 0),
      \current_line_out_reg[2][6]_0\(6 downto 0) => \teletext_line[2]_37\(6 downto 0),
      \current_line_out_reg[30][6]_0\(6 downto 0) => \teletext_line[30]_9\(6 downto 0),
      \current_line_out_reg[31][6]_0\(6 downto 0) => \teletext_line[31]_8\(6 downto 0),
      \current_line_out_reg[32][6]_0\(6 downto 0) => \teletext_line[32]_7\(6 downto 0),
      \current_line_out_reg[33][6]_0\(6 downto 0) => \teletext_line[33]_6\(6 downto 0),
      \current_line_out_reg[34][6]_0\(6 downto 0) => \teletext_line[34]_5\(6 downto 0),
      \current_line_out_reg[35][6]_0\(6 downto 0) => \teletext_line[35]_4\(6 downto 0),
      \current_line_out_reg[36][6]_0\(6 downto 0) => \teletext_line[36]_3\(6 downto 0),
      \current_line_out_reg[37][6]_0\(6 downto 0) => \teletext_line[37]_2\(6 downto 0),
      \current_line_out_reg[38][6]_0\(6 downto 0) => \teletext_line[38]_1\(6 downto 0),
      \current_line_out_reg[3][6]_0\(6 downto 0) => \teletext_line[3]_36\(6 downto 0),
      \current_line_out_reg[4][6]_0\(6 downto 0) => \teletext_line[4]_35\(6 downto 0),
      \current_line_out_reg[5][6]_0\(6 downto 0) => \teletext_line[5]_34\(6 downto 0),
      \current_line_out_reg[6][6]_0\(6 downto 0) => \teletext_line[6]_33\(6 downto 0),
      \current_line_out_reg[7][6]_0\(6 downto 0) => \teletext_line[7]_32\(6 downto 0),
      \current_line_out_reg[8][6]_0\(6 downto 0) => \teletext_line[8]_31\(6 downto 0),
      \current_line_out_reg[9][6]_0\(6 downto 0) => \teletext_line[9]_30\(6 downto 0),
      \current_out_index_reg[4]_0\(4 downto 0) => line_index(4 downto 0),
      \current_state_reg[359]\ => teletext_gen_n_6,
      p_0_in => \data_out_shift/p_0_in\,
      teletext_page_header_data(30) => teletext_page_header_data(311),
      teletext_page_header_data(29) => teletext_page_header_data(303),
      teletext_page_header_data(28) => teletext_page_header_data(295),
      teletext_page_header_data(27) => teletext_page_header_data(287),
      teletext_page_header_data(26) => teletext_page_header_data(279),
      teletext_page_header_data(25) => teletext_page_header_data(271),
      teletext_page_header_data(24) => teletext_page_header_data(263),
      teletext_page_header_data(23) => teletext_page_header_data(255),
      teletext_page_header_data(22) => teletext_page_header_data(247),
      teletext_page_header_data(21) => teletext_page_header_data(239),
      teletext_page_header_data(20) => teletext_page_header_data(231),
      teletext_page_header_data(19) => teletext_page_header_data(223),
      teletext_page_header_data(18) => teletext_page_header_data(215),
      teletext_page_header_data(17) => teletext_page_header_data(207),
      teletext_page_header_data(16) => teletext_page_header_data(199),
      teletext_page_header_data(15) => teletext_page_header_data(191),
      teletext_page_header_data(14) => teletext_page_header_data(183),
      teletext_page_header_data(13) => teletext_page_header_data(175),
      teletext_page_header_data(12) => teletext_page_header_data(167),
      teletext_page_header_data(11) => teletext_page_header_data(159),
      teletext_page_header_data(10) => teletext_page_header_data(151),
      teletext_page_header_data(9) => teletext_page_header_data(143),
      teletext_page_header_data(8) => teletext_page_header_data(135),
      teletext_page_header_data(7) => teletext_page_header_data(127),
      teletext_page_header_data(6) => teletext_page_header_data(119),
      teletext_page_header_data(5) => teletext_page_header_data(111),
      teletext_page_header_data(4) => teletext_page_header_data(103),
      teletext_page_header_data(3) => teletext_page_header_data(95),
      teletext_page_header_data(2) => teletext_page_header_data(87),
      teletext_page_header_data(1) => teletext_page_header_data(79),
      teletext_page_header_data(0) => teletext_page_header_data(71)
    );
teletext_gen: entity work.system_teletext_controller_0_0_teletext_generator
     port map (
      \CONTROL_BITS[INHIBIT_DISPLAY]\ => \current_page_control_bits_reg[INHIBIT_DISPLAY_n_0_]\,
      \CONTROL_BITS[INTERRUPTED_SEQUENCE]\ => \current_page_control_bits_reg[INTERRUPTED_SEQUENCE_n_0_]\,
      \CONTROL_BITS[MAGAZINE_SERIAL]\ => \current_page_control_bits_reg[MAGAZINE_SERIAL_n_0_]\,
      \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(2) => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][2]\,
      \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(1) => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][1]\,
      \CONTROL_BITS[NATIONAL_OPTION_CHARACTER_SUBSET]\(0) => \current_page_control_bits_reg[NATIONAL_OPTION_CHARACTER_SUBSET_n_0_][0]\,
      \CONTROL_BITS[SUPPRESS_HEADER]\ => \current_page_control_bits_reg[SUPPRESS_HEADER_n_0_]\,
      \CONTROL_BITS[UPDATE_INDICATOR]\ => \current_page_control_bits_reg[UPDATE_INDICATOR_n_0_]\,
      D(0) => \data_out_shift/next_state\(359),
      DATA_OUT => DATA_OUT,
      PACKET_DATA(7) => PACKET_DATA(63),
      PACKET_DATA(6) => PACKET_DATA(55),
      PACKET_DATA(5) => PACKET_DATA(47),
      PACKET_DATA(4) => PACKET_DATA(39),
      PACKET_DATA(3) => PACKET_DATA(31),
      PACKET_DATA(2) => PACKET_DATA(23),
      PACKET_DATA(1) => PACKET_DATA(15),
      PACKET_DATA(0) => PACKET_DATA(7),
      Q(4 downto 0) => line_index(4 downto 0),
      SYNC_OUT => SYNC_OUT,
      S_AXI_ARESETN => S_AXI_ARESETN,
      TELETEXT_CLK => TELETEXT_CLK,
      \current_line_reg[0]_0\ => teletext_gen_n_6,
      current_magazine_number(2 downto 0) => current_magazine_number(2 downto 0),
      \current_state_reg[102]\(6 downto 0) => \teletext_line[7]_32\(6 downto 0),
      \current_state_reg[110]\(6 downto 0) => \teletext_line[8]_31\(6 downto 0),
      \current_state_reg[118]\(6 downto 0) => \teletext_line[9]_30\(6 downto 0),
      \current_state_reg[126]\(6 downto 0) => \teletext_line[10]_29\(6 downto 0),
      \current_state_reg[134]\(6 downto 0) => \teletext_line[11]_28\(6 downto 0),
      \current_state_reg[142]\(6 downto 0) => \teletext_line[12]_27\(6 downto 0),
      \current_state_reg[150]\(6 downto 0) => \teletext_line[13]_26\(6 downto 0),
      \current_state_reg[158]\(6 downto 0) => \teletext_line[14]_25\(6 downto 0),
      \current_state_reg[166]\(6 downto 0) => \teletext_line[15]_24\(6 downto 0),
      \current_state_reg[174]\(6 downto 0) => \teletext_line[16]_23\(6 downto 0),
      \current_state_reg[182]\(6 downto 0) => \teletext_line[17]_22\(6 downto 0),
      \current_state_reg[190]\(6 downto 0) => \teletext_line[18]_21\(6 downto 0),
      \current_state_reg[198]\(6 downto 0) => \teletext_line[19]_20\(6 downto 0),
      \current_state_reg[206]\(6 downto 0) => \teletext_line[20]_19\(6 downto 0),
      \current_state_reg[214]\(6 downto 0) => \teletext_line[21]_18\(6 downto 0),
      \current_state_reg[222]\(6 downto 0) => \teletext_line[22]_17\(6 downto 0),
      \current_state_reg[230]\(6 downto 0) => \teletext_line[23]_16\(6 downto 0),
      \current_state_reg[238]\(6 downto 0) => \teletext_line[24]_15\(6 downto 0),
      \current_state_reg[246]\(6 downto 0) => \teletext_line[25]_14\(6 downto 0),
      \current_state_reg[254]\(6 downto 0) => \teletext_line[26]_13\(6 downto 0),
      \current_state_reg[262]\(6 downto 0) => \teletext_line[27]_12\(6 downto 0),
      \current_state_reg[270]\(6 downto 0) => \teletext_line[28]_11\(6 downto 0),
      \current_state_reg[278]\(6 downto 0) => \teletext_line[29]_10\(6 downto 0),
      \current_state_reg[286]\(6 downto 0) => \teletext_line[30]_9\(6 downto 0),
      \current_state_reg[294]\(6 downto 0) => \teletext_line[31]_8\(6 downto 0),
      \current_state_reg[302]\(6 downto 0) => \teletext_line[32]_7\(6 downto 0),
      \current_state_reg[310]\(6 downto 0) => \teletext_line[33]_6\(6 downto 0),
      \current_state_reg[318]\(6 downto 0) => \teletext_line[34]_5\(6 downto 0),
      \current_state_reg[326]\(6 downto 0) => \teletext_line[35]_4\(6 downto 0),
      \current_state_reg[334]\(6 downto 0) => \teletext_line[36]_3\(6 downto 0),
      \current_state_reg[342]\(6 downto 0) => \teletext_line[37]_2\(6 downto 0),
      \current_state_reg[350]\(6 downto 0) => \teletext_line[38]_1\(6 downto 0),
      \current_state_reg[351]\(30) => teletext_page_header_data(311),
      \current_state_reg[351]\(29) => teletext_page_header_data(303),
      \current_state_reg[351]\(28) => teletext_page_header_data(295),
      \current_state_reg[351]\(27) => teletext_page_header_data(287),
      \current_state_reg[351]\(26) => teletext_page_header_data(279),
      \current_state_reg[351]\(25) => teletext_page_header_data(271),
      \current_state_reg[351]\(24) => teletext_page_header_data(263),
      \current_state_reg[351]\(23) => teletext_page_header_data(255),
      \current_state_reg[351]\(22) => teletext_page_header_data(247),
      \current_state_reg[351]\(21) => teletext_page_header_data(239),
      \current_state_reg[351]\(20) => teletext_page_header_data(231),
      \current_state_reg[351]\(19) => teletext_page_header_data(223),
      \current_state_reg[351]\(18) => teletext_page_header_data(215),
      \current_state_reg[351]\(17) => teletext_page_header_data(207),
      \current_state_reg[351]\(16) => teletext_page_header_data(199),
      \current_state_reg[351]\(15) => teletext_page_header_data(191),
      \current_state_reg[351]\(14) => teletext_page_header_data(183),
      \current_state_reg[351]\(13) => teletext_page_header_data(175),
      \current_state_reg[351]\(12) => teletext_page_header_data(167),
      \current_state_reg[351]\(11) => teletext_page_header_data(159),
      \current_state_reg[351]\(10) => teletext_page_header_data(151),
      \current_state_reg[351]\(9) => teletext_page_header_data(143),
      \current_state_reg[351]\(8) => teletext_page_header_data(135),
      \current_state_reg[351]\(7) => teletext_page_header_data(127),
      \current_state_reg[351]\(6) => teletext_page_header_data(119),
      \current_state_reg[351]\(5) => teletext_page_header_data(111),
      \current_state_reg[351]\(4) => teletext_page_header_data(103),
      \current_state_reg[351]\(3) => teletext_page_header_data(95),
      \current_state_reg[351]\(2) => teletext_page_header_data(87),
      \current_state_reg[351]\(1) => teletext_page_header_data(79),
      \current_state_reg[351]\(0) => teletext_page_header_data(71),
      \current_state_reg[358]\(6 downto 0) => \teletext_line[39]_0\(6 downto 0),
      \current_state_reg[46]\(6 downto 0) => \teletext_line[0]_39\(6 downto 0),
      \current_state_reg[54]\(6 downto 0) => \teletext_line[1]_38\(6 downto 0),
      \current_state_reg[55]\(7 downto 0) => current_page_number(7 downto 0),
      \current_state_reg[62]\(6 downto 0) => \teletext_line[2]_37\(6 downto 0),
      \current_state_reg[64]\ => \current_page_control_bits_reg[ERASE_PAGE_n_0_]\,
      \current_state_reg[70]\(6 downto 0) => \teletext_line[3]_36\(6 downto 0),
      \current_state_reg[78]\(6 downto 0) => \teletext_line[4]_35\(6 downto 0),
      \current_state_reg[86]\ => \current_page_control_bits_reg[NEWSFLASH_n_0_]\,
      \current_state_reg[86]_0\ => \current_page_control_bits_reg[SUBTITLE_n_0_]\,
      \current_state_reg[86]_1\(6 downto 0) => \teletext_line[5]_34\(6 downto 0),
      \current_state_reg[94]\(6 downto 0) => \teletext_line[6]_33\(6 downto 0),
      p_0_in => \data_out_shift/p_0_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_teletext_controller_0_0 is
  port (
    TELETEXT_CLK : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC;
    SYNC_OUT : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_teletext_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_teletext_controller_0_0 : entity is "system_teletext_controller_0_0,teletext_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_teletext_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_teletext_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_teletext_controller_0_0 : entity is "teletext_controller,Vivado 2022.2";
end system_teletext_controller_0_0;

architecture STRUCTURE of system_teletext_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of TELETEXT_CLK : signal is "xilinx.com:signal:clock:1.0 TELETEXT_CLK CLK";
  attribute x_interface_parameter of TELETEXT_CLK : signal is "XIL_INTERFACENAME TELETEXT_CLK, FREQ_HZ 6933593, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_ARREADY <= \<const0>\;
  S_AXI_BRESP(1) <= \^s_axi_bresp\(1);
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1) <= \<const0>\;
  S_AXI_RDATA(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_teletext_controller_0_0_teletext_controller
     port map (
      DATA_OUT => DATA_OUT,
      SYNC_OUT => SYNC_OUT,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(5 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => \^s_axi_bresp\(1),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_WDATA(12) => S_AXI_WDATA(24),
      S_AXI_WDATA(11) => S_AXI_WDATA(16),
      S_AXI_WDATA(10 downto 0) => S_AXI_WDATA(10 downto 0),
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      TELETEXT_CLK => TELETEXT_CLK,
      current_axi_awready_reg_0 => S_AXI_AWREADY,
      current_axi_dwready_reg_0 => S_AXI_WREADY
    );
end STRUCTURE;
