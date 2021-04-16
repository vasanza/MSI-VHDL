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

-- DATE "04/16/2021 10:52:31"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	fin : OUT std_logic;
	resetn : IN std_logic;
	clk : IN std_logic;
	start : IN std_logic;
	enter : IN std_logic;
	est : OUT std_logic_vector(3 DOWNTO 0);
	Q0 : OUT std_logic_vector(3 DOWNTO 0);
	Digito : IN std_logic_vector(3 DOWNTO 0);
	Q1 : OUT std_logic_vector(3 DOWNTO 0);
	Q2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- fin	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[2]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[3]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Digito[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_est : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Digito : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \inst10|Selector0~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \inst10|y.s0~q\ : std_logic;
SIGNAL \inst10|y~24_combout\ : std_logic;
SIGNAL \inst10|y.s1~q\ : std_logic;
SIGNAL \inst10|Selector1~0_combout\ : std_logic;
SIGNAL \inst10|y.s2~q\ : std_logic;
SIGNAL \inst10|y~23_combout\ : std_logic;
SIGNAL \inst10|y.s3~q\ : std_logic;
SIGNAL \inst10|y~20_combout\ : std_logic;
SIGNAL \inst10|y.s4~q\ : std_logic;
SIGNAL \inst10|Selector2~0_combout\ : std_logic;
SIGNAL \inst10|y.s5~q\ : std_logic;
SIGNAL \inst10|y~22_combout\ : std_logic;
SIGNAL \inst10|y.s6~q\ : std_logic;
SIGNAL \inst10|y~21_combout\ : std_logic;
SIGNAL \inst10|y.s7~q\ : std_logic;
SIGNAL \inst10|Selector3~0_combout\ : std_logic;
SIGNAL \inst10|y.s8~q\ : std_logic;
SIGNAL \inst10|y~19_combout\ : std_logic;
SIGNAL \inst10|y.s9~q\ : std_logic;
SIGNAL \inst10|y~18_combout\ : std_logic;
SIGNAL \inst10|y.s10~q\ : std_logic;
SIGNAL \inst10|Selector4~0_combout\ : std_logic;
SIGNAL \inst10|y.s11~q\ : std_logic;
SIGNAL \inst10|y~17_combout\ : std_logic;
SIGNAL \inst10|y.s12~q\ : std_logic;
SIGNAL \inst10|WideOr5~0_combout\ : std_logic;
SIGNAL \inst10|WideOr5~combout\ : std_logic;
SIGNAL \inst10|WideOr6~combout\ : std_logic;
SIGNAL \inst10|WideOr7~combout\ : std_logic;
SIGNAL \inst10|WideOr8~combout\ : std_logic;
SIGNAL \Digito[3]~input_o\ : std_logic;
SIGNAL \inst|q[3]~feeder_combout\ : std_logic;
SIGNAL \Digito[2]~input_o\ : std_logic;
SIGNAL \Digito[1]~input_o\ : std_logic;
SIGNAL \Digito[0]~input_o\ : std_logic;
SIGNAL \inst2|q[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|q[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|q[0]~feeder_combout\ : std_logic;
SIGNAL \inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Digito[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Digito[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_enter~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s0~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s1~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s3~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s2~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s6~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s5~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s7~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s4~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s9~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s8~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s10~q\ : std_logic;
SIGNAL \inst10|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s12~q\ : std_logic;
SIGNAL \inst10|ALT_INV_y.s11~q\ : std_logic;

BEGIN

fin <= ww_fin;
ww_resetn <= resetn;
ww_clk <= clk;
ww_start <= start;
ww_enter <= enter;
est <= ww_est;
Q0 <= ww_Q0;
ww_Digito <= Digito;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Digito[0]~input_o\ <= NOT \Digito[0]~input_o\;
\ALT_INV_Digito[3]~input_o\ <= NOT \Digito[3]~input_o\;
\ALT_INV_enter~input_o\ <= NOT \enter~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\inst10|ALT_INV_y.s0~q\ <= NOT \inst10|y.s0~q\;
\inst10|ALT_INV_y.s1~q\ <= NOT \inst10|y.s1~q\;
\inst10|ALT_INV_y.s3~q\ <= NOT \inst10|y.s3~q\;
\inst10|ALT_INV_y.s2~q\ <= NOT \inst10|y.s2~q\;
\inst10|ALT_INV_y.s6~q\ <= NOT \inst10|y.s6~q\;
\inst10|ALT_INV_y.s5~q\ <= NOT \inst10|y.s5~q\;
\inst10|ALT_INV_y.s7~q\ <= NOT \inst10|y.s7~q\;
\inst10|ALT_INV_y.s4~q\ <= NOT \inst10|y.s4~q\;
\inst10|ALT_INV_y.s9~q\ <= NOT \inst10|y.s9~q\;
\inst10|ALT_INV_y.s8~q\ <= NOT \inst10|y.s8~q\;
\inst10|ALT_INV_y.s10~q\ <= NOT \inst10|y.s10~q\;
\inst10|ALT_INV_WideOr5~0_combout\ <= NOT \inst10|WideOr5~0_combout\;
\inst10|ALT_INV_y.s12~q\ <= NOT \inst10|y.s12~q\;
\inst10|ALT_INV_y.s11~q\ <= NOT \inst10|y.s11~q\;

-- Location: IOOBUF_X89_Y4_N45
\fin~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_fin);

-- Location: IOOBUF_X89_Y25_N5
\est[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_est(3));

-- Location: IOOBUF_X89_Y9_N5
\est[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_est(2));

-- Location: IOOBUF_X89_Y4_N62
\est[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_est(1));

-- Location: IOOBUF_X89_Y9_N22
\est[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_est(0));

-- Location: IOOBUF_X89_Y6_N22
\Q0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(3),
	devoe => ww_devoe,
	o => ww_Q0(3));

-- Location: IOOBUF_X89_Y23_N5
\Q0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(2),
	devoe => ww_devoe,
	o => ww_Q0(2));

-- Location: IOOBUF_X89_Y6_N39
\Q0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(1),
	devoe => ww_devoe,
	o => ww_Q0(1));

-- Location: IOOBUF_X89_Y8_N5
\Q0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|q\(0),
	devoe => ww_devoe,
	o => ww_Q0(0));

