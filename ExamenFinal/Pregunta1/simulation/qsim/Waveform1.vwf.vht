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
-- Generated on "04/14/2021 21:16:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          2021_PAE_C4_Leccion
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY 2021_PAE_C4_Leccion_vhd_vec_tst IS
END 2021_PAE_C4_Leccion_vhd_vec_tst;
ARCHITECTURE 2021_PAE_C4_Leccion_arch OF 2021_PAE_C4_Leccion_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Cuatro : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL Dos : STD_LOGIC_VECTOR(1 TO 7);
SIGNAL MK : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Uno : STD_LOGIC_VECTOR(1 TO 7);
COMPONENT 2021_PAE_C4_Leccion
	PORT (
	Cuatro : OUT STD_LOGIC_VECTOR(1 TO 7);
	Dos : OUT STD_LOGIC_VECTOR(1 TO 7);
	MK : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Uno : OUT STD_LOGIC_VECTOR(1 TO 7)
	);
END COMPONENT;
BEGIN
	i1 : 2021_PAE_C4_Leccion
	PORT MAP (
-- list connections between master ports and signals
	Cuatro => Cuatro,
	Dos => Dos,
	MK => MK,
	Uno => Uno
	);
-- MK[3]
t_prcs_MK_3: PROCESS
BEGIN
	MK(3) <= '1';
	WAIT FOR 30000 ps;
	MK(3) <= '0';
	WAIT FOR 70000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 30000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 40000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 40000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 40000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 20000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 20000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 30000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 30000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 30000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 30000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 40000 ps;
	MK(3) <= '0';
	WAIT FOR 30000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 10000 ps;
	MK(3) <= '1';
	WAIT FOR 20000 ps;
	MK(3) <= '0';
	WAIT FOR 40000 ps;
	MK(3) <= '1';
	WAIT FOR 10000 ps;
	MK(3) <= '0';
WAIT;
END PROCESS t_prcs_MK_3;
-- MK[2]
t_prcs_MK_2: PROCESS
BEGIN
	MK(2) <= '0';
	WAIT FOR 20000 ps;
	MK(2) <= '1';
	WAIT FOR 30000 ps;
	MK(2) <= '0';
	WAIT FOR 30000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 20000 ps;
	MK(2) <= '1';
	WAIT FOR 60000 ps;
	MK(2) <= '0';
	WAIT FOR 40000 ps;
	MK(2) <= '1';
	WAIT FOR 30000 ps;
	MK(2) <= '0';
	WAIT FOR 20000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 40000 ps;
	MK(2) <= '1';
	WAIT FOR 20000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 30000 ps;
	MK(2) <= '0';
	WAIT FOR 30000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 100000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 20000 ps;
	MK(2) <= '0';
	WAIT FOR 20000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 40000 ps;
	MK(2) <= '1';
	WAIT FOR 20000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 110000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 30000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 20000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
	WAIT FOR 20000 ps;
	MK(2) <= '0';
	WAIT FOR 30000 ps;
	MK(2) <= '1';
	WAIT FOR 10000 ps;
	MK(2) <= '0';
	WAIT FOR 10000 ps;
	MK(2) <= '1';
WAIT;
END PROCESS t_prcs_MK_2;
-- MK[1]
t_prcs_MK_1: PROCESS
BEGIN
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 60000 ps;
	MK(1) <= '1';
	WAIT FOR 30000 ps;
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 60000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 90000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 10000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 10000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 10000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 30000 ps;
	MK(1) <= '1';
	WAIT FOR 20000 ps;
	MK(1) <= '0';
	WAIT FOR 30000 ps;
	MK(1) <= '1';
	WAIT FOR 20000 ps;
	MK(1) <= '0';
	WAIT FOR 10000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 30000 ps;
	MK(1) <= '1';
	WAIT FOR 40000 ps;
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 10000 ps;
	MK(1) <= '0';
	WAIT FOR 30000 ps;
	MK(1) <= '1';
	WAIT FOR 20000 ps;
	MK(1) <= '0';
	WAIT FOR 40000 ps;
	MK(1) <= '1';
	WAIT FOR 50000 ps;
	MK(1) <= '0';
	WAIT FOR 40000 ps;
	MK(1) <= '1';
	WAIT FOR 20000 ps;
	MK(1) <= '0';
	WAIT FOR 20000 ps;
	MK(1) <= '1';
	WAIT FOR 30000 ps;
	MK(1) <= '0';
	WAIT FOR 10000 ps;
	MK(1) <= '1';
	WAIT FOR 20000 ps;
	MK(1) <= '0';
WAIT;
END PROCESS t_prcs_MK_1;
-- MK[0]
t_prcs_MK_0: PROCESS
BEGIN
	MK(0) <= '0';
	WAIT FOR 40000 ps;
	MK(0) <= '1';
	WAIT FOR 70000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 20000 ps;
	MK(0) <= '0';
	WAIT FOR 40000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 70000 ps;
	MK(0) <= '1';
	WAIT FOR 90000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 40000 ps;
	MK(0) <= '1';
	WAIT FOR 30000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 30000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 50000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 20000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 30000 ps;
	MK(0) <= '0';
	WAIT FOR 40000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 30000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 30000 ps;
	MK(0) <= '1';
	WAIT FOR 20000 ps;
	MK(0) <= '0';
	WAIT FOR 30000 ps;
	MK(0) <= '1';
	WAIT FOR 20000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
	WAIT FOR 10000 ps;
	MK(0) <= '0';
	WAIT FOR 20000 ps;
	MK(0) <= '1';
	WAIT FOR 40000 ps;
	MK(0) <= '0';
	WAIT FOR 10000 ps;
	MK(0) <= '1';
WAIT;
END PROCESS t_prcs_MK_0;
END 2021_PAE_C4_Leccion_arch;
