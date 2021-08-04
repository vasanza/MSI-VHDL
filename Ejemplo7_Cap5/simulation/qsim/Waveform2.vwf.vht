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
-- Generated on "08/04/2021 15:32:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EjemploFF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EjemploFF_vhd_vec_tst IS
END EjemploFF_vhd_vec_tst;
ARCHITECTURE EjemploFF_arch OF EjemploFF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL Inc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
COMPONENT EjemploFF
	PORT (
	Clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	Inc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EjemploFF
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	en => en,
	Inc => Inc,
	Q => Q,
	resetn => resetn
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 20000 ps;
	resetn <= '1';
	WAIT FOR 430000 ps;
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

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
	WAIT FOR 60000 ps;
	en <= '1';
	WAIT FOR 190000 ps;
	en <= '0';
	WAIT FOR 40000 ps;
	en <= '1';
	WAIT FOR 160000 ps;
	en <= '0';
	WAIT FOR 60000 ps;
	en <= '1';
WAIT;
END PROCESS t_prcs_en;
-- Inc[7]
t_prcs_Inc_7: PROCESS
BEGIN
	Inc(7) <= '0';
WAIT;
END PROCESS t_prcs_Inc_7;
-- Inc[6]
t_prcs_Inc_6: PROCESS
BEGIN
	Inc(6) <= '0';
WAIT;
END PROCESS t_prcs_Inc_6;
-- Inc[5]
t_prcs_Inc_5: PROCESS
BEGIN
	Inc(5) <= '0';
WAIT;
END PROCESS t_prcs_Inc_5;
-- Inc[4]
t_prcs_Inc_4: PROCESS
BEGIN
	Inc(4) <= '0';
WAIT;
END PROCESS t_prcs_Inc_4;
-- Inc[3]
t_prcs_Inc_3: PROCESS
BEGIN
	Inc(3) <= '0';
WAIT;
END PROCESS t_prcs_Inc_3;
-- Inc[2]
t_prcs_Inc_2: PROCESS
BEGIN
	Inc(2) <= '0';
WAIT;
END PROCESS t_prcs_Inc_2;
-- Inc[1]
t_prcs_Inc_1: PROCESS
BEGIN
	Inc(1) <= '1';
WAIT;
END PROCESS t_prcs_Inc_1;
-- Inc[0]
t_prcs_Inc_0: PROCESS
BEGIN
	Inc(0) <= '1';
WAIT;
END PROCESS t_prcs_Inc_0;
END EjemploFF_arch;
