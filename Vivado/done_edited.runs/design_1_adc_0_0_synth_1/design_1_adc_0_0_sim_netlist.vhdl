-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jun 21 11:36:32 2019
-- Host        : AshanPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_adc_0_0_sim_netlist.vhdl
-- Design      : design_1_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc is
  port (
    data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_clock_out : out STD_LOGIC;
    data_ready_test : out STD_LOGIC;
    cs : out STD_LOGIC;
    signal_in : in STD_LOGIC;
    adc_clock : in STD_LOGIC;
    resetn : in STD_LOGIC;
    h_clock : in STD_LOGIC;
    recieve_ready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \^adc_clock_out\ : STD_LOGIC;
  signal clock : STD_LOGIC;
  signal clock_reg_i_1_n_0 : STD_LOGIC;
  signal clock_reg_i_2_n_0 : STD_LOGIC;
  signal clock_reg_i_3_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \counter[9]_i_3_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^cs\ : STD_LOGIC;
  signal cs_i_1_n_0 : STD_LOGIC;
  signal \^data\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \data[0]_i_1_n_0\ : STD_LOGIC;
  signal \data[0]_i_2_n_0\ : STD_LOGIC;
  signal \data[10]_i_1_n_0\ : STD_LOGIC;
  signal \data[10]_i_2_n_0\ : STD_LOGIC;
  signal \data[10]_i_3_n_0\ : STD_LOGIC;
  signal \data[11]_i_1_n_0\ : STD_LOGIC;
  signal \data[11]_i_2_n_0\ : STD_LOGIC;
  signal \data[1]_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_i_2_n_0\ : STD_LOGIC;
  signal \data[2]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_2_n_0\ : STD_LOGIC;
  signal \data[2]_i_3_n_0\ : STD_LOGIC;
  signal \data[3]_i_1_n_0\ : STD_LOGIC;
  signal \data[3]_i_2_n_0\ : STD_LOGIC;
  signal \data[4]_i_1_n_0\ : STD_LOGIC;
  signal \data[4]_i_2_n_0\ : STD_LOGIC;
  signal \data[5]_i_1_n_0\ : STD_LOGIC;
  signal \data[5]_i_2_n_0\ : STD_LOGIC;
  signal \data[5]_i_3_n_0\ : STD_LOGIC;
  signal \data[6]_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_i_2_n_0\ : STD_LOGIC;
  signal \data[6]_i_3_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_2_n_0\ : STD_LOGIC;
  signal \data[7]_i_3_n_0\ : STD_LOGIC;
  signal \data[8]_i_1_n_0\ : STD_LOGIC;
  signal \data[8]_i_2_n_0\ : STD_LOGIC;
  signal \data[9]_i_1_n_0\ : STD_LOGIC;
  signal \data[9]_i_2_n_0\ : STD_LOGIC;
  signal \data[9]_i_3_n_0\ : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal data_ready_i_2_n_0 : STD_LOGIC;
  signal \^data_ready_test\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[4]\ : label is "iSTATE:01110,iSTATE0:01101,iSTATE1:01100,iSTATE2:10011,iSTATE3:10010,iSTATE4:00011,iSTATE5:10001,iSTATE6:00010,iSTATE7:10000,iSTATE8:00001,iSTATE9:10111,iSTATE10:01011,iSTATE11:10110,iSTATE12:00000,iSTATE13:01010,iSTATE14:11000,iSTATE15:00111,iSTATE16:10101,iSTATE17:00110,iSTATE18:10100,iSTATE19:01001,iSTATE20:01000,iSTATE21:00101,iSTATE22:01111,iSTATE23:00100";
  attribute SOFT_HLUTNM of clock_reg_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of clock_reg_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[6]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[9]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[9]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of cs_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data[10]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data[10]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[11]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[2]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data[7]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[9]_i_2\ : label is "soft_lutpair1";
begin
  adc_clock_out <= \^adc_clock_out\;
  cs <= \^cs\;
  data(11 downto 0) <= \^data\(11 downto 0);
  data_ready_test <= \^data_ready_test\;
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000101000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(4),
      I3 => state(3),
      I4 => state(1),
      I5 => recieve_ready,
      O => \/i__n_0\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000073777777"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => state(2),
      I3 => recieve_ready,
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07707070"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"52222222"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FF00"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(4),
      I4 => state(3),
      O => \FSM_sequential_state[4]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => data_ready_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => data_ready_i_1_n_0
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => data_ready_i_1_n_0
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \FSM_sequential_state[3]_i_1_n_0\,
      Q => state(3),
      R => data_ready_i_1_n_0
    );
