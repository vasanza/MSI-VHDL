-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "08/04/2021 16:50:39"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	RingCntV2 IS
    PORT (
	Clk : IN std_logic;
	resetn : IN std_logic;
	en : IN std_logic;
	q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END RingCntV2;

-- Design Ports Information
-- q[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RingCntV2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[2]~reg0_q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_resetn <= resetn;
ww_en <= en;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q[1]~reg0_q\ <= NOT \q[1]~reg0_q\;
\ALT_INV_q[0]~reg0_q\ <= NOT \q[0]~reg0_q\;
\ALT_INV_q[3]~reg0_q\ <= NOT \q[3]~reg0_q\;
\ALT_INV_q[2]~reg0_q\ <= NOT \q[2]~reg0_q\;

-- Location: IOOBUF_X89_Y37_N56
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X89_Y35_N96
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X89_Y37_N22
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y36_N56
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y37_N9
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\q[1]~reg0_q\ & ( !\q[3]~reg0_q\ & ( (!\q[0]~reg0_q\ & \q[2]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_q[0]~reg0_q\,
	datad => \ALT_INV_q[2]~reg0_q\,
	datae => \ALT_INV_q[1]~reg0_q\,
	dataf => \ALT_INV_q[3]~reg0_q\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X89_Y37_N38
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X88_Y37_N11
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \resetn~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: LABCELL_X88_Y37_N33
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\q[3]~reg0_q\ & ( !\q[2]~reg0_q\ & ( (!\q[0]~reg0_q\ & !\q[1]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_q[0]~reg0_q\,
	datac => \ALT_INV_q[1]~reg0_q\,
	datae => \ALT_INV_q[3]~reg0_q\,
	dataf => \ALT_INV_q[2]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y37_N35
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	clrn => \resetn~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: LABCELL_X88_Y37_N24
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\q[2]~reg0_q\ & ( !\q[1]~reg0_q\ & ( (\q[3]~reg0_q\ & !\q[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_q[3]~reg0_q\,
	datad => \ALT_INV_q[0]~reg0_q\,
	datae => \ALT_INV_q[2]~reg0_q\,
	dataf => \ALT_INV_q[1]~reg0_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X88_Y37_N26
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: LABCELL_X88_Y37_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\q[0]~reg0_q\ & ( !\q[3]~reg0_q\ & ( (!\q[2]~reg0_q\ & \q[1]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_q[2]~reg0_q\,
	datad => \ALT_INV_q[1]~reg0_q\,
	datae => \ALT_INV_q[0]~reg0_q\,
	dataf => \ALT_INV_q[3]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X88_Y37_N14
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \resetn~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: LABCELL_X30_Y77_N0
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


