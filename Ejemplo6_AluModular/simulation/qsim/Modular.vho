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

-- DATE "07/14/2021 15:49:42"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	AluModular IS
    PORT (
	Y : OUT std_logic_vector(8 DOWNTO 0);
	en : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0)
	);
END AluModular;

-- Design Ports Information
-- Y[8]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AluModular IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst13|S[0]~34\ : std_logic;
SIGNAL \inst13|S[0]~35\ : std_logic;
SIGNAL \inst13|S[1]~30\ : std_logic;
SIGNAL \inst13|S[1]~31\ : std_logic;
SIGNAL \inst13|S[2]~26\ : std_logic;
SIGNAL \inst13|S[2]~27\ : std_logic;
SIGNAL \inst13|S[3]~22\ : std_logic;
SIGNAL \inst13|S[3]~23\ : std_logic;
SIGNAL \inst13|S[4]~18\ : std_logic;
SIGNAL \inst13|S[4]~19\ : std_logic;
SIGNAL \inst13|S[5]~14\ : std_logic;
SIGNAL \inst13|S[5]~15\ : std_logic;
SIGNAL \inst13|S[6]~10\ : std_logic;
SIGNAL \inst13|S[6]~11\ : std_logic;
SIGNAL \inst13|S[7]~6\ : std_logic;
SIGNAL \inst13|S[7]~7\ : std_logic;
SIGNAL \inst13|S[8]~1_sumout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \inst|Q[8]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~30\ : std_logic;
SIGNAL \inst4|Add0~26\ : std_logic;
SIGNAL \inst4|Add0~22\ : std_logic;
SIGNAL \inst4|Add0~18\ : std_logic;
SIGNAL \inst4|Add0~14\ : std_logic;
SIGNAL \inst4|Add0~10\ : std_logic;
SIGNAL \inst4|Add0~6\ : std_logic;
SIGNAL \inst4|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst13|S[7]~5_sumout\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst|Q[7]~1_combout\ : std_logic;
SIGNAL \inst|Q[7]~36_combout\ : std_logic;
SIGNAL \inst4|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst13|S[6]~9_sumout\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Q[6]~2_combout\ : std_logic;
SIGNAL \inst|Q[6]~32_combout\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst4|Add0~9_sumout\ : std_logic;
SIGNAL \inst13|S[5]~13_sumout\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Q[5]~3_combout\ : std_logic;
SIGNAL \inst|Q[5]~28_combout\ : std_logic;
SIGNAL \inst4|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst13|S[4]~17_sumout\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Q[4]~4_combout\ : std_logic;
SIGNAL \inst|Q[4]~24_combout\ : std_logic;
SIGNAL \inst4|Add0~17_sumout\ : std_logic;
SIGNAL \inst13|S[3]~21_sumout\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Q[3]~5_combout\ : std_logic;
SIGNAL \inst|Q[3]~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst13|S[2]~25_sumout\ : std_logic;
SIGNAL \inst4|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Q[2]~6_combout\ : std_logic;
SIGNAL \inst|Q[2]~16_combout\ : std_logic;
SIGNAL \inst4|Add0~25_sumout\ : std_logic;
SIGNAL \inst13|S[1]~29_sumout\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Q[1]~7_combout\ : std_logic;
SIGNAL \inst|Q[1]~12_combout\ : std_logic;
SIGNAL \inst4|Add0~29_sumout\ : std_logic;
SIGNAL \inst13|S[0]~33_sumout\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Q[0]~8_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[0]~33_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[1]~29_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[2]~25_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[3]~21_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[4]~17_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[5]~13_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[6]~9_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst4|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[7]~5_sumout\ : std_logic;
SIGNAL \inst1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst13|ALT_INV_S[8]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[1]~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[2]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[3]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[4]~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[5]~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[6]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Q[7]~1_combout\ : std_logic;

BEGIN

