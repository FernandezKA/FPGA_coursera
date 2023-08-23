-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "08/23/2023 23:19:17"

-- 
-- Device: Altera EP4CE40F29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Op_code : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Y : OUT std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op_code[0]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Op_code : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Op_code[1]~input_o\ : std_logic;
SIGNAL \Op_code[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Op_code[0]~input_o\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Add0~68\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~80\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~84\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add0~96\ : std_logic;
SIGNAL \Add0~99_combout\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Add0~100\ : std_logic;
SIGNAL \Add0~103_combout\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Add0~104\ : std_logic;
SIGNAL \Add0~107_combout\ : std_logic;
SIGNAL \Add0~109_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~108\ : std_logic;
SIGNAL \Add0~111_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~113_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Add0~116\ : std_logic;
SIGNAL \Add0~119_combout\ : std_logic;
SIGNAL \Add0~121_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Add0~120\ : std_logic;
SIGNAL \Add0~123_combout\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Add0~124\ : std_logic;
SIGNAL \Add0~127_combout\ : std_logic;
SIGNAL \Add0~129_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Op_code <= Op_code;
ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X50_Y43_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X65_Y43_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X52_Y43_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X67_Y36_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X63_Y43_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X63_Y43_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~37_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~41_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X63_Y43_N9
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~45_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X65_Y43_N30
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~49_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X67_Y39_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~53_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X65_Y43_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~57_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X63_Y43_N30
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~61_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X38_Y43_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~65_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~69_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X54_Y43_N9
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~73_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~77_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X67_Y32_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~81_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X67_Y41_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~85_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X61_Y43_N9
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~89_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~93_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~97_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X67_Y33_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~101_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~105_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~109_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X67_Y38_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~113_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X43_Y43_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~117_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X67_Y41_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~121_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~125_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X38_Y43_N9
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~129_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOIBUF_X52_Y43_N8
\Op_code[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(1),
	o => \Op_code[1]~input_o\);

-- Location: IOIBUF_X61_Y43_N22
\Op_code[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(2),
	o => \Op_code[2]~input_o\);

-- Location: IOIBUF_X43_Y43_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X55_Y39_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Op_code[2]~input_o\) # (\Op_code[1]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X32_Y43_N29
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X67_Y40_N8
\Op_code[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op_code(0),
	o => \Op_code[0]~input_o\);

