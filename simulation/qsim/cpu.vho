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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/05/2020 16:52:48"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	CPU IS
    PORT (
	Clock : IN std_logic;
	Ri : BUFFER std_logic_vector(7 DOWNTO 0);
	Rj : BUFFER std_logic_vector(7 DOWNTO 0);
	Rk : BUFFER std_logic_vector(7 DOWNTO 0);
	Rx : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- Ri[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ri[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[6]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rj[7]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[5]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rk[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[7]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Ri : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rj : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rk : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rx : std_logic_vector(7 DOWNTO 0);
SIGNAL \BancoReg|Mux33~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BancoReg|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BancoReg|Mux33~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegInst|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BancoReg|R0[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BancoReg|Mux33~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegAux|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ri[0]~output_o\ : std_logic;
SIGNAL \Ri[1]~output_o\ : std_logic;
SIGNAL \Ri[2]~output_o\ : std_logic;
SIGNAL \Ri[3]~output_o\ : std_logic;
SIGNAL \Ri[4]~output_o\ : std_logic;
SIGNAL \Ri[5]~output_o\ : std_logic;
SIGNAL \Ri[6]~output_o\ : std_logic;
SIGNAL \Ri[7]~output_o\ : std_logic;
SIGNAL \Rj[0]~output_o\ : std_logic;
SIGNAL \Rj[1]~output_o\ : std_logic;
SIGNAL \Rj[2]~output_o\ : std_logic;
SIGNAL \Rj[3]~output_o\ : std_logic;
SIGNAL \Rj[4]~output_o\ : std_logic;
SIGNAL \Rj[5]~output_o\ : std_logic;
SIGNAL \Rj[6]~output_o\ : std_logic;
SIGNAL \Rj[7]~output_o\ : std_logic;
SIGNAL \Rk[0]~output_o\ : std_logic;
SIGNAL \Rk[1]~output_o\ : std_logic;
SIGNAL \Rk[2]~output_o\ : std_logic;
SIGNAL \Rk[3]~output_o\ : std_logic;
SIGNAL \Rk[4]~output_o\ : std_logic;
SIGNAL \Rk[5]~output_o\ : std_logic;
SIGNAL \Rk[6]~output_o\ : std_logic;
SIGNAL \Rk[7]~output_o\ : std_logic;
SIGNAL \Rx[0]~output_o\ : std_logic;
SIGNAL \Rx[1]~output_o\ : std_logic;
SIGNAL \Rx[2]~output_o\ : std_logic;
SIGNAL \Rx[3]~output_o\ : std_logic;
SIGNAL \Rx[4]~output_o\ : std_logic;
SIGNAL \Rx[5]~output_o\ : std_logic;
SIGNAL \Rx[6]~output_o\ : std_logic;
SIGNAL \Rx[7]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ContrUnit|NextStage~19_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage.mov~q\ : std_logic;
SIGNAL \RegInst|process_0~0_combout\ : std_logic;
SIGNAL \RegInst|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \DataMem|Mux1~0_combout\ : std_logic;
SIGNAL \DataMem|Mux0~0_combout\ : std_logic;
SIGNAL \ContrUnit|AluSrcA~0_combout\ : std_logic;
SIGNAL \ContrUnit|MemToReg~q\ : std_logic;
SIGNAL \MuxRegData|output~2_combout\ : std_logic;
SIGNAL \DataMem|Mux4~0_combout\ : std_logic;
SIGNAL \DataMem|Mux5~0_combout\ : std_logic;
SIGNAL \BancoReg|R0[7]~0_combout\ : std_logic;
SIGNAL \BancoReg|R0[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \BancoReg|Mux33~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~1clkctrl_outclk\ : std_logic;
SIGNAL \DataMem|Mux4~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux5~0_combout\ : std_logic;
SIGNAL \BancoReg|process_0~0_combout\ : std_logic;
SIGNAL \BancoReg|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \ContrUnit|RegAuxWrite~q\ : std_logic;
SIGNAL \RegAux|process_0~0_combout\ : std_logic;
SIGNAL \RegAux|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \MuxUlaA|Mux5~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux5~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~0clkctrl_outclk\ : std_logic;
SIGNAL \BancoReg|Mux13~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux5~0_combout\ : std_logic;
SIGNAL \ContrUnit|AluControl~0_combout\ : std_logic;
SIGNAL \Alu|Add0~12_combout\ : std_logic;
SIGNAL \Alu|Add0~13_combout\ : std_logic;
SIGNAL \MuxRegData|output~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux6~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux6~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux6~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux7~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux7~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux7~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux15~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux7~0_combout\ : std_logic;
SIGNAL \Alu|Add0~1_combout\ : std_logic;
SIGNAL \Alu|Add0~3_cout\ : std_logic;
SIGNAL \Alu|Add0~5\ : std_logic;
SIGNAL \Alu|Add0~10\ : std_logic;
SIGNAL \Alu|Add0~14_combout\ : std_logic;
SIGNAL \Alu|Add0~16_combout\ : std_logic;
SIGNAL \DataMem|Mux2~0_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage~21_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage~22_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage.exec~q\ : std_logic;
SIGNAL \ContrUnit|WideOr4~combout\ : std_logic;
SIGNAL \ContrUnit|NextStage.complete~q\ : std_logic;
SIGNAL \ContrUnit|RegWrite~0_combout\ : std_logic;
SIGNAL \ContrUnit|RegWrite~q\ : std_logic;
SIGNAL \ContrUnit|NextStage.decode~0_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage.decode~q\ : std_logic;
SIGNAL \ContrUnit|NextStage~18_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage~20_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage.mov_i~q\ : std_logic;
SIGNAL \ContrUnit|AluSrcB~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux14~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux6~0_combout\ : std_logic;
SIGNAL \Alu|Add0~8_combout\ : std_logic;
SIGNAL \Alu|Add0~9_combout\ : std_logic;
SIGNAL \Alu|Add0~7_combout\ : std_logic;
SIGNAL \Alu|Add0~11_combout\ : std_logic;
SIGNAL \DataMem|Mux4~1_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage~23_combout\ : std_logic;
SIGNAL \ContrUnit|NextStage.exec_i~q\ : std_logic;
SIGNAL \ContrUnit|Selector0~0_combout\ : std_logic;
SIGNAL \Alu|Add0~4_combout\ : std_logic;
SIGNAL \Alu|Add0~0_combout\ : std_logic;
SIGNAL \Alu|Add0~6_combout\ : std_logic;
SIGNAL \MuxRegData|output~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux4~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux4~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux4~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux12~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux4~0_combout\ : std_logic;
SIGNAL \Alu|Add0~18_combout\ : std_logic;
SIGNAL \Alu|Add0~15\ : std_logic;
SIGNAL \Alu|Add0~19_combout\ : std_logic;
SIGNAL \Alu|Add0~17_combout\ : std_logic;
SIGNAL \Alu|Add0~21_combout\ : std_logic;
SIGNAL \MuxRegData|output~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux3~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux3~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux3~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux11~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux3~0_combout\ : std_logic;
SIGNAL \Alu|Add0~22_combout\ : std_logic;
SIGNAL \Alu|Add0~23_combout\ : std_logic;
SIGNAL \Alu|Add0~20\ : std_logic;
SIGNAL \Alu|Add0~24_combout\ : std_logic;
SIGNAL \Alu|Add0~26_combout\ : std_logic;
SIGNAL \MuxRegData|output~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux2~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux2~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux2~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux10~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux2~0_combout\ : std_logic;
SIGNAL \Alu|Add0~27_combout\ : std_logic;
SIGNAL \Alu|Add0~28_combout\ : std_logic;
SIGNAL \Alu|Add0~25\ : std_logic;
SIGNAL \Alu|Add0~29_combout\ : std_logic;
SIGNAL \Alu|Add0~31_combout\ : std_logic;
SIGNAL \MuxRegData|output~5_combout\ : std_logic;
SIGNAL \BancoReg|Mux1~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux1~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux1~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux9~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux1~0_combout\ : std_logic;
SIGNAL \Alu|Add0~32_combout\ : std_logic;
SIGNAL \Alu|Add0~33_combout\ : std_logic;
SIGNAL \Alu|Add0~30\ : std_logic;
SIGNAL \Alu|Add0~34_combout\ : std_logic;
SIGNAL \Alu|Add0~36_combout\ : std_logic;
SIGNAL \MuxRegData|output~6_combout\ : std_logic;
SIGNAL \BancoReg|Mux0~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux0~0_combout\ : std_logic;
SIGNAL \MuxUlaA|Mux0~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux8~0_combout\ : std_logic;
SIGNAL \MuxUlaB|Mux0~0_combout\ : std_logic;
SIGNAL \Alu|Add0~37_combout\ : std_logic;
SIGNAL \Alu|Add0~38_combout\ : std_logic;
SIGNAL \Alu|Add0~35\ : std_logic;
SIGNAL \Alu|Add0~39_combout\ : std_logic;
SIGNAL \Alu|Add0~41_combout\ : std_logic;
SIGNAL \MuxRegData|output~7_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~2clkctrl_outclk\ : std_logic;
SIGNAL \BancoReg|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DataMem|InstructionOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ContrUnit|AluControl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ContrUnit|AluSrcB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ContrUnit|AluSrcA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \BancoReg|R0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MuxRegData|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BancoReg|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BancoReg|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegInst|Output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegAux|Output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Alu|Res\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BancoReg|readData1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MuxUlaB|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MuxUlaA|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|Output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BancoReg|readData2\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
Ri <= ww_Ri;
Rj <= ww_Rj;
Rk <= ww_Rk;
Rx <= ww_Rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\BancoReg|Mux33~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BancoReg|Mux33~1_combout\);

\BancoReg|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BancoReg|process_0~0_combout\);

\BancoReg|Mux33~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BancoReg|Mux33~0_combout\);

\RegInst|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RegInst|process_0~0_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\BancoReg|R0[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BancoReg|R0[7]~0_combout\);

\BancoReg|Mux33~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BancoReg|Mux33~2_combout\);

\RegAux|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RegAux|process_0~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N2
\Ri[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(0),
	devoe => ww_devoe,
	o => \Ri[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\Ri[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(1),
	devoe => ww_devoe,
	o => \Ri[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\Ri[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(2),
	devoe => ww_devoe,
	o => \Ri[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\Ri[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(3),
	devoe => ww_devoe,
	o => \Ri[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\Ri[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(4),
	devoe => ww_devoe,
	o => \Ri[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Ri[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(5),
	devoe => ww_devoe,
	o => \Ri[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\Ri[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(6),
	devoe => ww_devoe,
	o => \Ri[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\Ri[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R0\(7),
	devoe => ww_devoe,
	o => \Ri[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\Rj[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(0),
	devoe => ww_devoe,
	o => \Rj[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\Rj[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(1),
	devoe => ww_devoe,
	o => \Rj[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\Rj[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(2),
	devoe => ww_devoe,
	o => \Rj[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\Rj[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(3),
	devoe => ww_devoe,
	o => \Rj[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\Rj[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(4),
	devoe => ww_devoe,
	o => \Rj[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\Rj[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(5),
	devoe => ww_devoe,
	o => \Rj[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\Rj[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(6),
	devoe => ww_devoe,
	o => \Rj[6]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\Rj[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R1\(7),
	devoe => ww_devoe,
	o => \Rj[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Rk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(0),
	devoe => ww_devoe,
	o => \Rk[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\Rk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(1),
	devoe => ww_devoe,
	o => \Rk[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Rk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(2),
	devoe => ww_devoe,
	o => \Rk[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\Rk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(3),
	devoe => ww_devoe,
	o => \Rk[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Rk[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(4),
	devoe => ww_devoe,
	o => \Rk[4]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\Rk[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(5),
	devoe => ww_devoe,
	o => \Rk[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\Rk[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(6),
	devoe => ww_devoe,
	o => \Rk[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\Rk[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R2\(7),
	devoe => ww_devoe,
	o => \Rk[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Rx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(0),
	devoe => ww_devoe,
	o => \Rx[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Rx[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(1),
	devoe => ww_devoe,
	o => \Rx[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\Rx[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(2),
	devoe => ww_devoe,
	o => \Rx[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\Rx[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(3),
	devoe => ww_devoe,
	o => \Rx[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\Rx[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(4),
	devoe => ww_devoe,
	o => \Rx[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\Rx[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(5),
	devoe => ww_devoe,
	o => \Rx[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\Rx[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(6),
	devoe => ww_devoe,
	o => \Rx[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\Rx[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|R3\(7),
	devoe => ww_devoe,
	o => \Rx[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y16_N4
\ContrUnit|NextStage~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage~19_combout\ = (!\RegInst|Output\(12) & \ContrUnit|NextStage~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegInst|Output\(12),
	datad => \ContrUnit|NextStage~18_combout\,
	combout => \ContrUnit|NextStage~19_combout\);

-- Location: FF_X21_Y16_N5
\ContrUnit|NextStage.mov\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|NextStage~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|NextStage.mov~q\);

-- Location: LCCOMB_X22_Y12_N14
\RegInst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|process_0~0_combout\ = (\Clock~input_o\ & \ContrUnit|NextStage.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clock~input_o\,
	datad => \ContrUnit|NextStage.decode~q\,
	combout => \RegInst|process_0~0_combout\);

-- Location: CLKCTRL_G4
\RegInst|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RegInst|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RegInst|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y16_N0
\PC|Output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(0) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(0))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(0),
	datac => \RegInst|process_0~0clkctrl_outclk\,
	datad => \PC|Output\(0),
	combout => \PC|Output\(0));

-- Location: LCCOMB_X22_Y16_N28
\DataMem|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux1~0_combout\ = \PC|Output\(0) $ (!\PC|Output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Output\(0),
	datad => \PC|Output\(1),
	combout => \DataMem|Mux1~0_combout\);

-- Location: FF_X22_Y16_N29
\DataMem|InstructionOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(14));

-- Location: LCCOMB_X22_Y16_N14
\RegInst|Output[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(14) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\DataMem|InstructionOut\(14)))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\RegInst|Output\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegInst|Output\(14),
	datac => \DataMem|InstructionOut\(14),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \RegInst|Output\(14));

-- Location: LCCOMB_X22_Y16_N18
\DataMem|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux0~0_combout\ = (\PC|Output\(1) & !\PC|Output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Output\(1),
	datac => \PC|Output\(0),
	combout => \DataMem|Mux0~0_combout\);

-- Location: FF_X22_Y16_N19
\DataMem|InstructionOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(15));

-- Location: LCCOMB_X22_Y16_N4
\RegInst|Output[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(15) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\DataMem|InstructionOut\(15))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\RegInst|Output\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMem|InstructionOut\(15),
	datac => \RegInst|Output\(15),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \RegInst|Output\(15));

-- Location: LCCOMB_X22_Y17_N2
\ContrUnit|AluSrcA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|AluSrcA~0_combout\ = (\ContrUnit|NextStage.mov_i~q\) # (!\ContrUnit|RegWrite~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.mov_i~q\,
	datad => \ContrUnit|RegWrite~q\,
	combout => \ContrUnit|AluSrcA~0_combout\);

-- Location: FF_X21_Y16_N3
\ContrUnit|AluSrcA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \ContrUnit|AluSrcA~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|AluSrcA\(1));

-- Location: FF_X21_Y16_N27
\ContrUnit|MemToReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \ContrUnit|NextStage.mov~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|MemToReg~q\);

-- Location: LCCOMB_X22_Y17_N20
\MuxRegData|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~2_combout\ = (\ContrUnit|MemToReg~q\ & ((\RegAux|Output\(2)))) # (!\ContrUnit|MemToReg~q\ & (\Alu|Res\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(2),
	datac => \ContrUnit|MemToReg~q\,
	datad => \RegAux|Output\(2),
	combout => \MuxRegData|output~2_combout\);

-- Location: LCCOMB_X21_Y17_N12
\MuxRegData|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(2) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output~2_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output~2_combout\,
	datac => \Clock~inputclkctrl_outclk\,
	datad => \MuxRegData|output\(2),
	combout => \MuxRegData|output\(2));

-- Location: LCCOMB_X22_Y16_N20
\DataMem|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux4~0_combout\ = (\PC|Output\(0) & (!\PC|Output\(2) & \PC|Output\(1))) # (!\PC|Output\(0) & (\PC|Output\(2) & !\PC|Output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Output\(0),
	datac => \PC|Output\(2),
	datad => \PC|Output\(1),
	combout => \DataMem|Mux4~0_combout\);

-- Location: FF_X22_Y16_N21
\DataMem|InstructionOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(11));

-- Location: LCCOMB_X22_Y12_N26
\RegInst|Output[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(11) = (\RegInst|process_0~0_combout\ & (\DataMem|InstructionOut\(11))) # (!\RegInst|process_0~0_combout\ & ((\RegInst|Output\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMem|InstructionOut\(11),
	datac => \RegInst|process_0~0_combout\,
	datad => \RegInst|Output\(11),
	combout => \RegInst|Output\(11));

-- Location: LCCOMB_X22_Y16_N2
\DataMem|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux5~0_combout\ = (!\PC|Output\(1) & (\PC|Output\(0) $ (\PC|Output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Output\(0),
	datac => \PC|Output\(2),
	datad => \PC|Output\(1),
	combout => \DataMem|Mux5~0_combout\);

-- Location: FF_X22_Y16_N3
\DataMem|InstructionOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(10));

-- Location: LCCOMB_X22_Y12_N18
\RegInst|Output[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(10) = (\RegInst|process_0~0_combout\ & (\DataMem|InstructionOut\(10))) # (!\RegInst|process_0~0_combout\ & ((\RegInst|Output\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMem|InstructionOut\(10),
	datab => \RegInst|Output\(10),
	datac => \RegInst|process_0~0_combout\,
	combout => \RegInst|Output\(10));

-- Location: LCCOMB_X22_Y12_N30
\BancoReg|R0[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0[7]~0_combout\ = (!\ContrUnit|RegWrite~q\ & (\Clock~input_o\ & (!\RegInst|Output\(11) & !\RegInst|Output\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|RegWrite~q\,
	datab => \Clock~input_o\,
	datac => \RegInst|Output\(11),
	datad => \RegInst|Output\(10),
	combout => \BancoReg|R0[7]~0_combout\);

-- Location: CLKCTRL_G7
\BancoReg|R0[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BancoReg|R0[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BancoReg|R0[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y19_N12
\BancoReg|R0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(2) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\MuxRegData|output\(2)))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\BancoReg|R0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(2),
	datab => \MuxRegData|output\(2),
	datad => \BancoReg|R0[7]~0clkctrl_outclk\,
	combout => \BancoReg|R0\(2));

-- Location: LCCOMB_X22_Y12_N24
\BancoReg|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~1_combout\ = (!\ContrUnit|RegWrite~q\ & (\Clock~input_o\ & (\RegInst|Output\(11) & !\RegInst|Output\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|RegWrite~q\,
	datab => \Clock~input_o\,
	datac => \RegInst|Output\(11),
	datad => \RegInst|Output\(10),
	combout => \BancoReg|Mux33~1_combout\);

-- Location: CLKCTRL_G9
\BancoReg|Mux33~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BancoReg|Mux33~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BancoReg|Mux33~1clkctrl_outclk\);

-- Location: LCCOMB_X22_Y19_N20
\BancoReg|R2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(2) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(2))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(2),
	datac => \BancoReg|Mux33~1clkctrl_outclk\,
	datad => \BancoReg|R2\(2),
	combout => \BancoReg|R2\(2));

-- Location: LCCOMB_X22_Y16_N10
\DataMem|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux4~2_combout\ = (\PC|Output\(0) & \PC|Output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Output\(0),
	datad => \PC|Output\(1),
	combout => \DataMem|Mux4~2_combout\);

-- Location: FF_X22_Y16_N11
\DataMem|InstructionOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(9));

-- Location: LCCOMB_X23_Y17_N20
\RegInst|Output[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(9) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\DataMem|InstructionOut\(9))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\RegInst|Output\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataMem|InstructionOut\(9),
	datac => \RegInst|process_0~0clkctrl_outclk\,
	datad => \RegInst|Output\(9),
	combout => \RegInst|Output\(9));

-- Location: LCCOMB_X22_Y19_N4
\BancoReg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux5~0_combout\ = (\RegInst|Output\(9) & ((\BancoReg|R2\(2)))) # (!\RegInst|Output\(9) & (\BancoReg|R0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(2),
	datab => \BancoReg|R2\(2),
	datad => \RegInst|Output\(9),
	combout => \BancoReg|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y12_N20
\BancoReg|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|process_0~0_combout\ = (!\ContrUnit|RegWrite~q\ & \Clock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContrUnit|RegWrite~q\,
	datad => \Clock~input_o\,
	combout => \BancoReg|process_0~0_combout\);

-- Location: CLKCTRL_G5
\BancoReg|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BancoReg|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BancoReg|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y17_N16
\BancoReg|readData1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(2) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(2)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux5~0_combout\,
	datac => \BancoReg|process_0~0clkctrl_outclk\,
	datad => \BancoReg|readData1\(2),
	combout => \BancoReg|readData1\(2));

-- Location: FF_X29_Y12_N31
\ContrUnit|RegAuxWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	asdata => \ContrUnit|NextStage.decode~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|RegAuxWrite~q\);

-- Location: LCCOMB_X29_Y12_N30
\RegAux|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|process_0~0_combout\ = (\ContrUnit|RegAuxWrite~q\ & \Clock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContrUnit|RegAuxWrite~q\,
	datad => \Clock~input_o\,
	combout => \RegAux|process_0~0_combout\);

-- Location: CLKCTRL_G8
\RegAux|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RegAux|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RegAux|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y17_N22
\RegAux|Output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(2) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(2))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\RegAux|Output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|readData1\(2),
	datac => \RegAux|Output\(2),
	datad => \RegAux|process_0~0clkctrl_outclk\,
	combout => \RegAux|Output\(2));

-- Location: LCCOMB_X22_Y17_N10
\MuxUlaA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux5~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(2))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcA\(1),
	datab => \RegAux|Output\(2),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData1\(2),
	combout => \MuxUlaA|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\MuxUlaA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux5~1_combout\ = (\MuxUlaA|Mux5~0_combout\) # ((\ContrUnit|AluSrcA\(1) & (\ContrUnit|NextStage.decode~q\ & \PC|Output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcA\(1),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \PC|Output\(2),
	datad => \MuxUlaA|Mux5~0_combout\,
	combout => \MuxUlaA|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y17_N28
\MuxUlaA|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(2) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|Mux5~1_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxUlaA|output\(2),
	datac => \MuxUlaA|Mux5~1_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaA|output\(2));

-- Location: FF_X22_Y16_N9
\DataMem|InstructionOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PC|Output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(6));

-- Location: LCCOMB_X23_Y17_N16
\RegInst|Output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(6) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\DataMem|InstructionOut\(6))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\RegInst|Output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataMem|InstructionOut\(6),
	datac => \RegInst|process_0~0clkctrl_outclk\,
	datad => \RegInst|Output\(6),
	combout => \RegInst|Output\(6));

-- Location: LCCOMB_X22_Y12_N8
\BancoReg|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~0_combout\ = (!\ContrUnit|RegWrite~q\ & (\Clock~input_o\ & (!\RegInst|Output\(11) & \RegInst|Output\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|RegWrite~q\,
	datab => \Clock~input_o\,
	datac => \RegInst|Output\(11),
	datad => \RegInst|Output\(10),
	combout => \BancoReg|Mux33~0_combout\);

-- Location: CLKCTRL_G6
\BancoReg|Mux33~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BancoReg|Mux33~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BancoReg|Mux33~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y19_N28
\BancoReg|R1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(2) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\MuxRegData|output\(2))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\BancoReg|R1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(2),
	datac => \BancoReg|Mux33~0clkctrl_outclk\,
	datad => \BancoReg|R1\(2),
	combout => \BancoReg|R1\(2));

-- Location: LCCOMB_X22_Y19_N24
\BancoReg|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux13~0_combout\ = (\RegInst|Output\(6) & ((\BancoReg|R1\(2)))) # (!\RegInst|Output\(6) & (\BancoReg|R0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(2),
	datac => \RegInst|Output\(6),
	datad => \BancoReg|R1\(2),
	combout => \BancoReg|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\BancoReg|readData2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(2) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData2\(2)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux13~0_combout\,
	datac => \BancoReg|process_0~0clkctrl_outclk\,
	datad => \BancoReg|readData2\(2),
	combout => \BancoReg|readData2\(2));

-- Location: LCCOMB_X22_Y17_N24
\MuxUlaB|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux5~0_combout\ = (!\ContrUnit|AluSrcB\(0) & (!\ContrUnit|NextStage.decode~q\ & \BancoReg|readData2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData2\(2),
	combout => \MuxUlaB|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y17_N18
\MuxUlaB|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(2) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|Mux5~0_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxUlaB|output\(2),
	datac => \MuxUlaB|Mux5~0_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaB|output\(2));

-- Location: LCCOMB_X23_Y18_N18
\ContrUnit|AluControl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|AluControl~0_combout\ = (\RegInst|Output\(13) & ((\ContrUnit|NextStage.exec_i~q\) # (\ContrUnit|NextStage.exec~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContrUnit|NextStage.exec_i~q\,
	datac => \ContrUnit|NextStage.exec~q\,
	datad => \RegInst|Output\(13),
	combout => \ContrUnit|AluControl~0_combout\);

-- Location: FF_X23_Y18_N19
\ContrUnit|AluControl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|AluControl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|AluControl\(0));

-- Location: LCCOMB_X22_Y17_N8
\Alu|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~12_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaA|output\(2) & ((\MuxUlaB|output\(2)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaA|output\(2) & (\MuxUlaB|output\(2) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(2),
	datab => \MuxUlaB|output\(2),
	datac => \ContrUnit|AluControl\(1),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~12_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Alu|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~13_combout\ = \MuxUlaB|output\(2) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(2),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~13_combout\);

-- Location: LCCOMB_X21_Y16_N26
\MuxRegData|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~1_combout\ = (\ContrUnit|MemToReg~q\ & (\RegAux|Output\(1))) # (!\ContrUnit|MemToReg~q\ & ((\Alu|Res\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|Output\(1),
	datac => \ContrUnit|MemToReg~q\,
	datad => \Alu|Res\(1),
	combout => \MuxRegData|output~1_combout\);

-- Location: LCCOMB_X21_Y19_N2
\MuxRegData|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(1) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output~1_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output~1_combout\,
	datab => \MuxRegData|output\(1),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxRegData|output\(1));

-- Location: LCCOMB_X21_Y19_N30
\BancoReg|R2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(1) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(1))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(1),
	datac => \BancoReg|R2\(1),
	datad => \BancoReg|Mux33~1clkctrl_outclk\,
	combout => \BancoReg|R2\(1));

-- Location: LCCOMB_X24_Y18_N0
\BancoReg|R0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(1) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(1))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(1),
	datab => \BancoReg|R0\(1),
	datac => \BancoReg|R0[7]~0clkctrl_outclk\,
	combout => \BancoReg|R0\(1));

-- Location: LCCOMB_X21_Y19_N0
\BancoReg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux6~0_combout\ = (\RegInst|Output\(9) & (\BancoReg|R2\(1))) # (!\RegInst|Output\(9) & ((\BancoReg|R0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R2\(1),
	datac => \RegInst|Output\(9),
	datad => \BancoReg|R0\(1),
	combout => \BancoReg|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\BancoReg|readData1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(1) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(1)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux6~0_combout\,
	datac => \BancoReg|readData1\(1),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData1\(1));

-- Location: LCCOMB_X21_Y16_N8
\RegAux|Output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(1) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(1)))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\RegAux|Output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|Output\(1),
	datac => \BancoReg|readData1\(1),
	datad => \RegAux|process_0~0clkctrl_outclk\,
	combout => \RegAux|Output\(1));

-- Location: LCCOMB_X21_Y16_N18
\MuxUlaA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux6~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(1))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcA\(1),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \RegAux|Output\(1),
	datad => \BancoReg|readData1\(1),
	combout => \MuxUlaA|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\MuxUlaA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux6~1_combout\ = (\MuxUlaA|Mux6~0_combout\) # ((\ContrUnit|AluSrcA\(1) & (\ContrUnit|NextStage.decode~q\ & \PC|Output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcA\(1),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \PC|Output\(1),
	datad => \MuxUlaA|Mux6~0_combout\,
	combout => \MuxUlaA|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y18_N28
\MuxUlaA|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(1) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|Mux6~1_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock~inputclkctrl_outclk\,
	datac => \MuxUlaA|output\(1),
	datad => \MuxUlaA|Mux6~1_combout\,
	combout => \MuxUlaA|output\(1));

-- Location: LCCOMB_X24_Y17_N30
\BancoReg|R2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(0) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(0))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(0),
	datac => \BancoReg|R2\(0),
	datad => \BancoReg|Mux33~1clkctrl_outclk\,
	combout => \BancoReg|R2\(0));

-- Location: LCCOMB_X24_Y17_N24
\BancoReg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux7~0_combout\ = (\RegInst|Output\(9) & (\BancoReg|R2\(0))) # (!\RegInst|Output\(9) & ((\BancoReg|R0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R2\(0),
	datac => \BancoReg|R0\(0),
	datad => \RegInst|Output\(9),
	combout => \BancoReg|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y16_N24
\BancoReg|readData1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(0) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(0)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux7~0_combout\,
	datac => \BancoReg|process_0~0clkctrl_outclk\,
	datad => \BancoReg|readData1\(0),
	combout => \BancoReg|readData1\(0));

-- Location: LCCOMB_X24_Y16_N4
\RegAux|Output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(0) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(0)))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\RegAux|Output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|Output\(0),
	datac => \BancoReg|readData1\(0),
	datad => \RegAux|process_0~0clkctrl_outclk\,
	combout => \RegAux|Output\(0));

-- Location: LCCOMB_X24_Y16_N28
\MuxUlaA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux7~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(0))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.decode~q\,
	datab => \RegAux|Output\(0),
	datac => \ContrUnit|AluSrcA\(1),
	datad => \BancoReg|readData1\(0),
	combout => \MuxUlaA|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y16_N20
\MuxUlaA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux7~1_combout\ = (\MuxUlaA|Mux7~0_combout\) # ((\ContrUnit|NextStage.decode~q\ & (\PC|Output\(0) & \ContrUnit|AluSrcA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.decode~q\,
	datab => \PC|Output\(0),
	datac => \ContrUnit|AluSrcA\(1),
	datad => \MuxUlaA|Mux7~0_combout\,
	combout => \MuxUlaA|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y16_N14
\MuxUlaA|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(0) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|Mux7~1_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxUlaA|output\(0),
	datac => \Clock~inputclkctrl_outclk\,
	datad => \MuxUlaA|Mux7~1_combout\,
	combout => \MuxUlaA|output\(0));

-- Location: LCCOMB_X24_Y18_N8
\BancoReg|R1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(0) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\MuxRegData|output\(0))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\BancoReg|R1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(0),
	datac => \BancoReg|R1\(0),
	datad => \BancoReg|Mux33~0clkctrl_outclk\,
	combout => \BancoReg|R1\(0));

-- Location: LCCOMB_X23_Y17_N28
\BancoReg|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux15~0_combout\ = (\RegInst|Output\(6) & ((\BancoReg|R1\(0)))) # (!\RegInst|Output\(6) & (\BancoReg|R0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegInst|Output\(6),
	datac => \BancoReg|R0\(0),
	datad => \BancoReg|R1\(0),
	combout => \BancoReg|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\BancoReg|readData2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(0) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData2\(0)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux15~0_combout\,
	datac => \BancoReg|readData2\(0),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData2\(0));

-- Location: LCCOMB_X23_Y17_N4
\MuxUlaB|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux7~0_combout\ = (\ContrUnit|AluSrcB\(0) & (!\ContrUnit|NextStage.decode~q\ & ((\RegInst|Output\(12))))) # (!\ContrUnit|AluSrcB\(0) & ((\ContrUnit|NextStage.decode~q\) # ((\BancoReg|readData2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \BancoReg|readData2\(0),
	datad => \RegInst|Output\(12),
	combout => \MuxUlaB|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\MuxUlaB|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(0) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|Mux7~0_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaB|output\(0),
	datac => \MuxUlaB|Mux7~0_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaB|output\(0));

-- Location: LCCOMB_X22_Y18_N4
\Alu|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~1_combout\ = \MuxUlaB|output\(0) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(0),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~1_combout\);

-- Location: LCCOMB_X22_Y18_N8
\Alu|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~3_cout\ = CARRY(\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContrUnit|AluControl\(0),
	datad => VCC,
	cout => \Alu|Add0~3_cout\);

-- Location: LCCOMB_X22_Y18_N10
\Alu|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~4_combout\ = (\MuxUlaA|output\(0) & ((\Alu|Add0~1_combout\ & (\Alu|Add0~3_cout\ & VCC)) # (!\Alu|Add0~1_combout\ & (!\Alu|Add0~3_cout\)))) # (!\MuxUlaA|output\(0) & ((\Alu|Add0~1_combout\ & (!\Alu|Add0~3_cout\)) # (!\Alu|Add0~1_combout\ & 
-- ((\Alu|Add0~3_cout\) # (GND)))))
-- \Alu|Add0~5\ = CARRY((\MuxUlaA|output\(0) & (!\Alu|Add0~1_combout\ & !\Alu|Add0~3_cout\)) # (!\MuxUlaA|output\(0) & ((!\Alu|Add0~3_cout\) # (!\Alu|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(0),
	datab => \Alu|Add0~1_combout\,
	datad => VCC,
	cin => \Alu|Add0~3_cout\,
	combout => \Alu|Add0~4_combout\,
	cout => \Alu|Add0~5\);

-- Location: LCCOMB_X22_Y18_N12
\Alu|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~9_combout\ = ((\Alu|Add0~8_combout\ $ (\MuxUlaA|output\(1) $ (!\Alu|Add0~5\)))) # (GND)
-- \Alu|Add0~10\ = CARRY((\Alu|Add0~8_combout\ & ((\MuxUlaA|output\(1)) # (!\Alu|Add0~5\))) # (!\Alu|Add0~8_combout\ & (\MuxUlaA|output\(1) & !\Alu|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Add0~8_combout\,
	datab => \MuxUlaA|output\(1),
	datad => VCC,
	cin => \Alu|Add0~5\,
	combout => \Alu|Add0~9_combout\,
	cout => \Alu|Add0~10\);

-- Location: LCCOMB_X22_Y18_N14
\Alu|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~14_combout\ = (\MuxUlaA|output\(2) & ((\Alu|Add0~13_combout\ & (\Alu|Add0~10\ & VCC)) # (!\Alu|Add0~13_combout\ & (!\Alu|Add0~10\)))) # (!\MuxUlaA|output\(2) & ((\Alu|Add0~13_combout\ & (!\Alu|Add0~10\)) # (!\Alu|Add0~13_combout\ & 
-- ((\Alu|Add0~10\) # (GND)))))
-- \Alu|Add0~15\ = CARRY((\MuxUlaA|output\(2) & (!\Alu|Add0~13_combout\ & !\Alu|Add0~10\)) # (!\MuxUlaA|output\(2) & ((!\Alu|Add0~10\) # (!\Alu|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(2),
	datab => \Alu|Add0~13_combout\,
	datad => VCC,
	cin => \Alu|Add0~10\,
	combout => \Alu|Add0~14_combout\,
	cout => \Alu|Add0~15\);

-- Location: LCCOMB_X22_Y17_N26
\Alu|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~16_combout\ = (\Alu|Add0~12_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~12_combout\,
	datad => \Alu|Add0~14_combout\,
	combout => \Alu|Add0~16_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Alu|Res[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(2) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Add0~16_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Res\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(2),
	datac => \Alu|Add0~16_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(2));

-- Location: LCCOMB_X22_Y16_N26
\PC|Output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(2) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(2))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(2),
	datac => \PC|Output\(2),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \PC|Output\(2));

-- Location: LCCOMB_X22_Y16_N6
\DataMem|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux2~0_combout\ = (\PC|Output\(2) & !\PC|Output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Output\(2),
	datac => \PC|Output\(0),
	combout => \DataMem|Mux2~0_combout\);

-- Location: FF_X22_Y16_N7
\DataMem|InstructionOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(13));

-- Location: LCCOMB_X22_Y16_N0
\RegInst|Output[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(13) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\DataMem|InstructionOut\(13))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\RegInst|Output\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMem|InstructionOut\(13),
	datac => \RegInst|Output\(13),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \RegInst|Output\(13));

-- Location: LCCOMB_X22_Y16_N24
\ContrUnit|NextStage~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage~21_combout\ = (\ContrUnit|NextStage.decode~q\ & ((\RegInst|Output\(14)) # ((\RegInst|Output\(15)) # (\RegInst|Output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.decode~q\,
	datab => \RegInst|Output\(14),
	datac => \RegInst|Output\(15),
	datad => \RegInst|Output\(13),
	combout => \ContrUnit|NextStage~21_combout\);

-- Location: LCCOMB_X21_Y16_N20
\ContrUnit|NextStage~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage~22_combout\ = (!\RegInst|Output\(12) & \ContrUnit|NextStage~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegInst|Output\(12),
	datad => \ContrUnit|NextStage~21_combout\,
	combout => \ContrUnit|NextStage~22_combout\);

-- Location: FF_X21_Y16_N21
\ContrUnit|NextStage.exec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|NextStage~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|NextStage.exec~q\);

-- Location: LCCOMB_X21_Y16_N14
\ContrUnit|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|WideOr4~combout\ = (\ContrUnit|NextStage.exec_i~q\) # ((\ContrUnit|NextStage.exec~q\) # (\ContrUnit|NextStage.mov_i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.exec_i~q\,
	datab => \ContrUnit|NextStage.exec~q\,
	datad => \ContrUnit|NextStage.mov_i~q\,
	combout => \ContrUnit|WideOr4~combout\);

-- Location: FF_X21_Y16_N15
\ContrUnit|NextStage.complete\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|NextStage.complete~q\);

-- Location: LCCOMB_X22_Y12_N22
\ContrUnit|RegWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|RegWrite~0_combout\ = (!\ContrUnit|NextStage.mov~q\ & !\ContrUnit|NextStage.complete~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContrUnit|NextStage.mov~q\,
	datad => \ContrUnit|NextStage.complete~q\,
	combout => \ContrUnit|RegWrite~0_combout\);

-- Location: FF_X22_Y12_N23
\ContrUnit|RegWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ContrUnit|RegWrite~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|RegWrite~q\);

-- Location: LCCOMB_X22_Y12_N28
\ContrUnit|NextStage.decode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage.decode~0_combout\ = !\ContrUnit|RegWrite~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContrUnit|RegWrite~q\,
	combout => \ContrUnit|NextStage.decode~0_combout\);

-- Location: FF_X22_Y12_N29
\ContrUnit|NextStage.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ContrUnit|NextStage.decode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|NextStage.decode~q\);

-- Location: LCCOMB_X22_Y16_N22
\ContrUnit|NextStage~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage~18_combout\ = (\ContrUnit|NextStage.decode~q\ & (!\RegInst|Output\(15) & (!\RegInst|Output\(14) & !\RegInst|Output\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.decode~q\,
	datab => \RegInst|Output\(15),
	datac => \RegInst|Output\(14),
	datad => \RegInst|Output\(13),
	combout => \ContrUnit|NextStage~18_combout\);

-- Location: LCCOMB_X22_Y16_N12
\ContrUnit|NextStage~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage~20_combout\ = (\RegInst|Output\(12) & \ContrUnit|NextStage~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegInst|Output\(12),
	datad => \ContrUnit|NextStage~18_combout\,
	combout => \ContrUnit|NextStage~20_combout\);

-- Location: FF_X22_Y16_N13
\ContrUnit|NextStage.mov_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|NextStage~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|NextStage.mov_i~q\);

-- Location: LCCOMB_X22_Y17_N12
\ContrUnit|AluSrcB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|AluSrcB~0_combout\ = (\ContrUnit|NextStage.exec_i~q\) # (\ContrUnit|NextStage.mov_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ContrUnit|NextStage.exec_i~q\,
	datad => \ContrUnit|NextStage.mov_i~q\,
	combout => \ContrUnit|AluSrcB~0_combout\);

-- Location: FF_X22_Y17_N13
\ContrUnit|AluSrcB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|AluSrcB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|AluSrcB\(0));

-- Location: LCCOMB_X24_Y18_N18
\BancoReg|R1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(1) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\MuxRegData|output\(1))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\BancoReg|R1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(1),
	datab => \BancoReg|R1\(1),
	datad => \BancoReg|Mux33~0clkctrl_outclk\,
	combout => \BancoReg|R1\(1));

-- Location: LCCOMB_X23_Y17_N26
\BancoReg|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux14~0_combout\ = (\RegInst|Output\(6) & ((\BancoReg|R1\(1)))) # (!\RegInst|Output\(6) & (\BancoReg|R0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegInst|Output\(6),
	datac => \BancoReg|R0\(1),
	datad => \BancoReg|R1\(1),
	combout => \BancoReg|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\BancoReg|readData2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(1) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData2\(1)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux14~0_combout\,
	datab => \BancoReg|readData2\(1),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData2\(1));

-- Location: LCCOMB_X23_Y17_N22
\MuxUlaB|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux6~0_combout\ = (!\ContrUnit|AluSrcB\(0) & (!\ContrUnit|NextStage.decode~q\ & \BancoReg|readData2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData2\(1),
	combout => \MuxUlaB|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\MuxUlaB|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(1) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|Mux6~0_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaB|Mux6~0_combout\,
	datac => \MuxUlaB|output\(1),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaB|output\(1));

-- Location: LCCOMB_X22_Y18_N6
\Alu|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~8_combout\ = \MuxUlaB|output\(1) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(1),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~8_combout\);

-- Location: LCCOMB_X21_Y18_N2
\Alu|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~7_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaB|output\(1) & ((\MuxUlaA|output\(1)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaB|output\(1) & (\MuxUlaA|output\(1) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaB|output\(1),
	datab => \MuxUlaA|output\(1),
	datac => \ContrUnit|AluControl\(0),
	datad => \ContrUnit|AluControl\(1),
	combout => \Alu|Add0~7_combout\);

-- Location: LCCOMB_X21_Y18_N24
\Alu|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~11_combout\ = (\Alu|Add0~7_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~9_combout\,
	datad => \Alu|Add0~7_combout\,
	combout => \Alu|Add0~11_combout\);

-- Location: LCCOMB_X21_Y18_N22
\Alu|Res[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(1) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Add0~11_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Res\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(1),
	datab => \Alu|Add0~11_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(1));

-- Location: LCCOMB_X22_Y16_N8
\PC|Output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(1) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(1))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(1),
	datac => \PC|Output\(1),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \PC|Output\(1));

-- Location: LCCOMB_X22_Y16_N16
\DataMem|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataMem|Mux4~1_combout\ = (!\PC|Output\(1) & !\PC|Output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Output\(1),
	datac => \PC|Output\(0),
	combout => \DataMem|Mux4~1_combout\);

-- Location: FF_X22_Y16_N17
\DataMem|InstructionOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DataMem|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataMem|InstructionOut\(0));

-- Location: LCCOMB_X22_Y16_N30
\RegInst|Output[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegInst|Output\(12) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\DataMem|InstructionOut\(0))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\RegInst|Output\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMem|InstructionOut\(0),
	datac => \RegInst|Output\(12),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \RegInst|Output\(12));

-- Location: LCCOMB_X21_Y16_N30
\ContrUnit|NextStage~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|NextStage~23_combout\ = (\RegInst|Output\(12) & \ContrUnit|NextStage~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegInst|Output\(12),
	datad => \ContrUnit|NextStage~21_combout\,
	combout => \ContrUnit|NextStage~23_combout\);

-- Location: FF_X21_Y16_N31
\ContrUnit|NextStage.exec_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|NextStage~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|NextStage.exec_i~q\);

-- Location: LCCOMB_X22_Y17_N14
\ContrUnit|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ContrUnit|Selector0~0_combout\ = (\ContrUnit|AluSrcA~0_combout\) # ((\RegInst|Output\(14) & ((\ContrUnit|NextStage.exec_i~q\) # (\ContrUnit|NextStage.exec~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.exec_i~q\,
	datab => \ContrUnit|NextStage.exec~q\,
	datac => \RegInst|Output\(14),
	datad => \ContrUnit|AluSrcA~0_combout\,
	combout => \ContrUnit|Selector0~0_combout\);

-- Location: FF_X22_Y17_N15
\ContrUnit|AluControl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ContrUnit|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContrUnit|AluControl\(1));

-- Location: LCCOMB_X23_Y16_N28
\Alu|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~0_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaB|output\(0) & ((\MuxUlaA|output\(0)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaB|output\(0) & (\MuxUlaA|output\(0) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaB|output\(0),
	datab => \ContrUnit|AluControl\(1),
	datac => \MuxUlaA|output\(0),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\Alu|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~6_combout\ = (\Alu|Add0~0_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~4_combout\,
	datad => \Alu|Add0~0_combout\,
	combout => \Alu|Add0~6_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Alu|Res[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(0) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Add0~6_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Res\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Add0~6_combout\,
	datac => \Alu|Res\(0),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(0));

-- Location: LCCOMB_X23_Y16_N16
\MuxRegData|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~0_combout\ = (\ContrUnit|MemToReg~q\ & ((\RegAux|Output\(0)))) # (!\ContrUnit|MemToReg~q\ & (\Alu|Res\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(0),
	datac => \RegAux|Output\(0),
	datad => \ContrUnit|MemToReg~q\,
	combout => \MuxRegData|output~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\MuxRegData|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(0) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output~0_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output~0_combout\,
	datac => \MuxRegData|output\(0),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxRegData|output\(0));

-- Location: LCCOMB_X24_Y18_N30
\BancoReg|R0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(0) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(0))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(0),
	datac => \BancoReg|R0[7]~0clkctrl_outclk\,
	datad => \BancoReg|R0\(0),
	combout => \BancoReg|R0\(0));

-- Location: LCCOMB_X22_Y19_N14
\BancoReg|R2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(3) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(3))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(3),
	datac => \BancoReg|R2\(3),
	datad => \BancoReg|Mux33~1clkctrl_outclk\,
	combout => \BancoReg|R2\(3));

-- Location: LCCOMB_X22_Y19_N2
\BancoReg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux4~0_combout\ = (\RegInst|Output\(9) & ((\BancoReg|R2\(3)))) # (!\RegInst|Output\(9) & (\BancoReg|R0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(3),
	datac => \BancoReg|R2\(3),
	datad => \RegInst|Output\(9),
	combout => \BancoReg|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y16_N6
\BancoReg|readData1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(3) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(3))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|readData1\(3),
	datac => \BancoReg|Mux4~0_combout\,
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData1\(3));

-- Location: LCCOMB_X24_Y16_N26
\RegAux|Output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(3) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(3))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\RegAux|Output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData1\(3),
	datac => \RegAux|Output\(3),
	datad => \RegAux|process_0~0clkctrl_outclk\,
	combout => \RegAux|Output\(3));