Y <= ww_Y;
ww_en <= en;
ww_A <= A;
ww_B <= B;
ww_sel <= sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|ALT_INV_Add0~29_sumout\ <= NOT \inst4|Add0~29_sumout\;
\inst3|ALT_INV_Add0~29_sumout\ <= NOT \inst3|Add0~29_sumout\;
\inst1|ALT_INV_Add0~29_sumout\ <= NOT \inst1|Add0~29_sumout\;
\inst13|ALT_INV_S[0]~33_sumout\ <= NOT \inst13|S[0]~33_sumout\;
\inst4|ALT_INV_Add0~25_sumout\ <= NOT \inst4|Add0~25_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst13|ALT_INV_S[1]~29_sumout\ <= NOT \inst13|S[1]~29_sumout\;
\inst1|ALT_INV_Add0~25_sumout\ <= NOT \inst1|Add0~25_sumout\;
\inst4|ALT_INV_Add0~21_sumout\ <= NOT \inst4|Add0~21_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst13|ALT_INV_S[2]~25_sumout\ <= NOT \inst13|S[2]~25_sumout\;
\inst1|ALT_INV_Add0~21_sumout\ <= NOT \inst1|Add0~21_sumout\;
\inst4|ALT_INV_Add0~17_sumout\ <= NOT \inst4|Add0~17_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst13|ALT_INV_S[3]~21_sumout\ <= NOT \inst13|S[3]~21_sumout\;
\inst1|ALT_INV_Add0~17_sumout\ <= NOT \inst1|Add0~17_sumout\;
\inst4|ALT_INV_Add0~13_sumout\ <= NOT \inst4|Add0~13_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst13|ALT_INV_S[4]~17_sumout\ <= NOT \inst13|S[4]~17_sumout\;
\inst1|ALT_INV_Add0~13_sumout\ <= NOT \inst1|Add0~13_sumout\;
\inst4|ALT_INV_Add0~9_sumout\ <= NOT \inst4|Add0~9_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst13|ALT_INV_S[5]~13_sumout\ <= NOT \inst13|S[5]~13_sumout\;
\inst1|ALT_INV_Add0~9_sumout\ <= NOT \inst1|Add0~9_sumout\;
\inst4|ALT_INV_Add0~5_sumout\ <= NOT \inst4|Add0~5_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst13|ALT_INV_S[6]~9_sumout\ <= NOT \inst13|S[6]~9_sumout\;
\inst1|ALT_INV_Add0~5_sumout\ <= NOT \inst1|Add0~5_sumout\;
\inst4|ALT_INV_Add0~1_sumout\ <= NOT \inst4|Add0~1_sumout\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\inst13|ALT_INV_S[7]~5_sumout\ <= NOT \inst13|S[7]~5_sumout\;
\inst1|ALT_INV_Add0~1_sumout\ <= NOT \inst1|Add0~1_sumout\;
\inst13|ALT_INV_S[8]~1_sumout\ <= NOT \inst13|S[8]~1_sumout\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[2]~input_o\ <= NOT \sel[2]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\inst|ALT_INV_Mux8~0_combout\ <= NOT \inst|Mux8~0_combout\;
\inst|ALT_INV_Q[1]~7_combout\ <= NOT \inst|Q[1]~7_combout\;
\inst|ALT_INV_Q[2]~6_combout\ <= NOT \inst|Q[2]~6_combout\;
\inst|ALT_INV_Q[3]~5_combout\ <= NOT \inst|Q[3]~5_combout\;
\inst|ALT_INV_Q[4]~4_combout\ <= NOT \inst|Q[4]~4_combout\;
\inst|ALT_INV_Q[5]~3_combout\ <= NOT \inst|Q[5]~3_combout\;
\inst|ALT_INV_Q[6]~2_combout\ <= NOT \inst|Q[6]~2_combout\;
\inst|ALT_INV_Q[7]~1_combout\ <= NOT \inst|Q[7]~1_combout\;

-- Location: IOOBUF_X70_Y0_N19
\Y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[8]~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(8));

-- Location: IOOBUF_X66_Y0_N42
\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[7]~36_combout\,
	devoe => ww_devoe,
	o => ww_Y(7));

