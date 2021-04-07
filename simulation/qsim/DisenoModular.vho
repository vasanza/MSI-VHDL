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

-- DATE "04/06/2021 15:02:02"

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

ENTITY 	DisenoModular IS
    PORT (
	R : OUT std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	TC : IN std_logic;
	TBCD : IN std_logic
	);
END DisenoModular;

-- Design Ports Information
-- R[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TC	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TBCD	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DisenoModular IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TC : std_logic;
SIGNAL ww_TBCD : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \TBCD~input_o\ : std_logic;
SIGNAL \TC~input_o\ : std_logic;
SIGNAL \inst|Q[3]~0_combout\ : std_logic;
SIGNAL \inst|Q[2]~1_combout\ : std_logic;
SIGNAL \inst|Q[1]~2_combout\ : std_logic;
SIGNAL \inst|Q[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_TBCD~input_o\ : std_logic;
SIGNAL \ALT_INV_TC~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;

BEGIN

R <= ww_R;
ww_A <= A;
ww_TC <= TC;
ww_TBCD <= TBCD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_TBCD~input_o\ <= NOT \TBCD~input_o\;
\ALT_INV_TC~input_o\ <= NOT \TC~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;

-- Location: IOOBUF_X86_Y0_N53
\R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_R(3));

-- Location: IOOBUF_X89_Y6_N22
\R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_R(2));

-- Location: IOOBUF_X89_Y6_N39
\R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_R(1));

-- Location: IOOBUF_X89_Y4_N96
\R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_R(0));

-- Location: IOIBUF_X88_Y0_N53
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\TBCD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TBCD,
	o => \TBCD~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\TC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TC,
	o => \TC~input_o\);

-- Location: LABCELL_X88_Y4_N0
\inst|Q[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[3]~0_combout\ = ( \TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & !\A[1]~input_o\)) ) ) ) # ( !\TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & !\A[1]~input_o\)) ) ) ) # ( \TBCD~input_o\ & ( 
-- !\TC~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & !\A[1]~input_o\)) ) ) ) # ( !\TBCD~input_o\ & ( !\TC~input_o\ & ( (!\A[2]~input_o\ & (((\A[3]~input_o\ & !\A[1]~input_o\)))) # (\A[2]~input_o\ & (!\A[3]~input_o\ & ((\A[1]~input_o\) # 
-- (\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000110000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_TBCD~input_o\,
	dataf => \ALT_INV_TC~input_o\,
	combout => \inst|Q[3]~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\inst|Q[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[2]~1_combout\ = ( \TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & !\A[1]~input_o\)) # (\A[2]~input_o\ & (!\A[3]~input_o\)) ) ) ) # ( !\TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & 
-- !\A[1]~input_o\)) # (\A[2]~input_o\ & (!\A[3]~input_o\)) ) ) ) # ( \TBCD~input_o\ & ( !\TC~input_o\ & ( (\A[2]~input_o\ & !\A[3]~input_o\) ) ) ) # ( !\TBCD~input_o\ & ( !\TC~input_o\ & ( (!\A[0]~input_o\ & (!\A[3]~input_o\ & (!\A[2]~input_o\ $ 
-- (!\A[1]~input_o\)))) # (\A[0]~input_o\ & (!\A[2]~input_o\ & ((!\A[3]~input_o\) # (!\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010011000000001100000011000000111100001100000011110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_TBCD~input_o\,
	dataf => \ALT_INV_TC~input_o\,
	combout => \inst|Q[2]~1_combout\);

-- Location: LABCELL_X88_Y4_N12
\inst|Q[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[1]~2_combout\ = ( \TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[3]~input_o\ & (!\A[2]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( !\TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[3]~input_o\ & (!\A[2]~input_o\ $ (!\A[1]~input_o\))) ) ) ) # ( \TBCD~input_o\ & ( 
-- !\TC~input_o\ & ( (!\A[3]~input_o\ & \A[1]~input_o\) ) ) ) # ( !\TBCD~input_o\ & ( !\TC~input_o\ & ( (!\A[0]~input_o\ & (!\A[1]~input_o\ & ((!\A[2]~input_o\) # (!\A[3]~input_o\)))) # (\A[0]~input_o\ & (((!\A[3]~input_o\ & \A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100001010000000000001111000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_TBCD~input_o\,
	dataf => \ALT_INV_TC~input_o\,
	combout => \inst|Q[1]~2_combout\);

-- Location: LABCELL_X88_Y4_N18
\inst|Q[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[0]~3_combout\ = ( \TBCD~input_o\ & ( \TC~input_o\ & ( (!\A[0]~input_o\ & (((!\A[3]~input_o\ & \A[1]~input_o\)))) # (\A[0]~input_o\ & (!\A[1]~input_o\ & ((!\A[2]~input_o\) # (!\A[3]~input_o\)))) ) ) ) # ( !\TBCD~input_o\ & ( \TC~input_o\ & ( 
-- (!\A[0]~input_o\ & (((!\A[3]~input_o\ & \A[1]~input_o\)))) # (\A[0]~input_o\ & (!\A[1]~input_o\ & ((!\A[2]~input_o\) # (!\A[3]~input_o\)))) ) ) ) # ( \TBCD~input_o\ & ( !\TC~input_o\ & ( (\A[0]~input_o\ & ((!\A[3]~input_o\) # ((!\A[2]~input_o\ & 
-- !\A[1]~input_o\)))) ) ) ) # ( !\TBCD~input_o\ & ( !\TC~input_o\ & ( (!\A[0]~input_o\ & ((!\A[3]~input_o\) # ((!\A[2]~input_o\ & !\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000010101000101000001010100101000000101010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_TBCD~input_o\,
	dataf => \ALT_INV_TC~input_o\,
	combout => \inst|Q[0]~3_combout\);

-- Location: LABCELL_X36_Y27_N3
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