\FSM_sequential_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \FSM_sequential_state[4]_i_1_n_0\,
      Q => state(4),
      R => data_ready_i_1_n_0
    );
clock_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000010"
    )
        port map (
      I0 => clock_reg_i_2_n_0,
      I1 => clock_reg_i_3_n_0,
      I2 => resetn,
      I3 => counter(2),
      I4 => counter(0),
      I5 => \^adc_clock_out\,
      O => clock_reg_i_1_n_0
    );
clock_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter(4),
      I1 => counter(1),
      I2 => counter(9),
      I3 => counter(8),
      O => clock_reg_i_2_n_0
    );
clock_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(3),
      I2 => counter(7),
      I3 => counter(6),
      O => clock_reg_i_3_n_0
    );
clock_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => clock_reg_i_1_n_0,
      Q => \^adc_clock_out\,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333333333332"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => \counter[0]_i_2_n_0\,
      I3 => counter(1),
      I4 => counter(4),
      I5 => clock_reg_i_3_n_0,
      O => counter_0(0)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(8),
      I1 => counter(9),
      O => \counter[0]_i_2_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0C0C0E0E0E0E0"
    )
        port map (
      I0 => \counter[3]_i_2_n_0\,
      I1 => \counter[3]_i_3_n_0\,
      I2 => counter(3),
      I3 => counter(2),
      I4 => counter(0),
      I5 => counter(1),
      O => counter_0(3)
    );
\counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(0),
      I2 => counter(2),
      I3 => counter(7),
      I4 => counter(6),
      O => \counter[3]_i_2_n_0\
    );
\counter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7FFF7FFF7FFF7"
    )
        port map (
      I0 => counter(8),
      I1 => counter(9),
      I2 => counter(4),
      I3 => counter(1),
      I4 => counter(2),
      I5 => counter(0),
      O => \counter[3]_i_3_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => counter(3),
      I1 => counter(2),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF888855F58888"
    )
        port map (
      I0 => counter(3),
      I1 => \counter[9]_i_2_n_0\,
      I2 => \counter[5]_i_2_n_0\,
      I3 => counter(1),
      I4 => counter(5),
      I5 => \counter[7]_i_2_n_0\,
      O => counter_0(5)
    );
\counter[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(6),
      I1 => counter(7),
      O => \counter[5]_i_2_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFF011F0"
    )
        port map (
      I0 => counter(7),
      I1 => counter(1),
      I2 => \counter[9]_i_2_n_0\,
      I3 => counter(6),
      I4 => \counter[7]_i_2_n_0\,
      I5 => \counter[6]_i_2_n_0\,
      O => counter_0(6)
    );
\counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(3),
      I1 => counter(5),
      O => \counter[6]_i_2_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F858F0F0F0F0F0F0"
    )
        port map (
      I0 => counter(6),
      I1 => \counter[9]_i_2_n_0\,
      I2 => counter(7),
      I3 => \counter[7]_i_2_n_0\,
      I4 => counter(5),
      I5 => counter(3),
      O => counter_0(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFFFFFFFFF7"
    )
        port map (
      I0 => counter(9),
      I1 => counter(8),
      I2 => counter(2),
      I3 => counter(0),
      I4 => counter(1),
      I5 => counter(4),
      O => \counter[7]_i_2_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFF011F0"
    )
        port map (
      I0 => counter(9),
      I1 => counter(1),
      I2 => \counter[9]_i_2_n_0\,
      I3 => counter(8),
      I4 => \counter[9]_i_3_n_0\,
      I5 => clock_reg_i_3_n_0,
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F858"
    )
        port map (
      I0 => counter(8),
      I1 => \counter[9]_i_2_n_0\,
      I2 => counter(9),
      I3 => \counter[9]_i_3_n_0\,
      I4 => clock_reg_i_3_n_0,
      O => counter_0(9)
    );
\counter[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(2),
      O => \counter[9]_i_2_n_0\
    );
\counter[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFE"
    )
        port map (
      I0 => counter(4),
      I1 => counter(1),
      I2 => counter(2),
      I3 => counter(0),
      O => \counter[9]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(0),
      Q => counter(0),
      R => data_ready_i_1_n_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(1),
      Q => counter(1),
      R => data_ready_i_1_n_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(2),
      Q => counter(2),
      R => data_ready_i_1_n_0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(3),
      Q => counter(3),
      R => data_ready_i_1_n_0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(4),
      Q => counter(4),
      R => data_ready_i_1_n_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(5),
      Q => counter(5),
      R => data_ready_i_1_n_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(6),
      Q => counter(6),
      R => data_ready_i_1_n_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(7),
      Q => counter(7),
      R => data_ready_i_1_n_0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(8),
      Q => counter(8),
      R => data_ready_i_1_n_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clock,
      CE => '1',
      D => counter_0(9),
      Q => counter(9),
      R => data_ready_i_1_n_0
    );
cs_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => state(3),
      I1 => \/i__n_0\,
      I2 => \^cs\,
      O => cs_i_1_n_0
    );