-- Location: LCCOMB_X23_Y16_N10
\PC|Output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(3) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(3))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(3),
	datac => \RegInst|process_0~0clkctrl_outclk\,
	datad => \PC|Output\(3),
	combout => \PC|Output\(3));

-- Location: LCCOMB_X23_Y16_N18
\MuxUlaA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux4~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(3))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|Output\(3),
	datab => \ContrUnit|AluSrcA\(1),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData1\(3),
	combout => \MuxUlaA|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\MuxUlaA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux4~1_combout\ = (\MuxUlaA|Mux4~0_combout\) # ((\PC|Output\(3) & (\ContrUnit|AluSrcA\(1) & \ContrUnit|NextStage.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Output\(3),
	datab => \ContrUnit|AluSrcA\(1),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \MuxUlaA|Mux4~0_combout\,
	combout => \MuxUlaA|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y16_N4
\MuxUlaA|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(3) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|Mux4~1_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|Mux4~1_combout\,
	datac => \MuxUlaA|output\(3),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaA|output\(3));

-- Location: LCCOMB_X22_Y19_N18
\BancoReg|R1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(3) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\MuxRegData|output\(3))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\BancoReg|R1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(3),
	datac => \BancoReg|Mux33~0clkctrl_outclk\,
	datad => \BancoReg|R1\(3),
	combout => \BancoReg|R1\(3));

