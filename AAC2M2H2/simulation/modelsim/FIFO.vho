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

-- DATE "08/26/2023 00:14:52"

-- 
-- Device: Altera EP4CE22E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	FIFO8x9 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	RdPtrClr : IN std_logic;
	WrPtrClr : IN std_logic;
	RdInc : IN std_logic;
	WrInc : IN std_logic;
	DataIn : IN std_logic_vector(8 DOWNTO 0);
	DataOut : OUT std_logic_vector(8 DOWNTO 0);
	rden : IN std_logic;
	wren : IN std_logic
	);
END FIFO8x9;

-- Design Ports Information
-- DataOut[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[6]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[8]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rden	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdPtrClr	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RdInc	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[2]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[3]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[5]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[6]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[8]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrPtrClr	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WrInc	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FIFO8x9 IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_RdPtrClr : std_logic;
SIGNAL ww_WrPtrClr : std_logic;
SIGNAL ww_RdInc : std_logic;
SIGNAL ww_WrInc : std_logic;
SIGNAL ww_DataIn : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_DataOut : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_rden : std_logic;
SIGNAL ww_wren : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DataOut[0]~output_o\ : std_logic;
SIGNAL \DataOut[1]~output_o\ : std_logic;
SIGNAL \DataOut[2]~output_o\ : std_logic;
SIGNAL \DataOut[3]~output_o\ : std_logic;
SIGNAL \DataOut[4]~output_o\ : std_logic;
SIGNAL \DataOut[5]~output_o\ : std_logic;
SIGNAL \DataOut[6]~output_o\ : std_logic;
SIGNAL \DataOut[7]~output_o\ : std_logic;
SIGNAL \DataOut[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \RdPtrClr~input_o\ : std_logic;
SIGNAL \rdptr~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \RdInc~input_o\ : std_logic;
SIGNAL \rdptr[0]~1_combout\ : std_logic;
SIGNAL \rdptr~0_combout\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \DataIn[0]~input_o\ : std_logic;
SIGNAL \WrPtrClr~input_o\ : std_logic;
SIGNAL \wrptr~2_combout\ : std_logic;
SIGNAL \WrInc~input_o\ : std_logic;
SIGNAL \wrptr[2]~1_combout\ : std_logic;
SIGNAL \wrptr~0_combout\ : std_logic;
SIGNAL \wrptr~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \fifo[2][0]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \fifo[3][0]~q\ : std_logic;
SIGNAL \fifo[0][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \fifo[0][0]~q\ : std_logic;
SIGNAL \fifo~2_combout\ : std_logic;
SIGNAL \fifo~3_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \fifo[7][0]~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \fifo[6][0]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \fifo[5][0]~q\ : std_logic;
SIGNAL \fifo[4][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \fifo[4][0]~q\ : std_logic;
SIGNAL \fifo~0_combout\ : std_logic;
SIGNAL \fifo~1_combout\ : std_logic;
SIGNAL \fifo~4_combout\ : std_logic;
SIGNAL \fifo~5_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \fifo[1][0]~q\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \rdptr~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \rden~input_o\ : std_logic;
SIGNAL \DataIn[1]~input_o\ : std_logic;
SIGNAL \fifo[1][1]~q\ : std_logic;
SIGNAL \fifo[0][1]~q\ : std_logic;
SIGNAL \fifo[2][1]~q\ : std_logic;
SIGNAL \fifo~8_combout\ : std_logic;
SIGNAL \fifo[3][1]~q\ : std_logic;
SIGNAL \fifo~9_combout\ : std_logic;
SIGNAL \fifo[6][1]~q\ : std_logic;
SIGNAL \fifo[5][1]~q\ : std_logic;
SIGNAL \fifo[4][1]~q\ : std_logic;
SIGNAL \fifo~6_combout\ : std_logic;
SIGNAL \fifo~7_combout\ : std_logic;
SIGNAL \fifo~10_combout\ : std_logic;
SIGNAL \fifo~11_combout\ : std_logic;
SIGNAL \fifo[7][1]~feeder_combout\ : std_logic;
SIGNAL \fifo[7][1]~q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \DataIn[2]~input_o\ : std_logic;
SIGNAL \fifo[3][2]~feeder_combout\ : std_logic;
SIGNAL \fifo[3][2]~q\ : std_logic;
SIGNAL \fifo[1][2]~q\ : std_logic;
SIGNAL \fifo[2][2]~q\ : std_logic;
SIGNAL \fifo~14_combout\ : std_logic;
SIGNAL \fifo~15_combout\ : std_logic;
SIGNAL \fifo[6][2]~q\ : std_logic;
SIGNAL \fifo[7][2]~q\ : std_logic;
SIGNAL \fifo[4][2]~feeder_combout\ : std_logic;
SIGNAL \fifo[4][2]~q\ : std_logic;
SIGNAL \fifo[5][2]~q\ : std_logic;
SIGNAL \fifo~12_combout\ : std_logic;
SIGNAL \fifo~13_combout\ : std_logic;
SIGNAL \fifo~16_combout\ : std_logic;
SIGNAL \fifo~17_combout\ : std_logic;
SIGNAL \fifo[0][2]~feeder_combout\ : std_logic;
SIGNAL \fifo[0][2]~q\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \DataIn[3]~input_o\ : std_logic;
SIGNAL \fifo[3][3]~q\ : std_logic;
SIGNAL \fifo[0][3]~q\ : std_logic;
SIGNAL \fifo[2][3]~q\ : std_logic;
SIGNAL \fifo~20_combout\ : std_logic;
SIGNAL \fifo~21_combout\ : std_logic;
SIGNAL \fifo[6][3]~q\ : std_logic;
SIGNAL \fifo[7][3]~q\ : std_logic;
SIGNAL \fifo[4][3]~q\ : std_logic;
SIGNAL \fifo[5][3]~q\ : std_logic;
SIGNAL \fifo~18_combout\ : std_logic;
SIGNAL \fifo~19_combout\ : std_logic;
SIGNAL \fifo~22_combout\ : std_logic;
SIGNAL \fifo~23_combout\ : std_logic;
SIGNAL \fifo[1][3]~q\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \DataIn[4]~input_o\ : std_logic;
SIGNAL \fifo[3][4]~q\ : std_logic;
SIGNAL \fifo[1][4]~q\ : std_logic;
SIGNAL \fifo[0][4]~q\ : std_logic;
SIGNAL \fifo[2][4]~q\ : std_logic;
SIGNAL \fifo~26_combout\ : std_logic;
SIGNAL \fifo~27_combout\ : std_logic;
SIGNAL \fifo[6][4]~q\ : std_logic;
SIGNAL \fifo[4][4]~q\ : std_logic;
SIGNAL \fifo[5][4]~q\ : std_logic;
SIGNAL \fifo~24_combout\ : std_logic;
SIGNAL \fifo~25_combout\ : std_logic;
SIGNAL \fifo~28_combout\ : std_logic;
SIGNAL \fifo~29_combout\ : std_logic;
SIGNAL \fifo[7][4]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \DataIn[5]~input_o\ : std_logic;
SIGNAL \fifo[1][5]~q\ : std_logic;
SIGNAL \fifo[3][5]~q\ : std_logic;
SIGNAL \fifo[2][5]~feeder_combout\ : std_logic;
SIGNAL \fifo[2][5]~q\ : std_logic;
SIGNAL \fifo~32_combout\ : std_logic;
SIGNAL \fifo~33_combout\ : std_logic;
SIGNAL \fifo[7][5]~q\ : std_logic;
SIGNAL \fifo[6][5]~q\ : std_logic;
SIGNAL \fifo[4][5]~q\ : std_logic;
SIGNAL \fifo[5][5]~feeder_combout\ : std_logic;
SIGNAL \fifo[5][5]~q\ : std_logic;
SIGNAL \fifo~30_combout\ : std_logic;
SIGNAL \fifo~31_combout\ : std_logic;
SIGNAL \fifo~34_combout\ : std_logic;
SIGNAL \fifo~35_combout\ : std_logic;
SIGNAL \fifo[0][5]~q\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \DataIn[6]~input_o\ : std_logic;
SIGNAL \fifo[6][6]~q\ : std_logic;
SIGNAL \fifo[4][6]~q\ : std_logic;
SIGNAL \fifo[5][6]~q\ : std_logic;
SIGNAL \fifo~36_combout\ : std_logic;
SIGNAL \fifo~37_combout\ : std_logic;
SIGNAL \fifo[3][6]~q\ : std_logic;
SIGNAL \fifo[1][6]~q\ : std_logic;
SIGNAL \fifo[0][6]~feeder_combout\ : std_logic;
SIGNAL \fifo[0][6]~q\ : std_logic;
SIGNAL \fifo[2][6]~q\ : std_logic;
SIGNAL \fifo~38_combout\ : std_logic;
SIGNAL \fifo~39_combout\ : std_logic;
SIGNAL \fifo~40_combout\ : std_logic;
SIGNAL \fifo~41_combout\ : std_logic;
SIGNAL \fifo[7][6]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \DataIn[7]~input_o\ : std_logic;
SIGNAL \fifo[1][7]~q\ : std_logic;
SIGNAL \fifo[0][7]~q\ : std_logic;
SIGNAL \fifo~44_combout\ : std_logic;
SIGNAL \fifo[3][7]~q\ : std_logic;
SIGNAL \fifo~45_combout\ : std_logic;
SIGNAL \fifo[6][7]~q\ : std_logic;
SIGNAL \fifo[7][7]~q\ : std_logic;
SIGNAL \fifo[5][7]~q\ : std_logic;
SIGNAL \fifo[4][7]~q\ : std_logic;
SIGNAL \fifo~42_combout\ : std_logic;
SIGNAL \fifo~43_combout\ : std_logic;
SIGNAL \fifo~46_combout\ : std_logic;
SIGNAL \fifo~47_combout\ : std_logic;
SIGNAL \fifo[2][7]~feeder_combout\ : std_logic;
SIGNAL \fifo[2][7]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \DataIn[8]~input_o\ : std_logic;
SIGNAL \fifo[3][8]~q\ : std_logic;
SIGNAL \fifo[2][8]~feeder_combout\ : std_logic;
SIGNAL \fifo[2][8]~q\ : std_logic;
SIGNAL \fifo[0][8]~feeder_combout\ : std_logic;
SIGNAL \fifo[0][8]~q\ : std_logic;
SIGNAL \fifo~50_combout\ : std_logic;
SIGNAL \fifo~51_combout\ : std_logic;
SIGNAL \fifo[7][8]~feeder_combout\ : std_logic;
SIGNAL \fifo[7][8]~q\ : std_logic;
SIGNAL \fifo[6][8]~q\ : std_logic;
SIGNAL \fifo[4][8]~feeder_combout\ : std_logic;
SIGNAL \fifo[4][8]~q\ : std_logic;
SIGNAL \fifo[5][8]~q\ : std_logic;
SIGNAL \fifo~48_combout\ : std_logic;
SIGNAL \fifo~49_combout\ : std_logic;
SIGNAL \fifo~52_combout\ : std_logic;
SIGNAL \fifo~53_combout\ : std_logic;
SIGNAL \fifo[1][8]~feeder_combout\ : std_logic;
SIGNAL \fifo[1][8]~q\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL wrptr : std_logic_vector(2 DOWNTO 0);
SIGNAL rdptr : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_RdPtrClr <= RdPtrClr;
ww_WrPtrClr <= WrPtrClr;
ww_RdInc <= RdInc;
ww_WrInc <= WrInc;
ww_DataIn <= DataIn;
DataOut <= ww_DataOut;
ww_rden <= rden;
ww_wren <= wren;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X43_Y0_N16
\DataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[0]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\DataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\DataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\DataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\DataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[5]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\DataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\DataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\DataOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	oe => \rden~input_o\,
	devoe => ww_devoe,
	o => \DataOut[8]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y11_N1
\RdPtrClr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RdPtrClr,
	o => \RdPtrClr~input_o\);

-- Location: LCCOMB_X52_Y11_N2
\rdptr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rdptr~2_combout\ = (!rdptr(0) & !\RdPtrClr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rdptr(0),
	datad => \RdPtrClr~input_o\,
	combout => \rdptr~2_combout\);

-- Location: IOIBUF_X0_Y16_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X45_Y0_N15
\RdInc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RdInc,
	o => \RdInc~input_o\);

-- Location: LCCOMB_X52_Y11_N10
\rdptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rdptr[0]~1_combout\ = (\RdInc~input_o\) # (\RdPtrClr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RdInc~input_o\,
	datad => \RdPtrClr~input_o\,
	combout => \rdptr[0]~1_combout\);

-- Location: FF_X52_Y11_N3
\rdptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rdptr~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \rdptr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rdptr(0));

