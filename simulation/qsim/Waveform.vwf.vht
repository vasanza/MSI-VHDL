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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/16/2021 10:52:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Block1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Block1_vhd_vec_tst IS
END Block1_vhd_vec_tst;
ARCHITECTURE Block1_arch OF Block1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Digito : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enter : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT Block1
	PORT (
	clk : IN STD_LOGIC;
	Digito : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	enter : IN STD_LOGIC;
	est : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	fin : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Block1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Digito => Digito,
	enter => enter,
	est => est,
	fin => fin,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	resetn => resetn,
	start => start
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 60000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 70000 ps;
	start <= '1';
	WAIT FOR 30000 ps;
	start <= '0';
	WAIT FOR 210000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 10000 ps;
	start <= '1';
	WAIT FOR 10000 ps;
	start <= '0';
	WAIT FOR 140000 ps;
	start <= '1';
	WAIT FOR 30000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- enter
t_prcs_enter: PROCESS
BEGIN
	enter <= '0';
	WAIT FOR 120000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 40000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 20000 ps;
	enter <= '1';
	WAIT FOR 50000 ps;
	enter <= '0';
	WAIT FOR 90000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 20000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
	WAIT FOR 20000 ps;
	enter <= '1';
	WAIT FOR 20000 ps;
	enter <= '0';
WAIT;
END PROCESS t_prcs_enter;
-- Digito[3]
t_prcs_Digito_3: PROCESS
BEGIN
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 45000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 30000 ps;
	Digito(3) <= '0';
	WAIT FOR 45000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 60000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 30000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 30000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 75000 ps;
	Digito(3) <= '0';
	WAIT FOR 60000 ps;
	Digito(3) <= '1';
	WAIT FOR 45000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 30000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 15000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
	WAIT FOR 60000 ps;
	Digito(3) <= '1';
	WAIT FOR 15000 ps;
	Digito(3) <= '0';
WAIT;
END PROCESS t_prcs_Digito_3;
-- Digito[2]
t_prcs_Digito_2: PROCESS
BEGIN
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 75000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 45000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 45000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 75000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 45000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 105000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 30000 ps;
	Digito(2) <= '1';
	WAIT FOR 45000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 15000 ps;
	Digito(2) <= '0';
	WAIT FOR 15000 ps;
	Digito(2) <= '1';
	WAIT FOR 30000 ps;
	Digito(2) <= '0';
WAIT;
END PROCESS t_prcs_Digito_2;
-- Digito[1]
t_prcs_Digito_1: PROCESS
BEGIN
	Digito(1) <= '0';
	WAIT FOR 45000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 45000 ps;
	Digito(1) <= '0';
	WAIT FOR 45000 ps;
	Digito(1) <= '1';
	WAIT FOR 45000 ps;
	Digito(1) <= '0';
	WAIT FOR 15000 ps;
	Digito(1) <= '1';
	WAIT FOR 135000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
	WAIT FOR 120000 ps;
	Digito(1) <= '0';
	WAIT FOR 90000 ps;
	Digito(1) <= '1';
	WAIT FOR 45000 ps;
	Digito(1) <= '0';
	WAIT FOR 15000 ps;
	Digito(1) <= '1';
	WAIT FOR 75000 ps;
	Digito(1) <= '0';
	WAIT FOR 75000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 15000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 15000 ps;
	Digito(1) <= '1';
	WAIT FOR 15000 ps;
	Digito(1) <= '0';
	WAIT FOR 30000 ps;
	Digito(1) <= '1';
WAIT;
END PROCESS t_prcs_Digito_1;
-- Digito[0]
t_prcs_Digito_0: PROCESS
BEGIN
	Digito(0) <= '1';
	WAIT FOR 45000 ps;
	Digito(0) <= '0';
	WAIT FOR 45000 ps;
	Digito(0) <= '1';
	WAIT FOR 60000 ps;
	Digito(0) <= '0';
	WAIT FOR 90000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 60000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 30000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 105000 ps;
	Digito(0) <= '0';
	WAIT FOR 45000 ps;
	Digito(0) <= '1';
	WAIT FOR 45000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 90000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 15000 ps;
	Digito(0) <= '0';
	WAIT FOR 15000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
	WAIT FOR 45000 ps;
	Digito(0) <= '1';
	WAIT FOR 30000 ps;
	Digito(0) <= '0';
WAIT;
END PROCESS t_prcs_Digito_0;
END Block1_arch;