-- Location: LCCOMB_X22_Y19_N10
\BancoReg|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux12~0_combout\ = (\RegInst|Output\(6) & ((\BancoReg|R1\(3)))) # (!\RegInst|Output\(6) & (\BancoReg|R0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(3),
	datab => \BancoReg|R1\(3),
	datac => \RegInst|Output\(6),
	combout => \BancoReg|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y17_N18
\BancoReg|readData2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(3) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|readData2\(3))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData2\(3),
	datac => \BancoReg|Mux12~0_combout\,
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData2\(3));

-- Location: LCCOMB_X23_Y17_N8
\MuxUlaB|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux4~0_combout\ = (!\ContrUnit|AluSrcB\(0) & (!\ContrUnit|NextStage.decode~q\ & \BancoReg|readData2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData2\(3),
	combout => \MuxUlaB|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\MuxUlaB|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(3) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|Mux4~0_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxUlaB|Mux4~0_combout\,
	datac => \Clock~inputclkctrl_outclk\,
	datad => \MuxUlaB|output\(3),
	combout => \MuxUlaB|output\(3));

-- Location: LCCOMB_X23_Y18_N16
\Alu|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~18_combout\ = \MuxUlaB|output\(3) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(3),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~18_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Alu|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~19_combout\ = ((\MuxUlaA|output\(3) $ (\Alu|Add0~18_combout\ $ (!\Alu|Add0~15\)))) # (GND)
-- \Alu|Add0~20\ = CARRY((\MuxUlaA|output\(3) & ((\Alu|Add0~18_combout\) # (!\Alu|Add0~15\))) # (!\MuxUlaA|output\(3) & (\Alu|Add0~18_combout\ & !\Alu|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(3),
	datab => \Alu|Add0~18_combout\,
	datad => VCC,
	cin => \Alu|Add0~15\,
	combout => \Alu|Add0~19_combout\,
	cout => \Alu|Add0~20\);

-- Location: LCCOMB_X23_Y16_N24
\Alu|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~17_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaB|output\(3) & ((\MuxUlaA|output\(3)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaB|output\(3) & (\MuxUlaA|output\(3) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaB|output\(3),
	datab => \MuxUlaA|output\(3),
	datac => \ContrUnit|AluControl\(1),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~17_combout\);

-- Location: LCCOMB_X23_Y16_N22
\Alu|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~21_combout\ = (\Alu|Add0~17_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~19_combout\,
	datad => \Alu|Add0~17_combout\,
	combout => \Alu|Add0~21_combout\);

-- Location: LCCOMB_X23_Y16_N8
\Alu|Res[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(3) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Add0~21_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Res\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(3),
	datac => \Alu|Add0~21_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(3));

-- Location: LCCOMB_X23_Y16_N30
\MuxRegData|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~3_combout\ = (\ContrUnit|MemToReg~q\ & (\RegAux|Output\(3))) # (!\ContrUnit|MemToReg~q\ & ((\Alu|Res\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|Output\(3),
	datac => \Alu|Res\(3),
	datad => \ContrUnit|MemToReg~q\,
	combout => \MuxRegData|output~3_combout\);

-- Location: LCCOMB_X23_Y19_N26
\MuxRegData|output[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(3) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output~3_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output~3_combout\,
	datac => \MuxRegData|output\(3),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxRegData|output\(3));

-- Location: LCCOMB_X22_Y19_N22
\BancoReg|R0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(3) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(3))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(3),
	datac => \BancoReg|R0\(3),
	datad => \BancoReg|R0[7]~0clkctrl_outclk\,
	combout => \BancoReg|R0\(3));

-- Location: LCCOMB_X19_Y19_N4
\BancoReg|R2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(4) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(4))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(4),
	datac => \BancoReg|R2\(4),
	datad => \BancoReg|Mux33~1clkctrl_outclk\,
	combout => \BancoReg|R2\(4));