-- Location: LCCOMB_X52_Y11_N20
\rdptr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rdptr~0_combout\ = (!\RdPtrClr~input_o\ & (rdptr(1) $ (rdptr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RdPtrClr~input_o\,
	datac => rdptr(1),
	datad => rdptr(0),
	combout => \rdptr~0_combout\);

-- Location: FF_X52_Y11_N21
\rdptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rdptr~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \rdptr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rdptr(1));

-- Location: IOIBUF_X53_Y13_N8
\wren~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\DataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(0),
	o => \DataIn[0]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\WrPtrClr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrPtrClr,
	o => \WrPtrClr~input_o\);

-- Location: LCCOMB_X49_Y12_N24
\wrptr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrptr~2_combout\ = (!wrptr(0) & !\WrPtrClr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => wrptr(0),
	datad => \WrPtrClr~input_o\,
	combout => \wrptr~2_combout\);

-- Location: IOIBUF_X53_Y14_N1
\WrInc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrInc,
	o => \WrInc~input_o\);

-- Location: LCCOMB_X50_Y12_N8
\wrptr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrptr[2]~1_combout\ = (\WrPtrClr~input_o\) # (\WrInc~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WrPtrClr~input_o\,
	datad => \WrInc~input_o\,
	combout => \wrptr[2]~1_combout\);

-- Location: FF_X49_Y12_N25
\wrptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wrptr~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \wrptr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrptr(0));

