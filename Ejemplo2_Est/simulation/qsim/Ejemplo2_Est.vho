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

-- DATE "06/16/2021 15:56:07"

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

ENTITY 	ejemplo_estructural IS
    PORT (
	SA : IN std_logic_vector(0 DOWNTO 0);
	SB : IN std_logic_vector(0 DOWNTO 0);
	Y : OUT std_logic_vector(0 DOWNTO 0)
	);
END ejemplo_estructural;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SB[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ejemplo_estructural IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SA : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SB : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SB[0]~input_o\ : std_logic;
SIGNAL \SA[0]~input_o\ : std_logic;
SIGNAL \or1|F[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_SB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SA[0]~input_o\ : std_logic;

BEGIN

ww_SA <= SA;
ww_SB <= SB;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SB[0]~input_o\ <= NOT \SB[0]~input_o\;
\ALT_INV_SA[0]~input_o\ <= NOT \SA[0]~input_o\;

-- Location: IOOBUF_X89_Y25_N22
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \or1|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOIBUF_X89_Y25_N4
\SB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SB(0),
	o => \SB[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\SA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SA(0),
	o => \SA[0]~input_o\);

-- Location: LABCELL_X88_Y25_N0
\or1|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \or1|F[0]~0_combout\ = ( \SA[0]~input_o\ & ( !\SB[0]~input_o\ ) ) # ( !\SA[0]~input_o\ & ( \SB[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SB[0]~input_o\,
	datae => \ALT_INV_SA[0]~input_o\,
	combout => \or1|F[0]~0_combout\);

-- Location: LABCELL_X9_Y45_N0
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