-- Location: LCCOMB_X19_Y18_N30
\BancoReg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux3~0_combout\ = (\RegInst|Output\(9) & ((\BancoReg|R2\(4)))) # (!\RegInst|Output\(9) & (\BancoReg|R0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(4),
	datac => \BancoReg|R2\(4),
	datad => \RegInst|Output\(9),
	combout => \BancoReg|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\BancoReg|readData1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(4) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(4)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux3~0_combout\,
	datac => \BancoReg|readData1\(4),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData1\(4));

-- Location: LCCOMB_X21_Y18_N20
\RegAux|Output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(4) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(4))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\RegAux|Output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData1\(4),
	datac => \RegAux|process_0~0clkctrl_outclk\,
	datad => \RegAux|Output\(4),
	combout => \RegAux|Output\(4));

-- Location: LCCOMB_X21_Y18_N30
\PC|Output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(4) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(4))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(4),
	datac => \PC|Output\(4),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \PC|Output\(4));

-- Location: LCCOMB_X21_Y18_N16
\MuxUlaA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux3~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(4))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcA\(1),
	datab => \RegAux|Output\(4),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData1\(4),
	combout => \MuxUlaA|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y18_N10
\MuxUlaA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux3~1_combout\ = (\MuxUlaA|Mux3~0_combout\) # ((\ContrUnit|AluSrcA\(1) & (\ContrUnit|NextStage.decode~q\ & \PC|Output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcA\(1),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \PC|Output\(4),
	datad => \MuxUlaA|Mux3~0_combout\,
	combout => \MuxUlaA|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y18_N12