-- Location: LCCOMB_X49_Y12_N30
\wrptr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrptr~0_combout\ = (!\WrPtrClr~input_o\ & (wrptr(0) $ (wrptr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wrptr(0),
	datac => wrptr(1),
	datad => \WrPtrClr~input_o\,
	combout => \wrptr~0_combout\);

-- Location: FF_X49_Y12_N31
\wrptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wrptr~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \wrptr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrptr(1));

-- Location: LCCOMB_X49_Y12_N18
\wrptr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrptr~3_combout\ = (!\WrPtrClr~input_o\ & (wrptr(2) $ (((wrptr(1) & wrptr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \WrPtrClr~input_o\,
	datac => wrptr(2),
	datad => wrptr(0),
	combout => \wrptr~3_combout\);

-- Location: FF_X49_Y12_N19
\wrptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wrptr~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \wrptr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrptr(2));

-- Location: LCCOMB_X51_Y12_N28
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!wrptr(2) & (wrptr(1) & !wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wrptr(2),
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \Decoder0~4_combout\);

-- Location: FF_X50_Y12_N21
\fifo[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][0]~q\);

-- Location: LCCOMB_X48_Y12_N4
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!wrptr(2) & (wrptr(1) & wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wrptr(2),
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \Decoder0~7_combout\);

-- Location: FF_X48_Y12_N27
\fifo[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][0]~q\);

-- Location: LCCOMB_X47_Y12_N24
\fifo[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[0][0]~feeder_combout\ = \fifo~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~5_combout\,
	combout => \fifo[0][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y12_N20
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!wrptr(0) & (!wrptr(1) & !wrptr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(0),
	datab => wrptr(1),
	datad => wrptr(2),
	combout => \Decoder0~6_combout\);

-- Location: FF_X47_Y12_N25
\fifo[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[0][0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][0]~q\);

-- Location: LCCOMB_X47_Y12_N12
\fifo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~2_combout\ = (wrptr(0) & (((wrptr(1)) # (\fifo[1][0]~q\)))) # (!wrptr(0) & (\fifo[0][0]~q\ & (!wrptr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(0),
	datab => \fifo[0][0]~q\,
	datac => wrptr(1),
	datad => \fifo[1][0]~q\,
	combout => \fifo~2_combout\);

-- Location: LCCOMB_X48_Y12_N8
\fifo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~3_combout\ = (wrptr(1) & ((\fifo~2_combout\ & ((\fifo[3][0]~q\))) # (!\fifo~2_combout\ & (\fifo[2][0]~q\)))) # (!wrptr(1) & (((\fifo~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[2][0]~q\,
	datac => \fifo[3][0]~q\,
	datad => \fifo~2_combout\,
	combout => \fifo~3_combout\);

-- Location: LCCOMB_X48_Y11_N30
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (wrptr(2) & (wrptr(1) & wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(2),
	datab => wrptr(1),
	datad => wrptr(0),
	combout => \Decoder0~3_combout\);

-- Location: FF_X48_Y11_N31
\fifo[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][0]~q\);

-- Location: LCCOMB_X48_Y11_N2
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (wrptr(2) & (wrptr(1) & !wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(2),
	datab => wrptr(1),
	datad => wrptr(0),
	combout => \Decoder0~0_combout\);

-- Location: FF_X48_Y12_N25
\fifo[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][0]~q\);

-- Location: LCCOMB_X49_Y11_N26
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!wrptr(1) & (wrptr(2) & wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => wrptr(2),
	datad => wrptr(0),
	combout => \Decoder0~1_combout\);

-- Location: FF_X49_Y11_N21
\fifo[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][0]~q\);

-- Location: LCCOMB_X48_Y11_N24
\fifo[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[4][0]~feeder_combout\ = \fifo~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~5_combout\,
	combout => \fifo[4][0]~feeder_combout\);

-- Location: LCCOMB_X48_Y11_N8
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (wrptr(2) & (!wrptr(1) & !wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(2),
	datab => wrptr(1),
	datad => wrptr(0),
	combout => \Decoder0~2_combout\);

-- Location: FF_X48_Y11_N25
\fifo[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[4][0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][0]~q\);

-- Location: LCCOMB_X48_Y11_N20
\fifo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~0_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & (\fifo[5][0]~q\)) # (!wrptr(0) & ((\fifo[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[5][0]~q\,
	datab => \fifo[4][0]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~0_combout\);

-- Location: LCCOMB_X48_Y11_N18
\fifo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~1_combout\ = (wrptr(1) & ((\fifo~0_combout\ & (\fifo[7][0]~q\)) # (!\fifo~0_combout\ & ((\fifo[6][0]~q\))))) # (!wrptr(1) & (((\fifo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][0]~q\,
	datab => wrptr(1),
	datac => \fifo[6][0]~q\,
	datad => \fifo~0_combout\,
	combout => \fifo~1_combout\);

-- Location: LCCOMB_X48_Y12_N2
\fifo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~4_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~1_combout\))) # (!wrptr(2) & (\fifo~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~3_combout\,
	datad => \fifo~1_combout\,
	combout => \fifo~4_combout\);

-- Location: LCCOMB_X48_Y12_N0
\fifo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~5_combout\ = (\fifo~4_combout\) # ((\wren~input_o\ & \DataIn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datac => \DataIn[0]~input_o\,
	datad => \fifo~4_combout\,
	combout => \fifo~5_combout\);

-- Location: LCCOMB_X48_Y12_N18
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!wrptr(2) & (!wrptr(1) & wrptr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wrptr(2),
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \Decoder0~5_combout\);

-- Location: FF_X49_Y12_N21
\fifo[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][0]~q\);

-- Location: LCCOMB_X49_Y12_N20
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (rdptr(1) & (rdptr(0))) # (!rdptr(1) & ((rdptr(0) & (\fifo[1][0]~q\)) # (!rdptr(0) & ((\fifo[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(1),
	datab => rdptr(0),
	datac => \fifo[1][0]~q\,
	datad => \fifo[0][0]~q\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X48_Y12_N26
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\ & (((\fifo[3][0]~q\)) # (!rdptr(1)))) # (!\Mux17~2_combout\ & (rdptr(1) & ((\fifo[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => rdptr(1),
	datac => \fifo[3][0]~q\,
	datad => \fifo[2][0]~q\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X49_Y11_N20
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (rdptr(0) & (((\fifo[5][0]~q\) # (rdptr(1))))) # (!rdptr(0) & (\fifo[4][0]~q\ & ((!rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][0]~q\,
	datab => rdptr(0),
	datac => \fifo[5][0]~q\,
	datad => rdptr(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X48_Y12_N24
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & ((\fifo[7][0]~q\) # ((!rdptr(1))))) # (!\Mux17~0_combout\ & (((\fifo[6][0]~q\ & rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][0]~q\,
	datab => \Mux17~0_combout\,
	datac => \fifo[6][0]~q\,
	datad => rdptr(1),
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X52_Y11_N0
\rdptr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rdptr~3_combout\ = (!\RdPtrClr~input_o\ & (rdptr(2) $ (((rdptr(1) & rdptr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RdPtrClr~input_o\,
	datab => rdptr(1),
	datac => rdptr(2),
	datad => rdptr(0),
	combout => \rdptr~3_combout\);

-- Location: FF_X52_Y11_N1
\rdptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rdptr~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \rdptr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rdptr(2));

-- Location: LCCOMB_X48_Y12_N20
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (rdptr(2) & ((\Mux17~1_combout\))) # (!rdptr(2) & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux17~1_combout\,
	datad => rdptr(2),
	combout => \Mux17~4_combout\);

-- Location: IOIBUF_X38_Y0_N1
\rden~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rden,
	o => \rden~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\DataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(1),
	o => \DataIn[1]~input_o\);

-- Location: FF_X49_Y12_N23
\fifo[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][1]~q\);

-- Location: FF_X50_Y12_N1
\fifo[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][1]~q\);

-- Location: FF_X50_Y12_N15
\fifo[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][1]~q\);

-- Location: LCCOMB_X50_Y12_N14
\fifo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~8_combout\ = (wrptr(0) & (((wrptr(1))))) # (!wrptr(0) & ((wrptr(1) & ((\fifo[2][1]~q\))) # (!wrptr(1) & (\fifo[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[0][1]~q\,
	datab => wrptr(0),
	datac => \fifo[2][1]~q\,
	datad => wrptr(1),
	combout => \fifo~8_combout\);

-- Location: FF_X48_Y12_N21
\fifo[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][1]~q\);

-- Location: LCCOMB_X49_Y12_N8
\fifo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~9_combout\ = (wrptr(0) & ((\fifo~8_combout\ & ((\fifo[3][1]~q\))) # (!\fifo~8_combout\ & (\fifo[1][1]~q\)))) # (!wrptr(0) & (((\fifo~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[1][1]~q\,
	datab => wrptr(0),
	datac => \fifo~8_combout\,
	datad => \fifo[3][1]~q\,
	combout => \fifo~9_combout\);

-- Location: FF_X48_Y12_N31
\fifo[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][1]~q\);

-- Location: FF_X49_Y11_N7
\fifo[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][1]~q\);

-- Location: FF_X48_Y11_N9
\fifo[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][1]~q\);