-- Location: IOOBUF_X89_Y25_N56
\Q1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(3),
	devoe => ww_devoe,
	o => ww_Q1(3));

-- Location: IOOBUF_X89_Y4_N79
\Q1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(2),
	devoe => ww_devoe,
	o => ww_Q1(2));

-- Location: IOOBUF_X80_Y0_N53
\Q1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(1),
	devoe => ww_devoe,
	o => ww_Q1(1));

-- Location: IOOBUF_X89_Y6_N5
\Q1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(0),
	devoe => ww_devoe,
	o => ww_Q1(0));

-- Location: IOOBUF_X89_Y9_N56
\Q2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(3),
	devoe => ww_devoe,
	o => ww_Q2(3));

-- Location: IOOBUF_X89_Y23_N56
\Q2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(2),
	devoe => ww_devoe,
	o => ww_Q2(2));

-- Location: IOOBUF_X89_Y23_N22
\Q2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(1),
	devoe => ww_devoe,
	o => ww_Q2(1));

-- Location: IOOBUF_X89_Y9_N39
\Q2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|q\(0),
	devoe => ww_devoe,
	o => ww_Q2(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N55
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\enter~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LABCELL_X81_Y17_N3
\inst10|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Selector0~0_combout\ = ( \inst10|y.s0~q\ & ( \inst10|y.s12~q\ & ( \start~input_o\ ) ) ) # ( !\inst10|y.s0~q\ & ( \inst10|y.s12~q\ & ( \start~input_o\ ) ) ) # ( \inst10|y.s0~q\ & ( !\inst10|y.s12~q\ ) ) # ( !\inst10|y.s0~q\ & ( !\inst10|y.s12~q\ & 
-- ( \start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datae => \inst10|ALT_INV_y.s0~q\,
	dataf => \inst10|ALT_INV_y.s12~q\,
	combout => \inst10|Selector0~0_combout\);

-- Location: IOIBUF_X89_Y8_N38
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X81_Y17_N5
\inst10|y.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s0~q\);