\MuxUlaA|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(4) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|Mux3~1_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(4),
	datab => \Clock~inputclkctrl_outclk\,
	datad => \MuxUlaA|Mux3~1_combout\,
	combout => \MuxUlaA|output\(4));

-- Location: LCCOMB_X19_Y18_N10
\BancoReg|R1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(4) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\MuxRegData|output\(4)))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\BancoReg|R1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R1\(4),
	datab => \MuxRegData|output\(4),
	datad => \BancoReg|Mux33~0clkctrl_outclk\,
	combout => \BancoReg|R1\(4));

-- Location: LCCOMB_X19_Y18_N22
\BancoReg|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux11~0_combout\ = (\RegInst|Output\(6) & (\BancoReg|R1\(4))) # (!\RegInst|Output\(6) & ((\BancoReg|R0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R1\(4),
	datac => \RegInst|Output\(6),
	datad => \BancoReg|R0\(4),
	combout => \BancoReg|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\BancoReg|readData2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(4) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|readData2\(4))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData2\(4),
	datac => \BancoReg|Mux11~0_combout\,
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData2\(4));

-- Location: LCCOMB_X21_Y18_N26
\MuxUlaB|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux3~0_combout\ = (!\ContrUnit|NextStage.decode~q\ & (!\ContrUnit|AluSrcB\(0) & \BancoReg|readData2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|NextStage.decode~q\,
	datac => \ContrUnit|AluSrcB\(0),
	datad => \BancoReg|readData2\(4),
	combout => \MuxUlaB|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y18_N18
\MuxUlaB|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(4) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|Mux3~0_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock~inputclkctrl_outclk\,
	datac => \MuxUlaB|output\(4),
	datad => \MuxUlaB|Mux3~0_combout\,
	combout => \MuxUlaB|output\(4));

-- Location: LCCOMB_X21_Y18_N6
\Alu|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~22_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaA|output\(4) & ((\MuxUlaB|output\(4)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaA|output\(4) & (\MuxUlaB|output\(4) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(4),
	datab => \MuxUlaB|output\(4),
	datac => \ContrUnit|AluControl\(0),
	datad => \ContrUnit|AluControl\(1),
	combout => \Alu|Add0~22_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Alu|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~23_combout\ = \MuxUlaB|output\(4) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(4),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~23_combout\);

-- Location: LCCOMB_X22_Y18_N18
\Alu|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~24_combout\ = (\MuxUlaA|output\(4) & ((\Alu|Add0~23_combout\ & (\Alu|Add0~20\ & VCC)) # (!\Alu|Add0~23_combout\ & (!\Alu|Add0~20\)))) # (!\MuxUlaA|output\(4) & ((\Alu|Add0~23_combout\ & (!\Alu|Add0~20\)) # (!\Alu|Add0~23_combout\ & 
-- ((\Alu|Add0~20\) # (GND)))))
-- \Alu|Add0~25\ = CARRY((\MuxUlaA|output\(4) & (!\Alu|Add0~23_combout\ & !\Alu|Add0~20\)) # (!\MuxUlaA|output\(4) & ((!\Alu|Add0~20\) # (!\Alu|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(4),
	datab => \Alu|Add0~23_combout\,
	datad => VCC,
	cin => \Alu|Add0~20\,
	combout => \Alu|Add0~24_combout\,
	cout => \Alu|Add0~25\);

-- Location: LCCOMB_X21_Y18_N8
\Alu|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~26_combout\ = (\Alu|Add0~22_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~22_combout\,
	datad => \Alu|Add0~24_combout\,
	combout => \Alu|Add0~26_combout\);

-- Location: LCCOMB_X21_Y18_N14
\Alu|Res[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(4) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Add0~26_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Res\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(4),
	datac => \Alu|Add0~26_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(4));

-- Location: LCCOMB_X21_Y18_N4
\MuxRegData|output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~4_combout\ = (\ContrUnit|MemToReg~q\ & (\RegAux|Output\(4))) # (!\ContrUnit|MemToReg~q\ & ((\Alu|Res\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegAux|Output\(4),
	datac => \Alu|Res\(4),
	datad => \ContrUnit|MemToReg~q\,
	combout => \MuxRegData|output~4_combout\);

-- Location: LCCOMB_X21_Y18_N0
\MuxRegData|output[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(4) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output~4_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(4),
	datac => \MuxRegData|output~4_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxRegData|output\(4));

-- Location: LCCOMB_X19_Y18_N6
\BancoReg|R0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(4) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(4))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(4),
	datac => \BancoReg|R0[7]~0clkctrl_outclk\,
	datad => \BancoReg|R0\(4),
	combout => \BancoReg|R0\(4));

-- Location: LCCOMB_X18_Y18_N8
\PC|Output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(5) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(5))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(5),
	datab => \PC|Output\(5),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \PC|Output\(5));

-- Location: LCCOMB_X18_Y19_N4
\BancoReg|R2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(5) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(5))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(5),
	datac => \BancoReg|R2\(5),
	datad => \BancoReg|Mux33~1clkctrl_outclk\,
	combout => \BancoReg|R2\(5));