-- Location: LCCOMB_X48_Y11_N0
\fifo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~6_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & (\fifo[5][1]~q\)) # (!wrptr(0) & ((\fifo[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[5][1]~q\,
	datab => \fifo[4][1]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~6_combout\);

-- Location: LCCOMB_X48_Y11_N10
\fifo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~7_combout\ = (wrptr(1) & ((\fifo~6_combout\ & (\fifo[7][1]~q\)) # (!\fifo~6_combout\ & ((\fifo[6][1]~q\))))) # (!wrptr(1) & (((\fifo~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][1]~q\,
	datab => wrptr(1),
	datac => \fifo[6][1]~q\,
	datad => \fifo~6_combout\,
	combout => \fifo~7_combout\);

-- Location: LCCOMB_X48_Y12_N6
\fifo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~10_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~7_combout\))) # (!wrptr(2) & (\fifo~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~9_combout\,
	datad => \fifo~7_combout\,
	combout => \fifo~10_combout\);

-- Location: LCCOMB_X48_Y12_N16
\fifo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~11_combout\ = (\fifo~10_combout\) # ((\wren~input_o\ & \DataIn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datac => \DataIn[1]~input_o\,
	datad => \fifo~10_combout\,
	combout => \fifo~11_combout\);

-- Location: LCCOMB_X48_Y11_N22
\fifo[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[7][1]~feeder_combout\ = \fifo~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~11_combout\,
	combout => \fifo[7][1]~feeder_combout\);

-- Location: FF_X48_Y11_N23
\fifo[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[7][1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][1]~q\);

-- Location: LCCOMB_X49_Y11_N6
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (rdptr(0) & (((\fifo[5][1]~q\) # (rdptr(1))))) # (!rdptr(0) & (\fifo[4][1]~q\ & ((!rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][1]~q\,
	datab => rdptr(0),
	datac => \fifo[5][1]~q\,
	datad => rdptr(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X48_Y12_N30
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\fifo[7][1]~q\) # ((!rdptr(1))))) # (!\Mux16~0_combout\ & (((\fifo[6][1]~q\ & rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][1]~q\,
	datab => \Mux16~0_combout\,
	datac => \fifo[6][1]~q\,
	datad => rdptr(1),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X50_Y12_N0
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & (\fifo[2][1]~q\)) # (!rdptr(1) & ((\fifo[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[2][1]~q\,
	datac => \fifo[0][1]~q\,
	datad => rdptr(1),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X49_Y12_N22
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (rdptr(0) & ((\Mux16~2_combout\ & ((\fifo[3][1]~q\))) # (!\Mux16~2_combout\ & (\fifo[1][1]~q\)))) # (!rdptr(0) & (\Mux16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \Mux16~2_combout\,
	datac => \fifo[1][1]~q\,
	datad => \fifo[3][1]~q\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X49_Y12_N28
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (rdptr(2) & (\Mux16~1_combout\)) # (!rdptr(2) & ((\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(2),
	datab => \Mux16~1_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: IOIBUF_X53_Y17_N22
\DataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(2),
	o => \DataIn[2]~input_o\);

-- Location: LCCOMB_X48_Y12_N14
\fifo[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[3][2]~feeder_combout\ = \fifo~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo~17_combout\,
	combout => \fifo[3][2]~feeder_combout\);

-- Location: FF_X48_Y12_N15
\fifo[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[3][2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][2]~q\);

-- Location: FF_X49_Y12_N27
\fifo[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][2]~q\);

-- Location: FF_X50_Y12_N27
\fifo[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][2]~q\);

-- Location: LCCOMB_X49_Y12_N6
\fifo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~14_combout\ = (wrptr(1) & ((wrptr(0)) # ((\fifo[2][2]~q\)))) # (!wrptr(1) & (!wrptr(0) & (\fifo[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => wrptr(0),
	datac => \fifo[0][2]~q\,
	datad => \fifo[2][2]~q\,
	combout => \fifo~14_combout\);

-- Location: LCCOMB_X49_Y12_N16
\fifo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~15_combout\ = (wrptr(0) & ((\fifo~14_combout\ & (\fifo[3][2]~q\)) # (!\fifo~14_combout\ & ((\fifo[1][2]~q\))))) # (!wrptr(0) & (((\fifo~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[3][2]~q\,
	datab => wrptr(0),
	datac => \fifo[1][2]~q\,
	datad => \fifo~14_combout\,
	combout => \fifo~15_combout\);

-- Location: FF_X48_Y12_N29
\fifo[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][2]~q\);

-- Location: FF_X48_Y11_N3
\fifo[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][2]~q\);

-- Location: LCCOMB_X48_Y11_N4
\fifo[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[4][2]~feeder_combout\ = \fifo~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~17_combout\,
	combout => \fifo[4][2]~feeder_combout\);

-- Location: FF_X48_Y11_N5
\fifo[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[4][2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][2]~q\);

-- Location: FF_X49_Y11_N25
\fifo[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][2]~q\);

-- Location: LCCOMB_X48_Y11_N16
\fifo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~12_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & ((\fifo[5][2]~q\))) # (!wrptr(0) & (\fifo[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][2]~q\,
	datab => \fifo[5][2]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~12_combout\);

-- Location: LCCOMB_X48_Y11_N14
\fifo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~13_combout\ = (wrptr(1) & ((\fifo~12_combout\ & ((\fifo[7][2]~q\))) # (!\fifo~12_combout\ & (\fifo[6][2]~q\)))) # (!wrptr(1) & (((\fifo~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[6][2]~q\,
	datab => \fifo[7][2]~q\,
	datac => wrptr(1),
	datad => \fifo~12_combout\,
	combout => \fifo~13_combout\);

-- Location: LCCOMB_X48_Y12_N10
\fifo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~16_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~13_combout\))) # (!wrptr(2) & (\fifo~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~15_combout\,
	datad => \fifo~13_combout\,
	combout => \fifo~16_combout\);

-- Location: LCCOMB_X48_Y12_N12
\fifo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~17_combout\ = (\fifo~16_combout\) # ((\wren~input_o\ & \DataIn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => \DataIn[2]~input_o\,
	datad => \fifo~16_combout\,
	combout => \fifo~17_combout\);

-- Location: LCCOMB_X50_Y12_N12
\fifo[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[0][2]~feeder_combout\ = \fifo~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo~17_combout\,
	combout => \fifo[0][2]~feeder_combout\);

-- Location: FF_X50_Y12_N13
\fifo[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[0][2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][2]~q\);

