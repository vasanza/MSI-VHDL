-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "04/14/2021 21:16:23"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\2021_PAE_C4_Leccion\ IS
    PORT (
	Cuatro : OUT std_logic_vector(1 TO 7);
	MK : IN std_logic_vector(3 DOWNTO 0);
	Dos : OUT std_logic_vector(1 TO 7);
	Uno : OUT std_logic_vector(1 TO 7)
	);
END \2021_PAE_C4_Leccion\;

-- Design Ports Information
-- Cuatro[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cuatro[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cuatro[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cuatro[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cuatro[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cuatro[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cuatro[7]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[1]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[6]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dos[7]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[2]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[4]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Uno[7]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MK[3]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MK[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MK[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MK[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \2021_PAE_C4_Leccion\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cuatro : std_logic_vector(1 TO 7);
SIGNAL ww_MK : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dos : std_logic_vector(1 TO 7);
SIGNAL ww_Uno : std_logic_vector(1 TO 7);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MK[2]~input_o\ : std_logic;
SIGNAL \MK[1]~input_o\ : std_logic;
SIGNAL \MK[0]~input_o\ : std_logic;
SIGNAL \MK[3]~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|SEG7[1]~0_combout\ : std_logic;
SIGNAL \inst2|SEG7[3]~1_combout\ : std_logic;
SIGNAL \inst2|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|SEG7[1]~0_combout\ : std_logic;
SIGNAL \inst3|SEG7[3]~1_combout\ : std_logic;
SIGNAL \inst3|Equal9~0_combout\ : std_logic;
SIGNAL \ALT_INV_MK[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_MK[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_MK[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_MK[3]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_SEG7[3]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_SEG7[3]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

Cuatro <= ww_Cuatro;
ww_MK <= MK;
Dos <= ww_Dos;
Uno <= ww_Uno;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_MK[0]~input_o\ <= NOT \MK[0]~input_o\;
\ALT_INV_MK[1]~input_o\ <= NOT \MK[1]~input_o\;
\ALT_INV_MK[2]~input_o\ <= NOT \MK[2]~input_o\;
\ALT_INV_MK[3]~input_o\ <= NOT \MK[3]~input_o\;
\inst3|ALT_INV_SEG7[3]~1_combout\ <= NOT \inst3|SEG7[3]~1_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|Mux3~0_combout\;
\inst2|ALT_INV_SEG7[3]~1_combout\ <= NOT \inst2|SEG7[3]~1_combout\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;

-- Location: IOOBUF_X32_Y0_N53
\Cuatro[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Cuatro(1));

-- Location: IOOBUF_X4_Y0_N53
\Cuatro[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Cuatro(2));

-- Location: IOOBUF_X89_Y23_N39
\Cuatro[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Cuatro(3));

-- Location: IOOBUF_X32_Y0_N19
\Cuatro[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Cuatro(4));

-- Location: IOOBUF_X28_Y0_N2
\Cuatro[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Cuatro(5));

-- Location: IOOBUF_X28_Y0_N19
\Cuatro[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Cuatro(6));

-- Location: IOOBUF_X89_Y9_N39
\Cuatro[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Cuatro(7));

-- Location: IOOBUF_X50_Y0_N42
\Dos[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SEG7[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Dos(1));

-- Location: IOOBUF_X80_Y0_N53
\Dos[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dos(2));

-- Location: IOOBUF_X38_Y0_N2
\Dos[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_SEG7[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_Dos(3));

-- Location: IOOBUF_X50_Y0_N93
\Dos[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SEG7[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Dos(4));

-- Location: IOOBUF_X38_Y0_N19
\Dos[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Dos(5));

-- Location: IOOBUF_X36_Y0_N53
\Dos[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Equal9~0_combout\,
	devoe => ww_devoe,
	o => ww_Dos(6));

-- Location: IOOBUF_X38_Y0_N36
\Dos[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Dos(7));

-- Location: IOOBUF_X32_Y0_N2
\Uno[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SEG7[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Uno(1));

-- Location: IOOBUF_X86_Y0_N36
\Uno[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Uno(2));

-- Location: IOOBUF_X34_Y0_N93
\Uno[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_SEG7[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_Uno(3));

-- Location: IOOBUF_X32_Y0_N36
\Uno[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|SEG7[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Uno(4));

-- Location: IOOBUF_X34_Y0_N42
\Uno[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Uno(5));

-- Location: IOOBUF_X34_Y0_N76
\Uno[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Equal9~0_combout\,
	devoe => ww_devoe,
	o => ww_Uno(6));

-- Location: IOOBUF_X30_Y0_N2
\Uno[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Uno(7));

-- Location: IOIBUF_X36_Y0_N1
\MK[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MK(2),
	o => \MK[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\MK[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MK(1),
	o => \MK[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\MK[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MK(0),
	o => \MK[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\MK[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MK(3),
	o => \MK[3]~input_o\);

-- Location: MLABCELL_X34_Y1_N30
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \MK[0]~input_o\ & ( \MK[3]~input_o\ & ( (\MK[2]~input_o\ & \MK[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MK[2]~input_o\,
	datac => \ALT_INV_MK[1]~input_o\,
	datae => \ALT_INV_MK[0]~input_o\,
	dataf => \ALT_INV_MK[3]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LABCELL_X37_Y1_N9
\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( !\MK[3]~input_o\ & ( \MK[0]~input_o\ & ( !\MK[1]~input_o\ $ (!\MK[2]~input_o\) ) ) ) # ( \MK[3]~input_o\ & ( !\MK[0]~input_o\ & ( !\MK[1]~input_o\ $ (!\MK[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101001010101101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MK[1]~input_o\,
	datad => \ALT_INV_MK[2]~input_o\,
	datae => \ALT_INV_MK[3]~input_o\,
	dataf => \ALT_INV_MK[0]~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: LABCELL_X37_Y1_N0
\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \MK[3]~input_o\ & ( \MK[0]~input_o\ & ( !\MK[2]~input_o\ $ (!\MK[1]~input_o\) ) ) ) # ( !\MK[3]~input_o\ & ( \MK[0]~input_o\ & ( (\MK[2]~input_o\ & \MK[1]~input_o\) ) ) ) # ( \MK[3]~input_o\ & ( !\MK[0]~input_o\ & ( 
-- (\MK[2]~input_o\ & \MK[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MK[2]~input_o\,
	datac => \ALT_INV_MK[1]~input_o\,
	datae => \ALT_INV_MK[3]~input_o\,
	dataf => \ALT_INV_MK[0]~input_o\,
	combout => \inst|Mux1~0_combout\);

-- Location: LABCELL_X37_Y1_N42
\inst2|SEG7[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|SEG7[1]~0_combout\ = ( !\inst|Mux1~0_combout\ & ( \inst|Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datae => \inst|ALT_INV_Mux1~0_combout\,
	combout => \inst2|SEG7[1]~0_combout\);

-- Location: LABCELL_X37_Y1_N51
\inst2|SEG7[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|SEG7[3]~1_combout\ = ( \inst|Mux1~0_combout\ & ( \inst|Mux2~0_combout\ ) ) # ( !\inst|Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux2~0_combout\,
	datae => \inst|ALT_INV_Mux1~0_combout\,
	combout => \inst2|SEG7[3]~1_combout\);

-- Location: LABCELL_X37_Y1_N24
\inst2|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal9~0_combout\ = ( \inst|Mux1~0_combout\ ) # ( !\inst|Mux1~0_combout\ & ( \inst|Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datae => \inst|ALT_INV_Mux1~0_combout\,
	combout => \inst2|Equal9~0_combout\);

-- Location: MLABCELL_X34_Y1_N9
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \MK[0]~input_o\ & ( \MK[3]~input_o\ & ( (!\MK[1]~input_o\ & !\MK[2]~input_o\) ) ) ) # ( !\MK[0]~input_o\ & ( !\MK[3]~input_o\ & ( (\MK[1]~input_o\ & \MK[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MK[1]~input_o\,
	datad => \ALT_INV_MK[2]~input_o\,
	datae => \ALT_INV_MK[0]~input_o\,
	dataf => \ALT_INV_MK[3]~input_o\,
	combout => \inst|Mux3~0_combout\);

-- Location: MLABCELL_X34_Y1_N42
\inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ( !\MK[0]~input_o\ & ( \MK[3]~input_o\ & ( (!\MK[2]~input_o\ & !\MK[1]~input_o\) ) ) ) # ( \MK[0]~input_o\ & ( !\MK[3]~input_o\ & ( (!\MK[2]~input_o\ & !\MK[1]~input_o\) ) ) ) # ( !\MK[0]~input_o\ & ( !\MK[3]~input_o\ & ( 
-- !\MK[2]~input_o\ $ (!\MK[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MK[2]~input_o\,
	datac => \ALT_INV_MK[1]~input_o\,
	datae => \ALT_INV_MK[0]~input_o\,
	dataf => \ALT_INV_MK[3]~input_o\,
	combout => \inst|Mux4~0_combout\);

-- Location: MLABCELL_X34_Y1_N51
\inst3|SEG7[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|SEG7[1]~0_combout\ = ( \inst|Mux4~0_combout\ & ( !\inst|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux3~0_combout\,
	dataf => \inst|ALT_INV_Mux4~0_combout\,
	combout => \inst3|SEG7[1]~0_combout\);

-- Location: MLABCELL_X34_Y1_N54
\inst3|SEG7[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|SEG7[3]~1_combout\ = ( \inst|Mux4~0_combout\ ) # ( !\inst|Mux4~0_combout\ & ( !\inst|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Mux3~0_combout\,
	dataf => \inst|ALT_INV_Mux4~0_combout\,
	combout => \inst3|SEG7[3]~1_combout\);

-- Location: MLABCELL_X34_Y1_N0
\inst3|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal9~0_combout\ = ( \inst|Mux4~0_combout\ ) # ( !\inst|Mux4~0_combout\ & ( \inst|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Mux3~0_combout\,
	dataf => \inst|ALT_INV_Mux4~0_combout\,
	combout => \inst3|Equal9~0_combout\);

-- Location: LABCELL_X17_Y71_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