cs_reg: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => '1',
      D => cs_i_1_n_0,
      Q => \^cs\,
      S => data_ready_i_1_n_0
    );
\data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
        port map (
      I0 => state(3),
      I1 => signal_in,
      I2 => \data[2]_i_2_n_0\,
      I3 => \data[9]_i_3_n_0\,
      I4 => \data[0]_i_2_n_0\,
      I5 => \^data\(0),
      O => \data[0]_i_1_n_0\
    );
\data[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(4),
      I4 => state(3),
      O => \data[0]_i_2_n_0\
    );
\data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \data[10]_i_2_n_0\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \data[10]_i_3_n_0\,
      I5 => \^data\(10),
      O => \data[10]_i_1_n_0\
    );
\data[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => state(0),
      I1 => signal_in,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      O => \data[10]_i_2_n_0\
    );
\data[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      O => \data[10]_i_3_n_0\
    );
\data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(2),
      I1 => signal_in,
      I2 => state(3),
      I3 => \data[11]_i_2_n_0\,
      I4 => \^data\(11),
      O => \data[11]_i_1_n_0\
    );
\data[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => state(4),
      O => \data[11]_i_2_n_0\
    );
\data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => state(3),
      I1 => \data[9]_i_3_n_0\,
      I2 => \data[2]_i_2_n_0\,
      I3 => signal_in,
      I4 => \data[1]_i_2_n_0\,
      I5 => \^data\(1),
      O => \data[1]_i_1_n_0\
    );
\data[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(4),
      I4 => state(3),
      O => \data[1]_i_2_n_0\
    );
\data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => state(3),
      I1 => \data[9]_i_3_n_0\,
      I2 => signal_in,
      I3 => \data[2]_i_2_n_0\,
      I4 => \data[2]_i_3_n_0\,
      I5 => \^data\(2),
      O => \data[2]_i_1_n_0\
    );
\data[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \data[2]_i_2_n_0\
    );
\data[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => state(4),
      O => \data[2]_i_3_n_0\
    );
\data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \data[3]_i_2_n_0\,
      I1 => state(2),
      I2 => \data[7]_i_3_n_0\,
      I3 => state(4),
      I4 => state(3),
      I5 => \^data\(3),
      O => \data[3]_i_1_n_0\
    );
\data[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => signal_in,
      I4 => state(1),
      O => \data[3]_i_2_n_0\
    );
\data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \data[4]_i_2_n_0\,
      I1 => state(1),
      I2 => \data[5]_i_3_n_0\,
      I3 => state(0),
      I4 => state(4),
      I5 => \^data\(4),
      O => \data[4]_i_1_n_0\
    );
\data[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => signal_in,
      I3 => state(0),
      I4 => state(1),
      O => \data[4]_i_2_n_0\
    );
\data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \data[5]_i_2_n_0\,
      I1 => state(0),
      I2 => \data[5]_i_3_n_0\,
      I3 => state(1),
      I4 => state(4),
      I5 => \^data\(5),
      O => \data[5]_i_1_n_0\
    );
\data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => signal_in,
      O => \data[5]_i_2_n_0\
    );
\data[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \data[5]_i_3_n_0\
    );
\data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \data[6]_i_2_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => \data[6]_i_3_n_0\,
      I5 => \^data\(6),
      O => \data[6]_i_1_n_0\
    );