-- Location: LCCOMB_X50_Y12_N26
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & ((\fifo[2][2]~q\))) # (!rdptr(1) & (\fifo[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[0][2]~q\,
	datac => \fifo[2][2]~q\,
	datad => rdptr(1),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X49_Y12_N26
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & (((\fifo[3][2]~q\)) # (!rdptr(0)))) # (!\Mux15~2_combout\ & (rdptr(0) & (\fifo[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => rdptr(0),
	datac => \fifo[1][2]~q\,
	datad => \fifo[3][2]~q\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X49_Y11_N24
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (rdptr(0) & (((\fifo[5][2]~q\) # (rdptr(1))))) # (!rdptr(0) & (\fifo[4][2]~q\ & ((!rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][2]~q\,
	datab => rdptr(0),
	datac => \fifo[5][2]~q\,
	datad => rdptr(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X48_Y12_N28
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & ((\fifo[7][2]~q\) # ((!rdptr(1))))) # (!\Mux15~0_combout\ & (((\fifo[6][2]~q\ & rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][2]~q\,
	datab => \Mux15~0_combout\,
	datac => \fifo[6][2]~q\,
	datad => rdptr(1),
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X49_Y12_N4
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (rdptr(2) & ((\Mux15~1_combout\))) # (!rdptr(2) & (\Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(2),
	datab => \Mux15~3_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X53_Y17_N15
\DataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(3),
	o => \DataIn[3]~input_o\);

-- Location: FF_X50_Y11_N31
\fifo[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][3]~q\);

-- Location: FF_X50_Y12_N17
\fifo[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][3]~q\);

-- Location: FF_X50_Y12_N19
\fifo[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][3]~q\);

-- Location: LCCOMB_X50_Y12_N18
\fifo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~20_combout\ = (wrptr(0) & (((wrptr(1))))) # (!wrptr(0) & ((wrptr(1) & ((\fifo[2][3]~q\))) # (!wrptr(1) & (\fifo[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[0][3]~q\,
	datab => wrptr(0),
	datac => \fifo[2][3]~q\,
	datad => wrptr(1),
	combout => \fifo~20_combout\);

-- Location: LCCOMB_X49_Y12_N14
\fifo~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~21_combout\ = (wrptr(0) & ((\fifo~20_combout\ & ((\fifo[3][3]~q\))) # (!\fifo~20_combout\ & (\fifo[1][3]~q\)))) # (!wrptr(0) & (((\fifo~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[1][3]~q\,
	datab => wrptr(0),
	datac => \fifo[3][3]~q\,
	datad => \fifo~20_combout\,
	combout => \fifo~21_combout\);

-- Location: FF_X50_Y11_N1
\fifo[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][3]~q\);

-- Location: FF_X51_Y11_N1
\fifo[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][3]~q\);

-- Location: FF_X49_Y11_N17
\fifo[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][3]~q\);

-- Location: FF_X49_Y11_N15
\fifo[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][3]~q\);

-- Location: LCCOMB_X49_Y11_N14
\fifo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~18_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & ((\fifo[5][3]~q\))) # (!wrptr(0) & (\fifo[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[4][3]~q\,
	datac => \fifo[5][3]~q\,
	datad => wrptr(0),
	combout => \fifo~18_combout\);

-- Location: LCCOMB_X50_Y11_N28
\fifo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~19_combout\ = (wrptr(1) & ((\fifo~18_combout\ & ((\fifo[7][3]~q\))) # (!\fifo~18_combout\ & (\fifo[6][3]~q\)))) # (!wrptr(1) & (((\fifo~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[6][3]~q\,
	datac => \fifo[7][3]~q\,
	datad => \fifo~18_combout\,
	combout => \fifo~19_combout\);

-- Location: LCCOMB_X50_Y11_N6
\fifo~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~22_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~19_combout\))) # (!wrptr(2) & (\fifo~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~21_combout\,
	datad => \fifo~19_combout\,
	combout => \fifo~22_combout\);

-- Location: LCCOMB_X50_Y11_N2
\fifo~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~23_combout\ = (\fifo~22_combout\) # ((\wren~input_o\ & \DataIn[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => \DataIn[3]~input_o\,
	datad => \fifo~22_combout\,
	combout => \fifo~23_combout\);

-- Location: FF_X49_Y12_N11
\fifo[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][3]~q\);

-- Location: LCCOMB_X50_Y12_N16
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & (\fifo[2][3]~q\)) # (!rdptr(1) & ((\fifo[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[2][3]~q\,
	datac => \fifo[0][3]~q\,
	datad => rdptr(1),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X49_Y12_N12
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (rdptr(0) & ((\Mux14~2_combout\ & ((\fifo[3][3]~q\))) # (!\Mux14~2_combout\ & (\fifo[1][3]~q\)))) # (!rdptr(0) & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[1][3]~q\,
	datab => rdptr(0),
	datac => \fifo[3][3]~q\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X49_Y11_N16
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (rdptr(0) & ((\fifo[5][3]~q\) # ((rdptr(1))))) # (!rdptr(0) & (((\fifo[4][3]~q\ & !rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[5][3]~q\,
	datac => \fifo[4][3]~q\,
	datad => rdptr(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X50_Y11_N0
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\fifo[7][3]~q\) # ((!rdptr(1))))) # (!\Mux14~0_combout\ & (((\fifo[6][3]~q\ & rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \fifo[7][3]~q\,
	datac => \fifo[6][3]~q\,
	datad => rdptr(1),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X49_Y12_N10
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (rdptr(2) & ((\Mux14~1_combout\))) # (!rdptr(2) & (\Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(2),
	datab => \Mux14~3_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X53_Y14_N8
\DataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(4),
	o => \DataIn[4]~input_o\);

-- Location: FF_X50_Y11_N11
\fifo[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][4]~q\);

-- Location: FF_X51_Y11_N17
\fifo[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][4]~q\);

-- Location: FF_X50_Y12_N25
\fifo[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][4]~q\);

-- Location: FF_X50_Y12_N3
\fifo[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][4]~q\);

-- Location: LCCOMB_X50_Y12_N2
\fifo~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~26_combout\ = (wrptr(1) & (((\fifo[2][4]~q\) # (wrptr(0))))) # (!wrptr(1) & (\fifo[0][4]~q\ & ((!wrptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[0][4]~q\,
	datac => \fifo[2][4]~q\,
	datad => wrptr(0),
	combout => \fifo~26_combout\);

-- Location: LCCOMB_X51_Y11_N14
\fifo~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~27_combout\ = (wrptr(0) & ((\fifo~26_combout\ & (\fifo[3][4]~q\)) # (!\fifo~26_combout\ & ((\fifo[1][4]~q\))))) # (!wrptr(0) & (((\fifo~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[3][4]~q\,
	datab => \fifo[1][4]~q\,
	datac => wrptr(0),
	datad => \fifo~26_combout\,
	combout => \fifo~27_combout\);

-- Location: FF_X50_Y11_N25
\fifo[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][4]~q\);

-- Location: FF_X49_Y11_N29
\fifo[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][4]~q\);

-- Location: FF_X49_Y11_N31
\fifo[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][4]~q\);

-- Location: LCCOMB_X49_Y11_N30
\fifo~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~24_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & ((\fifo[5][4]~q\))) # (!wrptr(0) & (\fifo[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[4][4]~q\,
	datac => \fifo[5][4]~q\,
	datad => wrptr(0),
	combout => \fifo~24_combout\);

-- Location: LCCOMB_X51_Y11_N10
\fifo~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~25_combout\ = (wrptr(1) & ((\fifo~24_combout\ & ((\fifo[7][4]~q\))) # (!\fifo~24_combout\ & (\fifo[6][4]~q\)))) # (!wrptr(1) & (((\fifo~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[6][4]~q\,
	datac => \fifo[7][4]~q\,
	datad => \fifo~24_combout\,
	combout => \fifo~25_combout\);

-- Location: LCCOMB_X51_Y11_N24
\fifo~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~28_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~25_combout\))) # (!wrptr(2) & (\fifo~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~27_combout\,
	datad => \fifo~25_combout\,
	combout => \fifo~28_combout\);

