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
-- Generated on "06/16/2021 15:55:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ejemplo_estructural
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ejemplo_estructural_vhd_vec_tst IS
END ejemplo_estructural_vhd_vec_tst;
ARCHITECTURE ejemplo_estructural_arch OF ejemplo_estructural_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL SA : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL SB : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(0 DOWNTO 0);
COMPONENT ejemplo_estructural
	PORT (
	SA : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
	SB : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ejemplo_estructural
	PORT MAP (
-- list connections between master ports and signals
	SA => SA,
	SB => SB,
	Y => Y
	);

-- SA[0]
t_prcs_SA_0: PROCESS
BEGIN
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 20000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 30000 ps;
	SA(0) <= '0';
	WAIT FOR 20000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 20000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 20000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 35000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 15000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 20000 ps;
	SA(0) <= '1';
	WAIT FOR 30000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 20000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 15000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 15000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 15000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 50000 ps;
	SA(0) <= '1';
	WAIT FOR 25000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 15000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 20000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 15000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 10000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
	WAIT FOR 5000 ps;
	SA(0) <= '0';
	WAIT FOR 10000 ps;
	SA(0) <= '1';
	WAIT FOR 15000 ps;
	SA(0) <= '0';
	WAIT FOR 5000 ps;
	SA(0) <= '1';
WAIT;
END PROCESS t_prcs_SA_0;

-- SB[0]
t_prcs_SB_0: PROCESS
BEGIN
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 20000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 20000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 25000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 15000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 15000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 20000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 15000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 20000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 15000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 25000 ps;
	SB(0) <= '0';
	WAIT FOR 30000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 20000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 15000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 10000 ps;
	SB(0) <= '0';
	WAIT FOR 15000 ps;
	SB(0) <= '1';
	WAIT FOR 5000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 10000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
	WAIT FOR 15000 ps;
	SB(0) <= '0';
	WAIT FOR 5000 ps;
	SB(0) <= '1';
WAIT;
END PROCESS t_prcs_SB_0;
END ejemplo_estructural_arch;
