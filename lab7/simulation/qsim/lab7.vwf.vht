-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- Generated on "12/03/2022 19:57:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab7_vhd_vec_tst IS
END lab7_vhd_vec_tst;
ARCHITECTURE lab7_arch OF lab7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dividend : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL divisor : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL hex0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL quotient : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL remainder : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT lab7
	PORT (
	clk : IN STD_LOGIC;
	dividend : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	divisor : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	hex0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	output : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	quotient : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	remainder : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab7
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dividend => dividend,
	divisor => divisor,
	hex0 => hex0,
	hex1 => hex1,
	hex2 => hex2,
	hex3 => hex3,
	output => output,
	quotient => quotient,
	remainder => remainder,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dividend[7]
t_prcs_dividend_7: PROCESS
BEGIN
	dividend(7) <= '0';
WAIT;
END PROCESS t_prcs_dividend_7;
-- dividend[6]
t_prcs_dividend_6: PROCESS
BEGIN
	dividend(6) <= '0';
WAIT;
END PROCESS t_prcs_dividend_6;
-- dividend[5]
t_prcs_dividend_5: PROCESS
BEGIN
	dividend(5) <= '0';
WAIT;
END PROCESS t_prcs_dividend_5;
-- dividend[4]
t_prcs_dividend_4: PROCESS
BEGIN
	dividend(4) <= '0';
WAIT;
END PROCESS t_prcs_dividend_4;
-- dividend[3]
t_prcs_dividend_3: PROCESS
BEGIN
	dividend(3) <= '0';
WAIT;
END PROCESS t_prcs_dividend_3;
-- dividend[2]
t_prcs_dividend_2: PROCESS
BEGIN
	dividend(2) <= '0';
WAIT;
END PROCESS t_prcs_dividend_2;
-- dividend[1]
t_prcs_dividend_1: PROCESS
BEGIN
	dividend(1) <= '1';
WAIT;
END PROCESS t_prcs_dividend_1;
-- dividend[0]
t_prcs_dividend_0: PROCESS
BEGIN
	dividend(0) <= '1';
WAIT;
END PROCESS t_prcs_dividend_0;
-- divisor[7]
t_prcs_divisor_7: PROCESS
BEGIN
	divisor(7) <= '0';
WAIT;
END PROCESS t_prcs_divisor_7;
-- divisor[6]
t_prcs_divisor_6: PROCESS
BEGIN
	divisor(6) <= '0';
WAIT;
END PROCESS t_prcs_divisor_6;
-- divisor[5]
t_prcs_divisor_5: PROCESS
BEGIN
	divisor(5) <= '0';
WAIT;
END PROCESS t_prcs_divisor_5;
-- divisor[4]
t_prcs_divisor_4: PROCESS
BEGIN
	divisor(4) <= '0';
WAIT;
END PROCESS t_prcs_divisor_4;
-- divisor[3]
t_prcs_divisor_3: PROCESS
BEGIN
	divisor(3) <= '0';
WAIT;
END PROCESS t_prcs_divisor_3;
-- divisor[2]
t_prcs_divisor_2: PROCESS
BEGIN
	divisor(2) <= '0';
WAIT;
END PROCESS t_prcs_divisor_2;
-- divisor[1]
t_prcs_divisor_1: PROCESS
BEGIN
	divisor(1) <= '0';
WAIT;
END PROCESS t_prcs_divisor_1;
-- divisor[0]
t_prcs_divisor_0: PROCESS
BEGIN
	divisor(0) <= '1';
WAIT;
END PROCESS t_prcs_divisor_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END lab7_arch;
