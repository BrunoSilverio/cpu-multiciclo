-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/05/2020 16:52:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Ri : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rj : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rk : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rx : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT CPU
	PORT (
	Clock : IN STD_LOGIC;
	Ri : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rj : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rk : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rx : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Ri => Ri,
	Rj => Rj,
	Rk => Rk,
	Rx => Rx
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 1000000 ps;
	Clock <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 16000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
END CPU_arch;