-- Location: LCCOMB_X19_Y18_N20
\BancoReg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux2~0_combout\ = (\RegInst|Output\(9) & ((\BancoReg|R2\(5)))) # (!\RegInst|Output\(9) & (\BancoReg|R0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(5),
	datac => \BancoReg|R2\(5),
	datad => \RegInst|Output\(9),
	combout => \BancoReg|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\BancoReg|readData1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(5) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(5)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux2~0_combout\,
	datac => \BancoReg|readData1\(5),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData1\(5));

-- Location: LCCOMB_X18_Y18_N10
\RegAux|Output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(5) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(5))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\RegAux|Output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData1\(5),
	datac => \RegAux|process_0~0clkctrl_outclk\,
	datad => \RegAux|Output\(5),
	combout => \RegAux|Output\(5));

-- Location: LCCOMB_X18_Y18_N12
\MuxUlaA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux2~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(5))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|Output\(5),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \ContrUnit|AluSrcA\(1),
	datad => \BancoReg|readData1\(5),
	combout => \MuxUlaA|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y18_N30
\MuxUlaA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux2~1_combout\ = (\MuxUlaA|Mux2~0_combout\) # ((\PC|Output\(5) & (\ContrUnit|NextStage.decode~q\ & \ContrUnit|AluSrcA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Output\(5),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \ContrUnit|AluSrcA\(1),
	datad => \MuxUlaA|Mux2~0_combout\,
	combout => \MuxUlaA|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y18_N22
\MuxUlaA|output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(5) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|Mux2~1_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(5),
	datac => \MuxUlaA|Mux2~1_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaA|output\(5));

-- Location: LCCOMB_X19_Y18_N4
\BancoReg|R1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(5) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\MuxRegData|output\(5))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\BancoReg|R1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(5),
	datac => \BancoReg|R1\(5),
	datad => \BancoReg|Mux33~0clkctrl_outclk\,
	combout => \BancoReg|R1\(5));

-- Location: LCCOMB_X19_Y18_N28
\BancoReg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux10~0_combout\ = (\RegInst|Output\(6) & ((\BancoReg|R1\(5)))) # (!\RegInst|Output\(6) & (\BancoReg|R0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R0\(5),
	datac => \BancoReg|R1\(5),
	datad => \RegInst|Output\(6),
	combout => \BancoReg|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\BancoReg|readData2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(5) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData2\(5)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux10~0_combout\,
	datac => \BancoReg|readData2\(5),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData2\(5));

