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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/30/2022 23:55:14"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	divisor : IN std_logic_vector(7 DOWNTO 0);
	dividend : IN std_logic_vector(7 DOWNTO 0);
	quotient : BUFFER std_logic_vector(7 DOWNTO 0);
	remainder : BUFFER std_logic_vector(7 DOWNTO 0);
	output : BUFFER std_logic_vector(2 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END lab7;

-- Design Ports Information
-- quotient[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[4]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[6]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dividend[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divisor[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_divisor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dividend : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_quotient : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_remainder : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \counter~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \quotient[0]~output_o\ : std_logic;
SIGNAL \quotient[1]~output_o\ : std_logic;
SIGNAL \quotient[2]~output_o\ : std_logic;
SIGNAL \quotient[3]~output_o\ : std_logic;
SIGNAL \quotient[4]~output_o\ : std_logic;
SIGNAL \quotient[5]~output_o\ : std_logic;
SIGNAL \quotient[6]~output_o\ : std_logic;
SIGNAL \quotient[7]~output_o\ : std_logic;
SIGNAL \remainder[0]~output_o\ : std_logic;
SIGNAL \remainder[1]~output_o\ : std_logic;
SIGNAL \remainder[2]~output_o\ : std_logic;
SIGNAL \remainder[3]~output_o\ : std_logic;
SIGNAL \remainder[4]~output_o\ : std_logic;
SIGNAL \remainder[5]~output_o\ : std_logic;
SIGNAL \remainder[6]~output_o\ : std_logic;
SIGNAL \remainder[7]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter~feeder_combout\ : std_logic;
SIGNAL \counter~q\ : std_logic;
SIGNAL \counter~clkctrl_outclk\ : std_logic;
SIGNAL \dividend[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \divisor[7]~input_o\ : std_logic;
SIGNAL \state.start~0_combout\ : std_logic;
SIGNAL \state.start~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \divisor[6]~input_o\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \divisor[5]~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \divisor[4]~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \divisor[3]~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \divisor[2]~input_o\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \divisor[1]~input_o\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \divisor[0]~input_o\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \dividend[7]~input_o\ : std_logic;
SIGNAL \dividend[6]~input_o\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \dividend[5]~input_o\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \dividend[4]~input_o\ : std_logic;
SIGNAL \dividend[3]~input_o\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \dividend[2]~input_o\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \dividend[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \nowRemainder[0]~7_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state.s2a~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \repeat~1_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \repeat~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \w~q\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \nowRemainder[2]~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \nowRemainder[3]~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \nowRemainder[4]~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \nowRemainder[5]~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \nowRemainder[6]~5_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \nowRemainder[7]~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \state~8_combout\ : std_logic;
SIGNAL \state.s2b~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \nowRemainder[1]~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \hexq0|a~0_combout\ : std_logic;
SIGNAL \hexq0|b~0_combout\ : std_logic;
SIGNAL \hexq0|c~0_combout\ : std_logic;
SIGNAL \hexq0|d~0_combout\ : std_logic;
SIGNAL \hexq0|e~0_combout\ : std_logic;
SIGNAL \hexq0|f~0_combout\ : std_logic;
SIGNAL \hexq0|g~0_combout\ : std_logic;
SIGNAL \hexq1|a~0_combout\ : std_logic;
SIGNAL \hexq1|b~0_combout\ : std_logic;
SIGNAL \hexq1|c~0_combout\ : std_logic;
SIGNAL \hexq1|d~0_combout\ : std_logic;
SIGNAL \hexq1|e~0_combout\ : std_logic;
SIGNAL \hexq1|f~0_combout\ : std_logic;
SIGNAL \hexq1|g~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \hexr0|a~0_combout\ : std_logic;
SIGNAL \hexr0|b~0_combout\ : std_logic;
SIGNAL \hexr0|c~0_combout\ : std_logic;
SIGNAL \hexr0|d~0_combout\ : std_logic;
SIGNAL \hexr0|e~0_combout\ : std_logic;
SIGNAL \hexr0|f~0_combout\ : std_logic;
SIGNAL \hexr0|g~0_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \hexr1|a~0_combout\ : std_logic;
SIGNAL \hexr1|b~0_combout\ : std_logic;
SIGNAL \hexr1|c~0_combout\ : std_logic;
SIGNAL \hexr1|d~0_combout\ : std_logic;
SIGNAL \hexr1|e~0_combout\ : std_logic;
SIGNAL \hexr1|f~0_combout\ : std_logic;
SIGNAL \hexr1|g~0_combout\ : std_logic;
SIGNAL nowDivisor : std_logic_vector(16 DOWNTO 0);
SIGNAL nowQuotient : std_logic_vector(7 DOWNTO 0);
SIGNAL repeat : std_logic_vector(31 DOWNTO 0);
SIGNAL nowRemainder : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_state.s3~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_divisor <= divisor;
ww_dividend <= dividend;
quotient <= ww_quotient;
remainder <= ww_remainder;
output <= ww_output;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \counter~q\);
\ALT_INV_state.s3~q\ <= NOT \state.s3~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(1),
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(2),
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(3),
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(4),
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\quotient[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(5),
	devoe => ww_devoe,
	o => \quotient[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\quotient[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(6),
	devoe => ww_devoe,
	o => \quotient[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\quotient[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(7),
	devoe => ww_devoe,
	o => \quotient[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\quotient[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(8),
	devoe => ww_devoe,
	o => \quotient[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\remainder[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(9),
	devoe => ww_devoe,
	o => \remainder[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\remainder[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(10),
	devoe => ww_devoe,
	o => \remainder[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\remainder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(11),
	devoe => ww_devoe,
	o => \remainder[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\remainder[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(12),
	devoe => ww_devoe,
	o => \remainder[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\remainder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(13),
	devoe => ww_devoe,
	o => \remainder[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\remainder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(14),
	devoe => ww_devoe,
	o => \remainder[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\remainder[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(15),
	devoe => ww_devoe,
	o => \remainder[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\remainder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nowRemainder(16),
	devoe => ww_devoe,
	o => \remainder[7]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|a~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|b~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|c~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|d~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|e~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|f~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq0|g~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\hex1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|a~0_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\hex1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|b~0_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\hex1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|c~0_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\hex1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|d~0_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\hex1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|e~0_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hex1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|f~0_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\hex1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexq1|g~0_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\hex2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|a~0_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\hex2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|b~0_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\hex2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|c~0_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\hex2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|d~0_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\hex2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|e~0_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\hex2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|f~0_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\hex2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr0|g~0_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\hex3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|a~0_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\hex3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|b~0_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\hex3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|c~0_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\hex3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|d~0_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\hex3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|e~0_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\hex3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|f~0_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\hex3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexr1|g~0_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X114_Y37_N18
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = !\counter~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter~q\,
	combout => \counter~0_combout\);

-- Location: LCCOMB_X114_Y37_N2
\counter~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~feeder_combout\ = \counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter~0_combout\,
	combout => \counter~feeder_combout\);

-- Location: FF_X114_Y37_N3
counter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \counter~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter~q\);

-- Location: CLKCTRL_G7
\counter~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y16_N8
\dividend[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(1),
	o => \dividend[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\divisor[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(7),
	o => \divisor[7]~input_o\);

-- Location: LCCOMB_X109_Y17_N18
\state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.start~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \state.start~0_combout\);

-- Location: FF_X109_Y17_N19
\state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.start~q\);

-- Location: LCCOMB_X109_Y18_N26
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\divisor[7]~input_o\ & !\state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor[7]~input_o\,
	datad => \state.start~q\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X109_Y17_N22
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\state.s3~q\) # (!\state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.start~q\,
	datad => \state.s3~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X109_Y18_N27
\nowDivisor[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(15));

-- Location: IOIBUF_X115_Y10_N1
\divisor[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(6),
	o => \divisor[6]~input_o\);

-- Location: LCCOMB_X109_Y18_N24
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.s3~q\ & (nowDivisor(15))) # (!\state.s3~q\ & ((\divisor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(15),
	datab => \divisor[6]~input_o\,
	datad => \state.s3~q\,
	combout => \Selector33~0_combout\);

-- Location: FF_X109_Y18_N25
\nowDivisor[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(14));

-- Location: IOIBUF_X115_Y11_N8
\divisor[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(5),
	o => \divisor[5]~input_o\);

-- Location: LCCOMB_X109_Y18_N10
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.s3~q\ & (nowDivisor(14))) # (!\state.s3~q\ & ((\divisor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nowDivisor(14),
	datac => \divisor[5]~input_o\,
	datad => \state.s3~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X109_Y18_N11
\nowDivisor[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(13));

-- Location: IOIBUF_X115_Y18_N8
\divisor[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(4),
	o => \divisor[4]~input_o\);

-- Location: LCCOMB_X109_Y18_N28
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.s3~q\ & (nowDivisor(13))) # (!\state.s3~q\ & ((\divisor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(13),
	datab => \state.s3~q\,
	datad => \divisor[4]~input_o\,
	combout => \Selector35~0_combout\);

-- Location: FF_X109_Y18_N29
\nowDivisor[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(12));

-- Location: IOIBUF_X115_Y13_N8
\divisor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(3),
	o => \divisor[3]~input_o\);

-- Location: LCCOMB_X109_Y18_N22
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.s3~q\ & (nowDivisor(12))) # (!\state.s3~q\ & ((\divisor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nowDivisor(12),
	datac => \divisor[3]~input_o\,
	datad => \state.s3~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X109_Y18_N23
\nowDivisor[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector36~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(11));

-- Location: IOIBUF_X115_Y15_N8
\divisor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(2),
	o => \divisor[2]~input_o\);

-- Location: LCCOMB_X109_Y18_N8
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.s3~q\ & (nowDivisor(11))) # (!\state.s3~q\ & ((\divisor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(11),
	datac => \divisor[2]~input_o\,
	datad => \state.s3~q\,
	combout => \Selector37~0_combout\);

-- Location: FF_X109_Y18_N9
\nowDivisor[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(10));

-- Location: IOIBUF_X115_Y14_N1
\divisor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(1),
	o => \divisor[1]~input_o\);

-- Location: LCCOMB_X109_Y18_N14
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state.s3~q\ & (nowDivisor(10))) # (!\state.s3~q\ & ((\divisor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => nowDivisor(10),
	datad => \divisor[1]~input_o\,
	combout => \Selector38~0_combout\);

-- Location: FF_X109_Y18_N15
\nowDivisor[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(9));

-- Location: IOIBUF_X115_Y17_N1
\divisor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divisor(0),
	o => \divisor[0]~input_o\);

-- Location: LCCOMB_X109_Y18_N16
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state.s3~q\ & (nowDivisor(9))) # (!\state.s3~q\ & ((\divisor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => nowDivisor(9),
	datad => \divisor[0]~input_o\,
	combout => \Selector39~0_combout\);

-- Location: FF_X109_Y18_N17
\nowDivisor[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(8));

-- Location: LCCOMB_X108_Y22_N6
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\state.s3~q\ & nowDivisor(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => nowDivisor(8),
	combout => \Selector40~0_combout\);

-- Location: FF_X108_Y22_N7
\nowDivisor[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(7));

-- Location: IOIBUF_X115_Y6_N15
\dividend[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(7),
	o => \dividend[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\dividend[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(6),
	o => \dividend[6]~input_o\);

-- Location: LCCOMB_X109_Y22_N2
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (nowDivisor(7) & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nowDivisor(7),
	datad => \state.s3~q\,
	combout => \Selector41~0_combout\);

-- Location: FF_X109_Y22_N3
\nowDivisor[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(6));

-- Location: IOIBUF_X115_Y9_N22
\dividend[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(5),
	o => \dividend[5]~input_o\);

-- Location: LCCOMB_X109_Y22_N0
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\state.s3~q\ & nowDivisor(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => nowDivisor(6),
	combout => \Selector42~0_combout\);

-- Location: FF_X109_Y22_N1
\nowDivisor[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(5));

-- Location: LCCOMB_X109_Y22_N10
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.s3~q\ & nowDivisor(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => nowDivisor(5),
	combout => \Selector43~0_combout\);

-- Location: FF_X109_Y22_N11
\nowDivisor[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(4));

-- Location: IOIBUF_X115_Y7_N15
\dividend[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(4),
	o => \dividend[4]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\dividend[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(3),
	o => \dividend[3]~input_o\);

-- Location: LCCOMB_X109_Y22_N8
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.s3~q\ & nowDivisor(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => nowDivisor(4),
	combout => \Selector44~0_combout\);

-- Location: FF_X109_Y22_N9
\nowDivisor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(3));

-- Location: IOIBUF_X115_Y4_N15
\dividend[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(2),
	o => \dividend[2]~input_o\);

-- Location: LCCOMB_X108_Y22_N4
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (nowDivisor(3) & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nowDivisor(3),
	datad => \state.s3~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X108_Y22_N5
\nowDivisor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(2));

-- Location: LCCOMB_X109_Y22_N12
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (nowDivisor(2) & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nowDivisor(2),
	datad => \state.s3~q\,
	combout => \Selector46~0_combout\);

-- Location: FF_X109_Y22_N13
\nowDivisor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(1));

-- Location: LCCOMB_X109_Y22_N6
\Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\state.s3~q\ & nowDivisor(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => nowDivisor(1),
	combout => \Selector47~1_combout\);

-- Location: FF_X109_Y22_N7
\nowDivisor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector47~1_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowDivisor(0));

-- Location: IOIBUF_X115_Y4_N22
\dividend[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dividend(0),
	o => \dividend[0]~input_o\);

-- Location: LCCOMB_X109_Y22_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (nowDivisor(0) & (nowRemainder(0) $ (VCC))) # (!nowDivisor(0) & ((nowRemainder(0)) # (GND)))
-- \Add0~1\ = CARRY((nowRemainder(0)) # (!nowDivisor(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(0),
	datab => nowRemainder(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X109_Y22_N14
\nowRemainder[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[0]~7_combout\ = (\state.s1~q\ & ((\Add0~0_combout\))) # (!\state.s1~q\ & (\dividend[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[0]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~0_combout\,
	combout => \nowRemainder[0]~7_combout\);

-- Location: LCCOMB_X108_Y22_N16
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (nowDivisor(0) & (nowRemainder(0) $ (VCC))) # (!nowDivisor(0) & (nowRemainder(0) & VCC))
-- \Add1~1\ = CARRY((nowDivisor(0) & nowRemainder(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(0),
	datab => nowRemainder(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X109_Y21_N26
\state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (!\reset~input_o\ & (\state.s1~q\ & !\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~32_combout\,
	combout => \state~11_combout\);

-- Location: FF_X109_Y21_N27
\state.s2a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2a~q\);

-- Location: LCCOMB_X108_Y18_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = repeat(0) $ (VCC)
-- \Add2~1\ = CARRY(repeat(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => repeat(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X109_Y18_N12
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add2~0_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \state.s3~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X108_Y18_N19
\repeat[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	asdata => \Selector31~0_combout\,
	sload => VCC,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(0));

-- Location: LCCOMB_X108_Y18_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (repeat(1) & (!\Add2~1\)) # (!repeat(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!repeat(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X109_Y18_N6
\repeat~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \repeat~1_combout\ = (!\Equal0~10_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add2~2_combout\,
	combout => \repeat~1_combout\);

-- Location: FF_X109_Y18_N7
\repeat[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \repeat~1_combout\,
	sclr => \ALT_INV_state.s3~q\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(1));

-- Location: LCCOMB_X108_Y18_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (repeat(2) & (\Add2~3\ $ (GND))) # (!repeat(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((repeat(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X109_Y18_N30
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Add2~4_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	datad => \state.s3~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X108_Y18_N9
\repeat[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	asdata => \Selector29~0_combout\,
	sload => VCC,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(2));

-- Location: LCCOMB_X108_Y18_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (repeat(3) & (!\Add2~5\)) # (!repeat(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!repeat(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X109_Y18_N4
\repeat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \repeat~0_combout\ = (\Add2~6_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datac => \Equal0~10_combout\,
	combout => \repeat~0_combout\);

-- Location: FF_X109_Y18_N5
\repeat[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \repeat~0_combout\,
	sclr => \ALT_INV_state.s3~q\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(3));

-- Location: LCCOMB_X108_Y18_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (repeat(4) & (\Add2~7\ $ (GND))) # (!repeat(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((repeat(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X107_Y18_N0
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.s3~q\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => \Add2~8_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X107_Y18_N1
\repeat[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(4));

-- Location: LCCOMB_X108_Y18_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (repeat(5) & (!\Add2~9\)) # (!repeat(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!repeat(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X107_Y18_N14
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.s3~q\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => \Add2~10_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X107_Y18_N15
\repeat[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(5));

-- Location: LCCOMB_X108_Y18_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (repeat(6) & (\Add2~11\ $ (GND))) # (!repeat(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((repeat(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X107_Y18_N2
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.s3~q\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => \Add2~12_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X107_Y18_N3
\repeat[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(6));

-- Location: LCCOMB_X108_Y18_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (repeat(7) & (!\Add2~13\)) # (!repeat(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!repeat(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X107_Y18_N8
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state.s3~q\ & \Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => \Add2~14_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X107_Y18_N9
\repeat[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(7));

-- Location: LCCOMB_X108_Y18_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (repeat(8) & (\Add2~15\ $ (GND))) # (!repeat(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((repeat(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X107_Y18_N10
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.s3~q\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Add2~16_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X107_Y18_N11
\repeat[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(8));

-- Location: LCCOMB_X108_Y18_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (repeat(9) & (!\Add2~17\)) # (!repeat(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!repeat(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X107_Y18_N12
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.s3~q\ & \Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Add2~18_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X107_Y18_N13
\repeat[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(9));

-- Location: LCCOMB_X108_Y18_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (repeat(10) & (\Add2~19\ $ (GND))) # (!repeat(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((repeat(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X109_Y18_N20
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.s3~q\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => \Add2~20_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X108_Y18_N21
\repeat[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	asdata => \Selector21~0_combout\,
	sload => VCC,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(10));

-- Location: LCCOMB_X108_Y18_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (repeat(11) & (!\Add2~21\)) # (!repeat(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!repeat(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X107_Y18_N4
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.s3~q\ & \Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Add2~22_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X107_Y18_N5
\repeat[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(11));

-- Location: LCCOMB_X108_Y18_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (repeat(12) & (\Add2~23\ $ (GND))) # (!repeat(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((repeat(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X107_Y18_N26
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.s3~q\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Add2~24_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X107_Y18_N27
\repeat[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(12));

-- Location: LCCOMB_X108_Y18_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (repeat(13) & (!\Add2~25\)) # (!repeat(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!repeat(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X107_Y18_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.s3~q\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Add2~26_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X107_Y18_N21
\repeat[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(13));

-- Location: LCCOMB_X108_Y18_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (repeat(14) & (\Add2~27\ $ (GND))) # (!repeat(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((repeat(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X107_Y18_N16
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.s3~q\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s3~q\,
	datad => \Add2~28_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X107_Y18_N17
\repeat[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(14));

-- Location: LCCOMB_X108_Y18_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (repeat(15) & (!\Add2~29\)) # (!repeat(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!repeat(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X107_Y18_N30
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.s3~q\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datac => \Add2~30_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X107_Y18_N31
\repeat[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(15));

-- Location: LCCOMB_X108_Y17_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (repeat(16) & (\Add2~31\ $ (GND))) # (!repeat(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((repeat(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X107_Y17_N30
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add2~32_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~32_combout\,
	datad => \state.s3~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X107_Y17_N31
\repeat[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(16));

-- Location: LCCOMB_X108_Y17_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (repeat(17) & (!\Add2~33\)) # (!repeat(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!repeat(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X107_Y17_N12
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.s3~q\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~34_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X107_Y17_N13
\repeat[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(17));

-- Location: LCCOMB_X108_Y17_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (repeat(18) & (\Add2~35\ $ (GND))) # (!repeat(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((repeat(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X107_Y17_N16
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.s3~q\ & \Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~36_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X107_Y17_N17
\repeat[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(18));

-- Location: LCCOMB_X108_Y17_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (repeat(19) & (!\Add2~37\)) # (!repeat(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!repeat(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X107_Y17_N2
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.s3~q\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~38_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X107_Y17_N3
\repeat[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(19));

-- Location: LCCOMB_X108_Y17_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (repeat(20) & (\Add2~39\ $ (GND))) # (!repeat(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((repeat(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X109_Y17_N4
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.s3~q\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~40_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X109_Y17_N5
\repeat[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(20));

-- Location: LCCOMB_X108_Y17_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (repeat(21) & (!\Add2~41\)) # (!repeat(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!repeat(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X109_Y17_N2
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.s3~q\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~42_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X109_Y17_N3
\repeat[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(21));

-- Location: LCCOMB_X108_Y17_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (repeat(22) & (\Add2~43\ $ (GND))) # (!repeat(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((repeat(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X107_Y17_N6
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add2~44_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~44_combout\,
	datad => \state.s3~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X107_Y17_N7
\repeat[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(22));

-- Location: LCCOMB_X108_Y17_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (repeat(23) & (!\Add2~45\)) # (!repeat(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!repeat(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X107_Y17_N4
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add2~46_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~46_combout\,
	datad => \state.s3~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X107_Y17_N5
\repeat[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(23));

-- Location: LCCOMB_X108_Y17_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (repeat(24) & (\Add2~47\ $ (GND))) # (!repeat(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((repeat(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X107_Y17_N26
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.s3~q\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~48_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X107_Y17_N27
\repeat[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(24));

-- Location: LCCOMB_X108_Y17_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (repeat(25) & (!\Add2~49\)) # (!repeat(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!repeat(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X107_Y17_N0
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s3~q\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~50_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X107_Y17_N1
\repeat[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(25));

-- Location: LCCOMB_X108_Y17_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (repeat(26) & (\Add2~51\ $ (GND))) # (!repeat(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((repeat(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X109_Y17_N26
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s3~q\ & \Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~52_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X109_Y17_N27
\repeat[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(26));

-- Location: LCCOMB_X108_Y17_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (repeat(27) & (!\Add2~53\)) # (!repeat(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!repeat(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X109_Y17_N12
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s3~q\ & \Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~54_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X109_Y17_N13
\repeat[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(27));

-- Location: LCCOMB_X108_Y17_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (repeat(28) & (\Add2~55\ $ (GND))) # (!repeat(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((repeat(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => repeat(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X107_Y17_N14
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s3~q\ & \Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~56_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X107_Y17_N15
\repeat[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(28));

-- Location: LCCOMB_X108_Y17_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (repeat(29) & (!\Add2~57\)) # (!repeat(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!repeat(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X109_Y17_N10
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Add2~58_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~58_combout\,
	datad => \state.s3~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X109_Y17_N11
\repeat[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(29));

-- Location: LCCOMB_X108_Y17_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (repeat(30) & (\Add2~59\ $ (GND))) # (!repeat(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((repeat(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => repeat(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X107_Y17_N18
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s3~q\ & \Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datad => \Add2~60_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X107_Y17_N19
\repeat[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(30));

-- Location: LCCOMB_X108_Y17_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (repeat(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => repeat(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X107_Y17_N20
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Add2~62_combout\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~62_combout\,
	datad => \state.s3~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X107_Y17_N21
\repeat[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => repeat(31));

-- Location: LCCOMB_X107_Y17_N10
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!repeat(1) & (!repeat(31) & (repeat(3) & !repeat(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(1),
	datab => repeat(31),
	datac => repeat(3),
	datad => repeat(30),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X109_Y17_N20
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!repeat(20) & !repeat(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => repeat(20),
	datad => repeat(21),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X107_Y17_N22
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!repeat(24) & (!repeat(25) & (!repeat(23) & !repeat(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(24),
	datab => repeat(25),
	datac => repeat(23),
	datad => repeat(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X107_Y17_N28
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (!repeat(18) & (\Equal0~6_combout\ & !repeat(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => repeat(18),
	datac => \Equal0~6_combout\,
	datad => repeat(19),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X107_Y17_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!repeat(26) & (!repeat(28) & (!repeat(29) & !repeat(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(26),
	datab => repeat(28),
	datac => repeat(29),
	datad => repeat(27),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X107_Y18_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!repeat(8) & (!repeat(6) & (!repeat(7) & !repeat(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(8),
	datab => repeat(6),
	datac => repeat(7),
	datad => repeat(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X107_Y18_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!repeat(17) & (!repeat(14) & (!repeat(15) & !repeat(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(17),
	datab => repeat(14),
	datac => repeat(15),
	datad => repeat(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X107_Y18_N22
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!repeat(12) & (!repeat(11) & (!repeat(10) & !repeat(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(12),
	datab => repeat(11),
	datac => repeat(10),
	datad => repeat(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X107_Y18_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (repeat(0) & (!repeat(5) & (!repeat(2) & !repeat(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => repeat(0),
	datab => repeat(5),
	datac => repeat(2),
	datad => repeat(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X107_Y18_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X107_Y17_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: FF_X107_Y17_N25
w : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Equal0~10_combout\,
	ena => \state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w~q\);

-- Location: LCCOMB_X109_Y17_N0
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (!\reset~input_o\ & ((\state.s4~q\) # ((\w~q\ & \state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~q\,
	datab => \reset~input_o\,
	datac => \state.s4~q\,
	datad => \state.s3~q\,
	combout => \state~12_combout\);

-- Location: FF_X109_Y17_N1
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LCCOMB_X109_Y21_N24
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (!\state.s2a~q\ & (!\state.s4~q\ & !\state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2a~q\,
	datac => \state.s4~q\,
	datad => \state.s3~q\,
	combout => \WideOr1~combout\);

-- Location: FF_X109_Y22_N15
\nowRemainder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[0]~7_combout\,
	asdata => \Add1~0_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(0));

-- Location: LCCOMB_X109_Y22_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (nowDivisor(1) & ((nowRemainder(1) & (!\Add0~1\)) # (!nowRemainder(1) & ((\Add0~1\) # (GND))))) # (!nowDivisor(1) & ((nowRemainder(1) & (\Add0~1\ & VCC)) # (!nowRemainder(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((nowDivisor(1) & ((!\Add0~1\) # (!nowRemainder(1)))) # (!nowDivisor(1) & (!nowRemainder(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(1),
	datab => nowRemainder(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X109_Y22_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((nowRemainder(2) $ (nowDivisor(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((nowRemainder(2) & ((!\Add0~3\) # (!nowDivisor(2)))) # (!nowRemainder(2) & (!nowDivisor(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(2),
	datab => nowDivisor(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X108_Y22_N0
\nowRemainder[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[2]~1_combout\ = (\state.s1~q\ & ((\Add0~4_combout\))) # (!\state.s1~q\ & (\dividend[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[2]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~4_combout\,
	combout => \nowRemainder[2]~1_combout\);

-- Location: LCCOMB_X108_Y22_N18
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (nowRemainder(1) & ((nowDivisor(1) & (\Add1~1\ & VCC)) # (!nowDivisor(1) & (!\Add1~1\)))) # (!nowRemainder(1) & ((nowDivisor(1) & (!\Add1~1\)) # (!nowDivisor(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((nowRemainder(1) & (!nowDivisor(1) & !\Add1~1\)) # (!nowRemainder(1) & ((!\Add1~1\) # (!nowDivisor(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowDivisor(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X108_Y22_N20
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((nowRemainder(2) $ (nowDivisor(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((nowRemainder(2) & ((nowDivisor(2)) # (!\Add1~3\))) # (!nowRemainder(2) & (nowDivisor(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(2),
	datab => nowDivisor(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X108_Y22_N1
\nowRemainder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[2]~1_combout\,
	asdata => \Add1~4_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(2));

-- Location: LCCOMB_X109_Y22_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (nowRemainder(3) & ((nowDivisor(3) & (!\Add0~5\)) # (!nowDivisor(3) & (\Add0~5\ & VCC)))) # (!nowRemainder(3) & ((nowDivisor(3) & ((\Add0~5\) # (GND))) # (!nowDivisor(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((nowRemainder(3) & (nowDivisor(3) & !\Add0~5\)) # (!nowRemainder(3) & ((nowDivisor(3)) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(3),
	datab => nowDivisor(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X108_Y22_N10
\nowRemainder[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[3]~2_combout\ = (\state.s1~q\ & ((\Add0~6_combout\))) # (!\state.s1~q\ & (\dividend[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[3]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~6_combout\,
	combout => \nowRemainder[3]~2_combout\);

-- Location: LCCOMB_X108_Y22_N22
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (nowRemainder(3) & ((nowDivisor(3) & (\Add1~5\ & VCC)) # (!nowDivisor(3) & (!\Add1~5\)))) # (!nowRemainder(3) & ((nowDivisor(3) & (!\Add1~5\)) # (!nowDivisor(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((nowRemainder(3) & (!nowDivisor(3) & !\Add1~5\)) # (!nowRemainder(3) & ((!\Add1~5\) # (!nowDivisor(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(3),
	datab => nowDivisor(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X108_Y22_N11
\nowRemainder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[3]~2_combout\,
	asdata => \Add1~6_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(3));

-- Location: LCCOMB_X109_Y22_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((nowDivisor(4) $ (nowRemainder(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((nowDivisor(4) & (nowRemainder(4) & !\Add0~7\)) # (!nowDivisor(4) & ((nowRemainder(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(4),
	datab => nowRemainder(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X108_Y22_N12
\nowRemainder[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[4]~3_combout\ = (\state.s1~q\ & ((\Add0~8_combout\))) # (!\state.s1~q\ & (\dividend[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[4]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~8_combout\,
	combout => \nowRemainder[4]~3_combout\);

-- Location: LCCOMB_X108_Y22_N24
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((nowRemainder(4) $ (nowDivisor(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((nowRemainder(4) & ((nowDivisor(4)) # (!\Add1~7\))) # (!nowRemainder(4) & (nowDivisor(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowDivisor(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X108_Y22_N13
\nowRemainder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[4]~3_combout\,
	asdata => \Add1~8_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(4));

-- Location: LCCOMB_X109_Y22_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (nowRemainder(5) & ((nowDivisor(5) & (!\Add0~9\)) # (!nowDivisor(5) & (\Add0~9\ & VCC)))) # (!nowRemainder(5) & ((nowDivisor(5) & ((\Add0~9\) # (GND))) # (!nowDivisor(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((nowRemainder(5) & (nowDivisor(5) & !\Add0~9\)) # (!nowRemainder(5) & ((nowDivisor(5)) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(5),
	datab => nowDivisor(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X108_Y22_N2
\nowRemainder[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[5]~4_combout\ = (\state.s1~q\ & ((\Add0~10_combout\))) # (!\state.s1~q\ & (\dividend[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[5]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~10_combout\,
	combout => \nowRemainder[5]~4_combout\);

-- Location: LCCOMB_X108_Y22_N26
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (nowRemainder(5) & ((nowDivisor(5) & (\Add1~9\ & VCC)) # (!nowDivisor(5) & (!\Add1~9\)))) # (!nowRemainder(5) & ((nowDivisor(5) & (!\Add1~9\)) # (!nowDivisor(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((nowRemainder(5) & (!nowDivisor(5) & !\Add1~9\)) # (!nowRemainder(5) & ((!\Add1~9\) # (!nowDivisor(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(5),
	datab => nowDivisor(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X108_Y22_N3
\nowRemainder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[5]~4_combout\,
	asdata => \Add1~10_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(5));

-- Location: LCCOMB_X109_Y22_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((nowRemainder(6) $ (nowDivisor(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((nowRemainder(6) & ((!\Add0~11\) # (!nowDivisor(6)))) # (!nowRemainder(6) & (!nowDivisor(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(6),
	datab => nowDivisor(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X108_Y22_N8
\nowRemainder[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[6]~5_combout\ = (\state.s1~q\ & ((\Add0~12_combout\))) # (!\state.s1~q\ & (\dividend[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[6]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~12_combout\,
	combout => \nowRemainder[6]~5_combout\);

-- Location: LCCOMB_X108_Y22_N28
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((nowDivisor(6) $ (nowRemainder(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((nowDivisor(6) & ((nowRemainder(6)) # (!\Add1~11\))) # (!nowDivisor(6) & (nowRemainder(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(6),
	datab => nowRemainder(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X108_Y22_N9
\nowRemainder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[6]~5_combout\,
	asdata => \Add1~12_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(6));

-- Location: LCCOMB_X109_Y22_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (nowRemainder(7) & ((nowDivisor(7) & (!\Add0~13\)) # (!nowDivisor(7) & (\Add0~13\ & VCC)))) # (!nowRemainder(7) & ((nowDivisor(7) & ((\Add0~13\) # (GND))) # (!nowDivisor(7) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((nowRemainder(7) & (nowDivisor(7) & !\Add0~13\)) # (!nowRemainder(7) & ((nowDivisor(7)) # (!\Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(7),
	datab => nowDivisor(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X108_Y22_N14
\nowRemainder[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[7]~6_combout\ = (\state.s1~q\ & ((\Add0~14_combout\))) # (!\state.s1~q\ & (\dividend[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[7]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~14_combout\,
	combout => \nowRemainder[7]~6_combout\);

-- Location: LCCOMB_X108_Y22_N30
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (nowDivisor(7) & ((nowRemainder(7) & (\Add1~13\ & VCC)) # (!nowRemainder(7) & (!\Add1~13\)))) # (!nowDivisor(7) & ((nowRemainder(7) & (!\Add1~13\)) # (!nowRemainder(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((nowDivisor(7) & (!nowRemainder(7) & !\Add1~13\)) # (!nowDivisor(7) & ((!\Add1~13\) # (!nowRemainder(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(7),
	datab => nowRemainder(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X108_Y22_N15
\nowRemainder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[7]~6_combout\,
	asdata => \Add1~14_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(7));

-- Location: LCCOMB_X108_Y21_N0
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((nowDivisor(8) $ (nowRemainder(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((nowDivisor(8) & ((nowRemainder(8)) # (!\Add1~15\))) # (!nowDivisor(8) & (nowRemainder(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(8),
	datab => nowRemainder(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X109_Y21_N0
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((nowDivisor(8) $ (nowRemainder(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((nowDivisor(8) & (nowRemainder(8) & !\Add0~15\)) # (!nowDivisor(8) & ((nowRemainder(8)) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(8),
	datab => nowRemainder(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X109_Y21_N18
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\state.s2b~q\ & (((\Add1~16_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & ((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2b~q\,
	datab => \state.s1~q\,
	datac => \Add1~16_combout\,
	datad => \Add0~16_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X109_Y21_N19
\nowRemainder[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(8));

-- Location: LCCOMB_X109_Y21_N2
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (nowDivisor(9) & ((nowRemainder(9) & (!\Add0~17\)) # (!nowRemainder(9) & ((\Add0~17\) # (GND))))) # (!nowDivisor(9) & ((nowRemainder(9) & (\Add0~17\ & VCC)) # (!nowRemainder(9) & (!\Add0~17\))))
-- \Add0~19\ = CARRY((nowDivisor(9) & ((!\Add0~17\) # (!nowRemainder(9)))) # (!nowDivisor(9) & (!nowRemainder(9) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(9),
	datab => nowRemainder(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X108_Y21_N2
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (nowRemainder(9) & ((nowDivisor(9) & (\Add1~17\ & VCC)) # (!nowDivisor(9) & (!\Add1~17\)))) # (!nowRemainder(9) & ((nowDivisor(9) & (!\Add1~17\)) # (!nowDivisor(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((nowRemainder(9) & (!nowDivisor(9) & !\Add1~17\)) # (!nowRemainder(9) & ((!\Add1~17\) # (!nowDivisor(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(9),
	datab => nowDivisor(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X108_Y21_N22
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\state.s2b~q\ & (((\Add1~18_combout\)))) # (!\state.s2b~q\ & (\Add0~18_combout\ & (\state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \state.s2b~q\,
	datac => \state.s1~q\,
	datad => \Add1~18_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X108_Y21_N23
\nowRemainder[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(9));

-- Location: LCCOMB_X108_Y21_N4
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((nowRemainder(10) $ (nowDivisor(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((nowRemainder(10) & ((nowDivisor(10)) # (!\Add1~19\))) # (!nowRemainder(10) & (nowDivisor(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(10),
	datab => nowDivisor(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X109_Y21_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((nowDivisor(10) $ (nowRemainder(10) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((nowDivisor(10) & (nowRemainder(10) & !\Add0~19\)) # (!nowDivisor(10) & ((nowRemainder(10)) # (!\Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(10),
	datab => nowRemainder(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X108_Y21_N28
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\state.s2b~q\ & (((\Add1~20_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & ((\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s2b~q\,
	datac => \Add1~20_combout\,
	datad => \Add0~20_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X108_Y21_N29
\nowRemainder[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(10));

-- Location: LCCOMB_X108_Y21_N6
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (nowRemainder(11) & ((nowDivisor(11) & (\Add1~21\ & VCC)) # (!nowDivisor(11) & (!\Add1~21\)))) # (!nowRemainder(11) & ((nowDivisor(11) & (!\Add1~21\)) # (!nowDivisor(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((nowRemainder(11) & (!nowDivisor(11) & !\Add1~21\)) # (!nowRemainder(11) & ((!\Add1~21\) # (!nowDivisor(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(11),
	datab => nowDivisor(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X109_Y21_N6
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (nowRemainder(11) & ((nowDivisor(11) & (!\Add0~21\)) # (!nowDivisor(11) & (\Add0~21\ & VCC)))) # (!nowRemainder(11) & ((nowDivisor(11) & ((\Add0~21\) # (GND))) # (!nowDivisor(11) & (!\Add0~21\))))
-- \Add0~23\ = CARRY((nowRemainder(11) & (nowDivisor(11) & !\Add0~21\)) # (!nowRemainder(11) & ((nowDivisor(11)) # (!\Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(11),
	datab => nowDivisor(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X108_Y21_N30
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\state.s2b~q\ & (((\Add1~22_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & ((\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s2b~q\,
	datac => \Add1~22_combout\,
	datad => \Add0~22_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X108_Y21_N31
\nowRemainder[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(11));

-- Location: LCCOMB_X108_Y21_N8
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((nowRemainder(12) $ (nowDivisor(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((nowRemainder(12) & ((nowDivisor(12)) # (!\Add1~23\))) # (!nowRemainder(12) & (nowDivisor(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(12),
	datab => nowDivisor(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X109_Y21_N8
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((nowDivisor(12) $ (nowRemainder(12) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((nowDivisor(12) & (nowRemainder(12) & !\Add0~23\)) # (!nowDivisor(12) & ((nowRemainder(12)) # (!\Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(12),
	datab => nowRemainder(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X108_Y21_N20
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\state.s2b~q\ & (((\Add1~24_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & ((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s2b~q\,
	datac => \Add1~24_combout\,
	datad => \Add0~24_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X108_Y21_N21
\nowRemainder[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(12));

-- Location: LCCOMB_X109_Y21_N10
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (nowRemainder(13) & ((nowDivisor(13) & (!\Add0~25\)) # (!nowDivisor(13) & (\Add0~25\ & VCC)))) # (!nowRemainder(13) & ((nowDivisor(13) & ((\Add0~25\) # (GND))) # (!nowDivisor(13) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((nowRemainder(13) & (nowDivisor(13) & !\Add0~25\)) # (!nowRemainder(13) & ((nowDivisor(13)) # (!\Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(13),
	datab => nowDivisor(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X108_Y21_N10
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (nowRemainder(13) & ((nowDivisor(13) & (\Add1~25\ & VCC)) # (!nowDivisor(13) & (!\Add1~25\)))) # (!nowRemainder(13) & ((nowDivisor(13) & (!\Add1~25\)) # (!nowDivisor(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((nowRemainder(13) & (!nowDivisor(13) & !\Add1~25\)) # (!nowRemainder(13) & ((!\Add1~25\) # (!nowDivisor(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(13),
	datab => nowDivisor(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X108_Y21_N26
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\state.s2b~q\ & (((\Add1~26_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & (\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s2b~q\,
	datac => \Add0~26_combout\,
	datad => \Add1~26_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X108_Y21_N27
\nowRemainder[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(13));

-- Location: LCCOMB_X109_Y21_N12
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((nowRemainder(14) $ (nowDivisor(14) $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((nowRemainder(14) & ((!\Add0~27\) # (!nowDivisor(14)))) # (!nowRemainder(14) & (!nowDivisor(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(14),
	datab => nowDivisor(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X108_Y21_N12
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((nowRemainder(14) $ (nowDivisor(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((nowRemainder(14) & ((nowDivisor(14)) # (!\Add1~27\))) # (!nowRemainder(14) & (nowDivisor(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(14),
	datab => nowDivisor(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X109_Y21_N20
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\state.s2b~q\ & (((\Add1~28_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & (\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2b~q\,
	datab => \state.s1~q\,
	datac => \Add0~28_combout\,
	datad => \Add1~28_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X109_Y21_N21
\nowRemainder[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector50~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(14));

-- Location: LCCOMB_X109_Y21_N14
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (nowDivisor(15) & ((nowRemainder(15) & (!\Add0~29\)) # (!nowRemainder(15) & ((\Add0~29\) # (GND))))) # (!nowDivisor(15) & ((nowRemainder(15) & (\Add0~29\ & VCC)) # (!nowRemainder(15) & (!\Add0~29\))))
-- \Add0~31\ = CARRY((nowDivisor(15) & ((!\Add0~29\) # (!nowRemainder(15)))) # (!nowDivisor(15) & (!nowRemainder(15) & !\Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(15),
	datab => nowRemainder(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X108_Y21_N14
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (nowDivisor(15) & ((nowRemainder(15) & (\Add1~29\ & VCC)) # (!nowRemainder(15) & (!\Add1~29\)))) # (!nowDivisor(15) & ((nowRemainder(15) & (!\Add1~29\)) # (!nowRemainder(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((nowDivisor(15) & (!nowRemainder(15) & !\Add1~29\)) # (!nowDivisor(15) & ((!\Add1~29\) # (!nowRemainder(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nowDivisor(15),
	datab => nowRemainder(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X108_Y21_N24
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\state.s2b~q\ & (((\Add1~30_combout\)))) # (!\state.s2b~q\ & (\state.s1~q\ & (\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s2b~q\,
	datac => \Add0~30_combout\,
	datad => \Add1~30_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X108_Y21_N25
\nowRemainder[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(15));

-- Location: LCCOMB_X108_Y21_N16
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = \Add1~31\ $ (!nowRemainder(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => nowRemainder(16),
	cin => \Add1~31\,
	combout => \Add1~32_combout\);

-- Location: LCCOMB_X108_Y21_N18
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state.s2b~q\ & (\Add1~32_combout\)) # (!\state.s2b~q\ & (((\state.s1~q\ & \Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2b~q\,
	datab => \Add1~32_combout\,
	datac => \state.s1~q\,
	datad => \Add0~32_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X108_Y21_N19
\nowRemainder[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(16));

-- Location: LCCOMB_X109_Y21_N16
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \Add0~31\ $ (nowRemainder(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => nowRemainder(16),
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X109_Y21_N28
\state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~8_combout\ = (!\reset~input_o\ & (\state.s1~q\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~32_combout\,
	combout => \state~8_combout\);

-- Location: FF_X109_Y21_N29
\state.s2b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2b~q\);

-- Location: LCCOMB_X109_Y17_N6
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (!\reset~input_o\ & ((\state.s2b~q\) # (\state.s2a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s2b~q\,
	datac => \state.s2a~q\,
	datad => \reset~input_o\,
	combout => \state~10_combout\);

-- Location: FF_X109_Y17_N7
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X109_Y17_N28
\state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (!\reset~input_o\ & (((\state.s3~q\ & !\w~q\)) # (!\state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \state.start~q\,
	datac => \w~q\,
	datad => \reset~input_o\,
	combout => \state~9_combout\);

-- Location: FF_X109_Y17_N29
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X109_Y22_N4
\nowRemainder[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nowRemainder[1]~0_combout\ = (\state.s1~q\ & ((\Add0~2_combout\))) # (!\state.s1~q\ & (\dividend[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividend[1]~input_o\,
	datab => \state.s1~q\,
	datad => \Add0~2_combout\,
	combout => \nowRemainder[1]~0_combout\);

-- Location: FF_X109_Y22_N5
\nowRemainder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \nowRemainder[1]~0_combout\,
	asdata => \Add1~2_combout\,
	sload => \state.s2b~q\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowRemainder(1));

-- Location: LCCOMB_X109_Y21_N30
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (!\reset~input_o\ & ((\state.s4~q\) # (!\state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.start~q\,
	datac => \state.s4~q\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X109_Y21_N22
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\output~0_combout\) # ((\state~8_combout\) # ((\state.s3~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~0_combout\,
	datab => \state.s3~q\,
	datac => \reset~input_o\,
	datad => \state~8_combout\,
	combout => \output~1_combout\);

-- Location: FF_X109_Y21_N23
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LCCOMB_X109_Y17_N24
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\state.s1~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~q\,
	datad => \reset~input_o\,
	combout => \output~2_combout\);

-- Location: FF_X109_Y17_N25
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LCCOMB_X109_Y17_N8
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\state.s2a~q\) # ((\state.s4~q\) # ((\w~q\ & \state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2a~q\,
	datab => \state.s4~q\,
	datac => \w~q\,
	datad => \state.s3~q\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X109_Y17_N30
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (!\reset~input_o\ & ((\state.s2b~q\) # (\output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s2b~q\,
	datac => \output~3_combout\,
	datad => \reset~input_o\,
	combout => \output~4_combout\);

-- Location: FF_X109_Y17_N31
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \output~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: LCCOMB_X114_Y41_N4
\hexq0|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|a~0_combout\ = (nowRemainder(1) & (nowRemainder(3) & (!nowRemainder(2) & nowRemainder(0)))) # (!nowRemainder(1) & (nowRemainder(2) $ (((!nowRemainder(3) & nowRemainder(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|a~0_combout\);

-- Location: LCCOMB_X114_Y41_N10
\hexq0|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|b~0_combout\ = (nowRemainder(1) & ((nowRemainder(0) & (nowRemainder(3))) # (!nowRemainder(0) & ((nowRemainder(2)))))) # (!nowRemainder(1) & (nowRemainder(2) & (nowRemainder(3) $ (nowRemainder(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|b~0_combout\);

-- Location: LCCOMB_X114_Y41_N8
\hexq0|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|c~0_combout\ = (nowRemainder(3) & (nowRemainder(2) & ((nowRemainder(1)) # (!nowRemainder(0))))) # (!nowRemainder(3) & (nowRemainder(1) & (!nowRemainder(2) & !nowRemainder(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|c~0_combout\);

-- Location: LCCOMB_X114_Y41_N2
\hexq0|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|d~0_combout\ = (nowRemainder(0) & (nowRemainder(1) $ (((!nowRemainder(2)))))) # (!nowRemainder(0) & ((nowRemainder(1) & (nowRemainder(3) & !nowRemainder(2))) # (!nowRemainder(1) & (!nowRemainder(3) & nowRemainder(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|d~0_combout\);

-- Location: LCCOMB_X114_Y41_N16
\hexq0|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|e~0_combout\ = (nowRemainder(1) & (!nowRemainder(3) & ((nowRemainder(0))))) # (!nowRemainder(1) & ((nowRemainder(2) & (!nowRemainder(3))) # (!nowRemainder(2) & ((nowRemainder(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|e~0_combout\);

-- Location: LCCOMB_X114_Y41_N18
\hexq0|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|f~0_combout\ = (nowRemainder(1) & (!nowRemainder(3) & ((nowRemainder(0)) # (!nowRemainder(2))))) # (!nowRemainder(1) & ((nowRemainder(3) & (nowRemainder(2))) # (!nowRemainder(3) & (!nowRemainder(2) & nowRemainder(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|f~0_combout\);

-- Location: LCCOMB_X114_Y41_N24
\hexq0|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq0|g~0_combout\ = (!nowRemainder(3) & ((nowRemainder(1) & (nowRemainder(2) & nowRemainder(0))) # (!nowRemainder(1) & (!nowRemainder(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(1),
	datab => nowRemainder(3),
	datac => nowRemainder(2),
	datad => nowRemainder(0),
	combout => \hexq0|g~0_combout\);

-- Location: LCCOMB_X114_Y41_N22
\hexq1|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|a~0_combout\ = (nowRemainder(5) & (nowRemainder(4) & (nowRemainder(7) & !nowRemainder(6)))) # (!nowRemainder(5) & (nowRemainder(6) $ (((nowRemainder(4) & !nowRemainder(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|a~0_combout\);

-- Location: LCCOMB_X114_Y41_N20
\hexq1|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|b~0_combout\ = (nowRemainder(5) & ((nowRemainder(4) & (nowRemainder(7))) # (!nowRemainder(4) & ((nowRemainder(6)))))) # (!nowRemainder(5) & (nowRemainder(6) & (nowRemainder(4) $ (nowRemainder(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|b~0_combout\);

-- Location: LCCOMB_X114_Y41_N26
\hexq1|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|c~0_combout\ = (nowRemainder(7) & (nowRemainder(6) & ((nowRemainder(5)) # (!nowRemainder(4))))) # (!nowRemainder(7) & (!nowRemainder(4) & (nowRemainder(5) & !nowRemainder(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|c~0_combout\);

-- Location: LCCOMB_X114_Y41_N28
\hexq1|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|d~0_combout\ = (nowRemainder(4) & (nowRemainder(5) $ (((!nowRemainder(6)))))) # (!nowRemainder(4) & ((nowRemainder(5) & (nowRemainder(7) & !nowRemainder(6))) # (!nowRemainder(5) & (!nowRemainder(7) & nowRemainder(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|d~0_combout\);

-- Location: LCCOMB_X114_Y41_N30
\hexq1|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|e~0_combout\ = (nowRemainder(5) & (nowRemainder(4) & (!nowRemainder(7)))) # (!nowRemainder(5) & ((nowRemainder(6) & ((!nowRemainder(7)))) # (!nowRemainder(6) & (nowRemainder(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|e~0_combout\);

-- Location: LCCOMB_X114_Y41_N12
\hexq1|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|f~0_combout\ = (nowRemainder(5) & (!nowRemainder(7) & ((nowRemainder(4)) # (!nowRemainder(6))))) # (!nowRemainder(5) & ((nowRemainder(7) & ((nowRemainder(6)))) # (!nowRemainder(7) & (nowRemainder(4) & !nowRemainder(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|f~0_combout\);

-- Location: LCCOMB_X114_Y41_N6
\hexq1|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexq1|g~0_combout\ = (!nowRemainder(7) & ((nowRemainder(5) & (nowRemainder(4) & nowRemainder(6))) # (!nowRemainder(5) & ((!nowRemainder(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowRemainder(4),
	datab => nowRemainder(5),
	datac => nowRemainder(7),
	datad => nowRemainder(6),
	combout => \hexq1|g~0_combout\);

-- Location: LCCOMB_X109_Y17_N14
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\state.s3~q\) # ((\state.s4~q\) # (\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \state.s4~q\,
	datad => \state.s1~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X113_Y17_N8
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state.s2a~q\) # ((\WideOr2~0_combout\ & nowQuotient(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datac => nowQuotient(0),
	datad => \state.s2a~q\,
	combout => \Selector72~0_combout\);

-- Location: FF_X113_Y17_N9
\nowQuotient[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(0));

-- Location: LCCOMB_X109_Y17_N16
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (!\state.s2a~q\ & !\state.s2b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s2a~q\,
	datad => \state.s2b~q\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X114_Y17_N20
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\WideOr2~0_combout\ & ((nowQuotient(1)) # ((!\output~5_combout\ & nowQuotient(0))))) # (!\WideOr2~0_combout\ & (!\output~5_combout\ & ((nowQuotient(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \output~5_combout\,
	datac => nowQuotient(1),
	datad => nowQuotient(0),
	combout => \Selector71~0_combout\);

-- Location: FF_X114_Y17_N21
\nowQuotient[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(1));

-- Location: LCCOMB_X114_Y17_N30
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\WideOr2~0_combout\ & ((nowQuotient(2)) # ((!\output~5_combout\ & nowQuotient(1))))) # (!\WideOr2~0_combout\ & (!\output~5_combout\ & ((nowQuotient(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \output~5_combout\,
	datac => nowQuotient(2),
	datad => nowQuotient(1),
	combout => \Selector70~0_combout\);

-- Location: FF_X114_Y17_N31
\nowQuotient[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector70~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(2));

-- Location: LCCOMB_X114_Y17_N16
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (nowQuotient(2) & (((nowQuotient(3) & \WideOr2~0_combout\)) # (!\output~5_combout\))) # (!nowQuotient(2) & (((nowQuotient(3) & \WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(2),
	datab => \output~5_combout\,
	datac => nowQuotient(3),
	datad => \WideOr2~0_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X114_Y17_N17
\nowQuotient[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(3));

-- Location: LCCOMB_X114_Y17_N18
\hexr0|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|a~0_combout\ = (nowQuotient(1) & (nowQuotient(0) & (!nowQuotient(2) & nowQuotient(3)))) # (!nowQuotient(1) & (nowQuotient(2) $ (((nowQuotient(0) & !nowQuotient(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|a~0_combout\);

-- Location: LCCOMB_X114_Y17_N8
\hexr0|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|b~0_combout\ = (nowQuotient(1) & ((nowQuotient(0) & ((nowQuotient(3)))) # (!nowQuotient(0) & (nowQuotient(2))))) # (!nowQuotient(1) & (nowQuotient(2) & (nowQuotient(0) $ (nowQuotient(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|b~0_combout\);

-- Location: LCCOMB_X114_Y17_N14
\hexr0|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|c~0_combout\ = (nowQuotient(2) & (nowQuotient(3) & ((nowQuotient(1)) # (!nowQuotient(0))))) # (!nowQuotient(2) & (!nowQuotient(0) & (nowQuotient(1) & !nowQuotient(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|c~0_combout\);

-- Location: LCCOMB_X114_Y17_N28
\hexr0|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|d~0_combout\ = (nowQuotient(0) & (nowQuotient(1) $ ((!nowQuotient(2))))) # (!nowQuotient(0) & ((nowQuotient(1) & (!nowQuotient(2) & nowQuotient(3))) # (!nowQuotient(1) & (nowQuotient(2) & !nowQuotient(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|d~0_combout\);

-- Location: LCCOMB_X114_Y17_N6
\hexr0|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|e~0_combout\ = (nowQuotient(1) & (nowQuotient(0) & ((!nowQuotient(3))))) # (!nowQuotient(1) & ((nowQuotient(2) & ((!nowQuotient(3)))) # (!nowQuotient(2) & (nowQuotient(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|e~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\hexr0|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|f~0_combout\ = (nowQuotient(1) & (!nowQuotient(3) & ((nowQuotient(0)) # (!nowQuotient(2))))) # (!nowQuotient(1) & ((nowQuotient(2) & ((nowQuotient(3)))) # (!nowQuotient(2) & (nowQuotient(0) & !nowQuotient(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|f~0_combout\);

-- Location: LCCOMB_X114_Y17_N26
\hexr0|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr0|g~0_combout\ = (!nowQuotient(3) & ((nowQuotient(1) & (nowQuotient(0) & nowQuotient(2))) # (!nowQuotient(1) & ((!nowQuotient(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(0),
	datab => nowQuotient(1),
	datac => nowQuotient(2),
	datad => nowQuotient(3),
	combout => \hexr0|g~0_combout\);

-- Location: LCCOMB_X114_Y17_N2
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\WideOr2~0_combout\ & ((nowQuotient(4)) # ((!\output~5_combout\ & nowQuotient(3))))) # (!\WideOr2~0_combout\ & (!\output~5_combout\ & ((nowQuotient(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \output~5_combout\,
	datac => nowQuotient(4),
	datad => nowQuotient(3),
	combout => \Selector68~0_combout\);

-- Location: FF_X114_Y17_N3
\nowQuotient[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(4));

-- Location: LCCOMB_X114_Y17_N10
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\WideOr2~0_combout\ & ((nowQuotient(5)) # ((!\output~5_combout\ & nowQuotient(4))))) # (!\WideOr2~0_combout\ & (!\output~5_combout\ & ((nowQuotient(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \output~5_combout\,
	datac => nowQuotient(5),
	datad => nowQuotient(4),
	combout => \Selector67~0_combout\);

-- Location: FF_X114_Y17_N11
\nowQuotient[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(5));

-- Location: LCCOMB_X114_Y17_N12
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\WideOr2~0_combout\ & ((nowQuotient(6)) # ((!\output~5_combout\ & nowQuotient(5))))) # (!\WideOr2~0_combout\ & (!\output~5_combout\ & ((nowQuotient(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \output~5_combout\,
	datac => nowQuotient(6),
	datad => nowQuotient(5),
	combout => \Selector66~0_combout\);

-- Location: FF_X114_Y17_N13
\nowQuotient[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(6));

-- Location: LCCOMB_X114_Y17_N24
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\WideOr2~0_combout\ & ((nowQuotient(7)) # ((!\output~5_combout\ & nowQuotient(6))))) # (!\WideOr2~0_combout\ & (!\output~5_combout\ & ((nowQuotient(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \output~5_combout\,
	datac => nowQuotient(7),
	datad => nowQuotient(6),
	combout => \Selector65~0_combout\);

-- Location: FF_X114_Y17_N25
\nowQuotient[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter~clkctrl_outclk\,
	d => \Selector65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowQuotient(7));

-- Location: LCCOMB_X114_Y17_N4
\hexr1|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|a~0_combout\ = (nowQuotient(5) & (nowQuotient(4) & (nowQuotient(7) & !nowQuotient(6)))) # (!nowQuotient(5) & (nowQuotient(6) $ (((nowQuotient(4) & !nowQuotient(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(5),
	datab => nowQuotient(4),
	datac => nowQuotient(7),
	datad => nowQuotient(6),
	combout => \hexr1|a~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\hexr1|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|b~0_combout\ = (nowQuotient(5) & ((nowQuotient(4) & (nowQuotient(7))) # (!nowQuotient(4) & ((nowQuotient(6)))))) # (!nowQuotient(5) & (nowQuotient(6) & (nowQuotient(4) $ (nowQuotient(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(5),
	datab => nowQuotient(4),
	datac => nowQuotient(7),
	datad => nowQuotient(6),
	combout => \hexr1|b~0_combout\);

-- Location: LCCOMB_X113_Y17_N2
\hexr1|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|c~0_combout\ = (nowQuotient(6) & (nowQuotient(7) & ((nowQuotient(5)) # (!nowQuotient(4))))) # (!nowQuotient(6) & (!nowQuotient(4) & (nowQuotient(5) & !nowQuotient(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(4),
	datab => nowQuotient(5),
	datac => nowQuotient(6),
	datad => nowQuotient(7),
	combout => \hexr1|c~0_combout\);

-- Location: LCCOMB_X113_Y17_N20
\hexr1|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|d~0_combout\ = (nowQuotient(4) & (nowQuotient(5) $ ((!nowQuotient(6))))) # (!nowQuotient(4) & ((nowQuotient(5) & (!nowQuotient(6) & nowQuotient(7))) # (!nowQuotient(5) & (nowQuotient(6) & !nowQuotient(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(4),
	datab => nowQuotient(5),
	datac => nowQuotient(6),
	datad => nowQuotient(7),
	combout => \hexr1|d~0_combout\);

-- Location: LCCOMB_X113_Y17_N6
\hexr1|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|e~0_combout\ = (nowQuotient(5) & (nowQuotient(4) & ((!nowQuotient(7))))) # (!nowQuotient(5) & ((nowQuotient(6) & ((!nowQuotient(7)))) # (!nowQuotient(6) & (nowQuotient(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(4),
	datab => nowQuotient(5),
	datac => nowQuotient(6),
	datad => nowQuotient(7),
	combout => \hexr1|e~0_combout\);

-- Location: LCCOMB_X113_Y17_N12
\hexr1|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|f~0_combout\ = (nowQuotient(5) & (!nowQuotient(7) & ((nowQuotient(4)) # (!nowQuotient(6))))) # (!nowQuotient(5) & ((nowQuotient(6) & ((nowQuotient(7)))) # (!nowQuotient(6) & (nowQuotient(4) & !nowQuotient(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(4),
	datab => nowQuotient(5),
	datac => nowQuotient(6),
	datad => nowQuotient(7),
	combout => \hexr1|f~0_combout\);

-- Location: LCCOMB_X113_Y17_N30
\hexr1|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexr1|g~0_combout\ = (!nowQuotient(7) & ((nowQuotient(5) & (nowQuotient(4) & nowQuotient(6))) # (!nowQuotient(5) & ((!nowQuotient(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowQuotient(4),
	datab => nowQuotient(5),
	datac => nowQuotient(6),
	datad => nowQuotient(7),
	combout => \hexr1|g~0_combout\);

ww_quotient(0) <= \quotient[0]~output_o\;

ww_quotient(1) <= \quotient[1]~output_o\;

ww_quotient(2) <= \quotient[2]~output_o\;

ww_quotient(3) <= \quotient[3]~output_o\;

ww_quotient(4) <= \quotient[4]~output_o\;

ww_quotient(5) <= \quotient[5]~output_o\;

ww_quotient(6) <= \quotient[6]~output_o\;

ww_quotient(7) <= \quotient[7]~output_o\;

ww_remainder(0) <= \remainder[0]~output_o\;

ww_remainder(1) <= \remainder[1]~output_o\;

ww_remainder(2) <= \remainder[2]~output_o\;

ww_remainder(3) <= \remainder[3]~output_o\;

ww_remainder(4) <= \remainder[4]~output_o\;

ww_remainder(5) <= \remainder[5]~output_o\;

ww_remainder(6) <= \remainder[6]~output_o\;

ww_remainder(7) <= \remainder[7]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;
END structure;