-- Location: IOOBUF_X72_Y0_N19
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[6]~32_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOOBUF_X70_Y0_N53
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[5]~28_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X70_Y0_N36
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[4]~24_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X66_Y0_N59
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[3]~20_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X72_Y0_N36
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[2]~16_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X70_Y0_N2
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[1]~12_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X89_Y8_N39
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q[0]~8_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOIBUF_X89_Y9_N55
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: MLABCELL_X82_Y4_N0
\inst13|S[0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[0]~33_sumout\ = SUM(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \inst13|S[0]~34\ = CARRY(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \inst13|S[0]~35\ = SHARE((!\B[0]~input_o\) # (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \inst13|S[0]~33_sumout\,
	cout => \inst13|S[0]~34\,
	shareout => \inst13|S[0]~35\);

-- Location: MLABCELL_X82_Y4_N3
\inst13|S[1]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[1]~29_sumout\ = SUM(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \inst13|S[0]~35\ ) + ( \inst13|S[0]~34\ ))
-- \inst13|S[1]~30\ = CARRY(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \inst13|S[0]~35\ ) + ( \inst13|S[0]~34\ ))
-- \inst13|S[1]~31\ = SHARE((\A[1]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \inst13|S[0]~34\,
	sharein => \inst13|S[0]~35\,
	sumout => \inst13|S[1]~29_sumout\,
	cout => \inst13|S[1]~30\,
	shareout => \inst13|S[1]~31\);

-- Location: MLABCELL_X82_Y4_N6
\inst13|S[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[2]~25_sumout\ = SUM(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \inst13|S[1]~31\ ) + ( \inst13|S[1]~30\ ))
-- \inst13|S[2]~26\ = CARRY(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \inst13|S[1]~31\ ) + ( \inst13|S[1]~30\ ))
-- \inst13|S[2]~27\ = SHARE((!\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \inst13|S[1]~30\,
	sharein => \inst13|S[1]~31\,
	sumout => \inst13|S[2]~25_sumout\,
	cout => \inst13|S[2]~26\,
	shareout => \inst13|S[2]~27\);

-- Location: MLABCELL_X82_Y4_N9
\inst13|S[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[3]~21_sumout\ = SUM(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \inst13|S[2]~27\ ) + ( \inst13|S[2]~26\ ))
-- \inst13|S[3]~22\ = CARRY(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \inst13|S[2]~27\ ) + ( \inst13|S[2]~26\ ))
-- \inst13|S[3]~23\ = SHARE((\A[3]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => \inst13|S[2]~26\,
	sharein => \inst13|S[2]~27\,
	sumout => \inst13|S[3]~21_sumout\,
	cout => \inst13|S[3]~22\,
	shareout => \inst13|S[3]~23\);

-- Location: MLABCELL_X82_Y4_N12
\inst13|S[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[4]~17_sumout\ = SUM(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \inst13|S[3]~23\ ) + ( \inst13|S[3]~22\ ))
-- \inst13|S[4]~18\ = CARRY(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \inst13|S[3]~23\ ) + ( \inst13|S[3]~22\ ))
-- \inst13|S[4]~19\ = SHARE((\A[4]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	cin => \inst13|S[3]~22\,
	sharein => \inst13|S[3]~23\,
	sumout => \inst13|S[4]~17_sumout\,
	cout => \inst13|S[4]~18\,
	shareout => \inst13|S[4]~19\);

-- Location: MLABCELL_X82_Y4_N15
\inst13|S[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[5]~13_sumout\ = SUM(( !\A[5]~input_o\ $ (\B[5]~input_o\) ) + ( \inst13|S[4]~19\ ) + ( \inst13|S[4]~18\ ))
-- \inst13|S[5]~14\ = CARRY(( !\A[5]~input_o\ $ (\B[5]~input_o\) ) + ( \inst13|S[4]~19\ ) + ( \inst13|S[4]~18\ ))
-- \inst13|S[5]~15\ = SHARE((\A[5]~input_o\ & !\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	cin => \inst13|S[4]~18\,
	sharein => \inst13|S[4]~19\,
	sumout => \inst13|S[5]~13_sumout\,
	cout => \inst13|S[5]~14\,
	shareout => \inst13|S[5]~15\);

-- Location: MLABCELL_X82_Y4_N18
\inst13|S[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[6]~9_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \inst13|S[5]~15\ ) + ( \inst13|S[5]~14\ ))
-- \inst13|S[6]~10\ = CARRY(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \inst13|S[5]~15\ ) + ( \inst13|S[5]~14\ ))
-- \inst13|S[6]~11\ = SHARE((\A[6]~input_o\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	cin => \inst13|S[5]~14\,
	sharein => \inst13|S[5]~15\,
	sumout => \inst13|S[6]~9_sumout\,
	cout => \inst13|S[6]~10\,
	shareout => \inst13|S[6]~11\);

-- Location: MLABCELL_X82_Y4_N21
\inst13|S[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[7]~5_sumout\ = SUM(( !\A[7]~input_o\ $ (\B[7]~input_o\) ) + ( \inst13|S[6]~11\ ) + ( \inst13|S[6]~10\ ))
-- \inst13|S[7]~6\ = CARRY(( !\A[7]~input_o\ $ (\B[7]~input_o\) ) + ( \inst13|S[6]~11\ ) + ( \inst13|S[6]~10\ ))
-- \inst13|S[7]~7\ = SHARE((\A[7]~input_o\ & !\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	cin => \inst13|S[6]~10\,
	sharein => \inst13|S[6]~11\,
	sumout => \inst13|S[7]~5_sumout\,
	cout => \inst13|S[7]~6\,
	shareout => \inst13|S[7]~7\);

-- Location: MLABCELL_X82_Y4_N24
\inst13|S[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|S[8]~1_sumout\ = SUM(( VCC ) + ( \inst13|S[7]~7\ ) + ( \inst13|S[7]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst13|S[7]~6\,
	sharein => \inst13|S[7]~7\,
	sumout => \inst13|S[8]~1_sumout\);

-- Location: IOIBUF_X89_Y6_N4
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LABCELL_X81_Y4_N36
\inst|Q[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[8]~0_combout\ = ( \sel[2]~input_o\ & ( (\sel[0]~input_o\ & (\sel[1]~input_o\ & \en~input_o\)) ) ) # ( !\sel[2]~input_o\ & ( (\sel[0]~input_o\ & (\inst13|S[8]~1_sumout\ & (!\sel[1]~input_o\ & \en~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000010100000000000100000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \inst13|ALT_INV_S[8]~1_sumout\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	combout => \inst|Q[8]~0_combout\);

-- Location: MLABCELL_X84_Y4_N30
\inst4|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~29_sumout\ = SUM(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \inst4|Add0~30\ = CARRY(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \inst4|Add0~29_sumout\,
	cout => \inst4|Add0~30\);

-- Location: MLABCELL_X84_Y4_N33
\inst4|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~25_sumout\ = SUM(( \A[1]~input_o\ ) + ( VCC ) + ( \inst4|Add0~30\ ))
-- \inst4|Add0~26\ = CARRY(( \A[1]~input_o\ ) + ( VCC ) + ( \inst4|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	cin => \inst4|Add0~30\,
	sumout => \inst4|Add0~25_sumout\,
	cout => \inst4|Add0~26\);

-- Location: MLABCELL_X84_Y4_N36
\inst4|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~21_sumout\ = SUM(( \A[2]~input_o\ ) + ( VCC ) + ( \inst4|Add0~26\ ))
-- \inst4|Add0~22\ = CARRY(( \A[2]~input_o\ ) + ( VCC ) + ( \inst4|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	cin => \inst4|Add0~26\,
	sumout => \inst4|Add0~21_sumout\,
	cout => \inst4|Add0~22\);

-- Location: MLABCELL_X84_Y4_N39
\inst4|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~17_sumout\ = SUM(( \A[3]~input_o\ ) + ( VCC ) + ( \inst4|Add0~22\ ))
-- \inst4|Add0~18\ = CARRY(( \A[3]~input_o\ ) + ( VCC ) + ( \inst4|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	cin => \inst4|Add0~22\,
	sumout => \inst4|Add0~17_sumout\,
	cout => \inst4|Add0~18\);

-- Location: MLABCELL_X84_Y4_N42
\inst4|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~13_sumout\ = SUM(( \A[4]~input_o\ ) + ( VCC ) + ( \inst4|Add0~18\ ))
-- \inst4|Add0~14\ = CARRY(( \A[4]~input_o\ ) + ( VCC ) + ( \inst4|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	cin => \inst4|Add0~18\,
	sumout => \inst4|Add0~13_sumout\,
	cout => \inst4|Add0~14\);

-- Location: MLABCELL_X84_Y4_N45
\inst4|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~9_sumout\ = SUM(( \A[5]~input_o\ ) + ( VCC ) + ( \inst4|Add0~14\ ))
-- \inst4|Add0~10\ = CARRY(( \A[5]~input_o\ ) + ( VCC ) + ( \inst4|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	cin => \inst4|Add0~14\,
	sumout => \inst4|Add0~9_sumout\,
	cout => \inst4|Add0~10\);

-- Location: MLABCELL_X84_Y4_N48
\inst4|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~5_sumout\ = SUM(( \A[6]~input_o\ ) + ( VCC ) + ( \inst4|Add0~10\ ))
-- \inst4|Add0~6\ = CARRY(( \A[6]~input_o\ ) + ( VCC ) + ( \inst4|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	cin => \inst4|Add0~10\,
	sumout => \inst4|Add0~5_sumout\,
	cout => \inst4|Add0~6\);

-- Location: MLABCELL_X84_Y4_N51
\inst4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Add0~1_sumout\ = SUM(( \A[7]~input_o\ ) + ( VCC ) + ( \inst4|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	cin => \inst4|Add0~6\,
	sumout => \inst4|Add0~1_sumout\);

-- Location: MLABCELL_X82_Y4_N30
\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \inst1|Add0~30\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

-- Location: MLABCELL_X82_Y4_N33
\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~26\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

-- Location: MLABCELL_X82_Y4_N36
\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \inst1|Add0~26\ ))
-- \inst1|Add0~22\ = CARRY(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~21_sumout\,
	cout => \inst1|Add0~22\);

-- Location: MLABCELL_X82_Y4_N39
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \inst1|Add0~22\ ))
-- \inst1|Add0~18\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => \inst1|Add0~22\,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

-- Location: MLABCELL_X82_Y4_N42
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~14\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: MLABCELL_X82_Y4_N45
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~10\ = CARRY(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: MLABCELL_X82_Y4_N48
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \A[6]~input_o\ ) + ( \B[6]~input_o\ ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~6\ = CARRY(( \A[6]~input_o\ ) + ( \B[6]~input_o\ ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: MLABCELL_X82_Y4_N51
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~1_sumout\);

-- Location: LABCELL_X83_Y4_N0
\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \inst3|Add0~30\ = CARRY(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

-- Location: LABCELL_X83_Y4_N3
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( \A[1]~input_o\ ) + ( GND ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( \A[1]~input_o\ ) + ( GND ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

-- Location: LABCELL_X83_Y4_N6
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( \A[2]~input_o\ ) + ( GND ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( \A[2]~input_o\ ) + ( GND ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

-- Location: LABCELL_X83_Y4_N9
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( \A[3]~input_o\ ) + ( GND ) + ( \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( \A[3]~input_o\ ) + ( GND ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: LABCELL_X83_Y4_N12
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( \A[4]~input_o\ ) + ( GND ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( \A[4]~input_o\ ) + ( GND ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: LABCELL_X83_Y4_N15
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( \A[5]~input_o\ ) + ( GND ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( \A[5]~input_o\ ) + ( GND ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: LABCELL_X83_Y4_N18
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( \A[6]~input_o\ ) + ( GND ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( \A[6]~input_o\ ) + ( GND ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: LABCELL_X83_Y4_N21
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( \A[7]~input_o\ ) + ( GND ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

-- Location: LABCELL_X81_Y4_N42
\inst|Q[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[7]~1_combout\ = ( \inst3|Add0~1_sumout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\) # (\inst4|Add0~1_sumout\) ) ) ) # ( !\inst3|Add0~1_sumout\ & ( \sel[1]~input_o\ & ( (\inst4|Add0~1_sumout\ & \sel[0]~input_o\) ) ) ) # ( \inst3|Add0~1_sumout\ & ( 
-- !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (\inst1|Add0~1_sumout\)) # (\sel[0]~input_o\ & ((\inst13|S[7]~5_sumout\))) ) ) ) # ( !\inst3|Add0~1_sumout\ & ( !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (\inst1|Add0~1_sumout\)) # (\sel[0]~input_o\ & 
-- ((\inst13|S[7]~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Add0~1_sumout\,
	datab => \inst1|ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \inst13|ALT_INV_S[7]~5_sumout\,
	datae => \inst3|ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \inst|Q[7]~1_combout\);

-- Location: LABCELL_X81_Y4_N0
\inst|Q[7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[7]~36_combout\ = ( !\sel[2]~input_o\ & ( (((\inst|Q[7]~1_combout\ & (\en~input_o\)))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[1]~input_o\ & (!\A[7]~input_o\ $ (((\sel[0]~input_o\ & !\B[7]~input_o\))))) # (\sel[1]~input_o\ & 
-- ((!\A[7]~input_o\ $ (\B[7]~input_o\)) # (\sel[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001100011100000000000011110000000010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	datag => \inst|ALT_INV_Q[7]~1_combout\,
	combout => \inst|Q[7]~36_combout\);

-- Location: MLABCELL_X84_Y4_N0
\inst|Q[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[6]~2_combout\ = ( \sel[0]~input_o\ & ( \inst3|Add0~5_sumout\ & ( (!\sel[1]~input_o\ & ((\inst13|S[6]~9_sumout\))) # (\sel[1]~input_o\ & (\inst4|Add0~5_sumout\)) ) ) ) # ( !\sel[0]~input_o\ & ( \inst3|Add0~5_sumout\ & ( (\sel[1]~input_o\) # 
-- (\inst1|Add0~5_sumout\) ) ) ) # ( \sel[0]~input_o\ & ( !\inst3|Add0~5_sumout\ & ( (!\sel[1]~input_o\ & ((\inst13|S[6]~9_sumout\))) # (\sel[1]~input_o\ & (\inst4|Add0~5_sumout\)) ) ) ) # ( !\sel[0]~input_o\ & ( !\inst3|Add0~5_sumout\ & ( 
-- (\inst1|Add0~5_sumout\ & !\sel[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110101010100110011111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Add0~5_sumout\,
	datab => \inst1|ALT_INV_Add0~5_sumout\,
	datac => \inst13|ALT_INV_S[6]~9_sumout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst|Q[6]~2_combout\);

-- Location: LABCELL_X81_Y4_N24
\inst|Q[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[6]~32_combout\ = ( !\sel[2]~input_o\ & ( (((\inst|Q[6]~2_combout\ & (\en~input_o\)))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[1]~input_o\ & (!\A[6]~input_o\ $ (((\sel[0]~input_o\ & !\B[6]~input_o\))))) # (\sel[1]~input_o\ & 
-- ((!\A[6]~input_o\ $ (\B[6]~input_o\)) # (\sel[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001100011100000000000011110000000010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	datag => \inst|ALT_INV_Q[6]~2_combout\,
	combout => \inst|Q[6]~32_combout\);

-- Location: LABCELL_X81_Y4_N48
\inst|Q[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[5]~3_combout\ = ( \sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst4|Add0~9_sumout\ ) ) ) # ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst3|Add0~9_sumout\ ) ) ) # ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst13|S[5]~13_sumout\ ) ) ) # ( 
-- !\sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst1|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~9_sumout\,
	datab => \inst4|ALT_INV_Add0~9_sumout\,
	datac => \inst13|ALT_INV_S[5]~13_sumout\,
	datad => \inst1|ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \inst|Q[5]~3_combout\);

-- Location: LABCELL_X81_Y4_N18
\inst|Q[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[5]~28_combout\ = ( !\sel[2]~input_o\ & ( (((\inst|Q[5]~3_combout\ & (\en~input_o\)))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[1]~input_o\ & (!\A[5]~input_o\ $ (((!\B[5]~input_o\ & \sel[0]~input_o\))))) # (\sel[1]~input_o\ & 
-- ((!\B[5]~input_o\ $ (\A[5]~input_o\)) # (\sel[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001110011100000000000011110000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	datag => \inst|ALT_INV_Q[5]~3_combout\,
	combout => \inst|Q[5]~28_combout\);

-- Location: LABCELL_X83_Y4_N36
\inst|Q[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[4]~4_combout\ = ( \sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst4|Add0~13_sumout\ ) ) ) # ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst3|Add0~13_sumout\ ) ) ) # ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst13|S[4]~17_sumout\ ) ) ) # ( 
-- !\sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst1|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Add0~13_sumout\,
	datab => \inst1|ALT_INV_Add0~13_sumout\,
	datac => \inst13|ALT_INV_S[4]~17_sumout\,
	datad => \inst3|ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \inst|Q[4]~4_combout\);

-- Location: LABCELL_X81_Y4_N12
\inst|Q[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[4]~24_combout\ = ( !\sel[2]~input_o\ & ( (((\inst|Q[4]~4_combout\ & (\en~input_o\)))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[0]~input_o\ & (!\A[4]~input_o\ $ (((\B[4]~input_o\ & \sel[1]~input_o\))))) # (\sel[0]~input_o\ & 
-- ((!\B[4]~input_o\ $ (!\A[4]~input_o\)) # (\sel[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001100011000000000000011110000000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	datag => \inst|ALT_INV_Q[4]~4_combout\,
	combout => \inst|Q[4]~24_combout\);

-- Location: LABCELL_X83_Y4_N42
\inst|Q[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[3]~5_combout\ = ( \sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst4|Add0~17_sumout\ ) ) ) # ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst3|Add0~17_sumout\ ) ) ) # ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst13|S[3]~21_sumout\ ) ) ) # ( 
-- !\sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst1|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Add0~17_sumout\,
	datab => \inst13|ALT_INV_S[3]~21_sumout\,
	datac => \inst1|ALT_INV_Add0~17_sumout\,
	datad => \inst3|ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \inst|Q[3]~5_combout\);

-- Location: LABCELL_X83_Y4_N33
\inst|Q[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[3]~20_combout\ = ( !\sel[2]~input_o\ & ( (((\inst|Q[3]~5_combout\ & (\en~input_o\)))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[0]~input_o\ & (!\A[3]~input_o\ $ (((\B[3]~input_o\ & \sel[1]~input_o\))))) # (\sel[0]~input_o\ & 
-- ((!\A[3]~input_o\ $ (!\B[3]~input_o\)) # (\sel[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001010011000000000000011110000000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	datag => \inst|ALT_INV_Q[3]~5_combout\,
	combout => \inst|Q[3]~20_combout\);

-- Location: LABCELL_X81_Y4_N54
\inst|Q[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[2]~6_combout\ = ( \sel[0]~input_o\ & ( \inst3|Add0~21_sumout\ & ( (!\sel[1]~input_o\ & (\inst13|S[2]~25_sumout\)) # (\sel[1]~input_o\ & ((\inst4|Add0~21_sumout\))) ) ) ) # ( !\sel[0]~input_o\ & ( \inst3|Add0~21_sumout\ & ( (\inst1|Add0~21_sumout\) 
-- # (\sel[1]~input_o\) ) ) ) # ( \sel[0]~input_o\ & ( !\inst3|Add0~21_sumout\ & ( (!\sel[1]~input_o\ & (\inst13|S[2]~25_sumout\)) # (\sel[1]~input_o\ & ((\inst4|Add0~21_sumout\))) ) ) ) # ( !\sel[0]~input_o\ & ( !\inst3|Add0~21_sumout\ & ( 
-- (!\sel[1]~input_o\ & \inst1|Add0~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \inst1|ALT_INV_Add0~21_sumout\,
	datac => \inst13|ALT_INV_S[2]~25_sumout\,
	datad => \inst4|ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \inst3|ALT_INV_Add0~21_sumout\,
	combout => \inst|Q[2]~6_combout\);

-- Location: LABCELL_X81_Y4_N6
\inst|Q[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[2]~16_combout\ = ( !\sel[2]~input_o\ & ( (((\inst|Q[2]~6_combout\ & (\en~input_o\)))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[1]~input_o\ & (!\A[2]~input_o\ $ (((!\B[2]~input_o\ & \sel[0]~input_o\))))) # (\sel[1]~input_o\ & 
-- ((!\B[2]~input_o\ $ (\A[2]~input_o\)) # (\sel[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000001110011100000000000011110000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_en~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	datag => \inst|ALT_INV_Q[2]~6_combout\,
	combout => \inst|Q[2]~16_combout\);

-- Location: LABCELL_X83_Y4_N48
\inst|Q[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[1]~7_combout\ = ( \sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst4|Add0~25_sumout\ ) ) ) # ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ & ( \inst3|Add0~25_sumout\ ) ) ) # ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst13|S[1]~29_sumout\ ) ) ) # ( 
-- !\sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( \inst1|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Add0~25_sumout\,
	datab => \inst13|ALT_INV_S[1]~29_sumout\,
	datac => \inst3|ALT_INV_Add0~25_sumout\,
	datad => \inst1|ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \inst|Q[1]~7_combout\);

-- Location: LABCELL_X81_Y4_N30
\inst|Q[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[1]~12_combout\ = ( !\sel[2]~input_o\ & ( ((\en~input_o\ & (\inst|Q[1]~7_combout\))) ) ) # ( \sel[2]~input_o\ & ( (\en~input_o\ & ((!\sel[0]~input_o\ & (!\A[1]~input_o\ $ (((\B[1]~input_o\ & \sel[1]~input_o\))))) # (\sel[0]~input_o\ & 
-- ((!\A[1]~input_o\ $ (!\B[1]~input_o\)) # (\sel[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011001000010010001000000011000000110010001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_en~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_sel[2]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	datag => \inst|ALT_INV_Q[1]~7_combout\,
	combout => \inst|Q[1]~12_combout\);

-- Location: LABCELL_X83_Y4_N54
\inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = ( !\inst1|Add0~29_sumout\ & ( \sel[1]~input_o\ & ( \sel[2]~input_o\ ) ) ) # ( \inst1|Add0~29_sumout\ & ( !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & ((!\A[0]~input_o\) # ((!\sel[2]~input_o\)))) # (\sel[0]~input_o\ & 
-- (((\sel[2]~input_o\) # (\inst13|S[0]~33_sumout\)))) ) ) ) # ( !\inst1|Add0~29_sumout\ & ( !\sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\A[0]~input_o\ & ((\sel[2]~input_o\)))) # (\sel[0]~input_o\ & (((\inst13|S[0]~33_sumout\ & !\sel[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110100000111100111010111100000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \inst13|ALT_INV_S[0]~33_sumout\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_sel[2]~input_o\,
	datae => \inst1|ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \inst|Mux8~0_combout\);

-- Location: LABCELL_X83_Y4_N24
\inst|Q[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q[0]~8_combout\ = ( !\sel[0]~input_o\ & ( (\en~input_o\ & (((\sel[1]~input_o\ & (!\sel[2]~input_o\ & \inst3|Add0~29_sumout\))) # (\inst|Mux8~0_combout\))) ) ) # ( \sel[0]~input_o\ & ( (\en~input_o\ & (((\sel[1]~input_o\ & ((\inst4|Add0~29_sumout\) # 
-- (\sel[2]~input_o\)))) # (\inst|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000100111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_sel[2]~input_o\,
	datac => \inst4|ALT_INV_Add0~29_sumout\,
	datad => \inst|ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_en~input_o\,
	datag => \inst3|ALT_INV_Add0~29_sumout\,
	combout => \inst|Q[0]~8_combout\);

-- Location: LABCELL_X62_Y16_N0
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