-- Location: LCCOMB_X18_Y18_N14
\MuxUlaB|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux2~0_combout\ = (!\ContrUnit|AluSrcB\(0) & (!\ContrUnit|NextStage.decode~q\ & \BancoReg|readData2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \BancoReg|readData2\(5),
	combout => \MuxUlaB|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y18_N20
\MuxUlaB|output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(5) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|Mux2~0_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxUlaB|output\(5),
	datac => \MuxUlaB|Mux2~0_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxUlaB|output\(5));

-- Location: LCCOMB_X19_Y18_N16
\Alu|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~27_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaA|output\(5) & ((\MuxUlaB|output\(5)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaA|output\(5) & (\MuxUlaB|output\(5) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(5),
	datab => \MuxUlaB|output\(5),
	datac => \ContrUnit|AluControl\(1),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~27_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Alu|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~28_combout\ = \MuxUlaB|output\(5) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaB|output\(5),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~28_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Alu|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~29_combout\ = ((\MuxUlaA|output\(5) $ (\Alu|Add0~28_combout\ $ (!\Alu|Add0~25\)))) # (GND)
-- \Alu|Add0~30\ = CARRY((\MuxUlaA|output\(5) & ((\Alu|Add0~28_combout\) # (!\Alu|Add0~25\))) # (!\MuxUlaA|output\(5) & (\Alu|Add0~28_combout\ & !\Alu|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(5),
	datab => \Alu|Add0~28_combout\,
	datad => VCC,
	cin => \Alu|Add0~25\,
	combout => \Alu|Add0~29_combout\,
	cout => \Alu|Add0~30\);

-- Location: LCCOMB_X22_Y18_N26
\Alu|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~31_combout\ = (\Alu|Add0~27_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~27_combout\,
	datad => \Alu|Add0~29_combout\,
	combout => \Alu|Add0~31_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Alu|Res[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(5) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Add0~31_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Res\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(5),
	datac => \Alu|Add0~31_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(5));

-- Location: LCCOMB_X18_Y18_N28
\MuxRegData|output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~5_combout\ = (\ContrUnit|MemToReg~q\ & ((\RegAux|Output\(5)))) # (!\ContrUnit|MemToReg~q\ & (\Alu|Res\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(5),
	datac => \ContrUnit|MemToReg~q\,
	datad => \RegAux|Output\(5),
	combout => \MuxRegData|output~5_combout\);

-- Location: LCCOMB_X18_Y18_N4
\MuxRegData|output[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(5) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output~5_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output~5_combout\,
	datac => \MuxRegData|output\(5),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxRegData|output\(5));

-- Location: LCCOMB_X19_Y18_N12
\BancoReg|R0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(5) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(5))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(5),
	datac => \BancoReg|R0[7]~0clkctrl_outclk\,
	datad => \BancoReg|R0\(5),
	combout => \BancoReg|R0\(5));

-- Location: LCCOMB_X24_Y19_N4
\BancoReg|R2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(6) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(6))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(6),
	datac => \BancoReg|R2\(6),
	datad => \BancoReg|Mux33~1clkctrl_outclk\,
	combout => \BancoReg|R2\(6));

-- Location: LCCOMB_X24_Y18_N12
\BancoReg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux1~0_combout\ = (\RegInst|Output\(9) & ((\BancoReg|R2\(6)))) # (!\RegInst|Output\(9) & (\BancoReg|R0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|R0\(6),
	datac => \RegInst|Output\(9),
	datad => \BancoReg|R2\(6),
	combout => \BancoReg|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\BancoReg|readData1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(6) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(6)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux1~0_combout\,
	datab => \BancoReg|process_0~0clkctrl_outclk\,
	datad => \BancoReg|readData1\(6),
	combout => \BancoReg|readData1\(6));

-- Location: LCCOMB_X23_Y18_N10
\RegAux|Output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(6) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(6))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\RegAux|Output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData1\(6),
	datac => \RegAux|process_0~0clkctrl_outclk\,
	datad => \RegAux|Output\(6),
	combout => \RegAux|Output\(6));

-- Location: LCCOMB_X23_Y18_N22
\PC|Output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(6) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(6))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(6),
	datac => \PC|Output\(6),
	datad => \RegInst|process_0~0clkctrl_outclk\,
	combout => \PC|Output\(6));

-- Location: LCCOMB_X23_Y18_N6
\MuxUlaA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux1~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(6))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|Output\(6),
	datab => \ContrUnit|AluSrcA\(1),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData1\(6),
	combout => \MuxUlaA|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\MuxUlaA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux1~1_combout\ = (\MuxUlaA|Mux1~0_combout\) # ((\PC|Output\(6) & (\ContrUnit|AluSrcA\(1) & \ContrUnit|NextStage.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Output\(6),
	datab => \ContrUnit|AluSrcA\(1),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \MuxUlaA|Mux1~0_combout\,
	combout => \MuxUlaA|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\MuxUlaA|output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(6) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|Mux1~1_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock~inputclkctrl_outclk\,
	datac => \MuxUlaA|output\(6),
	datad => \MuxUlaA|Mux1~1_combout\,
	combout => \MuxUlaA|output\(6));

-- Location: LCCOMB_X24_Y18_N4
\BancoReg|R1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(6) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\MuxRegData|output\(6))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\BancoReg|R1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(6),
	datac => \BancoReg|R1\(6),
	datad => \BancoReg|Mux33~0clkctrl_outclk\,
	combout => \BancoReg|R1\(6));

-- Location: LCCOMB_X24_Y18_N26
\BancoReg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux9~0_combout\ = (\RegInst|Output\(6) & (\BancoReg|R1\(6))) # (!\RegInst|Output\(6) & ((\BancoReg|R0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|R1\(6),
	datac => \RegInst|Output\(6),
	datad => \BancoReg|R0\(6),
	combout => \BancoReg|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\BancoReg|readData2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(6) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData2\(6)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux9~0_combout\,
	datab => \BancoReg|process_0~0clkctrl_outclk\,
	datad => \BancoReg|readData2\(6),
	combout => \BancoReg|readData2\(6));

-- Location: LCCOMB_X23_Y18_N4
\MuxUlaB|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux1~0_combout\ = (!\ContrUnit|NextStage.decode~q\ & ((\ContrUnit|AluSrcB\(0) & (\RegInst|Output\(6))) # (!\ContrUnit|AluSrcB\(0) & ((\BancoReg|readData2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \RegInst|Output\(6),
	datad => \BancoReg|readData2\(6),
	combout => \MuxUlaB|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\MuxUlaB|output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(6) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|Mux1~0_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock~inputclkctrl_outclk\,
	datac => \MuxUlaB|output\(6),
	datad => \MuxUlaB|Mux1~0_combout\,
	combout => \MuxUlaB|output\(6));

-- Location: LCCOMB_X23_Y18_N30
\Alu|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~32_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaA|output\(6) & ((\MuxUlaB|output\(6)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaA|output\(6) & (\MuxUlaB|output\(6) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluControl\(1),
	datab => \MuxUlaA|output\(6),
	datac => \MuxUlaB|output\(6),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~32_combout\);

-- Location: LCCOMB_X23_Y18_N12
\Alu|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~33_combout\ = \MuxUlaB|output\(6) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(6),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~33_combout\);

-- Location: LCCOMB_X22_Y18_N22
\Alu|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~34_combout\ = (\MuxUlaA|output\(6) & ((\Alu|Add0~33_combout\ & (\Alu|Add0~30\ & VCC)) # (!\Alu|Add0~33_combout\ & (!\Alu|Add0~30\)))) # (!\MuxUlaA|output\(6) & ((\Alu|Add0~33_combout\ & (!\Alu|Add0~30\)) # (!\Alu|Add0~33_combout\ & 
-- ((\Alu|Add0~30\) # (GND)))))
-- \Alu|Add0~35\ = CARRY((\MuxUlaA|output\(6) & (!\Alu|Add0~33_combout\ & !\Alu|Add0~30\)) # (!\MuxUlaA|output\(6) & ((!\Alu|Add0~30\) # (!\Alu|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(6),
	datab => \Alu|Add0~33_combout\,
	datad => VCC,
	cin => \Alu|Add0~30\,
	combout => \Alu|Add0~34_combout\,
	cout => \Alu|Add0~35\);

-- Location: LCCOMB_X23_Y18_N26
\Alu|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~36_combout\ = (\Alu|Add0~32_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluControl\(1),
	datac => \Alu|Add0~32_combout\,
	datad => \Alu|Add0~34_combout\,
	combout => \Alu|Add0~36_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Alu|Res[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(6) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Add0~36_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Res\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Add0~36_combout\,
	datab => \Alu|Res\(6),
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(6));

-- Location: LCCOMB_X23_Y18_N20
\MuxRegData|output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~6_combout\ = (\ContrUnit|MemToReg~q\ & (\RegAux|Output\(6))) # (!\ContrUnit|MemToReg~q\ & ((\Alu|Res\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|Output\(6),
	datab => \Alu|Res\(6),
	datad => \ContrUnit|MemToReg~q\,
	combout => \MuxRegData|output~6_combout\);

-- Location: LCCOMB_X25_Y18_N12
\MuxRegData|output[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(6) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output~6_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(6),
	datac => \MuxRegData|output~6_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \MuxRegData|output\(6));

-- Location: LCCOMB_X24_Y18_N2
\BancoReg|R0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(6) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(6))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(6),
	datac => \BancoReg|R0[7]~0clkctrl_outclk\,
	datad => \BancoReg|R0\(6),
	combout => \BancoReg|R0\(6));

-- Location: LCCOMB_X19_Y16_N28
\PC|Output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Output\(7) = (GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & (\Alu|Res\(7))) # (!GLOBAL(\RegInst|process_0~0clkctrl_outclk\) & ((\PC|Output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(7),
	datac => \RegInst|process_0~0clkctrl_outclk\,
	datad => \PC|Output\(7),
	combout => \PC|Output\(7));

-- Location: LCCOMB_X25_Y19_N28
\BancoReg|R2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R2\(7) = (GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & (\MuxRegData|output\(7))) # (!GLOBAL(\BancoReg|Mux33~1clkctrl_outclk\) & ((\BancoReg|R2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(7),
	datac => \BancoReg|Mux33~1clkctrl_outclk\,
	datad => \BancoReg|R2\(7),
	combout => \BancoReg|R2\(7));

-- Location: LCCOMB_X25_Y19_N4
\BancoReg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux0~0_combout\ = (\RegInst|Output\(9) & (\BancoReg|R2\(7))) # (!\RegInst|Output\(9) & ((\BancoReg|R0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|R2\(7),
	datac => \BancoReg|R0\(7),
	datad => \RegInst|Output\(9),
	combout => \BancoReg|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
\BancoReg|readData1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData1\(7) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|readData1\(7))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|readData1\(7),
	datac => \BancoReg|Mux0~0_combout\,
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData1\(7));

-- Location: LCCOMB_X21_Y16_N12
\RegAux|Output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegAux|Output\(7) = (GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & ((\BancoReg|readData1\(7)))) # (!GLOBAL(\RegAux|process_0~0clkctrl_outclk\) & (\RegAux|Output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|Output\(7),
	datab => \BancoReg|readData1\(7),
	datad => \RegAux|process_0~0clkctrl_outclk\,
	combout => \RegAux|Output\(7));