-- Location: LABCELL_X81_Y17_N51
\inst10|y~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~24_combout\ = ( \inst10|y.s1~q\ & ( \start~input_o\ ) ) # ( !\inst10|y.s1~q\ & ( (\start~input_o\ & !\inst10|y.s0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010101010101010101000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datad => \inst10|ALT_INV_y.s0~q\,
	datae => \inst10|ALT_INV_y.s1~q\,
	combout => \inst10|y~24_combout\);

-- Location: FF_X81_Y17_N53
\inst10|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s1~q\);

-- Location: LABCELL_X81_Y17_N24
\inst10|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Selector1~0_combout\ = ( \inst10|y.s1~q\ & ( (!\start~input_o\) # ((!\enter~input_o\ & \inst10|y.s2~q\)) ) ) # ( !\inst10|y.s1~q\ & ( (!\enter~input_o\ & \inst10|y.s2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110010101010111011101010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datab => \ALT_INV_enter~input_o\,
	datad => \inst10|ALT_INV_y.s2~q\,
	dataf => \inst10|ALT_INV_y.s1~q\,
	combout => \inst10|Selector1~0_combout\);

-- Location: FF_X81_Y17_N26
\inst10|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s2~q\);

-- Location: LABCELL_X81_Y17_N45
\inst10|y~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~23_combout\ = ( \inst10|y.s2~q\ & ( \enter~input_o\ ) ) # ( !\inst10|y.s2~q\ & ( (\enter~input_o\ & \inst10|y.s3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst10|ALT_INV_y.s3~q\,
	dataf => \inst10|ALT_INV_y.s2~q\,
	combout => \inst10|y~23_combout\);

-- Location: FF_X81_Y17_N47
\inst10|y.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~23_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s3~q\);

-- Location: LABCELL_X81_Y17_N54
\inst10|y~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~20_combout\ = ( \inst10|y.s3~q\ & ( !\enter~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enter~input_o\,
	dataf => \inst10|ALT_INV_y.s3~q\,
	combout => \inst10|y~20_combout\);

-- Location: FF_X81_Y17_N56
\inst10|y.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~20_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s4~q\);

-- Location: LABCELL_X81_Y17_N9
\inst10|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Selector2~0_combout\ = ( \inst10|y.s4~q\ ) # ( !\inst10|y.s4~q\ & ( (!\enter~input_o\ & \inst10|y.s5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst10|ALT_INV_y.s5~q\,
	dataf => \inst10|ALT_INV_y.s4~q\,
	combout => \inst10|Selector2~0_combout\);

-- Location: FF_X81_Y17_N11
\inst10|y.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s5~q\);

-- Location: LABCELL_X80_Y17_N6
\inst10|y~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~22_combout\ = ( \inst10|y.s5~q\ & ( \enter~input_o\ ) ) # ( !\inst10|y.s5~q\ & ( (\enter~input_o\ & \inst10|y.s6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enter~input_o\,
	datad => \inst10|ALT_INV_y.s6~q\,
	dataf => \inst10|ALT_INV_y.s5~q\,
	combout => \inst10|y~22_combout\);

-- Location: FF_X80_Y17_N8
\inst10|y.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~22_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s6~q\);

-- Location: LABCELL_X80_Y17_N57
\inst10|y~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~21_combout\ = ( !\enter~input_o\ & ( \inst10|y.s6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_enter~input_o\,
	dataf => \inst10|ALT_INV_y.s6~q\,
	combout => \inst10|y~21_combout\);

-- Location: FF_X80_Y17_N59
\inst10|y.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~21_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s7~q\);

-- Location: LABCELL_X81_Y17_N36
\inst10|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Selector3~0_combout\ = ( \inst10|y.s8~q\ & ( \inst10|y.s7~q\ ) ) # ( !\inst10|y.s8~q\ & ( \inst10|y.s7~q\ ) ) # ( \inst10|y.s8~q\ & ( !\inst10|y.s7~q\ & ( !\enter~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enter~input_o\,
	datae => \inst10|ALT_INV_y.s8~q\,
	dataf => \inst10|ALT_INV_y.s7~q\,
	combout => \inst10|Selector3~0_combout\);

-- Location: FF_X81_Y17_N38
\inst10|y.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s8~q\);