-- Location: LCCOMB_X50_Y11_N10
\fifo~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~29_combout\ = (\fifo~28_combout\) # ((\DataIn[4]~input_o\ & \wren~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[4]~input_o\,
	datac => \wren~input_o\,
	datad => \fifo~28_combout\,
	combout => \fifo~29_combout\);

-- Location: FF_X51_Y11_N11
\fifo[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][4]~q\);

-- Location: LCCOMB_X49_Y11_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (rdptr(1) & (rdptr(0))) # (!rdptr(1) & ((rdptr(0) & ((\fifo[5][4]~q\))) # (!rdptr(0) & (\fifo[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(1),
	datab => rdptr(0),
	datac => \fifo[4][4]~q\,
	datad => \fifo[5][4]~q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X50_Y11_N24
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (rdptr(1) & ((\Mux13~0_combout\ & (\fifo[7][4]~q\)) # (!\Mux13~0_combout\ & ((\fifo[6][4]~q\))))) # (!rdptr(1) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][4]~q\,
	datab => rdptr(1),
	datac => \fifo[6][4]~q\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X50_Y12_N24
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & (\fifo[2][4]~q\)) # (!rdptr(1) & ((\fifo[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[2][4]~q\,
	datac => \fifo[0][4]~q\,
	datad => rdptr(1),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X51_Y11_N16
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (rdptr(0) & ((\Mux13~2_combout\ & ((\fifo[3][4]~q\))) # (!\Mux13~2_combout\ & (\fifo[1][4]~q\)))) # (!rdptr(0) & (\Mux13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \Mux13~2_combout\,
	datac => \fifo[1][4]~q\,
	datad => \fifo[3][4]~q\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X51_Y11_N30
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (rdptr(2) & (\Mux13~1_combout\)) # (!rdptr(2) & ((\Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => rdptr(2),
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: IOIBUF_X53_Y17_N8
\DataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(5),
	o => \DataIn[5]~input_o\);

-- Location: FF_X51_Y11_N31
\fifo[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][5]~q\);

-- Location: FF_X50_Y11_N23
\fifo[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][5]~q\);

-- Location: LCCOMB_X50_Y12_N6
\fifo[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[2][5]~feeder_combout\ = \fifo~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo~35_combout\,
	combout => \fifo[2][5]~feeder_combout\);

-- Location: FF_X50_Y12_N7
\fifo[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[2][5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][5]~q\);

-- Location: LCCOMB_X50_Y12_N4
\fifo~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~32_combout\ = (wrptr(0) & (((wrptr(1))))) # (!wrptr(0) & ((wrptr(1) & (\fifo[2][5]~q\)) # (!wrptr(1) & ((\fifo[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[2][5]~q\,
	datab => wrptr(0),
	datac => \fifo[0][5]~q\,
	datad => wrptr(1),
	combout => \fifo~32_combout\);

-- Location: LCCOMB_X51_Y11_N8
\fifo~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~33_combout\ = (wrptr(0) & ((\fifo~32_combout\ & ((\fifo[3][5]~q\))) # (!\fifo~32_combout\ & (\fifo[1][5]~q\)))) # (!wrptr(0) & (((\fifo~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[1][5]~q\,
	datab => \fifo[3][5]~q\,
	datac => wrptr(0),
	datad => \fifo~32_combout\,
	combout => \fifo~33_combout\);

-- Location: FF_X51_Y11_N29
\fifo[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][5]~q\);

-- Location: FF_X50_Y11_N5
\fifo[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][5]~q\);

-- Location: FF_X49_Y11_N13
\fifo[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][5]~q\);

-- Location: LCCOMB_X49_Y11_N2
\fifo[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[5][5]~feeder_combout\ = \fifo~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~35_combout\,
	combout => \fifo[5][5]~feeder_combout\);

-- Location: FF_X49_Y11_N3
\fifo[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[5][5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][5]~q\);

-- Location: LCCOMB_X49_Y11_N8
\fifo~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~30_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & ((\fifo[5][5]~q\))) # (!wrptr(0) & (\fifo[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][5]~q\,
	datab => \fifo[5][5]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~30_combout\);

-- Location: LCCOMB_X51_Y11_N2
\fifo~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~31_combout\ = (wrptr(1) & ((\fifo~30_combout\ & (\fifo[7][5]~q\)) # (!\fifo~30_combout\ & ((\fifo[6][5]~q\))))) # (!wrptr(1) & (((\fifo~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[7][5]~q\,
	datac => \fifo[6][5]~q\,
	datad => \fifo~30_combout\,
	combout => \fifo~31_combout\);

-- Location: LCCOMB_X51_Y11_N22
\fifo~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~34_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~31_combout\))) # (!wrptr(2) & (\fifo~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~33_combout\,
	datad => \fifo~31_combout\,
	combout => \fifo~34_combout\);

-- Location: LCCOMB_X50_Y11_N12
\fifo~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~35_combout\ = (\fifo~34_combout\) # ((\DataIn[5]~input_o\ & \wren~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[5]~input_o\,
	datac => \wren~input_o\,
	datad => \fifo~34_combout\,
	combout => \fifo~35_combout\);

-- Location: FF_X50_Y12_N9
\fifo[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][5]~q\);

-- Location: LCCOMB_X50_Y12_N10
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & ((\fifo[2][5]~q\))) # (!rdptr(1) & (\fifo[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[0][5]~q\,
	datac => rdptr(1),
	datad => \fifo[2][5]~q\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X50_Y11_N22
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\fifo[3][5]~q\)) # (!rdptr(0)))) # (!\Mux12~2_combout\ & (rdptr(0) & ((\fifo[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => rdptr(0),
	datac => \fifo[3][5]~q\,
	datad => \fifo[1][5]~q\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X49_Y11_N12
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (rdptr(0) & ((\fifo[5][5]~q\) # ((rdptr(1))))) # (!rdptr(0) & (((\fifo[4][5]~q\ & !rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[5][5]~q\,
	datac => \fifo[4][5]~q\,
	datad => rdptr(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X50_Y11_N4
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\fifo[7][5]~q\)) # (!rdptr(1)))) # (!\Mux12~0_combout\ & (rdptr(1) & (\fifo[6][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => rdptr(1),
	datac => \fifo[6][5]~q\,
	datad => \fifo[7][5]~q\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X50_Y11_N30
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (rdptr(2) & ((\Mux12~1_combout\))) # (!rdptr(2) & (\Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \Mux12~1_combout\,
	datad => rdptr(2),
	combout => \Mux12~4_combout\);

-- Location: IOIBUF_X53_Y17_N1
\DataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(6),
	o => \DataIn[6]~input_o\);

-- Location: FF_X50_Y11_N21
\fifo[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][6]~q\);

-- Location: FF_X49_Y11_N1
\fifo[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][6]~q\);

-- Location: FF_X49_Y11_N23
\fifo[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][6]~q\);

-- Location: LCCOMB_X49_Y11_N22
\fifo~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~36_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & ((\fifo[5][6]~q\))) # (!wrptr(0) & (\fifo[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[4][6]~q\,
	datac => \fifo[5][6]~q\,
	datad => wrptr(0),
	combout => \fifo~36_combout\);