-- Location: LCCOMB_X21_Y16_N28
\MuxUlaA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux0~0_combout\ = (!\ContrUnit|AluSrcA\(1) & ((\ContrUnit|NextStage.decode~q\ & (\RegAux|Output\(7))) # (!\ContrUnit|NextStage.decode~q\ & ((\BancoReg|readData1\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegAux|Output\(7),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \ContrUnit|AluSrcA\(1),
	datad => \BancoReg|readData1\(7),
	combout => \MuxUlaA|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y16_N22
\MuxUlaA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|Mux0~1_combout\ = (\MuxUlaA|Mux0~0_combout\) # ((\PC|Output\(7) & (\ContrUnit|NextStage.decode~q\ & \ContrUnit|AluSrcA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Output\(7),
	datab => \ContrUnit|NextStage.decode~q\,
	datac => \ContrUnit|AluSrcA\(1),
	datad => \MuxUlaA|Mux0~0_combout\,
	combout => \MuxUlaA|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y16_N24
\MuxUlaA|output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaA|output\(7) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaA|Mux0~1_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaA|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|Mux0~1_combout\,
	datac => \Clock~inputclkctrl_outclk\,
	datad => \MuxUlaA|output\(7),
	combout => \MuxUlaA|output\(7));

-- Location: LCCOMB_X24_Y18_N10
\BancoReg|R1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R1\(7) = (GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & ((\MuxRegData|output\(7)))) # (!GLOBAL(\BancoReg|Mux33~0clkctrl_outclk\) & (\BancoReg|R1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R1\(7),
	datac => \MuxRegData|output\(7),
	datad => \BancoReg|Mux33~0clkctrl_outclk\,
	combout => \BancoReg|R1\(7));

-- Location: LCCOMB_X24_Y18_N24
\BancoReg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux8~0_combout\ = (\RegInst|Output\(6) & (\BancoReg|R1\(7))) # (!\RegInst|Output\(6) & ((\BancoReg|R0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|R1\(7),
	datac => \RegInst|Output\(6),
	datad => \BancoReg|R0\(7),
	combout => \BancoReg|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y17_N2
\BancoReg|readData2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|readData2\(7) = (GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & ((\BancoReg|readData2\(7)))) # (!GLOBAL(\BancoReg|process_0~0clkctrl_outclk\) & (\BancoReg|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux8~0_combout\,
	datab => \BancoReg|readData2\(7),
	datad => \BancoReg|process_0~0clkctrl_outclk\,
	combout => \BancoReg|readData2\(7));

-- Location: LCCOMB_X23_Y17_N14
\MuxUlaB|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|Mux0~0_combout\ = (!\ContrUnit|AluSrcB\(0) & (!\ContrUnit|NextStage.decode~q\ & \BancoReg|readData2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluSrcB\(0),
	datac => \ContrUnit|NextStage.decode~q\,
	datad => \BancoReg|readData2\(7),
	combout => \MuxUlaB|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y17_N10
\MuxUlaB|output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxUlaB|output\(7) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxUlaB|Mux0~0_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxUlaB|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxUlaB|Mux0~0_combout\,
	datac => \Clock~inputclkctrl_outclk\,
	datad => \MuxUlaB|output\(7),
	combout => \MuxUlaB|output\(7));

-- Location: LCCOMB_X22_Y17_N0
\Alu|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~37_combout\ = (!\ContrUnit|AluControl\(1) & ((\MuxUlaA|output\(7) & ((\MuxUlaB|output\(7)) # (\ContrUnit|AluControl\(0)))) # (!\MuxUlaA|output\(7) & (\MuxUlaB|output\(7) & \ContrUnit|AluControl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(7),
	datab => \MuxUlaB|output\(7),
	datac => \ContrUnit|AluControl\(1),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~37_combout\);

-- Location: LCCOMB_X22_Y17_N22
\Alu|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~38_combout\ = \MuxUlaB|output\(7) $ (\ContrUnit|AluControl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxUlaB|output\(7),
	datad => \ContrUnit|AluControl\(0),
	combout => \Alu|Add0~38_combout\);

-- Location: LCCOMB_X22_Y18_N24
\Alu|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~39_combout\ = \MuxUlaA|output\(7) $ (\Alu|Add0~35\ $ (!\Alu|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MuxUlaA|output\(7),
	datad => \Alu|Add0~38_combout\,
	cin => \Alu|Add0~35\,
	combout => \Alu|Add0~39_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Alu|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Add0~41_combout\ = (\Alu|Add0~37_combout\) # ((\ContrUnit|AluControl\(1) & \Alu|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|AluControl\(1),
	datab => \Alu|Add0~37_combout\,
	datad => \Alu|Add0~39_combout\,
	combout => \Alu|Add0~41_combout\);

-- Location: LCCOMB_X22_Y18_N2
\Alu|Res[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Alu|Res\(7) = (GLOBAL(\Clock~inputclkctrl_outclk\) & ((\Alu|Add0~41_combout\))) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & (\Alu|Res\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alu|Res\(7),
	datac => \Alu|Add0~41_combout\,
	datad => \Clock~inputclkctrl_outclk\,
	combout => \Alu|Res\(7));

-- Location: LCCOMB_X21_Y16_N2
\MuxRegData|output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output~7_combout\ = (\ContrUnit|MemToReg~q\ & ((\RegAux|Output\(7)))) # (!\ContrUnit|MemToReg~q\ & (\Alu|Res\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu|Res\(7),
	datab => \ContrUnit|MemToReg~q\,
	datad => \RegAux|Output\(7),
	combout => \MuxRegData|output~7_combout\);

-- Location: LCCOMB_X21_Y16_N10
\MuxRegData|output[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxRegData|output\(7) = (GLOBAL(\Clock~inputclkctrl_outclk\) & (\MuxRegData|output~7_combout\)) # (!GLOBAL(\Clock~inputclkctrl_outclk\) & ((\MuxRegData|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output~7_combout\,
	datac => \Clock~inputclkctrl_outclk\,
	datad => \MuxRegData|output\(7),
	combout => \MuxRegData|output\(7));

-- Location: LCCOMB_X25_Y19_N26
\BancoReg|R0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R0\(7) = (GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & (\MuxRegData|output\(7))) # (!GLOBAL(\BancoReg|R0[7]~0clkctrl_outclk\) & ((\BancoReg|R0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(7),
	datac => \BancoReg|R0\(7),
	datad => \BancoReg|R0[7]~0clkctrl_outclk\,
	combout => \BancoReg|R0\(7));

-- Location: LCCOMB_X22_Y12_N10
\BancoReg|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~2_combout\ = (!\ContrUnit|RegWrite~q\ & (\Clock~input_o\ & (\RegInst|Output\(11) & \RegInst|Output\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ContrUnit|RegWrite~q\,
	datab => \Clock~input_o\,
	datac => \RegInst|Output\(11),
	datad => \RegInst|Output\(10),
	combout => \BancoReg|Mux33~2_combout\);

-- Location: CLKCTRL_G3
\BancoReg|Mux33~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BancoReg|Mux33~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BancoReg|Mux33~2clkctrl_outclk\);

-- Location: LCCOMB_X24_Y17_N28
\BancoReg|R3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(0) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(0))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(0),
	datac => \BancoReg|Mux33~2clkctrl_outclk\,
	datad => \BancoReg|R3\(0),
	combout => \BancoReg|R3\(0));

-- Location: LCCOMB_X21_Y19_N28
\BancoReg|R3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(1) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(1))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(1),
	datac => \BancoReg|Mux33~2clkctrl_outclk\,
	datad => \BancoReg|R3\(1),
	combout => \BancoReg|R3\(1));

-- Location: LCCOMB_X19_Y21_N0
\BancoReg|R3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(2) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(2))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(2),
	datac => \BancoReg|Mux33~2clkctrl_outclk\,
	datad => \BancoReg|R3\(2),
	combout => \BancoReg|R3\(2));

-- Location: LCCOMB_X23_Y19_N28
\BancoReg|R3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(3) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(3))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(3),
	datab => \BancoReg|R3\(3),
	datad => \BancoReg|Mux33~2clkctrl_outclk\,
	combout => \BancoReg|R3\(3));

-- Location: LCCOMB_X22_Y21_N20
\BancoReg|R3[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(4) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(4))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(4),
	datac => \BancoReg|Mux33~2clkctrl_outclk\,
	datad => \BancoReg|R3\(4),
	combout => \BancoReg|R3\(4));

-- Location: LCCOMB_X18_Y19_N6
\BancoReg|R3[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(5) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(5))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(5),
	datac => \BancoReg|Mux33~2clkctrl_outclk\,
	datad => \BancoReg|R3\(5),
	combout => \BancoReg|R3\(5));

-- Location: LCCOMB_X24_Y19_N6
\BancoReg|R3[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(6) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(6))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxRegData|output\(6),
	datac => \BancoReg|Mux33~2clkctrl_outclk\,
	datad => \BancoReg|R3\(6),
	combout => \BancoReg|R3\(6));

-- Location: LCCOMB_X25_Y19_N22
\BancoReg|R3[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|R3\(7) = (GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & (\MuxRegData|output\(7))) # (!GLOBAL(\BancoReg|Mux33~2clkctrl_outclk\) & ((\BancoReg|R3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxRegData|output\(7),
	datac => \BancoReg|R3\(7),
	datad => \BancoReg|Mux33~2clkctrl_outclk\,
	combout => \BancoReg|R3\(7));

ww_Ri(0) <= \Ri[0]~output_o\;

ww_Ri(1) <= \Ri[1]~output_o\;

ww_Ri(2) <= \Ri[2]~output_o\;

ww_Ri(3) <= \Ri[3]~output_o\;

ww_Ri(4) <= \Ri[4]~output_o\;

ww_Ri(5) <= \Ri[5]~output_o\;

ww_Ri(6) <= \Ri[6]~output_o\;

ww_Ri(7) <= \Ri[7]~output_o\;

ww_Rj(0) <= \Rj[0]~output_o\;

ww_Rj(1) <= \Rj[1]~output_o\;

ww_Rj(2) <= \Rj[2]~output_o\;

ww_Rj(3) <= \Rj[3]~output_o\;

ww_Rj(4) <= \Rj[4]~output_o\;

ww_Rj(5) <= \Rj[5]~output_o\;

ww_Rj(6) <= \Rj[6]~output_o\;

ww_Rj(7) <= \Rj[7]~output_o\;

ww_Rk(0) <= \Rk[0]~output_o\;

ww_Rk(1) <= \Rk[1]~output_o\;

ww_Rk(2) <= \Rk[2]~output_o\;

ww_Rk(3) <= \Rk[3]~output_o\;

ww_Rk(4) <= \Rk[4]~output_o\;

ww_Rk(5) <= \Rk[5]~output_o\;

ww_Rk(6) <= \Rk[6]~output_o\;

ww_Rk(7) <= \Rk[7]~output_o\;

ww_Rx(0) <= \Rx[0]~output_o\;

ww_Rx(1) <= \Rx[1]~output_o\;

ww_Rx(2) <= \Rx[2]~output_o\;

ww_Rx(3) <= \Rx[3]~output_o\;

ww_Rx(4) <= \Rx[4]~output_o\;

ww_Rx(5) <= \Rx[5]~output_o\;

ww_Rx(6) <= \Rx[6]~output_o\;

ww_Rx(7) <= \Rx[7]~output_o\;
END structure;