\data[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => signal_in,
      I4 => state(0),
      O => \data[6]_i_2_n_0\
    );
\data[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(4),
      O => \data[6]_i_3_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \data[7]_i_2_n_0\,
      I1 => state(3),
      I2 => \data[7]_i_3_n_0\,
      I3 => state(4),
      I4 => state(2),
      I5 => \^data\(7),
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(1),
      I1 => signal_in,
      I2 => state(0),
      O => \data[7]_i_2_n_0\
    );
\data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \data[7]_i_3_n_0\
    );
\data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => \data[8]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \data[10]_i_3_n_0\,
      I5 => \^data\(8),
      O => \data[8]_i_1_n_0\
    );
\data[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => signal_in,
      I3 => state(2),
      I4 => state(3),
      O => \data[8]_i_2_n_0\
    );
\data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \data[9]_i_2_n_0\,
      I1 => state(0),
      I2 => \data[9]_i_3_n_0\,
      I3 => state(3),
      I4 => state(4),
      I5 => \^data\(9),
      O => \data[9]_i_1_n_0\
    );
\data[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => signal_in,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      O => \data[9]_i_2_n_0\
    );
\data[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \data[9]_i_3_n_0\
    );
data_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => data_ready_i_1_n_0
    );
data_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000100"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(4),
      I4 => state(2),
      I5 => \^data_ready_test\,
      O => data_ready_i_2_n_0
    );
data_ready_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^adc_clock_out\,
      I1 => resetn,
      I2 => h_clock,
      O => clock
    );
data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => data_ready_i_2_n_0,
      Q => \^data_ready_test\,
      R => data_ready_i_1_n_0
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[0]_i_1_n_0\,
      Q => \^data\(0),
      R => data_ready_i_1_n_0
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[10]_i_1_n_0\,
      Q => \^data\(10),
      R => data_ready_i_1_n_0
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[11]_i_1_n_0\,
      Q => \^data\(11),
      R => data_ready_i_1_n_0
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[1]_i_1_n_0\,
      Q => \^data\(1),
      R => data_ready_i_1_n_0
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[2]_i_1_n_0\,
      Q => \^data\(2),
      R => data_ready_i_1_n_0
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[3]_i_1_n_0\,
      Q => \^data\(3),
      R => data_ready_i_1_n_0
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[4]_i_1_n_0\,
      Q => \^data\(4),
      R => data_ready_i_1_n_0
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[5]_i_1_n_0\,
      Q => \^data\(5),
      R => data_ready_i_1_n_0
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[6]_i_1_n_0\,
      Q => \^data\(6),
      R => data_ready_i_1_n_0
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[7]_i_1_n_0\,
      Q => \^data\(7),
      R => data_ready_i_1_n_0
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[8]_i_1_n_0\,
      Q => \^data\(8),
      R => data_ready_i_1_n_0
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \data[9]_i_1_n_0\,
      Q => \^data\(9),
      R => data_ready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    resetn : in STD_LOGIC;
    adc_clock : in STD_LOGIC;
    h_clock : in STD_LOGIC;
    signal_in : in STD_LOGIC;
    recieve_ready : in STD_LOGIC;
    data_ready : out STD_LOGIC;
    data_ready_test : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    cs : out STD_LOGIC;
    adc_clock_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_adc_0_0,adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_ready_test\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clock : signal is "xilinx.com:signal:clock:1.0 adc_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clock : signal is "XIL_INTERFACENAME adc_clock, ASSOCIATED_RESET resetn, FREQ_HZ 1000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1";
  attribute X_INTERFACE_INFO of h_clock : signal is "xilinx.com:signal:clock:1.0 h_clock CLK";
  attribute X_INTERFACE_PARAMETER of h_clock : signal is "XIL_INTERFACENAME h_clock, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW";
begin
  data_ready <= \^data_ready_test\;
  data_ready_test <= \^data_ready_test\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc
     port map (
      adc_clock => adc_clock,
      adc_clock_out => adc_clock_out,
      cs => cs,
      data(11 downto 0) => data(11 downto 0),
      data_ready_test => \^data_ready_test\,
      h_clock => h_clock,
      recieve_ready => recieve_ready,
      resetn => resetn,
      signal_in => signal_in
    );
end STRUCTURE;