-- Location: LCCOMB_X50_Y11_N14
\fifo~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~37_combout\ = (wrptr(1) & ((\fifo~36_combout\ & ((\fifo[7][6]~q\))) # (!\fifo~36_combout\ & (\fifo[6][6]~q\)))) # (!wrptr(1) & (((\fifo~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[6][6]~q\,
	datac => \fifo[7][6]~q\,
	datad => \fifo~36_combout\,
	combout => \fifo~37_combout\);

-- Location: FF_X50_Y11_N27
\fifo[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][6]~q\);

-- Location: FF_X51_Y11_N13
\fifo[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][6]~q\);

-- Location: LCCOMB_X51_Y12_N10
\fifo[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[0][6]~feeder_combout\ = \fifo~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~41_combout\,
	combout => \fifo[0][6]~feeder_combout\);

-- Location: FF_X51_Y12_N11
\fifo[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[0][6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][6]~q\);

-- Location: FF_X51_Y12_N21
\fifo[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][6]~q\);

-- Location: LCCOMB_X51_Y12_N26
\fifo~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~38_combout\ = (wrptr(1) & (((\fifo[2][6]~q\) # (wrptr(0))))) # (!wrptr(1) & (\fifo[0][6]~q\ & ((!wrptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[0][6]~q\,
	datab => \fifo[2][6]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~38_combout\);

-- Location: LCCOMB_X50_Y11_N16
\fifo~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~39_combout\ = (wrptr(0) & ((\fifo~38_combout\ & (\fifo[3][6]~q\)) # (!\fifo~38_combout\ & ((\fifo[1][6]~q\))))) # (!wrptr(0) & (((\fifo~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[3][6]~q\,
	datab => \fifo[1][6]~q\,
	datac => wrptr(0),
	datad => \fifo~38_combout\,
	combout => \fifo~39_combout\);

-- Location: LCCOMB_X50_Y11_N18
\fifo~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~40_combout\ = (!\wren~input_o\ & ((wrptr(2) & (\fifo~37_combout\)) # (!wrptr(2) & ((\fifo~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~37_combout\,
	datad => \fifo~39_combout\,
	combout => \fifo~40_combout\);

-- Location: LCCOMB_X50_Y11_N26
\fifo~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~41_combout\ = (\fifo~40_combout\) # ((\DataIn[6]~input_o\ & \wren~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[6]~input_o\,
	datac => \wren~input_o\,
	datad => \fifo~40_combout\,
	combout => \fifo~41_combout\);

-- Location: FF_X51_Y11_N27
\fifo[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][6]~q\);

-- Location: LCCOMB_X49_Y11_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (rdptr(0) & ((\fifo[5][6]~q\) # ((rdptr(1))))) # (!rdptr(0) & (((\fifo[4][6]~q\ & !rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[5][6]~q\,
	datab => rdptr(0),
	datac => \fifo[4][6]~q\,
	datad => rdptr(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X50_Y11_N20
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\fifo[7][6]~q\) # ((!rdptr(1))))) # (!\Mux11~0_combout\ & (((\fifo[6][6]~q\ & rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][6]~q\,
	datab => \Mux11~0_combout\,
	datac => \fifo[6][6]~q\,
	datad => rdptr(1),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X51_Y12_N20
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (rdptr(1) & ((rdptr(0)) # ((\fifo[2][6]~q\)))) # (!rdptr(1) & (!rdptr(0) & ((\fifo[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(1),
	datab => rdptr(0),
	datac => \fifo[2][6]~q\,
	datad => \fifo[0][6]~q\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X51_Y11_N12
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (rdptr(0) & ((\Mux11~2_combout\ & ((\fifo[3][6]~q\))) # (!\Mux11~2_combout\ & (\fifo[1][6]~q\)))) # (!rdptr(0) & (\Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \Mux11~2_combout\,
	datac => \fifo[1][6]~q\,
	datad => \fifo[3][6]~q\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X51_Y11_N28
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (rdptr(2) & (\Mux11~1_combout\)) # (!rdptr(2) & ((\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => rdptr(2),
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X53_Y9_N8
\DataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(7),
	o => \DataIn[7]~input_o\);

-- Location: FF_X51_Y11_N21
\fifo[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][7]~q\);

-- Location: FF_X50_Y12_N31
\fifo[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][7]~q\);

-- Location: LCCOMB_X50_Y12_N22
\fifo~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~44_combout\ = (wrptr(1) & (((\fifo[2][7]~q\) # (wrptr(0))))) # (!wrptr(1) & (\fifo[0][7]~q\ & ((!wrptr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[0][7]~q\,
	datab => \fifo[2][7]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~44_combout\);

-- Location: FF_X50_Y11_N3
\fifo[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][7]~q\);

-- Location: LCCOMB_X51_Y11_N4
\fifo~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~45_combout\ = (wrptr(0) & ((\fifo~44_combout\ & ((\fifo[3][7]~q\))) # (!\fifo~44_combout\ & (\fifo[1][7]~q\)))) # (!wrptr(0) & (((\fifo~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(0),
	datab => \fifo[1][7]~q\,
	datac => \fifo~44_combout\,
	datad => \fifo[3][7]~q\,
	combout => \fifo~45_combout\);

-- Location: FF_X50_Y11_N9
\fifo[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][7]~q\);

-- Location: FF_X51_Y11_N19
\fifo[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][7]~q\);

-- Location: FF_X49_Y11_N27
\fifo[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][7]~q\);

-- Location: FF_X49_Y11_N5
\fifo[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][7]~q\);

-- Location: LCCOMB_X49_Y11_N10
\fifo~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~42_combout\ = (wrptr(0) & ((\fifo[5][7]~q\) # ((wrptr(1))))) # (!wrptr(0) & (((\fifo[4][7]~q\ & !wrptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[5][7]~q\,
	datab => \fifo[4][7]~q\,
	datac => wrptr(0),
	datad => wrptr(1),
	combout => \fifo~42_combout\);

-- Location: LCCOMB_X51_Y11_N18
\fifo~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~43_combout\ = (wrptr(1) & ((\fifo~42_combout\ & ((\fifo[7][7]~q\))) # (!\fifo~42_combout\ & (\fifo[6][7]~q\)))) # (!wrptr(1) & (((\fifo~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(1),
	datab => \fifo[6][7]~q\,
	datac => \fifo[7][7]~q\,
	datad => \fifo~42_combout\,
	combout => \fifo~43_combout\);

-- Location: LCCOMB_X51_Y11_N6
\fifo~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~46_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~43_combout\))) # (!wrptr(2) & (\fifo~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => wrptr(2),
	datac => \fifo~45_combout\,
	datad => \fifo~43_combout\,
	combout => \fifo~46_combout\);

-- Location: LCCOMB_X51_Y11_N26
\fifo~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~47_combout\ = (\fifo~46_combout\) # ((\wren~input_o\ & \DataIn[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~input_o\,
	datab => \DataIn[7]~input_o\,
	datad => \fifo~46_combout\,
	combout => \fifo~47_combout\);

-- Location: LCCOMB_X50_Y12_N28
\fifo[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[2][7]~feeder_combout\ = \fifo~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~47_combout\,
	combout => \fifo[2][7]~feeder_combout\);

-- Location: FF_X50_Y12_N29
\fifo[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[2][7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][7]~q\);

