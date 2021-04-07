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
-- Generated on "04/06/2021 10:23:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gray
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gray_vhd_vec_tst IS
END gray_vhd_vec_tst;
ARCHITECTURE gray_arch OF gray_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT gray
	PORT (
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : gray
	PORT MAP (
-- list connections between master ports and signals
	S => S,
	X => X
	);
-- X[3]
t_prcs_X_3: PROCESS
BEGIN
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 40000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 40000 ps;
	X(3) <= '1';
	WAIT FOR 50000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 60000 ps;
	X(3) <= '1';
	WAIT FOR 30000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 50000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 30000 ps;
	X(3) <= '0';
	WAIT FOR 60000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 10000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 30000 ps;
	X(3) <= '0';
	WAIT FOR 20000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 80000 ps;
	X(3) <= '1';
	WAIT FOR 20000 ps;
	X(3) <= '0';
	WAIT FOR 10000 ps;
	X(3) <= '1';
WAIT;
END PROCESS t_prcs_X_3;
-- X[2]
t_prcs_X_2: PROCESS
BEGIN
	X(2) <= '1';
	WAIT FOR 30000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 20000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 30000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 30000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 20000 ps;
	X(2) <= '0';
	WAIT FOR 40000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 70000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 20000 ps;
	X(2) <= '0';
	WAIT FOR 30000 ps;
	X(2) <= '1';
	WAIT FOR 20000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 30000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 30000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 20000 ps;
	X(2) <= '0';
	WAIT FOR 40000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 40000 ps;
	X(2) <= '1';
	WAIT FOR 20000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 30000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 40000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 10000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
	WAIT FOR 20000 ps;
	X(2) <= '1';
	WAIT FOR 10000 ps;
	X(2) <= '0';
WAIT;
END PROCESS t_prcs_X_2;
-- X[1]
t_prcs_X_1: PROCESS
BEGIN
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 30000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 40000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 30000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 30000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 70000 ps;
	X(1) <= '1';
	WAIT FOR 30000 ps;
	X(1) <= '0';
	WAIT FOR 40000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
	WAIT FOR 20000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 20000 ps;
	X(1) <= '0';
	WAIT FOR 10000 ps;
	X(1) <= '1';
	WAIT FOR 10000 ps;
	X(1) <= '0';
WAIT;
END PROCESS t_prcs_X_1;
-- X[0]
t_prcs_X_0: PROCESS
BEGIN
	X(0) <= '1';
	WAIT FOR 30000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 50000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 70000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 50000 ps;
	X(0) <= '1';
	WAIT FOR 30000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 40000 ps;
	X(0) <= '0';
	WAIT FOR 40000 ps;
	X(0) <= '1';
	WAIT FOR 60000 ps;
	X(0) <= '0';
	WAIT FOR 20000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 30000 ps;
	X(0) <= '1';
	WAIT FOR 50000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 20000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 40000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 20000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 20000 ps;
	X(0) <= '1';
	WAIT FOR 20000 ps;
	X(0) <= '0';
	WAIT FOR 10000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
	WAIT FOR 50000 ps;
	X(0) <= '1';
	WAIT FOR 10000 ps;
	X(0) <= '0';
WAIT;
END PROCESS t_prcs_X_0;
END gray_arch;