-- Location: LABCELL_X81_Y17_N57
\inst10|y~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~19_combout\ = ( \inst10|y.s8~q\ & ( \enter~input_o\ ) ) # ( !\inst10|y.s8~q\ & ( (\enter~input_o\ & \inst10|y.s9~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enter~input_o\,
	datad => \inst10|ALT_INV_y.s9~q\,
	dataf => \inst10|ALT_INV_y.s8~q\,
	combout => \inst10|y~19_combout\);

-- Location: FF_X81_Y17_N59
\inst10|y.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~19_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s9~q\);

-- Location: MLABCELL_X82_Y17_N21
\inst10|y~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~18_combout\ = ( !\enter~input_o\ & ( \inst10|y.s9~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_enter~input_o\,
	dataf => \inst10|ALT_INV_y.s9~q\,
	combout => \inst10|y~18_combout\);

-- Location: FF_X82_Y17_N23
\inst10|y.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~18_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s10~q\);

-- Location: LABCELL_X81_Y17_N42
\inst10|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Selector4~0_combout\ = ( \inst10|y.s10~q\ ) # ( !\inst10|y.s10~q\ & ( (!\start~input_o\ & \inst10|y.s11~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datad => \inst10|ALT_INV_y.s11~q\,
	dataf => \inst10|ALT_INV_y.s10~q\,
	combout => \inst10|Selector4~0_combout\);

-- Location: FF_X81_Y17_N44
\inst10|y.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s11~q\);

-- Location: LABCELL_X81_Y17_N27
\inst10|y~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|y~17_combout\ = ( \inst10|y.s11~q\ & ( \start~input_o\ ) ) # ( !\inst10|y.s11~q\ & ( (\start~input_o\ & \inst10|y.s12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datad => \inst10|ALT_INV_y.s12~q\,
	dataf => \inst10|ALT_INV_y.s11~q\,
	combout => \inst10|y~17_combout\);

-- Location: FF_X81_Y17_N29
\inst10|y.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst10|y~17_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|y.s12~q\);

-- Location: LABCELL_X81_Y17_N15
\inst10|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|WideOr5~0_combout\ = ( !\inst10|y.s11~q\ & ( !\inst10|y.s12~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_y.s12~q\,
	dataf => \inst10|ALT_INV_y.s11~q\,
	combout => \inst10|WideOr5~0_combout\);

-- Location: LABCELL_X80_Y17_N9
\inst10|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|WideOr5~combout\ = ( \inst10|y.s9~q\ ) # ( !\inst10|y.s9~q\ & ( (((\inst10|y.s11~q\) # (\inst10|y.s10~q\)) # (\inst10|y.s8~q\)) # (\inst10|y.s12~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_y.s12~q\,
	datab => \inst10|ALT_INV_y.s8~q\,
	datac => \inst10|ALT_INV_y.s10~q\,
	datad => \inst10|ALT_INV_y.s11~q\,
	dataf => \inst10|ALT_INV_y.s9~q\,
	combout => \inst10|WideOr5~combout\);

-- Location: LABCELL_X81_Y17_N6
\inst10|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|WideOr6~combout\ = ( \inst10|y.s5~q\ ) # ( !\inst10|y.s5~q\ & ( (((\inst10|y.s7~q\) # (\inst10|y.s12~q\)) # (\inst10|y.s4~q\)) # (\inst10|y.s6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_y.s6~q\,
	datab => \inst10|ALT_INV_y.s4~q\,
	datac => \inst10|ALT_INV_y.s12~q\,
	datad => \inst10|ALT_INV_y.s7~q\,
	dataf => \inst10|ALT_INV_y.s5~q\,
	combout => \inst10|WideOr6~combout\);

-- Location: LABCELL_X80_Y17_N39
\inst10|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|WideOr7~combout\ = ( \inst10|y.s10~q\ & ( \inst10|y.s2~q\ ) ) # ( !\inst10|y.s10~q\ & ( \inst10|y.s2~q\ ) ) # ( \inst10|y.s10~q\ & ( !\inst10|y.s2~q\ ) ) # ( !\inst10|y.s10~q\ & ( !\inst10|y.s2~q\ & ( (((\inst10|y.s3~q\) # (\inst10|y.s11~q\)) # 
-- (\inst10|y.s6~q\)) # (\inst10|y.s7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_y.s7~q\,
	datab => \inst10|ALT_INV_y.s6~q\,
	datac => \inst10|ALT_INV_y.s11~q\,
	datad => \inst10|ALT_INV_y.s3~q\,
	datae => \inst10|ALT_INV_y.s10~q\,
	dataf => \inst10|ALT_INV_y.s2~q\,
	combout => \inst10|WideOr7~combout\);