-- Location: LCCOMB_X50_Y12_N30
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & (\fifo[2][7]~q\)) # (!rdptr(1) & ((\fifo[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[2][7]~q\,
	datac => \fifo[0][7]~q\,
	datad => rdptr(1),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X51_Y11_N20
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (rdptr(0) & ((\Mux10~2_combout\ & ((\fifo[3][7]~q\))) # (!\Mux10~2_combout\ & (\fifo[1][7]~q\)))) # (!rdptr(0) & (\Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \Mux10~2_combout\,
	datac => \fifo[1][7]~q\,
	datad => \fifo[3][7]~q\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X49_Y11_N4
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (rdptr(0) & ((\fifo[5][7]~q\) # ((rdptr(1))))) # (!rdptr(0) & (((\fifo[4][7]~q\ & !rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[5][7]~q\,
	datab => rdptr(0),
	datac => \fifo[4][7]~q\,
	datad => rdptr(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X50_Y11_N8
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\fifo[7][7]~q\) # ((!rdptr(1))))) # (!\Mux10~0_combout\ & (((\fifo[6][7]~q\ & rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \fifo[7][7]~q\,
	datac => \fifo[6][7]~q\,
	datad => rdptr(1),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X51_Y11_N0
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (rdptr(2) & ((\Mux10~1_combout\))) # (!rdptr(2) & (\Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => rdptr(2),
	datad => \Mux10~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: IOIBUF_X47_Y0_N22
\DataIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(8),
	o => \DataIn[8]~input_o\);

-- Location: FF_X47_Y11_N27
\fifo[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[3][8]~q\);

-- Location: LCCOMB_X47_Y12_N18
\fifo[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[2][8]~feeder_combout\ = \fifo~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo~53_combout\,
	combout => \fifo[2][8]~feeder_combout\);

-- Location: FF_X47_Y12_N19
\fifo[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[2][8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[2][8]~q\);

-- Location: LCCOMB_X47_Y12_N28
\fifo[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[0][8]~feeder_combout\ = \fifo~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo~53_combout\,
	combout => \fifo[0][8]~feeder_combout\);

-- Location: FF_X47_Y12_N29
\fifo[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[0][8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[0][8]~q\);

-- Location: LCCOMB_X47_Y12_N30
\fifo~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~50_combout\ = (wrptr(0) & (((wrptr(1))))) # (!wrptr(0) & ((wrptr(1) & (\fifo[2][8]~q\)) # (!wrptr(1) & ((\fifo[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(0),
	datab => \fifo[2][8]~q\,
	datac => wrptr(1),
	datad => \fifo[0][8]~q\,
	combout => \fifo~50_combout\);

-- Location: LCCOMB_X47_Y11_N22
\fifo~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~51_combout\ = (wrptr(0) & ((\fifo~50_combout\ & (\fifo[3][8]~q\)) # (!\fifo~50_combout\ & ((\fifo[1][8]~q\))))) # (!wrptr(0) & (((\fifo~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[3][8]~q\,
	datab => wrptr(0),
	datac => \fifo~50_combout\,
	datad => \fifo[1][8]~q\,
	combout => \fifo~51_combout\);

-- Location: LCCOMB_X48_Y11_N26
\fifo[7][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[7][8]~feeder_combout\ = \fifo~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~53_combout\,
	combout => \fifo[7][8]~feeder_combout\);

-- Location: FF_X48_Y11_N27
\fifo[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[7][8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[7][8]~q\);

-- Location: FF_X47_Y11_N25
\fifo[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[6][8]~q\);

-- Location: LCCOMB_X48_Y11_N12
\fifo[4][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[4][8]~feeder_combout\ = \fifo~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~53_combout\,
	combout => \fifo[4][8]~feeder_combout\);

-- Location: FF_X48_Y11_N13
\fifo[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[4][8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[4][8]~q\);

-- Location: FF_X49_Y11_N19
\fifo[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fifo~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[5][8]~q\);

-- Location: LCCOMB_X48_Y11_N28
\fifo~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~48_combout\ = (wrptr(1) & (((wrptr(0))))) # (!wrptr(1) & ((wrptr(0) & ((\fifo[5][8]~q\))) # (!wrptr(0) & (\fifo[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][8]~q\,
	datab => \fifo[5][8]~q\,
	datac => wrptr(1),
	datad => wrptr(0),
	combout => \fifo~48_combout\);

-- Location: LCCOMB_X48_Y11_N6
\fifo~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~49_combout\ = (wrptr(1) & ((\fifo~48_combout\ & (\fifo[7][8]~q\)) # (!\fifo~48_combout\ & ((\fifo[6][8]~q\))))) # (!wrptr(1) & (((\fifo~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[7][8]~q\,
	datab => \fifo[6][8]~q\,
	datac => wrptr(1),
	datad => \fifo~48_combout\,
	combout => \fifo~49_combout\);

-- Location: LCCOMB_X47_Y11_N20
\fifo~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~52_combout\ = (!\wren~input_o\ & ((wrptr(2) & ((\fifo~49_combout\))) # (!wrptr(2) & (\fifo~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wrptr(2),
	datab => \wren~input_o\,
	datac => \fifo~51_combout\,
	datad => \fifo~49_combout\,
	combout => \fifo~52_combout\);

-- Location: LCCOMB_X47_Y11_N30
\fifo~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo~53_combout\ = (\fifo~52_combout\) # ((\wren~input_o\ & \DataIn[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~input_o\,
	datac => \DataIn[8]~input_o\,
	datad => \fifo~52_combout\,
	combout => \fifo~53_combout\);

-- Location: LCCOMB_X46_Y11_N24
\fifo[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo[1][8]~feeder_combout\ = \fifo~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo~53_combout\,
	combout => \fifo[1][8]~feeder_combout\);

-- Location: FF_X46_Y11_N25
\fifo[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo[1][8]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo[1][8]~q\);

-- Location: LCCOMB_X47_Y12_N10
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (rdptr(0) & (((rdptr(1))))) # (!rdptr(0) & ((rdptr(1) & (\fifo[2][8]~q\)) # (!rdptr(1) & ((\fifo[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[2][8]~q\,
	datac => rdptr(1),
	datad => \fifo[0][8]~q\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X47_Y11_N28
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (rdptr(0) & ((\Mux9~2_combout\ & ((\fifo[3][8]~q\))) # (!\Mux9~2_combout\ & (\fifo[1][8]~q\)))) # (!rdptr(0) & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(0),
	datab => \fifo[1][8]~q\,
	datac => \fifo[3][8]~q\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X49_Y11_N18
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (rdptr(0) & (((\fifo[5][8]~q\) # (rdptr(1))))) # (!rdptr(0) & (\fifo[4][8]~q\ & ((!rdptr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo[4][8]~q\,
	datab => rdptr(0),
	datac => \fifo[5][8]~q\,
	datad => rdptr(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X47_Y11_N24
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\fifo[7][8]~q\)) # (!rdptr(1)))) # (!\Mux9~0_combout\ & (rdptr(1) & (\fifo[6][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => rdptr(1),
	datac => \fifo[6][8]~q\,
	datad => \fifo[7][8]~q\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X47_Y11_N26
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (rdptr(2) & ((\Mux9~1_combout\))) # (!rdptr(2) & (\Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdptr(2),
	datab => \Mux9~3_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~4_combout\);

ww_DataOut(0) <= \DataOut[0]~output_o\;

ww_DataOut(1) <= \DataOut[1]~output_o\;

ww_DataOut(2) <= \DataOut[2]~output_o\;

ww_DataOut(3) <= \DataOut[3]~output_o\;

ww_DataOut(4) <= \DataOut[4]~output_o\;

ww_DataOut(5) <= \DataOut[5]~output_o\;

ww_DataOut(6) <= \DataOut[6]~output_o\;

ww_DataOut(7) <= \DataOut[7]~output_o\;

ww_DataOut(8) <= \DataOut[8]~output_o\;
END structure;