-- Location: LCCOMB_X56_Y40_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY((!\Op_code[0]~input_o\ & !\Op_code[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[0]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X56_Y40_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\A[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\A[0]~input_o\ & (!\Add0~2_cout\)) # (!\A[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\A[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X55_Y39_N8
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\B[0]~input_o\ & (((\Op_code[2]~input_o\) # (\A[0]~input_o\)))) # (!\B[0]~input_o\ & (!\Op_code[1]~input_o\ & ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X55_Y39_N12
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & ((\Mux31~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~3_combout\ & (\Mux31~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Mux31~0_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: IOIBUF_X50_Y43_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X48_Y43_N29
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X55_Y39_N6
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\B[1]~input_o\ & (((\Op_code[2]~input_o\) # (\A[1]~input_o\)))) # (!\B[1]~input_o\ & (!\Op_code[1]~input_o\ & ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X57_Y39_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X56_Y40_N20
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\Add0~6_combout\ $ (\A[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~8\ = CARRY((\Add0~6_combout\ & ((\A[1]~input_o\) # (!\Add0~4\))) # (!\Add0~6_combout\ & (\A[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X55_Y39_N0
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Mux30~0_combout\ & ((\Add0~7_combout\) # (\Op_code[0]~input_o\ $ (!\Op_code[1]~input_o\)))) # (!\Mux30~0_combout\ & (\Add0~7_combout\ & (\Op_code[0]~input_o\ $ (\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Op_code[0]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Add0~7_combout\,
	combout => \Add0~9_combout\);

-- Location: IOIBUF_X61_Y43_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X57_Y39_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Op_code[1]~input_o\ $ (((\B[2]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~10_combout\);

-- Location: IOIBUF_X56_Y43_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X56_Y40_N22
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10_combout\ & ((\A[2]~input_o\ & (\Add0~8\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~8\)))) # (!\Add0~10_combout\ & ((\A[2]~input_o\ & (!\Add0~8\)) # (!\A[2]~input_o\ & ((\Add0~8\) # (GND)))))
-- \Add0~12\ = CARRY((\Add0~10_combout\ & (!\A[2]~input_o\ & !\Add0~8\)) # (!\Add0~10_combout\ & ((!\Add0~8\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X57_Y39_N10
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # ((\Op_code[2]~input_o\)))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & ((!\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X57_Y39_N6
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Mux29~0_combout\))) # (!\Op_code[0]~input_o\ & (\Add0~11_combout\)))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Add0~11_combout\)) # (!\Op_code[0]~input_o\ & 
-- ((\Mux29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Add0~11_combout\,
	datac => \Op_code[0]~input_o\,
	datad => \Mux29~0_combout\,
	combout => \Add0~13_combout\);

-- Location: IOIBUF_X67_Y37_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X56_Y43_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X56_Y40_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\B[3]~input_o\ & (((\A[3]~input_o\) # (\Op_code[2]~input_o\)))) # (!\B[3]~input_o\ & (!\Op_code[1]~input_o\ & (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X59_Y39_N0
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X56_Y40_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = ((\Add0~14_combout\ $ (\A[3]~input_o\ $ (!\Add0~12\)))) # (GND)
-- \Add0~16\ = CARRY((\Add0~14_combout\ & ((\A[3]~input_o\) # (!\Add0~12\))) # (!\Add0~14_combout\ & (\A[3]~input_o\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X56_Y40_N2
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Op_code[0]~input_o\ & ((\Op_code[1]~input_o\ & (\Mux28~0_combout\)) # (!\Op_code[1]~input_o\ & ((\Add0~15_combout\))))) # (!\Op_code[0]~input_o\ & ((\Op_code[1]~input_o\ & ((\Add0~15_combout\))) # (!\Op_code[1]~input_o\ & 
-- (\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[0]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \Mux28~0_combout\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: IOIBUF_X43_Y43_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X52_Y43_N29
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X56_Y40_N12
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\B[4]~input_o\ & (((\A[4]~input_o\) # (\Op_code[2]~input_o\)))) # (!\B[4]~input_o\ & (!\Op_code[1]~input_o\ & (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X56_Y40_N6
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Op_code[1]~input_o\ $ (((\B[4]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X56_Y40_N26
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18_combout\ & ((\A[4]~input_o\ & (\Add0~16\ & VCC)) # (!\A[4]~input_o\ & (!\Add0~16\)))) # (!\Add0~18_combout\ & ((\A[4]~input_o\ & (!\Add0~16\)) # (!\A[4]~input_o\ & ((\Add0~16\) # (GND)))))
-- \Add0~20\ = CARRY((\Add0~18_combout\ & (!\A[4]~input_o\ & !\Add0~16\)) # (!\Add0~18_combout\ & ((!\Add0~16\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X56_Y40_N0
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Mux27~0_combout\ & ((\Add0~19_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux27~0_combout\ & (\Add0~19_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Add0~19_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~21_combout\);

-- Location: IOIBUF_X67_Y40_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X54_Y43_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X56_Y40_N10
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\A[5]~input_o\ & (((\B[5]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[5]~input_o\ & (((\B[5]~input_o\ & \Op_code[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X56_Y40_N4
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \Op_code[1]~input_o\ $ (((\B[5]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X56_Y40_N28
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = ((\A[5]~input_o\ $ (\Add0~22_combout\ $ (!\Add0~20\)))) # (GND)
-- \Add0~24\ = CARRY((\A[5]~input_o\ & ((\Add0~22_combout\) # (!\Add0~20\))) # (!\A[5]~input_o\ & (\Add0~22_combout\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X56_Y40_N14
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Mux26~0_combout\ & ((\Add0~23_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux26~0_combout\ & (\Add0~23_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Add0~23_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~25_combout\);

-- Location: IOIBUF_X59_Y43_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X67_Y39_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X59_Y39_N18
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\A[6]~input_o\ & (((\B[6]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[6]~input_o\ & (\Op_code[2]~input_o\ & ((\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X59_Y39_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X56_Y40_N30
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\A[6]~input_o\ & ((\Add0~26_combout\ & (\Add0~24\ & VCC)) # (!\Add0~26_combout\ & (!\Add0~24\)))) # (!\A[6]~input_o\ & ((\Add0~26_combout\ & (!\Add0~24\)) # (!\Add0~26_combout\ & ((\Add0~24\) # (GND)))))
-- \Add0~28\ = CARRY((\A[6]~input_o\ & (!\Add0~26_combout\ & !\Add0~24\)) # (!\A[6]~input_o\ & ((!\Add0~24\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X59_Y39_N6
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux25~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~27_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~27_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux25~0_combout\,
	datac => \Add0~27_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~29_combout\);

-- Location: IOIBUF_X67_Y32_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X57_Y39_N2
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \Op_code[1]~input_o\ $ (((\B[7]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~30_combout\);

-- Location: IOIBUF_X65_Y43_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X56_Y39_N0
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = ((\Add0~30_combout\ $ (\A[7]~input_o\ $ (!\Add0~28\)))) # (GND)
-- \Add0~32\ = CARRY((\Add0~30_combout\ & ((\A[7]~input_o\) # (!\Add0~28\))) # (!\Add0~30_combout\ & (\A[7]~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X57_Y39_N16
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\A[7]~input_o\ & (((\B[7]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[7]~input_o\ & (\Op_code[2]~input_o\ & ((\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X57_Y39_N4
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~31_combout\ & ((\Mux24~0_combout\) # (\Op_code[0]~input_o\ $ (\Op_code[1]~input_o\)))) # (!\Add0~31_combout\ & (\Mux24~0_combout\ & (\Op_code[0]~input_o\ $ (!\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Mux24~0_combout\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~33_combout\);

-- Location: IOIBUF_X50_Y43_N29
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y43_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X57_Y39_N0
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \Op_code[1]~input_o\ $ (((\B[8]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X56_Y39_N2
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\A[8]~input_o\ & ((\Add0~34_combout\ & (\Add0~32\ & VCC)) # (!\Add0~34_combout\ & (!\Add0~32\)))) # (!\A[8]~input_o\ & ((\Add0~34_combout\ & (!\Add0~32\)) # (!\Add0~34_combout\ & ((\Add0~32\) # (GND)))))
-- \Add0~36\ = CARRY((\A[8]~input_o\ & (!\Add0~34_combout\ & !\Add0~32\)) # (!\A[8]~input_o\ & ((!\Add0~32\) # (!\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X57_Y39_N14
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # ((!\Op_code[1]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & (\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X57_Y39_N26
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~35_combout\ & ((\Mux23~0_combout\) # (\Op_code[0]~input_o\ $ (\Op_code[1]~input_o\)))) # (!\Add0~35_combout\ & (\Mux23~0_combout\ & (\Op_code[0]~input_o\ $ (!\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \Mux23~0_combout\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~37_combout\);

-- Location: IOIBUF_X59_Y43_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X67_Y35_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X59_Y39_N2
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X56_Y39_N4
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = ((\A[9]~input_o\ $ (\Add0~38_combout\ $ (!\Add0~36\)))) # (GND)
-- \Add0~40\ = CARRY((\A[9]~input_o\ & ((\Add0~38_combout\) # (!\Add0~36\))) # (!\A[9]~input_o\ & (\Add0~38_combout\ & !\Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X59_Y39_N16
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\A[9]~input_o\ & (((\B[9]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[9]~input_o\ & (((\Op_code[2]~input_o\ & \B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X59_Y39_N4
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~39_combout\ & ((\Mux22~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~39_combout\ & (\Mux22~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \Mux22~0_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~41_combout\);

-- Location: IOIBUF_X38_Y43_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X57_Y39_N30
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = \Op_code[1]~input_o\ $ (((\B[10]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~42_combout\);

-- Location: IOIBUF_X38_Y43_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X56_Y39_N6
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42_combout\ & ((\A[10]~input_o\ & (\Add0~40\ & VCC)) # (!\A[10]~input_o\ & (!\Add0~40\)))) # (!\Add0~42_combout\ & ((\A[10]~input_o\ & (!\Add0~40\)) # (!\A[10]~input_o\ & ((\Add0~40\) # (GND)))))
-- \Add0~44\ = CARRY((\Add0~42_combout\ & (!\A[10]~input_o\ & !\Add0~40\)) # (!\Add0~42_combout\ & ((!\Add0~40\) # (!\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X57_Y39_N28
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\Op_code[2]~input_o\)))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & ((!\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X57_Y39_N24
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Mux21~0_combout\))) # (!\Op_code[0]~input_o\ & (\Add0~43_combout\)))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Add0~43_combout\)) # (!\Op_code[0]~input_o\ & 
-- ((\Mux21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Add0~43_combout\,
	datac => \Op_code[0]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \Add0~45_combout\);

-- Location: IOIBUF_X61_Y43_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X57_Y39_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = \Op_code[1]~input_o\ $ (((\B[11]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~46_combout\);

-- Location: IOIBUF_X56_Y43_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X56_Y39_N8
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = ((\Add0~46_combout\ $ (\A[11]~input_o\ $ (!\Add0~44\)))) # (GND)
-- \Add0~48\ = CARRY((\Add0~46_combout\ & ((\A[11]~input_o\) # (!\Add0~44\))) # (!\Add0~46_combout\ & (\A[11]~input_o\ & !\Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X57_Y39_N18
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((!\Op_code[1]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[11]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X57_Y39_N22
\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~47_combout\ & ((\Mux20~0_combout\) # (\Op_code[0]~input_o\ $ (\Op_code[1]~input_o\)))) # (!\Add0~47_combout\ & (\Mux20~0_combout\ & (\Op_code[0]~input_o\ $ (!\Op_code[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \Mux20~0_combout\,
	datac => \Op_code[0]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~49_combout\);

-- Location: IOIBUF_X43_Y43_N29
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X67_Y37_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X59_Y39_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\A[12]~input_o\ & (((\B[12]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[12]~input_o\ & (\Op_code[2]~input_o\ & (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X59_Y39_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Op_code[1]~input_o\ $ (((\B[12]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X56_Y39_N10
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50_combout\ & ((\A[12]~input_o\ & (\Add0~48\ & VCC)) # (!\A[12]~input_o\ & (!\Add0~48\)))) # (!\Add0~50_combout\ & ((\A[12]~input_o\ & (!\Add0~48\)) # (!\A[12]~input_o\ & ((\Add0~48\) # (GND)))))
-- \Add0~52\ = CARRY((\Add0~50_combout\ & (!\A[12]~input_o\ & !\Add0~48\)) # (!\Add0~50_combout\ & ((!\Add0~48\) # (!\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X59_Y39_N10
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Mux19~0_combout\ & ((\Add0~51_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux19~0_combout\ & (\Add0~51_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Add0~51_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~53_combout\);

-- Location: IOIBUF_X67_Y36_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X59_Y39_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Add0~54_combout\);

-- Location: IOIBUF_X67_Y35_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X56_Y39_N12
\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = ((\Add0~54_combout\ $ (\A[13]~input_o\ $ (!\Add0~52\)))) # (GND)
-- \Add0~56\ = CARRY((\Add0~54_combout\ & ((\A[13]~input_o\) # (!\Add0~52\))) # (!\Add0~54_combout\ & (\A[13]~input_o\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X59_Y39_N20
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\A[13]~input_o\ & (((\B[13]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[13]~input_o\ & (\Op_code[2]~input_o\ & ((\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \A[13]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X59_Y39_N8
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Op_code[0]~input_o\ & ((\Op_code[1]~input_o\ & ((\Mux18~0_combout\))) # (!\Op_code[1]~input_o\ & (\Add0~55_combout\)))) # (!\Op_code[0]~input_o\ & ((\Op_code[1]~input_o\ & (\Add0~55_combout\)) # (!\Op_code[1]~input_o\ & 
-- ((\Mux18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[0]~input_o\,
	datab => \Add0~55_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Mux18~0_combout\,
	combout => \Add0~57_combout\);

-- Location: IOIBUF_X67_Y39_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X63_Y43_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X59_Y39_N26
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\A[14]~input_o\ & (((\B[14]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[14]~input_o\ & (\Op_code[2]~input_o\ & ((\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X59_Y39_N12
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X56_Y39_N14
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58_combout\ & ((\A[14]~input_o\ & (\Add0~56\ & VCC)) # (!\A[14]~input_o\ & (!\Add0~56\)))) # (!\Add0~58_combout\ & ((\A[14]~input_o\ & (!\Add0~56\)) # (!\A[14]~input_o\ & ((\Add0~56\) # (GND)))))
-- \Add0~60\ = CARRY((\Add0~58_combout\ & (!\A[14]~input_o\ & !\Add0~56\)) # (!\Add0~58_combout\ & ((!\Add0~56\) # (!\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X59_Y39_N14
\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Mux17~0_combout\ & ((\Add0~59_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux17~0_combout\ & (\Add0~59_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \Add0~59_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~61_combout\);

-- Location: IOIBUF_X45_Y43_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X56_Y43_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X55_Y39_N10
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\B[15]~input_o\ & (((\Op_code[2]~input_o\) # (\A[15]~input_o\)))) # (!\B[15]~input_o\ & (!\Op_code[1]~input_o\ & ((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X55_Y39_N28
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \B[15]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X56_Y39_N16
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = ((\A[15]~input_o\ $ (\Add0~62_combout\ $ (!\Add0~60\)))) # (GND)
-- \Add0~64\ = CARRY((\A[15]~input_o\ & ((\Add0~62_combout\) # (!\Add0~60\))) # (!\A[15]~input_o\ & (\Add0~62_combout\ & !\Add0~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X55_Y39_N14
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Mux16~0_combout\ & ((\Add0~63_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux16~0_combout\ & (\Add0~63_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Add0~63_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~65_combout\);

-- Location: IOIBUF_X48_Y43_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X55_Y39_N18
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \B[16]~input_o\,
	combout => \Add0~66_combout\);

-- Location: IOIBUF_X56_Y43_N29
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X56_Y39_N18
\Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~66_combout\ & ((\A[16]~input_o\ & (\Add0~64\ & VCC)) # (!\A[16]~input_o\ & (!\Add0~64\)))) # (!\Add0~66_combout\ & ((\A[16]~input_o\ & (!\Add0~64\)) # (!\A[16]~input_o\ & ((\Add0~64\) # (GND)))))
-- \Add0~68\ = CARRY((\Add0~66_combout\ & (!\A[16]~input_o\ & !\Add0~64\)) # (!\Add0~66_combout\ & ((!\Add0~64\) # (!\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datab => \A[16]~input_o\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~67_combout\,
	cout => \Add0~68\);

-- Location: LCCOMB_X55_Y39_N24
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\B[16]~input_o\ & (((\Op_code[2]~input_o\) # (\A[16]~input_o\)))) # (!\B[16]~input_o\ & (!\Op_code[1]~input_o\ & ((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B[16]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X55_Y39_N4
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~67_combout\ & ((\Mux15~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~67_combout\ & (\Mux15~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~67_combout\,
	datab => \Mux15~0_combout\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~69_combout\);

-- Location: IOIBUF_X43_Y43_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X55_Y39_N16
\Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = \Op_code[1]~input_o\ $ (((\B[17]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B[17]~input_o\,
	datac => \Op_code[2]~input_o\,
	combout => \Add0~70_combout\);

-- Location: IOIBUF_X52_Y43_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X56_Y39_N20
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = ((\Add0~70_combout\ $ (\A[17]~input_o\ $ (!\Add0~68\)))) # (GND)
-- \Add0~72\ = CARRY((\Add0~70_combout\ & ((\A[17]~input_o\) # (!\Add0~68\))) # (!\Add0~70_combout\ & (\A[17]~input_o\ & !\Add0~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \Add0~68\,
	combout => \Add0~71_combout\,
	cout => \Add0~72\);

-- Location: LCCOMB_X55_Y39_N22
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\A[17]~input_o\ & (((\B[17]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[17]~input_o\ & (((\Op_code[2]~input_o\ & \B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X55_Y39_N26
\Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Mux14~0_combout\))) # (!\Op_code[0]~input_o\ & (\Add0~71_combout\)))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Add0~71_combout\)) # (!\Op_code[0]~input_o\ & 
-- ((\Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Add0~71_combout\,
	datac => \Mux14~0_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~73_combout\);

-- Location: IOIBUF_X67_Y40_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X61_Y39_N10
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Add0~74_combout\);

-- Location: IOIBUF_X45_Y43_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X56_Y39_N22
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~74_combout\ & ((\A[18]~input_o\ & (\Add0~72\ & VCC)) # (!\A[18]~input_o\ & (!\Add0~72\)))) # (!\Add0~74_combout\ & ((\A[18]~input_o\ & (!\Add0~72\)) # (!\A[18]~input_o\ & ((\Add0~72\) # (GND)))))
-- \Add0~76\ = CARRY((\Add0~74_combout\ & (!\A[18]~input_o\ & !\Add0~72\)) # (!\Add0~74_combout\ & ((!\Add0~72\) # (!\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \Add0~72\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X61_Y39_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\A[18]~input_o\ & (((\B[18]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[18]~input_o\ & (\Op_code[2]~input_o\ & ((\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \A[18]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X61_Y39_N28
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~75_combout\ & ((\Mux13~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~75_combout\ & (\Mux13~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Add0~77_combout\);

-- Location: IOIBUF_X67_Y34_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X61_Y39_N8
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Add0~78_combout\);

-- Location: IOIBUF_X67_Y37_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X56_Y39_N24
\Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = ((\Add0~78_combout\ $ (\A[19]~input_o\ $ (!\Add0~76\)))) # (GND)
-- \Add0~80\ = CARRY((\Add0~78_combout\ & ((\A[19]~input_o\) # (!\Add0~76\))) # (!\Add0~78_combout\ & (\A[19]~input_o\ & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~78_combout\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~79_combout\,
	cout => \Add0~80\);

-- Location: LCCOMB_X61_Y39_N6
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\A[19]~input_o\ & (((\B[19]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[19]~input_o\ & (\Op_code[2]~input_o\ & ((\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X61_Y39_N2
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~79_combout\ & ((\Mux12~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~79_combout\ & (\Mux12~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~79_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Add0~81_combout\);

-- Location: IOIBUF_X54_Y43_N29
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X67_Y41_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X61_Y39_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\A[20]~input_o\ & (((\B[20]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[20]~input_o\ & (\Op_code[2]~input_o\ & (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X61_Y39_N22
\Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datac => \B[20]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~82_combout\);

-- Location: LCCOMB_X56_Y39_N26
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\A[20]~input_o\ & ((\Add0~82_combout\ & (\Add0~80\ & VCC)) # (!\Add0~82_combout\ & (!\Add0~80\)))) # (!\A[20]~input_o\ & ((\Add0~82_combout\ & (!\Add0~80\)) # (!\Add0~82_combout\ & ((\Add0~80\) # (GND)))))
-- \Add0~84\ = CARRY((\A[20]~input_o\ & (!\Add0~82_combout\ & !\Add0~80\)) # (!\A[20]~input_o\ & ((!\Add0~80\) # (!\Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \Add0~82_combout\,
	datad => VCC,
	cin => \Add0~80\,
	combout => \Add0~83_combout\,
	cout => \Add0~84\);

-- Location: LCCOMB_X61_Y39_N24
\Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Mux11~0_combout\ & ((\Add0~83_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux11~0_combout\ & (\Add0~83_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Add0~83_combout\,
	combout => \Add0~85_combout\);

-- Location: IOIBUF_X67_Y33_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X67_Y34_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X61_Y39_N20
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X56_Y39_N28
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = ((\A[21]~input_o\ $ (\Add0~86_combout\ $ (!\Add0~84\)))) # (GND)
-- \Add0~88\ = CARRY((\A[21]~input_o\ & ((\Add0~86_combout\) # (!\Add0~84\))) # (!\A[21]~input_o\ & (\Add0~86_combout\ & !\Add0~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add0~84\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X61_Y39_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\A[21]~input_o\ & (((\B[21]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[21]~input_o\ & (\Op_code[2]~input_o\ & ((\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X61_Y39_N14
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~87_combout\ & ((\Mux10~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~87_combout\ & (\Mux10~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~87_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Add0~89_combout\);

-- Location: IOIBUF_X67_Y39_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X65_Y43_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X61_Y39_N26
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Add0~90_combout\);

-- Location: LCCOMB_X56_Y39_N30
\Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\A[22]~input_o\ & ((\Add0~90_combout\ & (\Add0~88\ & VCC)) # (!\Add0~90_combout\ & (!\Add0~88\)))) # (!\A[22]~input_o\ & ((\Add0~90_combout\ & (!\Add0~88\)) # (!\Add0~90_combout\ & ((\Add0~88\) # (GND)))))
-- \Add0~92\ = CARRY((\A[22]~input_o\ & (!\Add0~90_combout\ & !\Add0~88\)) # (!\A[22]~input_o\ & ((!\Add0~88\) # (!\Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Add0~90_combout\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~91_combout\,
	cout => \Add0~92\);

-- Location: LCCOMB_X61_Y39_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\A[22]~input_o\ & (((\B[22]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[22]~input_o\ & (\Op_code[2]~input_o\ & ((\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[2]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X61_Y39_N4
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~91_combout\ & ((\Mux9~0_combout\) # (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\)))) # (!\Add0~91_combout\ & (\Mux9~0_combout\ & (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~91_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Add0~93_combout\);

-- Location: IOIBUF_X45_Y43_N29
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X67_Y38_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X55_Y38_N0
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\A[23]~input_o\ & (((\B[23]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[23]~input_o\ & (((\Op_code[2]~input_o\ & \B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X61_Y39_N30
\Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[2]~input_o\,
	datad => \B[23]~input_o\,
	combout => \Add0~94_combout\);

-- Location: LCCOMB_X56_Y38_N0
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = ((\Add0~94_combout\ $ (\A[23]~input_o\ $ (!\Add0~92\)))) # (GND)
-- \Add0~96\ = CARRY((\Add0~94_combout\ & ((\A[23]~input_o\) # (!\Add0~92\))) # (!\Add0~94_combout\ & (\A[23]~input_o\ & !\Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~94_combout\,
	datab => \A[23]~input_o\,
	datad => VCC,
	cin => \Add0~92\,
	combout => \Add0~95_combout\,
	cout => \Add0~96\);

-- Location: LCCOMB_X55_Y38_N10
\Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux8~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~95_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~95_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \Add0~95_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~97_combout\);

-- Location: IOIBUF_X48_Y43_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X52_Y43_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X56_Y38_N26
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\B[24]~input_o\ & (((\A[24]~input_o\) # (\Op_code[2]~input_o\)))) # (!\B[24]~input_o\ & (!\Op_code[1]~input_o\ & (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X56_Y38_N20
\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = \Op_code[1]~input_o\ $ (((\B[24]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~98_combout\);

-- Location: LCCOMB_X56_Y38_N2
\Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~99_combout\ = (\A[24]~input_o\ & ((\Add0~98_combout\ & (\Add0~96\ & VCC)) # (!\Add0~98_combout\ & (!\Add0~96\)))) # (!\A[24]~input_o\ & ((\Add0~98_combout\ & (!\Add0~96\)) # (!\Add0~98_combout\ & ((\Add0~96\) # (GND)))))
-- \Add0~100\ = CARRY((\A[24]~input_o\ & (!\Add0~98_combout\ & !\Add0~96\)) # (!\A[24]~input_o\ & ((!\Add0~96\) # (!\Add0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Add0~98_combout\,
	datad => VCC,
	cin => \Add0~96\,
	combout => \Add0~99_combout\,
	cout => \Add0~100\);

-- Location: LCCOMB_X56_Y38_N22
\Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~101_combout\ = (\Mux7~0_combout\ & ((\Add0~99_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux7~0_combout\ & (\Add0~99_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Add0~99_combout\,
	combout => \Add0~101_combout\);

-- Location: IOIBUF_X45_Y43_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X67_Y36_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X56_Y38_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\B[25]~input_o\ & ((\Op_code[2]~input_o\) # ((\A[25]~input_o\)))) # (!\B[25]~input_o\ & (((!\Op_code[1]~input_o\ & \A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X56_Y38_N18
\Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = \Op_code[1]~input_o\ $ (((\B[25]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~102_combout\);

-- Location: LCCOMB_X56_Y38_N4
\Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~103_combout\ = ((\A[25]~input_o\ $ (\Add0~102_combout\ $ (!\Add0~100\)))) # (GND)
-- \Add0~104\ = CARRY((\A[25]~input_o\ & ((\Add0~102_combout\) # (!\Add0~100\))) # (!\A[25]~input_o\ & (\Add0~102_combout\ & !\Add0~100\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Add0~102_combout\,
	datad => VCC,
	cin => \Add0~100\,
	combout => \Add0~103_combout\,
	cout => \Add0~104\);

-- Location: LCCOMB_X55_Y38_N28
\Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~105_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux6~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~103_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~103_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \Add0~103_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~105_combout\);

-- Location: IOIBUF_X67_Y36_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X36_Y43_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X55_Y38_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\A[26]~input_o\ & (((\B[26]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[26]~input_o\ & (((\Op_code[2]~input_o\ & \B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X55_Y38_N16
\Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = \Op_code[1]~input_o\ $ (((\B[26]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => \Op_code[1]~input_o\,
	combout => \Add0~106_combout\);

-- Location: LCCOMB_X56_Y38_N6
\Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~107_combout\ = (\Add0~106_combout\ & ((\A[26]~input_o\ & (\Add0~104\ & VCC)) # (!\A[26]~input_o\ & (!\Add0~104\)))) # (!\Add0~106_combout\ & ((\A[26]~input_o\ & (!\Add0~104\)) # (!\A[26]~input_o\ & ((\Add0~104\) # (GND)))))
-- \Add0~108\ = CARRY((\Add0~106_combout\ & (!\A[26]~input_o\ & !\Add0~104\)) # (!\Add0~106_combout\ & ((!\Add0~104\) # (!\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~106_combout\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \Add0~104\,
	combout => \Add0~107_combout\,
	cout => \Add0~108\);

-- Location: LCCOMB_X55_Y38_N26
\Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~109_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux5~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~107_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~107_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[0]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \Add0~107_combout\,
	combout => \Add0~109_combout\);

-- Location: IOIBUF_X67_Y41_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X41_Y43_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X56_Y42_N0
\Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \B[27]~input_o\,
	combout => \Add0~110_combout\);

-- Location: LCCOMB_X56_Y38_N8
\Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~111_combout\ = ((\A[27]~input_o\ $ (\Add0~110_combout\ $ (!\Add0~108\)))) # (GND)
-- \Add0~112\ = CARRY((\A[27]~input_o\ & ((\Add0~110_combout\) # (!\Add0~108\))) # (!\A[27]~input_o\ & (\Add0~110_combout\ & !\Add0~108\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Add0~110_combout\,
	datad => VCC,
	cin => \Add0~108\,
	combout => \Add0~111_combout\,
	cout => \Add0~112\);

-- Location: LCCOMB_X55_Y38_N12
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\B[27]~input_o\ & (((\A[27]~input_o\) # (\Op_code[2]~input_o\)))) # (!\B[27]~input_o\ & (!\Op_code[1]~input_o\ & (\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X56_Y38_N28
\Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~113_combout\ = (\Op_code[0]~input_o\ & ((\Op_code[1]~input_o\ & ((\Mux4~0_combout\))) # (!\Op_code[1]~input_o\ & (\Add0~111_combout\)))) # (!\Op_code[0]~input_o\ & ((\Op_code[1]~input_o\ & (\Add0~111_combout\)) # (!\Op_code[1]~input_o\ & 
-- ((\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[0]~input_o\,
	datab => \Op_code[1]~input_o\,
	datac => \Add0~111_combout\,
	datad => \Mux4~0_combout\,
	combout => \Add0~113_combout\);

-- Location: IOIBUF_X67_Y33_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X67_Y34_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X55_Y38_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A[28]~input_o\ & (((\B[28]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[28]~input_o\ & (((\Op_code[2]~input_o\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X55_Y38_N24
\Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Add0~114_combout\);

-- Location: LCCOMB_X56_Y38_N10
\Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~115_combout\ = (\A[28]~input_o\ & ((\Add0~114_combout\ & (\Add0~112\ & VCC)) # (!\Add0~114_combout\ & (!\Add0~112\)))) # (!\A[28]~input_o\ & ((\Add0~114_combout\ & (!\Add0~112\)) # (!\Add0~114_combout\ & ((\Add0~112\) # (GND)))))
-- \Add0~116\ = CARRY((\A[28]~input_o\ & (!\Add0~114_combout\ & !\Add0~112\)) # (!\A[28]~input_o\ & ((!\Add0~112\) # (!\Add0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \Add0~114_combout\,
	datad => VCC,
	cin => \Add0~112\,
	combout => \Add0~115_combout\,
	cout => \Add0~116\);

-- Location: LCCOMB_X55_Y38_N2
\Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~117_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux3~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~115_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~115_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Add0~115_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~117_combout\);

-- Location: IOIBUF_X54_Y43_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X67_Y33_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X55_Y38_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\B[29]~input_o\ & (((\Op_code[2]~input_o\) # (\A[29]~input_o\)))) # (!\B[29]~input_o\ & (!\Op_code[1]~input_o\ & ((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X55_Y38_N6
\Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = \Op_code[1]~input_o\ $ (((\B[29]~input_o\ & !\Op_code[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datac => \B[29]~input_o\,
	datad => \Op_code[2]~input_o\,
	combout => \Add0~118_combout\);

-- Location: LCCOMB_X56_Y38_N12
\Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~119_combout\ = ((\A[29]~input_o\ $ (\Add0~118_combout\ $ (!\Add0~116\)))) # (GND)
-- \Add0~120\ = CARRY((\A[29]~input_o\ & ((\Add0~118_combout\) # (!\Add0~116\))) # (!\A[29]~input_o\ & (\Add0~118_combout\ & !\Add0~116\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \Add0~118_combout\,
	datad => VCC,
	cin => \Add0~116\,
	combout => \Add0~119_combout\,
	cout => \Add0~120\);

-- Location: LCCOMB_X55_Y38_N8
\Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~121_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux2~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~119_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~119_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Add0~119_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~121_combout\);

-- Location: IOIBUF_X67_Y38_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X67_Y38_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X55_Y38_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A[30]~input_o\ & (((\B[30]~input_o\)) # (!\Op_code[1]~input_o\))) # (!\A[30]~input_o\ & (((\Op_code[2]~input_o\ & \B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X55_Y38_N4
\Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Op_code[2]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Add0~122_combout\);

-- Location: LCCOMB_X56_Y38_N14
\Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~123_combout\ = (\A[30]~input_o\ & ((\Add0~122_combout\ & (\Add0~120\ & VCC)) # (!\Add0~122_combout\ & (!\Add0~120\)))) # (!\A[30]~input_o\ & ((\Add0~122_combout\ & (!\Add0~120\)) # (!\Add0~122_combout\ & ((\Add0~120\) # (GND)))))
-- \Add0~124\ = CARRY((\A[30]~input_o\ & (!\Add0~122_combout\ & !\Add0~120\)) # (!\A[30]~input_o\ & ((!\Add0~120\) # (!\Add0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Add0~122_combout\,
	datad => VCC,
	cin => \Add0~120\,
	combout => \Add0~123_combout\,
	cout => \Add0~124\);

-- Location: LCCOMB_X55_Y38_N22
\Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~125_combout\ = (\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & (\Mux1~0_combout\)) # (!\Op_code[0]~input_o\ & ((\Add0~123_combout\))))) # (!\Op_code[1]~input_o\ & ((\Op_code[0]~input_o\ & ((\Add0~123_combout\))) # (!\Op_code[0]~input_o\ & 
-- (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op_code[1]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \Add0~123_combout\,
	datad => \Op_code[0]~input_o\,
	combout => \Add0~125_combout\);

-- Location: IOIBUF_X67_Y22_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X67_Y22_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X55_Y39_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\A[31]~input_o\ & (((\B[31]~input_o\) # (!\Op_code[1]~input_o\)))) # (!\A[31]~input_o\ & (\Op_code[2]~input_o\ & ((\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Op_code[2]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X55_Y39_N30
\Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = \Op_code[1]~input_o\ $ (((!\Op_code[2]~input_o\ & \B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op_code[2]~input_o\,
	datac => \Op_code[1]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Add0~126_combout\);

-- Location: LCCOMB_X56_Y38_N16
\Add0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~127_combout\ = \Add0~126_combout\ $ (\Add0~124\ $ (!\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~126_combout\,
	datad => \A[31]~input_o\,
	cin => \Add0~124\,
	combout => \Add0~127_combout\);

-- Location: LCCOMB_X56_Y38_N30
\Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~129_combout\ = (\Mux0~0_combout\ & ((\Add0~127_combout\) # (\Op_code[1]~input_o\ $ (!\Op_code[0]~input_o\)))) # (!\Mux0~0_combout\ & (\Add0~127_combout\ & (\Op_code[1]~input_o\ $ (\Op_code[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Op_code[1]~input_o\,
	datac => \Op_code[0]~input_o\,
	datad => \Add0~127_combout\,
	combout => \Add0~129_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;
END structure;


