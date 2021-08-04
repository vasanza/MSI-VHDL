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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/04/2021 15:01:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ffsd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ffsd_vhd_vec_tst IS
END ffsd_vhd_vec_tst;
ARCHITECTURE ffsd_arch OF ffsd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT ffsd
	PORT (
	Clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : BUFFER STD_LOGIC;
	resetn : IN STD_LOGIC;
	s : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ffsd
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	d => d,
	q => q,
	resetn => resetn,
	s => s
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 20000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- s
t_prcs_s: PROCESS
BEGIN
	s <= '0';
	WAIT FOR 40000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
WAIT;
END PROCESS t_prcs_s;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '0';
	WAIT FOR 30000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 20000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 20000 ps;
	d <= '1';
	WAIT FOR 30000 ps;
	d <= '0';
WAIT;
END PROCESS t_prcs_d;
END ffsd_arch;