-- Location: LABCELL_X81_Y17_N18
\inst10|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|WideOr8~combout\ = ( \inst10|y.s9~q\ & ( \inst10|y.s7~q\ ) ) # ( !\inst10|y.s9~q\ & ( \inst10|y.s7~q\ ) ) # ( \inst10|y.s9~q\ & ( !\inst10|y.s7~q\ ) ) # ( !\inst10|y.s9~q\ & ( !\inst10|y.s7~q\ & ( (((\inst10|y.s11~q\) # (\inst10|y.s1~q\)) # 
-- (\inst10|y.s5~q\)) # (\inst10|y.s3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_y.s3~q\,
	datab => \inst10|ALT_INV_y.s5~q\,
	datac => \inst10|ALT_INV_y.s1~q\,
	datad => \inst10|ALT_INV_y.s11~q\,
	datae => \inst10|ALT_INV_y.s9~q\,
	dataf => \inst10|ALT_INV_y.s7~q\,
	combout => \inst10|WideOr8~combout\);

-- Location: IOIBUF_X80_Y0_N35
\Digito[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(3),
	o => \Digito[3]~input_o\);

-- Location: LABCELL_X81_Y17_N30
\inst|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|q[3]~feeder_combout\ = ( \Digito[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[3]~input_o\,
	combout => \inst|q[3]~feeder_combout\);

-- Location: FF_X81_Y17_N31
\inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|q[3]~feeder_combout\,
	clrn => \inst10|y.s0~q\,
	ena => \inst10|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(3));

-- Location: IOIBUF_X89_Y8_N55
\Digito[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(2),
	o => \Digito[2]~input_o\);

-- Location: FF_X81_Y17_N13
\inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[2]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(2));

-- Location: IOIBUF_X89_Y23_N38
\Digito[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(1),
	o => \Digito[1]~input_o\);

-- Location: FF_X81_Y17_N16
\inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(1));

-- Location: IOIBUF_X82_Y0_N58
\Digito[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Digito(0),
	o => \Digito[0]~input_o\);

-- Location: FF_X81_Y17_N34
\inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[0]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q\(0));

-- Location: FF_X80_Y17_N46
\inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[3]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(3));

-- Location: FF_X80_Y17_N25
\inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[2]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(2));

-- Location: FF_X80_Y17_N43
\inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(1));

-- Location: LABCELL_X80_Y17_N51
\inst2|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|q[0]~feeder_combout\ = ( \Digito[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[0]~input_o\,
	combout => \inst2|q[0]~feeder_combout\);

-- Location: FF_X80_Y17_N52
\inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst2|q[0]~feeder_combout\,
	clrn => \inst10|y.s0~q\,
	ena => \inst10|y.s7~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(0));

-- Location: MLABCELL_X82_Y17_N42
\inst3|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|q[3]~feeder_combout\ = ( \Digito[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[3]~input_o\,
	combout => \inst3|q[3]~feeder_combout\);

-- Location: FF_X82_Y17_N43
\inst3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|q[3]~feeder_combout\,
	clrn => \inst10|y.s0~q\,
	ena => \inst10|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(3));

-- Location: FF_X82_Y17_N16
\inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[2]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(2));

-- Location: FF_X82_Y17_N58
\inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Digito[1]~input_o\,
	clrn => \inst10|y.s0~q\,
	sload => VCC,
	ena => \inst10|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(1));

-- Location: MLABCELL_X82_Y17_N51
\inst3|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|q[0]~feeder_combout\ = ( \Digito[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Digito[0]~input_o\,
	combout => \inst3|q[0]~feeder_combout\);

-- Location: FF_X82_Y17_N52
\inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|q[0]~feeder_combout\,
	clrn => \inst10|y.s0~q\,
	ena => \inst10|y.s10~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|q\(0));

-- Location: LABCELL_X43_Y61_N3
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


