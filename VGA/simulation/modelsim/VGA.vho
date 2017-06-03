-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/03/2017 20:50:48"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- CLOCK_24[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \C1|LessThan3~1_cout\ : std_logic;
SIGNAL \C1|LessThan3~3_cout\ : std_logic;
SIGNAL \C1|LessThan3~5_cout\ : std_logic;
SIGNAL \C1|LessThan3~7_cout\ : std_logic;
SIGNAL \C1|LessThan3~9_cout\ : std_logic;
SIGNAL \C1|LessThan3~11_cout\ : std_logic;
SIGNAL \C1|LessThan3~13_cout\ : std_logic;
SIGNAL \C1|LessThan3~15_cout\ : std_logic;
SIGNAL \C1|LessThan3~17_cout\ : std_logic;
SIGNAL \C1|LessThan3~18_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|LessThan1~1_cout\ : std_logic;
SIGNAL \C1|LessThan1~3_cout\ : std_logic;
SIGNAL \C1|LessThan1~5_cout\ : std_logic;
SIGNAL \C1|LessThan1~7_cout\ : std_logic;
SIGNAL \C1|LessThan1~9_cout\ : std_logic;
SIGNAL \C1|LessThan1~11_cout\ : std_logic;
SIGNAL \C1|LessThan1~13_cout\ : std_logic;
SIGNAL \C1|LessThan1~15_cout\ : std_logic;
SIGNAL \C1|LessThan1~17_cout\ : std_logic;
SIGNAL \C1|LessThan1~19_cout\ : std_logic;
SIGNAL \C1|LessThan1~20_combout\ : std_logic;
SIGNAL \C1|LessThan7~1_cout\ : std_logic;
SIGNAL \C1|LessThan7~3_cout\ : std_logic;
SIGNAL \C1|LessThan7~5_cout\ : std_logic;
SIGNAL \C1|LessThan7~7_cout\ : std_logic;
SIGNAL \C1|LessThan7~9_cout\ : std_logic;
SIGNAL \C1|LessThan7~11_cout\ : std_logic;
SIGNAL \C1|LessThan7~13_cout\ : std_logic;
SIGNAL \C1|LessThan7~15_cout\ : std_logic;
SIGNAL \C1|LessThan7~17_cout\ : std_logic;
SIGNAL \C1|LessThan7~18_combout\ : std_logic;
SIGNAL \C1|Add19~2_combout\ : std_logic;
SIGNAL \C1|Add19~6_combout\ : std_logic;
SIGNAL \C1|Add19~20_combout\ : std_logic;
SIGNAL \C1|Add19~24_combout\ : std_logic;
SIGNAL \C1|Add19~32_combout\ : std_logic;
SIGNAL \C1|Add19~38_combout\ : std_logic;
SIGNAL \C1|Add19~48_combout\ : std_logic;
SIGNAL \C1|Add19~54_combout\ : std_logic;
SIGNAL \C1|Add21~0_combout\ : std_logic;
SIGNAL \C1|Add21~2_combout\ : std_logic;
SIGNAL \C1|Add21~10_combout\ : std_logic;
SIGNAL \C1|Add21~14_combout\ : std_logic;
SIGNAL \C1|Add21~16_combout\ : std_logic;
SIGNAL \C1|Add21~20_combout\ : std_logic;
SIGNAL \C1|Add21~26_combout\ : std_logic;
SIGNAL \C1|Add21~28_combout\ : std_logic;
SIGNAL \C1|Add21~30_combout\ : std_logic;
SIGNAL \C1|Add21~34_combout\ : std_logic;
SIGNAL \C1|Add21~36_combout\ : std_logic;
SIGNAL \C1|Add21~40_combout\ : std_logic;
SIGNAL \C1|Add21~42_combout\ : std_logic;
SIGNAL \C1|Add21~44_combout\ : std_logic;
SIGNAL \C1|Add21~46_combout\ : std_logic;
SIGNAL \C1|Add21~48_combout\ : std_logic;
SIGNAL \C1|Add21~50_combout\ : std_logic;
SIGNAL \C1|Add21~54_combout\ : std_logic;
SIGNAL \C1|Add21~60_combout\ : std_logic;
SIGNAL \C1|LessThan8~1_combout\ : std_logic;
SIGNAL \C1|LessThan264~4_combout\ : std_logic;
SIGNAL \C1|LessThan18~0_combout\ : std_logic;
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~14_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~16_combout\ : std_logic;
SIGNAL \C1|LessThan50~0_combout\ : std_logic;
SIGNAL \C1|LessThan47~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~19_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~20_combout\ : std_logic;
SIGNAL \C1|dMap~168_combout\ : std_logic;
SIGNAL \C1|dMap~169_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~22_combout\ : std_logic;
SIGNAL \C1|LessThan36~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~23_combout\ : std_logic;
SIGNAL \C1|dMap~173_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~29_combout\ : std_logic;
SIGNAL \C1|dMap~174_combout\ : std_logic;
SIGNAL \C1|dMap~175_combout\ : std_logic;
SIGNAL \C1|dMap~176_combout\ : std_logic;
SIGNAL \C1|dMap~177_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~30_combout\ : std_logic;
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|LessThan261~2_combout\ : std_logic;
SIGNAL \C1|LessThan261~5_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~0_combout\ : std_logic;
SIGNAL \C1|LessThan142~0_combout\ : std_logic;
SIGNAL \C1|LessThan142~1_combout\ : std_logic;
SIGNAL \C1|LessThan141~0_combout\ : std_logic;
SIGNAL \C1|LessThan141~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~53_combout\ : std_logic;
SIGNAL \C1|LessThan139~1_combout\ : std_logic;
SIGNAL \C1|LessThan131~0_combout\ : std_logic;
SIGNAL \C1|LessThan152~0_combout\ : std_logic;
SIGNAL \C1|LessThan153~2_combout\ : std_logic;
SIGNAL \C1|LessThan147~1_combout\ : std_logic;
SIGNAL \C1|dMap~195_combout\ : std_logic;
SIGNAL \C1|dMap~196_combout\ : std_logic;
SIGNAL \C1|dMap~197_combout\ : std_logic;
SIGNAL \C1|dMap~202_combout\ : std_logic;
SIGNAL \C1|dMap~204_combout\ : std_logic;
SIGNAL \C1|dMap~206_combout\ : std_logic;
SIGNAL \C1|dMap~207_combout\ : std_logic;
SIGNAL \C1|dMap~208_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~71_combout\ : std_logic;
SIGNAL \C1|LessThan80~3_combout\ : std_logic;
SIGNAL \C1|LessThan100~2_combout\ : std_logic;
SIGNAL \C1|dMap~220_combout\ : std_logic;
SIGNAL \C1|dMap~221_combout\ : std_logic;
SIGNAL \C1|dMap~222_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~75_combout\ : std_logic;
SIGNAL \C1|LessThan60~0_combout\ : std_logic;
SIGNAL \C1|dMap~234_combout\ : std_logic;
SIGNAL \C1|dMap~235_combout\ : std_logic;
SIGNAL \C1|dMap~236_combout\ : std_logic;
SIGNAL \C1|LessThan52~1_combout\ : std_logic;
SIGNAL \C1|LessThan52~2_combout\ : std_logic;
SIGNAL \C1|dMap~237_combout\ : std_logic;
SIGNAL \C1|dMap~238_combout\ : std_logic;
SIGNAL \C1|dMap~239_combout\ : std_logic;
SIGNAL \C1|arQ1X1~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~78_combout\ : std_logic;
SIGNAL \C1|dMap~244_combout\ : std_logic;
SIGNAL \C1|dMap~245_combout\ : std_logic;
SIGNAL \C1|LessThan113~0_combout\ : std_logic;
SIGNAL \C1|dMap~267_combout\ : std_logic;
SIGNAL \C1|LessThan119~1_combout\ : std_logic;
SIGNAL \C1|dMap~268_combout\ : std_logic;
SIGNAL \C1|dMap~269_combout\ : std_logic;
SIGNAL \C1|dMap~270_combout\ : std_logic;
SIGNAL \C1|dMap~271_combout\ : std_logic;
SIGNAL \C1|process_0~21_combout\ : std_logic;
SIGNAL \C1|process_0~22_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~0_combout\ : std_logic;
SIGNAL \C1|dMap~272_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~0_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~1_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~2_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~3_combout\ : std_logic;
SIGNAL \C1|dMap~273_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~4_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~5_combout\ : std_logic;
SIGNAL \C1|dirQ1X2~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~2_combout\ : std_logic;
SIGNAL \C1|LessThan262~3_combout\ : std_logic;
SIGNAL \C1|LessThan262~5_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~87_combout\ : std_logic;
SIGNAL \C1|dMap~276_combout\ : std_logic;
SIGNAL \C1|LessThan257~1_combout\ : std_logic;
SIGNAL \C1|LessThan256~3_combout\ : std_logic;
SIGNAL \C1|LessThan258~0_combout\ : std_logic;
SIGNAL \C1|LessThan257~2_combout\ : std_logic;
SIGNAL \C1|dMap~286_combout\ : std_logic;
SIGNAL \C1|dMap~287_combout\ : std_logic;
SIGNAL \C1|dMap~288_combout\ : std_logic;
SIGNAL \C1|dMap~289_combout\ : std_logic;
SIGNAL \C1|dMap~290_combout\ : std_logic;
SIGNAL \C1|dMap~294_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~104_combout\ : std_logic;
SIGNAL \C1|dMap~297_combout\ : std_logic;
SIGNAL \C1|LessThan175~0_combout\ : std_logic;
SIGNAL \C1|LessThan244~0_combout\ : std_logic;
SIGNAL \C1|LessThan184~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~112_combout\ : std_logic;
SIGNAL \C1|dMap~300_combout\ : std_logic;
SIGNAL \C1|LessThan196~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~113_combout\ : std_logic;
SIGNAL \C1|dMap~317_combout\ : std_logic;
SIGNAL \C1|dMap~319_combout\ : std_logic;
SIGNAL \C1|dMap~320_combout\ : std_logic;
SIGNAL \C1|dMap~326_combout\ : std_logic;
SIGNAL \C1|dMap~327_combout\ : std_logic;
SIGNAL \C1|dMap~329_combout\ : std_logic;
SIGNAL \C1|dMap~331_combout\ : std_logic;
SIGNAL \C1|arQ2X1~9_combout\ : std_logic;
SIGNAL \C1|dMap~333_combout\ : std_logic;
SIGNAL \C1|dMap~334_combout\ : std_logic;
SIGNAL \C1|dMap~335_combout\ : std_logic;
SIGNAL \C1|arQ2X1~10_combout\ : std_logic;
SIGNAL \C1|dMap~336_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~126_combout\ : std_logic;
SIGNAL \C1|dMap~342_combout\ : std_logic;
SIGNAL \C1|dMap~344_combout\ : std_logic;
SIGNAL \C1|dMap~345_combout\ : std_logic;
SIGNAL \C1|dMap~346_combout\ : std_logic;
SIGNAL \C1|dMap~348_combout\ : std_logic;
SIGNAL \C1|dMap~350_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~130_combout\ : std_logic;
SIGNAL \C1|dMap~358_combout\ : std_logic;
SIGNAL \C1|LessThan217~0_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~4_combout\ : std_logic;
SIGNAL \C1|dMap~361_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~7_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~5_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~14_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~16_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~20_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~23_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~28_combout\ : std_logic;
SIGNAL \C1|dMap~365_combout\ : std_logic;
SIGNAL \C1|dMap~366_combout\ : std_logic;
SIGNAL \C1|dMap~367_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~81_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~82_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~86_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~91_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~92_combout\ : std_logic;
SIGNAL \C1|dMap~43_combout\ : std_logic;
SIGNAL \C1|dMap~370_combout\ : std_logic;
SIGNAL \C1|dMap~39_combout\ : std_logic;
SIGNAL \C1|LessThan83~2_combout\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|LessThan264~5_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|LessThan264~6_combout\ : std_logic;
SIGNAL \C1|LessThan259~0_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~regout\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|LessThan30~0_combout\ : std_logic;
SIGNAL \C1|LessThan260~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|LessThan265~0_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|VSYNC~regout\ : std_logic;
SIGNAL \C1|Add17~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~7_combout\ : std_logic;
SIGNAL \C1|Add17~11\ : std_logic;
SIGNAL \C1|Add17~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~4_combout\ : std_logic;
SIGNAL \C1|Add17~13\ : std_logic;
SIGNAL \C1|Add17~15\ : std_logic;
SIGNAL \C1|Add17~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~2_combout\ : std_logic;
SIGNAL \C1|Add17~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[8]~3_combout\ : std_logic;
SIGNAL \C1|dMap~274_combout\ : std_logic;
SIGNAL \C1|Add17~8_combout\ : std_logic;
SIGNAL \C1|Add17~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[2]~6_combout\ : std_logic;
SIGNAL \C1|Add17~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[3]~5_combout\ : std_logic;
SIGNAL \C1|LessThan191~1_combout\ : std_logic;
SIGNAL \C1|Add17~6_combout\ : std_logic;
SIGNAL \C1|LessThan191~0_combout\ : std_logic;
SIGNAL \C1|dMap~275_combout\ : std_logic;
SIGNAL \C1|Add24~0_combout\ : std_logic;
SIGNAL \C1|Add13~1_cout\ : std_logic;
SIGNAL \C1|Add13~3_cout\ : std_logic;
SIGNAL \C1|Add13~5_cout\ : std_logic;
SIGNAL \C1|Add13~6_combout\ : std_logic;
SIGNAL \C1|LessThan225~0_combout\ : std_logic;
SIGNAL \C1|Add3~1\ : std_logic;
SIGNAL \C1|Add3~3\ : std_logic;
SIGNAL \C1|Add3~5\ : std_logic;
SIGNAL \C1|Add3~7\ : std_logic;
SIGNAL \C1|Add3~9\ : std_logic;
SIGNAL \C1|Add3~11\ : std_logic;
SIGNAL \C1|Add3~13\ : std_logic;
SIGNAL \C1|Add3~15\ : std_logic;
SIGNAL \C1|Add3~17\ : std_logic;
SIGNAL \C1|Add3~18_combout\ : std_logic;
SIGNAL \C1|Add3~16_combout\ : std_logic;
SIGNAL \C1|Add3~14_combout\ : std_logic;
SIGNAL \C1|Add3~10_combout\ : std_logic;
SIGNAL \C1|Add3~8_combout\ : std_logic;
SIGNAL \C1|Add13~7\ : std_logic;
SIGNAL \C1|Add13~9\ : std_logic;
SIGNAL \C1|Add13~11\ : std_logic;
SIGNAL \C1|Add13~13\ : std_logic;
SIGNAL \C1|Add13~15\ : std_logic;
SIGNAL \C1|Add13~17\ : std_logic;
SIGNAL \C1|Add13~18_combout\ : std_logic;
SIGNAL \C1|Add13~12_combout\ : std_logic;
SIGNAL \C1|Add13~14_combout\ : std_logic;
SIGNAL \C1|Add13~16_combout\ : std_logic;
SIGNAL \C1|LessThan216~0_combout\ : std_logic;
SIGNAL \C1|LessThan216~1_combout\ : std_logic;
SIGNAL \C1|Add24~6_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|LessThan204~3_combout\ : std_logic;
SIGNAL \C1|Add24~11\ : std_logic;
SIGNAL \C1|Add24~13\ : std_logic;
SIGNAL \C1|Add24~15\ : std_logic;
SIGNAL \C1|Add24~17\ : std_logic;
SIGNAL \C1|Add24~18_combout\ : std_logic;
SIGNAL \C1|Add24~14_combout\ : std_logic;
SIGNAL \C1|SQ_X2[8]~5_combout\ : std_logic;
SIGNAL \C1|Add24~12_combout\ : std_logic;
SIGNAL \C1|SQ_X2[7]~6_combout\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|LessThan204~4_combout\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|LessThan204~5_combout\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|LessThan208~0_combout\ : std_logic;
SIGNAL \C1|LessThan208~1_combout\ : std_logic;
SIGNAL \C1|dMap~312_combout\ : std_logic;
SIGNAL \C1|Add13~8_combout\ : std_logic;
SIGNAL \C1|Add13~10_combout\ : std_logic;
SIGNAL \C1|dMap~359_combout\ : std_logic;
SIGNAL \C1|dMap~368_combout\ : std_logic;
SIGNAL \C1|Add3~19\ : std_logic;
SIGNAL \C1|Add3~20_combout\ : std_logic;
SIGNAL \C1|Add13~19\ : std_logic;
SIGNAL \C1|Add13~20_combout\ : std_logic;
SIGNAL \C1|Add13~21\ : std_logic;
SIGNAL \C1|Add13~22_combout\ : std_logic;
SIGNAL \C1|dMap~339_combout\ : std_logic;
SIGNAL \C1|dMap~340_combout\ : std_logic;
SIGNAL \C1|dMap~360_combout\ : std_logic;
SIGNAL \C1|LessThan215~0_combout\ : std_logic;
SIGNAL \C1|dMap~311_combout\ : std_logic;
SIGNAL \C1|LessThan183~2_combout\ : std_logic;
SIGNAL \C1|Add24~2_combout\ : std_logic;
SIGNAL \C1|SQ_X2[2]~9_combout\ : std_logic;
SIGNAL \C1|LessThan205~0_combout\ : std_logic;
SIGNAL \C1|dMap~306_combout\ : std_logic;
SIGNAL \C1|LessThan183~0_combout\ : std_logic;
SIGNAL \C1|dMap~307_combout\ : std_logic;
SIGNAL \C1|dMap~308_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~125_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~6_combout\ : std_logic;
SIGNAL \C1|LessThan204~6_combout\ : std_logic;
SIGNAL \C1|LessThan205~1_combout\ : std_logic;
SIGNAL \C1|LessThan204~2_combout\ : std_logic;
SIGNAL \C1|LessThan188~1_combout\ : std_logic;
SIGNAL \C1|LessThan200~0_combout\ : std_logic;
SIGNAL \C1|dMap~305_combout\ : std_logic;
SIGNAL \C1|dMap~354_combout\ : std_logic;
SIGNAL \C1|dMap~355_combout\ : std_logic;
SIGNAL \C1|dMap~356_combout\ : std_logic;
SIGNAL \C1|dMap~357_combout\ : std_logic;
SIGNAL \C1|dMap~362_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~4_combout\ : std_logic;
SIGNAL \C1|LessThan189~0_combout\ : std_logic;
SIGNAL \C1|LessThan209~0_combout\ : std_logic;
SIGNAL \C1|LessThan188~0_combout\ : std_logic;
SIGNAL \C1|LessThan188~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~111_combout\ : std_logic;
SIGNAL \C1|dMap~301_combout\ : std_logic;
SIGNAL \C1|dMap~302_combout\ : std_logic;
SIGNAL \C1|dMap~303_combout\ : std_logic;
SIGNAL \C1|LessThan184~2_combout\ : std_logic;
SIGNAL \C1|LessThan185~0_combout\ : std_logic;
SIGNAL \C1|LessThan183~1_combout\ : std_logic;
SIGNAL \C1|LessThan185~1_combout\ : std_logic;
SIGNAL \C1|LessThan184~1_combout\ : std_logic;
SIGNAL \C1|dMap~298_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~2_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~8_combout\ : std_logic;
SIGNAL \C1|LessThan216~2_combout\ : std_logic;
SIGNAL \C1|dMap~343_combout\ : std_logic;
SIGNAL \C1|dMap~351_combout\ : std_logic;
SIGNAL \C1|LessThan196~1_combout\ : std_logic;
SIGNAL \C1|LessThan192~0_combout\ : std_logic;
SIGNAL \C1|LessThan192~1_combout\ : std_logic;
SIGNAL \C1|dMap~304_combout\ : std_logic;
SIGNAL \C1|LessThan182~0_combout\ : std_logic;
SIGNAL \C1|LessThan183~3_combout\ : std_logic;
SIGNAL \C1|LessThan183~4_combout\ : std_logic;
SIGNAL \C1|dMap~299_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~3_combout\ : std_logic;
SIGNAL \C1|dirQ2X2~5_combout\ : std_logic;
SIGNAL \C1|SQ_X2[9]~2_combout\ : std_logic;
SIGNAL \C1|SQ_X2[9]~3_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~1_combout\ : std_logic;
SIGNAL \C1|SQ_X2[1]~4_combout\ : std_logic;
SIGNAL \C1|Add24~1\ : std_logic;
SIGNAL \C1|Add24~3\ : std_logic;
SIGNAL \C1|Add24~4_combout\ : std_logic;
SIGNAL \C1|SQ_X2[3]~8_combout\ : std_logic;
SIGNAL \C1|Add24~5\ : std_logic;
SIGNAL \C1|Add24~7\ : std_logic;
SIGNAL \C1|Add24~9\ : std_logic;
SIGNAL \C1|Add24~10_combout\ : std_logic;
SIGNAL \C1|SQ_X2[6]~7_combout\ : std_logic;
SIGNAL \C1|Add24~8_combout\ : std_logic;
SIGNAL \C1|Add9~1\ : std_logic;
SIGNAL \C1|Add9~3\ : std_logic;
SIGNAL \C1|Add9~5\ : std_logic;
SIGNAL \C1|Add9~7\ : std_logic;
SIGNAL \C1|Add9~9\ : std_logic;
SIGNAL \C1|Add9~11\ : std_logic;
SIGNAL \C1|Add9~12_combout\ : std_logic;
SIGNAL \C1|Add9~0_combout\ : std_logic;
SIGNAL \C1|Add9~4_combout\ : std_logic;
SIGNAL \C1|LessThan256~0_combout\ : std_logic;
SIGNAL \C1|Add9~6_combout\ : std_logic;
SIGNAL \C1|Add9~8_combout\ : std_logic;
SIGNAL \C1|LessThan235~0_combout\ : std_logic;
SIGNAL \C1|LessThan245~0_combout\ : std_logic;
SIGNAL \C1|Add9~13\ : std_logic;
SIGNAL \C1|Add9~15\ : std_logic;
SIGNAL \C1|Add9~17\ : std_logic;
SIGNAL \C1|Add9~19\ : std_logic;
SIGNAL \C1|Add9~20_combout\ : std_logic;
SIGNAL \C1|Add9~14_combout\ : std_logic;
SIGNAL \C1|Add9~18_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~90_combout\ : std_logic;
SIGNAL \C1|Add9~10_combout\ : std_logic;
SIGNAL \C1|LessThan252~0_combout\ : std_logic;
SIGNAL \C1|LessThan254~0_combout\ : std_logic;
SIGNAL \C1|LessThan243~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~106_combout\ : std_logic;
SIGNAL \C1|Add9~16_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~107_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~108_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~109_combout\ : std_logic;
SIGNAL \C1|arQ2X1~2_combout\ : std_logic;
SIGNAL \C1|arQ2X1~13_combout\ : std_logic;
SIGNAL \C1|arQ2X1~3_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~136_combout\ : std_logic;
SIGNAL \C1|dMap~295_combout\ : std_logic;
SIGNAL \C1|LessThan181~0_combout\ : std_logic;
SIGNAL \C1|dMap~296_combout\ : std_logic;
SIGNAL \C1|LessThan257~0_combout\ : std_logic;
SIGNAL \C1|LessThan256~2_combout\ : std_logic;
SIGNAL \C1|LessThan237~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~92_combout\ : std_logic;
SIGNAL \C1|LessThan238~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~105_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~135_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~110_combout\ : std_logic;
SIGNAL \C1|LessThan256~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~91_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~94_combout\ : std_logic;
SIGNAL \C1|dMap~279_combout\ : std_logic;
SIGNAL \C1|dMap~280_combout\ : std_logic;
SIGNAL \C1|dMap~281_combout\ : std_logic;
SIGNAL \C1|dMap~282_combout\ : std_logic;
SIGNAL \C1|LessThan249~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~93_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~95_combout\ : std_logic;
SIGNAL \C1|dMap~284_combout\ : std_logic;
SIGNAL \C1|dMap~283_combout\ : std_logic;
SIGNAL \C1|dMap~285_combout\ : std_logic;
SIGNAL \C1|Add9~2_combout\ : std_logic;
SIGNAL \C1|dMap~377_combout\ : std_logic;
SIGNAL \C1|dMap~378_combout\ : std_logic;
SIGNAL \C1|dMap~146_combout\ : std_logic;
SIGNAL \C1|dMap~376_combout\ : std_logic;
SIGNAL \C1|LessThan195~0_combout\ : std_logic;
SIGNAL \C1|dMap~291_combout\ : std_logic;
SIGNAL \C1|dMap~292_combout\ : std_logic;
SIGNAL \C1|dMap~293_combout\ : std_logic;
SIGNAL \C1|LessThan247~1_combout\ : std_logic;
SIGNAL \C1|LessThan247~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~100_combout\ : std_logic;
SIGNAL \C1|LessThan235~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~96_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~98_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~97_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~99_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~101_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~102_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~103_combout\ : std_logic;
SIGNAL \C1|esqQ2X1~0_combout\ : std_logic;
SIGNAL \C1|LessThan255~0_combout\ : std_logic;
SIGNAL \C1|LessThan247~0_combout\ : std_logic;
SIGNAL \C1|LessThan255~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~88_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~85_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~86_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~89_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~0_combout\ : std_logic;
SIGNAL \C1|dMap~337_combout\ : std_logic;
SIGNAL \C1|dMap~338_combout\ : std_logic;
SIGNAL \C1|LessThan223~0_combout\ : std_logic;
SIGNAL \C1|dMap~341_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~128_combout\ : std_logic;
SIGNAL \C1|dMap~352_combout\ : std_logic;
SIGNAL \C1|dMap~353_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~129_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~3_combout\ : std_logic;
SIGNAL \C1|dMap~347_combout\ : std_logic;
SIGNAL \C1|dMap~349_combout\ : std_logic;
SIGNAL \C1|arQ2X1~4_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~2_combout\ : std_logic;
SIGNAL \C1|esqQ2X2~5_combout\ : std_logic;
SIGNAL \C1|process_0~24_combout\ : std_logic;
SIGNAL \C1|process_0~25_combout\ : std_logic;
SIGNAL \C1|Add24~16_combout\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|LessThan174~0_combout\ : std_logic;
SIGNAL \C1|Add3~0_combout\ : std_logic;
SIGNAL \C1|Add3~6_combout\ : std_logic;
SIGNAL \C1|Add3~2_combout\ : std_logic;
SIGNAL \C1|LessThan164~0_combout\ : std_logic;
SIGNAL \C1|LessThan156~0_combout\ : std_logic;
SIGNAL \C1|LessThan155~0_combout\ : std_logic;
SIGNAL \C1|LessThan155~1_combout\ : std_logic;
SIGNAL \C1|LessThan234~0_combout\ : std_logic;
SIGNAL \C1|Add3~4_combout\ : std_logic;
SIGNAL \C1|LessThan162~0_combout\ : std_logic;
SIGNAL \C1|dMap~314_combout\ : std_logic;
SIGNAL \C1|dMap~315_combout\ : std_logic;
SIGNAL \C1|dMap~316_combout\ : std_logic;
SIGNAL \C1|arQ2X1~5_combout\ : std_logic;
SIGNAL \C1|Add3~12_combout\ : std_logic;
SIGNAL \C1|dMap~318_combout\ : std_logic;
SIGNAL \C1|dMap~321_combout\ : std_logic;
SIGNAL \C1|dMap~322_combout\ : std_logic;
SIGNAL \C1|arQ2X1~7_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~119_combout\ : std_logic;
SIGNAL \C1|arQ2X1~8_combout\ : std_logic;
SIGNAL \C1|dMap~323_combout\ : std_logic;
SIGNAL \C1|dMap~324_combout\ : std_logic;
SIGNAL \C1|dMap~325_combout\ : std_logic;
SIGNAL \C1|arQ2X1~6_combout\ : std_logic;
SIGNAL \C1|arQ2X1~11_combout\ : std_logic;
SIGNAL \C1|arQ2X1~12_combout\ : std_logic;
SIGNAL \C1|SQ2_noAR~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[1]~1_combout\ : std_logic;
SIGNAL \C1|Add17~1\ : std_logic;
SIGNAL \C1|Add17~3\ : std_logic;
SIGNAL \C1|Add17~5\ : std_logic;
SIGNAL \C1|Add17~7\ : std_logic;
SIGNAL \C1|Add17~9\ : std_logic;
SIGNAL \C1|Add17~10_combout\ : std_logic;
SIGNAL \C1|LessThan173~0_combout\ : std_logic;
SIGNAL \C1|LessThan173~1_combout\ : std_logic;
SIGNAL \C1|LessThan178~0_combout\ : std_logic;
SIGNAL \C1|LessThan178~1_combout\ : std_logic;
SIGNAL \C1|LessThan179~0_combout\ : std_logic;
SIGNAL \C1|dMap~309_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~115_combout\ : std_logic;
SIGNAL \C1|dMap~313_combout\ : std_logic;
SIGNAL \C1|dMap~310_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~116_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~117_combout\ : std_logic;
SIGNAL \C1|dMap~277_combout\ : std_logic;
SIGNAL \C1|dMap~278_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~114_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~118_combout\ : std_logic;
SIGNAL \C1|dirQ2X1~0_combout\ : std_logic;
SIGNAL \C1|dMap~330_combout\ : std_logic;
SIGNAL \C1|LessThan156~1_combout\ : std_logic;
SIGNAL \C1|LessThan156~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~120_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~121_combout\ : std_logic;
SIGNAL \C1|dMap~328_combout\ : std_logic;
SIGNAL \C1|dMap~332_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~123_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~122_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~124_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~127_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump[16]~64_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump[16]~65_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~98_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump[31]~66_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~95_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~93_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~90_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~85_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~83_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~78_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~75_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~73_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~69_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~68_combout\ : std_logic;
SIGNAL \C1|Add21~1\ : std_logic;
SIGNAL \C1|Add21~3\ : std_logic;
SIGNAL \C1|Add21~4_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~70_combout\ : std_logic;
SIGNAL \C1|Add21~5\ : std_logic;
SIGNAL \C1|Add21~6_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~71_combout\ : std_logic;
SIGNAL \C1|Add21~7\ : std_logic;
SIGNAL \C1|Add21~8_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~72_combout\ : std_logic;
SIGNAL \C1|Add21~9\ : std_logic;
SIGNAL \C1|Add21~11\ : std_logic;
SIGNAL \C1|Add21~12_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~74_combout\ : std_logic;
SIGNAL \C1|Add21~13\ : std_logic;
SIGNAL \C1|Add21~15\ : std_logic;
SIGNAL \C1|Add21~17\ : std_logic;
SIGNAL \C1|Add21~18_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~77_combout\ : std_logic;
SIGNAL \C1|Add21~19\ : std_logic;
SIGNAL \C1|Add21~21\ : std_logic;
SIGNAL \C1|Add21~23\ : std_logic;
SIGNAL \C1|Add21~24_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~80_combout\ : std_logic;
SIGNAL \C1|Add21~25\ : std_logic;
SIGNAL \C1|Add21~27\ : std_logic;
SIGNAL \C1|Add21~29\ : std_logic;
SIGNAL \C1|Add21~31\ : std_logic;
SIGNAL \C1|Add21~32_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~84_combout\ : std_logic;
SIGNAL \C1|Add21~33\ : std_logic;
SIGNAL \C1|Add21~35\ : std_logic;
SIGNAL \C1|Add21~37\ : std_logic;
SIGNAL \C1|Add21~38_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~87_combout\ : std_logic;
SIGNAL \C1|Add21~39\ : std_logic;
SIGNAL \C1|Add21~41\ : std_logic;
SIGNAL \C1|Add21~43\ : std_logic;
SIGNAL \C1|Add21~45\ : std_logic;
SIGNAL \C1|Add21~47\ : std_logic;
SIGNAL \C1|Add21~49\ : std_logic;
SIGNAL \C1|Add21~51\ : std_logic;
SIGNAL \C1|Add21~52_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~94_combout\ : std_logic;
SIGNAL \C1|Add21~53\ : std_logic;
SIGNAL \C1|Add21~55\ : std_logic;
SIGNAL \C1|Add21~56_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~96_combout\ : std_logic;
SIGNAL \C1|Add21~57\ : std_logic;
SIGNAL \C1|Add21~59\ : std_logic;
SIGNAL \C1|Add21~61\ : std_logic;
SIGNAL \C1|Add21~62_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~67_combout\ : std_logic;
SIGNAL \C1|Add21~58_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~97_combout\ : std_logic;
SIGNAL \C1|LessThan262~8_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~89_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~88_combout\ : std_logic;
SIGNAL \C1|LessThan262~6_combout\ : std_logic;
SIGNAL \C1|LessThan262~7_combout\ : std_logic;
SIGNAL \C1|LessThan262~9_combout\ : std_logic;
SIGNAL \C1|LessThan262~0_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~76_combout\ : std_logic;
SIGNAL \C1|Add21~22_combout\ : std_logic;
SIGNAL \C1|SQ2_Jump~79_combout\ : std_logic;
SIGNAL \C1|LessThan262~2_combout\ : std_logic;
SIGNAL \C1|LessThan262~1_combout\ : std_logic;
SIGNAL \C1|LessThan262~4_combout\ : std_logic;
SIGNAL \C1|LessThan262~10_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~0_combout\ : std_logic;
SIGNAL \C1|Add17~17\ : std_logic;
SIGNAL \C1|Add17~18_combout\ : std_logic;
SIGNAL \C1|LessThan6~1_cout\ : std_logic;
SIGNAL \C1|LessThan6~3_cout\ : std_logic;
SIGNAL \C1|LessThan6~5_cout\ : std_logic;
SIGNAL \C1|LessThan6~7_cout\ : std_logic;
SIGNAL \C1|LessThan6~9_cout\ : std_logic;
SIGNAL \C1|LessThan6~11_cout\ : std_logic;
SIGNAL \C1|LessThan6~13_cout\ : std_logic;
SIGNAL \C1|LessThan6~15_cout\ : std_logic;
SIGNAL \C1|LessThan6~17_cout\ : std_logic;
SIGNAL \C1|LessThan6~19_cout\ : std_logic;
SIGNAL \C1|LessThan6~20_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_cout\ : std_logic;
SIGNAL \C1|LessThan4~3_cout\ : std_logic;
SIGNAL \C1|LessThan4~5_cout\ : std_logic;
SIGNAL \C1|LessThan4~7_cout\ : std_logic;
SIGNAL \C1|LessThan4~9_cout\ : std_logic;
SIGNAL \C1|LessThan4~11_cout\ : std_logic;
SIGNAL \C1|LessThan4~13_cout\ : std_logic;
SIGNAL \C1|LessThan4~15_cout\ : std_logic;
SIGNAL \C1|LessThan4~17_cout\ : std_logic;
SIGNAL \C1|LessThan4~19_cout\ : std_logic;
SIGNAL \C1|LessThan4~20_combout\ : std_logic;
SIGNAL \C1|LessThan5~1_cout\ : std_logic;
SIGNAL \C1|LessThan5~3_cout\ : std_logic;
SIGNAL \C1|LessThan5~5_cout\ : std_logic;
SIGNAL \C1|LessThan5~7_cout\ : std_logic;
SIGNAL \C1|LessThan5~9_cout\ : std_logic;
SIGNAL \C1|LessThan5~11_cout\ : std_logic;
SIGNAL \C1|LessThan5~13_cout\ : std_logic;
SIGNAL \C1|LessThan5~15_cout\ : std_logic;
SIGNAL \C1|LessThan5~17_cout\ : std_logic;
SIGNAL \C1|LessThan5~18_combout\ : std_logic;
SIGNAL \C1|DRAW2~0_combout\ : std_logic;
SIGNAL \C1|DRAW2~1_combout\ : std_logic;
SIGNAL \C1|LessThan265~1_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~45_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~36_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~39_combout\ : std_logic;
SIGNAL \C1|LessThan46~0_combout\ : std_logic;
SIGNAL \C1|LessThan40~2_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~37_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~132_combout\ : std_logic;
SIGNAL \C1|LessThan268~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~38_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~40_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~41_combout\ : std_logic;
SIGNAL \C1|LessThan43~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~42_combout\ : std_logic;
SIGNAL \C1|dMap~163_combout\ : std_logic;
SIGNAL \C1|dMap~161_combout\ : std_logic;
SIGNAL \C1|dMap~164_combout\ : std_logic;
SIGNAL \C1|dMap~165_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~43_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~44_combout\ : std_logic;
SIGNAL \C1|LessThan45~0_combout\ : std_logic;
SIGNAL \C1|LessThan44~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~133_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~46_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~47_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~48_combout\ : std_logic;
SIGNAL \C1|dMap~363_combout\ : std_logic;
SIGNAL \C1|LessThan39~0_combout\ : std_logic;
SIGNAL \C1|dMap~178_combout\ : std_logic;
SIGNAL \C1|dMap~179_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~49_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~50_combout\ : std_logic;
SIGNAL \C1|LessThan35~0_combout\ : std_logic;
SIGNAL \C1|dMap~162_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~15_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~17_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~18_combout\ : std_logic;
SIGNAL \C1|LessThan268~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~24_combout\ : std_logic;
SIGNAL \C1|dMap~166_combout\ : std_logic;
SIGNAL \C1|dMap~167_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~21_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~25_combout\ : std_logic;
SIGNAL \C1|dMap~172_combout\ : std_logic;
SIGNAL \C1|dMap~170_combout\ : std_logic;
SIGNAL \C1|dMap~171_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~26_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~27_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~32_combout\ : std_logic;
SIGNAL \C1|LessThan44~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~131_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~33_combout\ : std_logic;
SIGNAL \C1|dMap~387_combout\ : std_logic;
SIGNAL \C1|dMap~388_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~28_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~31_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~34_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~35_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~51_combout\ : std_logic;
SIGNAL \C1|Add16~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~7_combout\ : std_logic;
SIGNAL \C1|Add16~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[3]~5_combout\ : std_logic;
SIGNAL \C1|Add16~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[2]~6_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add16~11\ : std_logic;
SIGNAL \C1|Add16~13\ : std_logic;
SIGNAL \C1|Add16~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~3_combout\ : std_logic;
SIGNAL \C1|Add16~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[7]~4_combout\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~17\ : std_logic;
SIGNAL \C1|Add1~19\ : std_logic;
SIGNAL \C1|Add1~20_combout\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|LessThan52~0_combout\ : std_logic;
SIGNAL \C1|LessThan51~0_combout\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|LessThan51~1_combout\ : std_logic;
SIGNAL \C1|Add22~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~9_combout\ : std_logic;
SIGNAL \C1|Add1~18_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|Add8~1_cout\ : std_logic;
SIGNAL \C1|Add8~3_cout\ : std_logic;
SIGNAL \C1|Add8~5\ : std_logic;
SIGNAL \C1|Add8~7\ : std_logic;
SIGNAL \C1|Add8~9\ : std_logic;
SIGNAL \C1|Add8~11\ : std_logic;
SIGNAL \C1|Add8~13\ : std_logic;
SIGNAL \C1|Add8~15\ : std_logic;
SIGNAL \C1|Add8~17\ : std_logic;
SIGNAL \C1|Add8~19\ : std_logic;
SIGNAL \C1|Add8~20_combout\ : std_logic;
SIGNAL \C1|Add22~14_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~5_combout\ : std_logic;
SIGNAL \C1|Add22~10_combout\ : std_logic;
SIGNAL \C1|Add22~8_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~7_combout\ : std_logic;
SIGNAL \C1|Add22~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[4]~8_combout\ : std_logic;
SIGNAL \C1|Add22~4_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Add5~1\ : std_logic;
SIGNAL \C1|Add5~3\ : std_logic;
SIGNAL \C1|Add5~5\ : std_logic;
SIGNAL \C1|Add5~7\ : std_logic;
SIGNAL \C1|Add5~9\ : std_logic;
SIGNAL \C1|Add5~11\ : std_logic;
SIGNAL \C1|Add5~13\ : std_logic;
SIGNAL \C1|Add5~15\ : std_logic;
SIGNAL \C1|Add5~16_combout\ : std_logic;
SIGNAL \C1|Add5~10_combout\ : std_logic;
SIGNAL \C1|Add5~4_combout\ : std_logic;
SIGNAL \C1|Add5~2_combout\ : std_logic;
SIGNAL \C1|Add5~6_combout\ : std_logic;
SIGNAL \C1|LessThan79~0_combout\ : std_logic;
SIGNAL \C1|Add5~12_combout\ : std_logic;
SIGNAL \C1|LessThan79~1_combout\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~17\ : std_logic;
SIGNAL \C1|Add0~18_combout\ : std_logic;
SIGNAL \C1|Add5~19\ : std_logic;
SIGNAL \C1|Add5~20_combout\ : std_logic;
SIGNAL \C1|LessThan79~4_combout\ : std_logic;
SIGNAL \C1|LessThan70~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~3_combout\ : std_logic;
SIGNAL \C1|Add16~15\ : std_logic;
SIGNAL \C1|Add16~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~2_combout\ : std_logic;
SIGNAL \C1|LessThan69~0_combout\ : std_logic;
SIGNAL \C1|Add16~6_combout\ : std_logic;
SIGNAL \C1|LessThan91~0_combout\ : std_logic;
SIGNAL \C1|LessThan69~1_combout\ : std_logic;
SIGNAL \C1|Add5~8_combout\ : std_logic;
SIGNAL \C1|LessThan89~0_combout\ : std_logic;
SIGNAL \C1|LessThan89~1_combout\ : std_logic;
SIGNAL \C1|Add5~0_combout\ : std_logic;
SIGNAL \C1|LessThan104~0_combout\ : std_logic;
SIGNAL \C1|LessThan88~2_combout\ : std_logic;
SIGNAL \C1|Add5~14_combout\ : std_logic;
SIGNAL \C1|LessThan84~0_combout\ : std_logic;
SIGNAL \C1|LessThan88~3_combout\ : std_logic;
SIGNAL \C1|dMap~211_combout\ : std_logic;
SIGNAL \C1|LessThan82~0_combout\ : std_logic;
SIGNAL \C1|LessThan82~2_combout\ : std_logic;
SIGNAL \C1|LessThan100~0_combout\ : std_logic;
SIGNAL \C1|LessThan82~1_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~66_combout\ : std_logic;
SIGNAL \C1|LessThan79~2_combout\ : std_logic;
SIGNAL \C1|LessThan79~3_combout\ : std_logic;
SIGNAL \C1|Add16~8_combout\ : std_logic;
SIGNAL \C1|dMap~199_combout\ : std_logic;
SIGNAL \C1|dMap~198_combout\ : std_logic;
SIGNAL \C1|dMap~200_combout\ : std_logic;
SIGNAL \C1|LessThan110~0_combout\ : std_logic;
SIGNAL \C1|LessThan93~0_combout\ : std_logic;
SIGNAL \C1|LessThan78~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~65_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~67_combout\ : std_logic;
SIGNAL \C1|dMap~383_combout\ : std_logic;
SIGNAL \C1|dMap~384_combout\ : std_logic;
SIGNAL \C1|dMap~128_combout\ : std_logic;
SIGNAL \C1|dMap~375_combout\ : std_logic;
SIGNAL \C1|LessThan111~6_combout\ : std_logic;
SIGNAL \C1|LessThan111~3_combout\ : std_logic;
SIGNAL \C1|LessThan111~19_combout\ : std_logic;
SIGNAL \C1|LessThan79~5_combout\ : std_logic;
SIGNAL \C1|LessThan80~0_combout\ : std_logic;
SIGNAL \C1|LessThan110~1_combout\ : std_logic;
SIGNAL \C1|dMap~210_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~68_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~69_combout\ : std_logic;
SIGNAL \C1|LessThan87~0_combout\ : std_logic;
SIGNAL \C1|dMap~193_combout\ : std_logic;
SIGNAL \C1|dMap~181_combout\ : std_logic;
SIGNAL \C1|dMap~192_combout\ : std_logic;
SIGNAL \C1|dMap~194_combout\ : std_logic;
SIGNAL \C1|dMap~76_combout\ : std_logic;
SIGNAL \C1|dMap~73_combout\ : std_logic;
SIGNAL \C1|dMap~70_combout\ : std_logic;
SIGNAL \C1|dMap~372_combout\ : std_logic;
SIGNAL \C1|LessThan74~0_combout\ : std_logic;
SIGNAL \C1|dMap~212_combout\ : std_logic;
SIGNAL \C1|LessThan101~0_combout\ : std_logic;
SIGNAL \C1|dMap~213_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~70_combout\ : std_logic;
SIGNAL \C1|dMap~184_combout\ : std_logic;
SIGNAL \C1|dMap~185_combout\ : std_logic;
SIGNAL \C1|LessThan100~1_combout\ : std_logic;
SIGNAL \C1|dMap~379_combout\ : std_logic;
SIGNAL \C1|dMap~380_combout\ : std_logic;
SIGNAL \C1|dMap~216_combout\ : std_logic;
SIGNAL \C1|LessThan85~0_combout\ : std_logic;
SIGNAL \C1|LessThan85~1_combout\ : std_logic;
SIGNAL \C1|LessThan85~2_combout\ : std_logic;
SIGNAL \C1|LessThan100~3_combout\ : std_logic;
SIGNAL \C1|LessThan89~2_combout\ : std_logic;
SIGNAL \C1|LessThan84~1_combout\ : std_logic;
SIGNAL \C1|dMap~215_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~73_combout\ : std_logic;
SIGNAL \C1|LessThan81~3_combout\ : std_logic;
SIGNAL \C1|LessThan81~15_combout\ : std_logic;
SIGNAL \C1|LessThan80~1_combout\ : std_logic;
SIGNAL \C1|LessThan80~2_combout\ : std_logic;
SIGNAL \C1|dMap~214_combout\ : std_logic;
SIGNAL \C1|dMap~180_combout\ : std_logic;
SIGNAL \C1|LessThan71~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~72_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~74_combout\ : std_logic;
SIGNAL \C1|dirQ1X1~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~1_combout\ : std_logic;
SIGNAL \C1|SQ_X1[1]~4_combout\ : std_logic;
SIGNAL \C1|Add22~1\ : std_logic;
SIGNAL \C1|Add22~3\ : std_logic;
SIGNAL \C1|Add22~5\ : std_logic;
SIGNAL \C1|Add22~7\ : std_logic;
SIGNAL \C1|Add22~9\ : std_logic;
SIGNAL \C1|Add22~11\ : std_logic;
SIGNAL \C1|Add22~13\ : std_logic;
SIGNAL \C1|Add22~15\ : std_logic;
SIGNAL \C1|Add22~16_combout\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Add5~17\ : std_logic;
SIGNAL \C1|Add5~18_combout\ : std_logic;
SIGNAL \C1|LessThan78~1_combout\ : std_logic;
SIGNAL \C1|dMap~241_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|LessThan58~0_combout\ : std_logic;
SIGNAL \C1|dMap~217_combout\ : std_logic;
SIGNAL \C1|dMap~218_combout\ : std_logic;
SIGNAL \C1|dMap~219_combout\ : std_logic;
SIGNAL \C1|dMap~240_combout\ : std_logic;
SIGNAL \C1|dMap~224_combout\ : std_logic;
SIGNAL \C1|dMap~223_combout\ : std_logic;
SIGNAL \C1|dMap~225_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~79_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~80_combout\ : std_logic;
SIGNAL \C1|dMap~98_combout\ : std_logic;
SIGNAL \C1|dMap~96_combout\ : std_logic;
SIGNAL \C1|dMap~93_combout\ : std_logic;
SIGNAL \C1|dMap~373_combout\ : std_logic;
SIGNAL \C1|dMap~229_combout\ : std_logic;
SIGNAL \C1|dMap~230_combout\ : std_logic;
SIGNAL \C1|dMap~381_combout\ : std_logic;
SIGNAL \C1|dMap~382_combout\ : std_logic;
SIGNAL \C1|dMap~110_combout\ : std_logic;
SIGNAL \C1|dMap~374_combout\ : std_logic;
SIGNAL \C1|dMap~364_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~82_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~83_combout\ : std_logic;
SIGNAL \C1|dMap~226_combout\ : std_logic;
SIGNAL \C1|dMap~242_combout\ : std_logic;
SIGNAL \C1|LessThan83~1_combout\ : std_logic;
SIGNAL \C1|LessThan83~0_combout\ : std_logic;
SIGNAL \C1|dMap~209_combout\ : std_logic;
SIGNAL \C1|dMap~243_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~81_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~84_combout\ : std_logic;
SIGNAL \C1|SQ1_noAR~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[1]~1_combout\ : std_logic;
SIGNAL \C1|Add16~1\ : std_logic;
SIGNAL \C1|Add16~3\ : std_logic;
SIGNAL \C1|Add16~5\ : std_logic;
SIGNAL \C1|Add16~7\ : std_logic;
SIGNAL \C1|Add16~9\ : std_logic;
SIGNAL \C1|Add16~10_combout\ : std_logic;
SIGNAL \C1|dMap~203_combout\ : std_logic;
SIGNAL \C1|dMap~205_combout\ : std_logic;
SIGNAL \C1|LessThan148~0_combout\ : std_logic;
SIGNAL \C1|Add22~2_combout\ : std_logic;
SIGNAL \C1|LessThan153~0_combout\ : std_logic;
SIGNAL \C1|Add22~12_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~6_combout\ : std_logic;
SIGNAL \C1|LessThan136~1_combout\ : std_logic;
SIGNAL \C1|LessThan133~0_combout\ : std_logic;
SIGNAL \C1|LessThan136~3_combout\ : std_logic;
SIGNAL \C1|LessThan134~0_combout\ : std_logic;
SIGNAL \C1|LessThan134~1_combout\ : std_logic;
SIGNAL \C1|dMap~201_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~63_combout\ : std_logic;
SIGNAL \C1|LessThan148~1_combout\ : std_logic;
SIGNAL \C1|LessThan148~2_combout\ : std_logic;
SIGNAL \C1|dMap~191_combout\ : std_logic;
SIGNAL \C1|LessThan131~1_combout\ : std_logic;
SIGNAL \C1|LessThan132~0_combout\ : std_logic;
SIGNAL \C1|LessThan153~1_combout\ : std_logic;
SIGNAL \C1|dMap~189_combout\ : std_logic;
SIGNAL \C1|dMap~190_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~62_combout\ : std_logic;
SIGNAL \C1|dMap~385_combout\ : std_logic;
SIGNAL \C1|dMap~386_combout\ : std_logic;
SIGNAL \C1|dMap~55_combout\ : std_logic;
SIGNAL \C1|dMap~371_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~64_combout\ : std_logic;
SIGNAL \C1|dMap~182_combout\ : std_logic;
SIGNAL \C1|dMap~183_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~52_combout\ : std_logic;
SIGNAL \C1|dMap~186_combout\ : std_logic;
SIGNAL \C1|dMap~187_combout\ : std_logic;
SIGNAL \C1|dMap~188_combout\ : std_logic;
SIGNAL \C1|LessThan154~0_combout\ : std_logic;
SIGNAL \C1|LessThan151~0_combout\ : std_logic;
SIGNAL \C1|LessThan136~0_combout\ : std_logic;
SIGNAL \C1|LessThan153~3_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~60_combout\ : std_logic;
SIGNAL \C1|LessThan139~0_combout\ : std_logic;
SIGNAL \C1|LessThan141~2_combout\ : std_logic;
SIGNAL \C1|LessThan149~0_combout\ : std_logic;
SIGNAL \C1|LessThan140~0_combout\ : std_logic;
SIGNAL \C1|LessThan147~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~57_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~58_combout\ : std_logic;
SIGNAL \C1|LessThan136~2_combout\ : std_logic;
SIGNAL \C1|LessThan135~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~56_combout\ : std_logic;
SIGNAL \C1|LessThan137~0_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~134_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~54_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~55_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~59_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~61_combout\ : std_logic;
SIGNAL \C1|esqQ1X1~1_combout\ : std_logic;
SIGNAL \C1|Add8~12_combout\ : std_logic;
SIGNAL \C1|Add8~14_combout\ : std_logic;
SIGNAL \C1|Add8~18_combout\ : std_logic;
SIGNAL \C1|Add8~21\ : std_logic;
SIGNAL \C1|Add8~22_combout\ : std_logic;
SIGNAL \C1|dMap~252_combout\ : std_logic;
SIGNAL \C1|dMap~253_combout\ : std_logic;
SIGNAL \C1|Add8~8_combout\ : std_logic;
SIGNAL \C1|Add8~4_combout\ : std_logic;
SIGNAL \C1|dMap~250_combout\ : std_logic;
SIGNAL \C1|dMap~251_combout\ : std_logic;
SIGNAL \C1|dMap~254_combout\ : std_logic;
SIGNAL \C1|Add8~10_combout\ : std_logic;
SIGNAL \C1|Add8~6_combout\ : std_logic;
SIGNAL \C1|LessThan121~0_combout\ : std_logic;
SIGNAL \C1|dMap~246_combout\ : std_logic;
SIGNAL \C1|dMap~247_combout\ : std_logic;
SIGNAL \C1|dMap~248_combout\ : std_logic;
SIGNAL \C1|dMap~249_combout\ : std_logic;
SIGNAL \C1|Add8~16_combout\ : std_logic;
SIGNAL \C1|LessThan112~0_combout\ : std_logic;
SIGNAL \C1|LessThan112~1_combout\ : std_logic;
SIGNAL \C1|process_0~12_combout\ : std_logic;
SIGNAL \C1|process_0~13_combout\ : std_logic;
SIGNAL \C1|process_0~14_combout\ : std_logic;
SIGNAL \C1|LessThan112~2_combout\ : std_logic;
SIGNAL \C1|dMap~255_combout\ : std_logic;
SIGNAL \C1|dMap~256_combout\ : std_logic;
SIGNAL \C1|dMap~257_combout\ : std_logic;
SIGNAL \C1|process_0~15_combout\ : std_logic;
SIGNAL \C1|process_0~16_combout\ : std_logic;
SIGNAL \C1|dMap~259_combout\ : std_logic;
SIGNAL \C1|dMap~260_combout\ : std_logic;
SIGNAL \C1|dMap~261_combout\ : std_logic;
SIGNAL \C1|process_0~17_combout\ : std_logic;
SIGNAL \C1|LessThan119~0_combout\ : std_logic;
SIGNAL \C1|dMap~262_combout\ : std_logic;
SIGNAL \C1|dMap~263_combout\ : std_logic;
SIGNAL \C1|dMap~264_combout\ : std_logic;
SIGNAL \C1|dMap~258_combout\ : std_logic;
SIGNAL \C1|dMap~265_combout\ : std_logic;
SIGNAL \C1|dMap~266_combout\ : std_logic;
SIGNAL \C1|process_0~18_combout\ : std_logic;
SIGNAL \C1|process_0~19_combout\ : std_logic;
SIGNAL \C1|process_0~20_combout\ : std_logic;
SIGNAL \C1|process_0~23_combout\ : std_logic;
SIGNAL \C1|Add22~17\ : std_logic;
SIGNAL \C1|Add22~18_combout\ : std_logic;
SIGNAL \C1|LessThan130~2_combout\ : std_logic;
SIGNAL \C1|dMap~20_combout\ : std_logic;
SIGNAL \C1|dMap~17_combout\ : std_logic;
SIGNAL \C1|dMap~369_combout\ : std_logic;
SIGNAL \C1|dMap~231_combout\ : std_logic;
SIGNAL \C1|dMap~232_combout\ : std_logic;
SIGNAL \C1|dMap~233_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~76_combout\ : std_logic;
SIGNAL \C1|dMap~227_combout\ : std_logic;
SIGNAL \C1|dMap~228_combout\ : std_logic;
SIGNAL \C1|DRAWMAP~77_combout\ : std_logic;
SIGNAL \C1|arQ1X1~1_combout\ : std_logic;
SIGNAL \C1|arQ1X1~2_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump[13]~0_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump[13]~1_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~31_combout\ : std_logic;
SIGNAL \C1|Add19~58_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~33_combout\ : std_logic;
SIGNAL \C1|Add19~60_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~34_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~7_combout\ : std_logic;
SIGNAL \C1|Add19~0_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~4_combout\ : std_logic;
SIGNAL \C1|Add19~1\ : std_logic;
SIGNAL \C1|Add19~3\ : std_logic;
SIGNAL \C1|Add19~5\ : std_logic;
SIGNAL \C1|Add19~7\ : std_logic;
SIGNAL \C1|Add19~8_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~8_combout\ : std_logic;
SIGNAL \C1|Add19~9\ : std_logic;
SIGNAL \C1|Add19~10_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~9_combout\ : std_logic;
SIGNAL \C1|Add19~11\ : std_logic;
SIGNAL \C1|Add19~12_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~10_combout\ : std_logic;
SIGNAL \C1|Add19~13\ : std_logic;
SIGNAL \C1|Add19~14_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~11_combout\ : std_logic;
SIGNAL \C1|Add19~15\ : std_logic;
SIGNAL \C1|Add19~16_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~12_combout\ : std_logic;
SIGNAL \C1|Add19~17\ : std_logic;
SIGNAL \C1|Add19~18_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~13_combout\ : std_logic;
SIGNAL \C1|Add19~19\ : std_logic;
SIGNAL \C1|Add19~21\ : std_logic;
SIGNAL \C1|Add19~22_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~15_combout\ : std_logic;
SIGNAL \C1|Add19~23\ : std_logic;
SIGNAL \C1|Add19~25\ : std_logic;
SIGNAL \C1|Add19~26_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~17_combout\ : std_logic;
SIGNAL \C1|Add19~27\ : std_logic;
SIGNAL \C1|Add19~28_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~18_combout\ : std_logic;
SIGNAL \C1|Add19~29\ : std_logic;
SIGNAL \C1|Add19~31\ : std_logic;
SIGNAL \C1|Add19~33\ : std_logic;
SIGNAL \C1|Add19~34_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~21_combout\ : std_logic;
SIGNAL \C1|Add19~35\ : std_logic;
SIGNAL \C1|Add19~36_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~22_combout\ : std_logic;
SIGNAL \C1|Add19~37\ : std_logic;
SIGNAL \C1|Add19~39\ : std_logic;
SIGNAL \C1|Add19~41\ : std_logic;
SIGNAL \C1|Add19~42_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~25_combout\ : std_logic;
SIGNAL \C1|Add19~43\ : std_logic;
SIGNAL \C1|Add19~44_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~26_combout\ : std_logic;
SIGNAL \C1|Add19~45\ : std_logic;
SIGNAL \C1|Add19~46_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~27_combout\ : std_logic;
SIGNAL \C1|Add19~47\ : std_logic;
SIGNAL \C1|Add19~49\ : std_logic;
SIGNAL \C1|Add19~50_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~29_combout\ : std_logic;
SIGNAL \C1|Add19~51\ : std_logic;
SIGNAL \C1|Add19~52_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~30_combout\ : std_logic;
SIGNAL \C1|LessThan261~7_combout\ : std_logic;
SIGNAL \C1|LessThan261~8_combout\ : std_logic;
SIGNAL \C1|Add19~40_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~24_combout\ : std_logic;
SIGNAL \C1|LessThan261~6_combout\ : std_logic;
SIGNAL \C1|LessThan261~1_combout\ : std_logic;
SIGNAL \C1|Add19~30_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~19_combout\ : std_logic;
SIGNAL \C1|LessThan261~3_combout\ : std_logic;
SIGNAL \C1|Add19~4_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~6_combout\ : std_logic;
SIGNAL \C1|LessThan261~0_combout\ : std_logic;
SIGNAL \C1|LessThan261~4_combout\ : std_logic;
SIGNAL \C1|LessThan261~9_combout\ : std_logic;
SIGNAL \C1|LessThan261~10_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump[31]~3_combout\ : std_logic;
SIGNAL \C1|Add19~53\ : std_logic;
SIGNAL \C1|Add19~55\ : std_logic;
SIGNAL \C1|Add19~56_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~32_combout\ : std_logic;
SIGNAL \C1|Add19~57\ : std_logic;
SIGNAL \C1|Add19~59\ : std_logic;
SIGNAL \C1|Add19~61\ : std_logic;
SIGNAL \C1|Add19~62_combout\ : std_logic;
SIGNAL \C1|SQ1_Jump~2_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[3]~0_combout\ : std_logic;
SIGNAL \C1|Add16~17\ : std_logic;
SIGNAL \C1|Add16~18_combout\ : std_logic;
SIGNAL \C1|LessThan2~1_cout\ : std_logic;
SIGNAL \C1|LessThan2~3_cout\ : std_logic;
SIGNAL \C1|LessThan2~5_cout\ : std_logic;
SIGNAL \C1|LessThan2~7_cout\ : std_logic;
SIGNAL \C1|LessThan2~9_cout\ : std_logic;
SIGNAL \C1|LessThan2~11_cout\ : std_logic;
SIGNAL \C1|LessThan2~13_cout\ : std_logic;
SIGNAL \C1|LessThan2~15_cout\ : std_logic;
SIGNAL \C1|LessThan2~17_cout\ : std_logic;
SIGNAL \C1|LessThan2~19_cout\ : std_logic;
SIGNAL \C1|LessThan2~20_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_cout\ : std_logic;
SIGNAL \C1|LessThan0~3_cout\ : std_logic;
SIGNAL \C1|LessThan0~5_cout\ : std_logic;
SIGNAL \C1|LessThan0~7_cout\ : std_logic;
SIGNAL \C1|LessThan0~9_cout\ : std_logic;
SIGNAL \C1|LessThan0~11_cout\ : std_logic;
SIGNAL \C1|LessThan0~13_cout\ : std_logic;
SIGNAL \C1|LessThan0~15_cout\ : std_logic;
SIGNAL \C1|LessThan0~17_cout\ : std_logic;
SIGNAL \C1|LessThan0~18_combout\ : std_logic;
SIGNAL \C1|B~0_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \C1|B~1_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \C1|R~2_combout\ : std_logic;
SIGNAL \C1|G~0_combout\ : std_logic;
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ2_Jump\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C1|SQ1_Jump\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_24~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_CLOCK_24 <= CLOCK_24;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll_INCLK_bus\ <= (gnd & \CLOCK_24~combout\(0));

\C|altpll_0|sd1|_clk0\ <= \C|altpll_0|sd1|pll_CLK_bus\(0);
\C|altpll_0|sd1|pll~CLK1\ <= \C|altpll_0|sd1|pll_CLK_bus\(1);
\C|altpll_0|sd1|pll~CLK2\ <= \C|altpll_0|sd1|pll_CLK_bus\(2);

\C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C|altpll_0|sd1|_clk0\);

-- Location: LCCOMB_X25_Y16_N6
\C1|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~1_cout\ = CARRY((\C1|Add1~0_combout\ & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C1|LessThan3~1_cout\);

-- Location: LCCOMB_X25_Y16_N8
\C1|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~3_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan3~1_cout\) # (!\C1|Add1~2_combout\))) # (!\C1|VPOS\(2) & (!\C1|Add1~2_combout\ & !\C1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|LessThan3~1_cout\,
	cout => \C1|LessThan3~3_cout\);

-- Location: LCCOMB_X25_Y16_N10
\C1|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~5_cout\ = CARRY((\C1|Add1~4_combout\ & ((!\C1|LessThan3~3_cout\) # (!\C1|VPOS\(3)))) # (!\C1|Add1~4_combout\ & (!\C1|VPOS\(3) & !\C1|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan3~3_cout\,
	cout => \C1|LessThan3~5_cout\);

-- Location: LCCOMB_X25_Y16_N12
\C1|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~7_cout\ = CARRY((\C1|Add1~6_combout\ & (\C1|VPOS\(4) & !\C1|LessThan3~5_cout\)) # (!\C1|Add1~6_combout\ & ((\C1|VPOS\(4)) # (!\C1|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan3~5_cout\,
	cout => \C1|LessThan3~7_cout\);

-- Location: LCCOMB_X25_Y16_N14
\C1|LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~9_cout\ = CARRY((\C1|Add1~8_combout\ & ((!\C1|LessThan3~7_cout\) # (!\C1|VPOS\(5)))) # (!\C1|Add1~8_combout\ & (!\C1|VPOS\(5) & !\C1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan3~7_cout\,
	cout => \C1|LessThan3~9_cout\);

-- Location: LCCOMB_X25_Y16_N16
\C1|LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~11_cout\ = CARRY((\C1|Add1~10_combout\ & (\C1|VPOS\(6) & !\C1|LessThan3~9_cout\)) # (!\C1|Add1~10_combout\ & ((\C1|VPOS\(6)) # (!\C1|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan3~9_cout\,
	cout => \C1|LessThan3~11_cout\);

-- Location: LCCOMB_X25_Y16_N18
\C1|LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~13_cout\ = CARRY((\C1|Add1~12_combout\ & ((!\C1|LessThan3~11_cout\) # (!\C1|VPOS\(7)))) # (!\C1|Add1~12_combout\ & (!\C1|VPOS\(7) & !\C1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan3~11_cout\,
	cout => \C1|LessThan3~13_cout\);

-- Location: LCCOMB_X25_Y16_N20
\C1|LessThan3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan3~13_cout\) # (!\C1|Add1~14_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add1~14_combout\ & !\C1|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|LessThan3~13_cout\,
	cout => \C1|LessThan3~15_cout\);

-- Location: LCCOMB_X25_Y16_N22
\C1|LessThan3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~17_cout\ = CARRY((\C1|VPOS\(9) & (\C1|Add1~16_combout\ & !\C1|LessThan3~15_cout\)) # (!\C1|VPOS\(9) & ((\C1|Add1~16_combout\) # (!\C1|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|Add1~16_combout\,
	datad => VCC,
	cin => \C1|LessThan3~15_cout\,
	cout => \C1|LessThan3~17_cout\);

-- Location: LCCOMB_X25_Y16_N24
\C1|LessThan3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~18_combout\ = (\C1|VPOS\(10) & (\C1|LessThan3~17_cout\ & \C1|Add1~18_combout\)) # (!\C1|VPOS\(10) & ((\C1|LessThan3~17_cout\) # (\C1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(10),
	datad => \C1|Add1~18_combout\,
	cin => \C1|LessThan3~17_cout\,
	combout => \C1|LessThan3~18_combout\);

-- Location: LCCOMB_X22_Y18_N16
\C1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|SQ_X1\(5) & ((\C1|Add0~5\) # (GND))) # (!\C1|SQ_X1\(5) & (!\C1|Add0~5\))
-- \C1|Add0~7\ = CARRY((\C1|SQ_X1\(5)) # (!\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X22_Y18_N26
\C1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = (\C1|SQ_X1\(10) & (\C1|Add0~15\ $ (GND))) # (!\C1|SQ_X1\(10) & (!\C1|Add0~15\ & VCC))
-- \C1|Add0~17\ = CARRY((\C1|SQ_X1\(10) & !\C1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => VCC,
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\,
	cout => \C1|Add0~17\);

-- Location: LCCOMB_X26_Y18_N10
\C1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y18_N12
\C1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~3_cout\ = CARRY((\C1|SQ_X1\(1) & (!\C1|HPOS\(1) & !\C1|LessThan1~1_cout\)) # (!\C1|SQ_X1\(1) & ((!\C1|LessThan1~1_cout\) # (!\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan1~1_cout\,
	cout => \C1|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y18_N14
\C1|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~5_cout\ = CARRY((\C1|HPOS\(2) & ((!\C1|LessThan1~3_cout\) # (!\C1|Add0~0_combout\))) # (!\C1|HPOS\(2) & (!\C1|Add0~0_combout\ & !\C1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|LessThan1~3_cout\,
	cout => \C1|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y18_N16
\C1|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~7_cout\ = CARRY((\C1|Add0~2_combout\ & ((!\C1|LessThan1~5_cout\) # (!\C1|HPOS\(3)))) # (!\C1|Add0~2_combout\ & (!\C1|HPOS\(3) & !\C1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan1~5_cout\,
	cout => \C1|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y18_N18
\C1|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~9_cout\ = CARRY((\C1|HPOS\(4) & ((!\C1|LessThan1~7_cout\) # (!\C1|Add0~4_combout\))) # (!\C1|HPOS\(4) & (!\C1|Add0~4_combout\ & !\C1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan1~7_cout\,
	cout => \C1|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y18_N20
\C1|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~11_cout\ = CARRY((\C1|Add0~6_combout\ & ((!\C1|LessThan1~9_cout\) # (!\C1|HPOS\(5)))) # (!\C1|Add0~6_combout\ & (!\C1|HPOS\(5) & !\C1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan1~9_cout\,
	cout => \C1|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y18_N22
\C1|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~13_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan1~11_cout\) # (!\C1|Add0~8_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add0~8_combout\ & !\C1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|LessThan1~11_cout\,
	cout => \C1|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y18_N24
\C1|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~15_cout\ = CARRY((\C1|HPOS\(7) & (\C1|Add0~10_combout\ & !\C1|LessThan1~13_cout\)) # (!\C1|HPOS\(7) & ((\C1|Add0~10_combout\) # (!\C1|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|LessThan1~13_cout\,
	cout => \C1|LessThan1~15_cout\);

-- Location: LCCOMB_X26_Y18_N26
\C1|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~17_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan1~15_cout\) # (!\C1|Add0~12_combout\))) # (!\C1|HPOS\(8) & (!\C1|Add0~12_combout\ & !\C1|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|LessThan1~15_cout\,
	cout => \C1|LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y18_N28
\C1|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~19_cout\ = CARRY((\C1|HPOS\(9) & (\C1|Add0~14_combout\ & !\C1|LessThan1~17_cout\)) # (!\C1|HPOS\(9) & ((\C1|Add0~14_combout\) # (!\C1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|LessThan1~17_cout\,
	cout => \C1|LessThan1~19_cout\);

-- Location: LCCOMB_X26_Y18_N30
\C1|LessThan1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~20_combout\ = (\C1|Add0~16_combout\ & ((\C1|LessThan1~19_cout\) # (!\C1|HPOS\(10)))) # (!\C1|Add0~16_combout\ & (\C1|LessThan1~19_cout\ & !\C1|HPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan1~19_cout\,
	combout => \C1|LessThan1~20_combout\);

-- Location: LCCOMB_X32_Y18_N10
\C1|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((\C1|Add3~0_combout\ & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X32_Y18_N12
\C1|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan7~1_cout\) # (!\C1|Add3~2_combout\))) # (!\C1|VPOS\(2) & (!\C1|Add3~2_combout\ & !\C1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X32_Y18_N14
\C1|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|VPOS\(3) & (\C1|Add3~4_combout\ & !\C1|LessThan7~3_cout\)) # (!\C1|VPOS\(3) & ((\C1|Add3~4_combout\) # (!\C1|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X32_Y18_N16
\C1|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|Add3~6_combout\ & (\C1|VPOS\(4) & !\C1|LessThan7~5_cout\)) # (!\C1|Add3~6_combout\ & ((\C1|VPOS\(4)) # (!\C1|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X32_Y18_N18
\C1|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|VPOS\(5) & (\C1|Add3~8_combout\ & !\C1|LessThan7~7_cout\)) # (!\C1|VPOS\(5) & ((\C1|Add3~8_combout\) # (!\C1|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X32_Y18_N20
\C1|LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan7~9_cout\) # (!\C1|Add3~10_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add3~10_combout\ & !\C1|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X32_Y18_N22
\C1|LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|Add3~12_combout\ & ((!\C1|LessThan7~11_cout\) # (!\C1|VPOS\(7)))) # (!\C1|Add3~12_combout\ & (!\C1|VPOS\(7) & !\C1|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X32_Y18_N24
\C1|LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan7~13_cout\) # (!\C1|Add3~14_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add3~14_combout\ & !\C1|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X32_Y18_N26
\C1|LessThan7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~17_cout\ = CARRY((\C1|Add3~16_combout\ & ((!\C1|LessThan7~15_cout\) # (!\C1|VPOS\(9)))) # (!\C1|Add3~16_combout\ & (!\C1|VPOS\(9) & !\C1|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~16_combout\,
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan7~15_cout\,
	cout => \C1|LessThan7~17_cout\);

-- Location: LCCOMB_X32_Y18_N28
\C1|LessThan7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~18_combout\ = (\C1|Add3~18_combout\ & ((\C1|LessThan7~17_cout\) # (!\C1|VPOS\(10)))) # (!\C1|Add3~18_combout\ & (!\C1|VPOS\(10) & \C1|LessThan7~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~18_combout\,
	datab => \C1|VPOS\(10),
	cin => \C1|LessThan7~17_cout\,
	combout => \C1|LessThan7~18_combout\);

-- Location: LCCOMB_X19_Y16_N2
\C1|Add19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~2_combout\ = (\C1|SQ1_Jump\(1) & (\C1|Add19~1\ & VCC)) # (!\C1|SQ1_Jump\(1) & (!\C1|Add19~1\))
-- \C1|Add19~3\ = CARRY((!\C1|SQ1_Jump\(1) & !\C1|Add19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(1),
	datad => VCC,
	cin => \C1|Add19~1\,
	combout => \C1|Add19~2_combout\,
	cout => \C1|Add19~3\);

-- Location: LCCOMB_X19_Y16_N6
\C1|Add19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~6_combout\ = (\C1|SQ1_Jump\(3) & (\C1|Add19~5\ & VCC)) # (!\C1|SQ1_Jump\(3) & (!\C1|Add19~5\))
-- \C1|Add19~7\ = CARRY((!\C1|SQ1_Jump\(3) & !\C1|Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(3),
	datad => VCC,
	cin => \C1|Add19~5\,
	combout => \C1|Add19~6_combout\,
	cout => \C1|Add19~7\);

-- Location: LCCOMB_X19_Y16_N20
\C1|Add19~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~20_combout\ = (\C1|SQ1_Jump\(10) & ((GND) # (!\C1|Add19~19\))) # (!\C1|SQ1_Jump\(10) & (\C1|Add19~19\ $ (GND)))
-- \C1|Add19~21\ = CARRY((\C1|SQ1_Jump\(10)) # (!\C1|Add19~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(10),
	datad => VCC,
	cin => \C1|Add19~19\,
	combout => \C1|Add19~20_combout\,
	cout => \C1|Add19~21\);

-- Location: LCCOMB_X19_Y16_N24
\C1|Add19~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~24_combout\ = (\C1|SQ1_Jump\(12) & ((GND) # (!\C1|Add19~23\))) # (!\C1|SQ1_Jump\(12) & (\C1|Add19~23\ $ (GND)))
-- \C1|Add19~25\ = CARRY((\C1|SQ1_Jump\(12)) # (!\C1|Add19~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(12),
	datad => VCC,
	cin => \C1|Add19~23\,
	combout => \C1|Add19~24_combout\,
	cout => \C1|Add19~25\);

-- Location: LCCOMB_X19_Y15_N0
\C1|Add19~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~32_combout\ = (\C1|SQ1_Jump\(16) & ((GND) # (!\C1|Add19~31\))) # (!\C1|SQ1_Jump\(16) & (\C1|Add19~31\ $ (GND)))
-- \C1|Add19~33\ = CARRY((\C1|SQ1_Jump\(16)) # (!\C1|Add19~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(16),
	datad => VCC,
	cin => \C1|Add19~31\,
	combout => \C1|Add19~32_combout\,
	cout => \C1|Add19~33\);

-- Location: LCCOMB_X19_Y15_N6
\C1|Add19~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~38_combout\ = (\C1|SQ1_Jump\(19) & (\C1|Add19~37\ & VCC)) # (!\C1|SQ1_Jump\(19) & (!\C1|Add19~37\))
-- \C1|Add19~39\ = CARRY((!\C1|SQ1_Jump\(19) & !\C1|Add19~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(19),
	datad => VCC,
	cin => \C1|Add19~37\,
	combout => \C1|Add19~38_combout\,
	cout => \C1|Add19~39\);

-- Location: LCCOMB_X19_Y15_N16
\C1|Add19~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~48_combout\ = (\C1|SQ1_Jump\(24) & ((GND) # (!\C1|Add19~47\))) # (!\C1|SQ1_Jump\(24) & (\C1|Add19~47\ $ (GND)))
-- \C1|Add19~49\ = CARRY((\C1|SQ1_Jump\(24)) # (!\C1|Add19~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(24),
	datad => VCC,
	cin => \C1|Add19~47\,
	combout => \C1|Add19~48_combout\,
	cout => \C1|Add19~49\);

-- Location: LCCOMB_X19_Y15_N22
\C1|Add19~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~54_combout\ = (\C1|SQ1_Jump\(27) & (\C1|Add19~53\ & VCC)) # (!\C1|SQ1_Jump\(27) & (!\C1|Add19~53\))
-- \C1|Add19~55\ = CARRY((!\C1|SQ1_Jump\(27) & !\C1|Add19~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(27),
	datad => VCC,
	cin => \C1|Add19~53\,
	combout => \C1|Add19~54_combout\,
	cout => \C1|Add19~55\);

-- Location: LCCOMB_X30_Y22_N0
\C1|Add21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~0_combout\ = \C1|SQ2_Jump\(0) $ (VCC)
-- \C1|Add21~1\ = CARRY(\C1|SQ2_Jump\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(0),
	datad => VCC,
	combout => \C1|Add21~0_combout\,
	cout => \C1|Add21~1\);

-- Location: LCCOMB_X30_Y22_N2
\C1|Add21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~2_combout\ = (\C1|SQ2_Jump\(1) & (\C1|Add21~1\ & VCC)) # (!\C1|SQ2_Jump\(1) & (!\C1|Add21~1\))
-- \C1|Add21~3\ = CARRY((!\C1|SQ2_Jump\(1) & !\C1|Add21~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(1),
	datad => VCC,
	cin => \C1|Add21~1\,
	combout => \C1|Add21~2_combout\,
	cout => \C1|Add21~3\);

-- Location: LCCOMB_X30_Y22_N10
\C1|Add21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~10_combout\ = (\C1|SQ2_Jump\(5) & (\C1|Add21~9\ & VCC)) # (!\C1|SQ2_Jump\(5) & (!\C1|Add21~9\))
-- \C1|Add21~11\ = CARRY((!\C1|SQ2_Jump\(5) & !\C1|Add21~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(5),
	datad => VCC,
	cin => \C1|Add21~9\,
	combout => \C1|Add21~10_combout\,
	cout => \C1|Add21~11\);

-- Location: LCCOMB_X30_Y22_N14
\C1|Add21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~14_combout\ = (\C1|SQ2_Jump\(7) & (\C1|Add21~13\ & VCC)) # (!\C1|SQ2_Jump\(7) & (!\C1|Add21~13\))
-- \C1|Add21~15\ = CARRY((!\C1|SQ2_Jump\(7) & !\C1|Add21~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(7),
	datad => VCC,
	cin => \C1|Add21~13\,
	combout => \C1|Add21~14_combout\,
	cout => \C1|Add21~15\);

-- Location: LCCOMB_X30_Y22_N16
\C1|Add21~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~16_combout\ = (\C1|SQ2_Jump\(8) & ((GND) # (!\C1|Add21~15\))) # (!\C1|SQ2_Jump\(8) & (\C1|Add21~15\ $ (GND)))
-- \C1|Add21~17\ = CARRY((\C1|SQ2_Jump\(8)) # (!\C1|Add21~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(8),
	datad => VCC,
	cin => \C1|Add21~15\,
	combout => \C1|Add21~16_combout\,
	cout => \C1|Add21~17\);

-- Location: LCCOMB_X30_Y22_N20
\C1|Add21~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~20_combout\ = (\C1|SQ2_Jump\(10) & ((GND) # (!\C1|Add21~19\))) # (!\C1|SQ2_Jump\(10) & (\C1|Add21~19\ $ (GND)))
-- \C1|Add21~21\ = CARRY((\C1|SQ2_Jump\(10)) # (!\C1|Add21~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(10),
	datad => VCC,
	cin => \C1|Add21~19\,
	combout => \C1|Add21~20_combout\,
	cout => \C1|Add21~21\);

-- Location: LCCOMB_X30_Y22_N26
\C1|Add21~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~26_combout\ = (\C1|SQ2_Jump\(13) & (\C1|Add21~25\ & VCC)) # (!\C1|SQ2_Jump\(13) & (!\C1|Add21~25\))
-- \C1|Add21~27\ = CARRY((!\C1|SQ2_Jump\(13) & !\C1|Add21~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(13),
	datad => VCC,
	cin => \C1|Add21~25\,
	combout => \C1|Add21~26_combout\,
	cout => \C1|Add21~27\);

-- Location: LCCOMB_X30_Y22_N28
\C1|Add21~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~28_combout\ = (\C1|SQ2_Jump\(14) & ((GND) # (!\C1|Add21~27\))) # (!\C1|SQ2_Jump\(14) & (\C1|Add21~27\ $ (GND)))
-- \C1|Add21~29\ = CARRY((\C1|SQ2_Jump\(14)) # (!\C1|Add21~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(14),
	datad => VCC,
	cin => \C1|Add21~27\,
	combout => \C1|Add21~28_combout\,
	cout => \C1|Add21~29\);

-- Location: LCCOMB_X30_Y22_N30
\C1|Add21~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~30_combout\ = (\C1|SQ2_Jump\(15) & (\C1|Add21~29\ & VCC)) # (!\C1|SQ2_Jump\(15) & (!\C1|Add21~29\))
-- \C1|Add21~31\ = CARRY((!\C1|SQ2_Jump\(15) & !\C1|Add21~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(15),
	datad => VCC,
	cin => \C1|Add21~29\,
	combout => \C1|Add21~30_combout\,
	cout => \C1|Add21~31\);

-- Location: LCCOMB_X30_Y21_N2
\C1|Add21~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~34_combout\ = (\C1|SQ2_Jump\(17) & (\C1|Add21~33\ & VCC)) # (!\C1|SQ2_Jump\(17) & (!\C1|Add21~33\))
-- \C1|Add21~35\ = CARRY((!\C1|SQ2_Jump\(17) & !\C1|Add21~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(17),
	datad => VCC,
	cin => \C1|Add21~33\,
	combout => \C1|Add21~34_combout\,
	cout => \C1|Add21~35\);

-- Location: LCCOMB_X30_Y21_N4
\C1|Add21~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~36_combout\ = (\C1|SQ2_Jump\(18) & ((GND) # (!\C1|Add21~35\))) # (!\C1|SQ2_Jump\(18) & (\C1|Add21~35\ $ (GND)))
-- \C1|Add21~37\ = CARRY((\C1|SQ2_Jump\(18)) # (!\C1|Add21~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(18),
	datad => VCC,
	cin => \C1|Add21~35\,
	combout => \C1|Add21~36_combout\,
	cout => \C1|Add21~37\);

-- Location: LCCOMB_X30_Y21_N8
\C1|Add21~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~40_combout\ = (\C1|SQ2_Jump\(20) & ((GND) # (!\C1|Add21~39\))) # (!\C1|SQ2_Jump\(20) & (\C1|Add21~39\ $ (GND)))
-- \C1|Add21~41\ = CARRY((\C1|SQ2_Jump\(20)) # (!\C1|Add21~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(20),
	datad => VCC,
	cin => \C1|Add21~39\,
	combout => \C1|Add21~40_combout\,
	cout => \C1|Add21~41\);

-- Location: LCCOMB_X30_Y21_N10
\C1|Add21~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~42_combout\ = (\C1|SQ2_Jump\(21) & (\C1|Add21~41\ & VCC)) # (!\C1|SQ2_Jump\(21) & (!\C1|Add21~41\))
-- \C1|Add21~43\ = CARRY((!\C1|SQ2_Jump\(21) & !\C1|Add21~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(21),
	datad => VCC,
	cin => \C1|Add21~41\,
	combout => \C1|Add21~42_combout\,
	cout => \C1|Add21~43\);

-- Location: LCCOMB_X30_Y21_N12
\C1|Add21~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~44_combout\ = (\C1|SQ2_Jump\(22) & ((GND) # (!\C1|Add21~43\))) # (!\C1|SQ2_Jump\(22) & (\C1|Add21~43\ $ (GND)))
-- \C1|Add21~45\ = CARRY((\C1|SQ2_Jump\(22)) # (!\C1|Add21~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(22),
	datad => VCC,
	cin => \C1|Add21~43\,
	combout => \C1|Add21~44_combout\,
	cout => \C1|Add21~45\);

-- Location: LCCOMB_X30_Y21_N14
\C1|Add21~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~46_combout\ = (\C1|SQ2_Jump\(23) & (\C1|Add21~45\ & VCC)) # (!\C1|SQ2_Jump\(23) & (!\C1|Add21~45\))
-- \C1|Add21~47\ = CARRY((!\C1|SQ2_Jump\(23) & !\C1|Add21~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(23),
	datad => VCC,
	cin => \C1|Add21~45\,
	combout => \C1|Add21~46_combout\,
	cout => \C1|Add21~47\);

-- Location: LCCOMB_X30_Y21_N16
\C1|Add21~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~48_combout\ = (\C1|SQ2_Jump\(24) & ((GND) # (!\C1|Add21~47\))) # (!\C1|SQ2_Jump\(24) & (\C1|Add21~47\ $ (GND)))
-- \C1|Add21~49\ = CARRY((\C1|SQ2_Jump\(24)) # (!\C1|Add21~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(24),
	datad => VCC,
	cin => \C1|Add21~47\,
	combout => \C1|Add21~48_combout\,
	cout => \C1|Add21~49\);

-- Location: LCCOMB_X30_Y21_N18
\C1|Add21~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~50_combout\ = (\C1|SQ2_Jump\(25) & (\C1|Add21~49\ & VCC)) # (!\C1|SQ2_Jump\(25) & (!\C1|Add21~49\))
-- \C1|Add21~51\ = CARRY((!\C1|SQ2_Jump\(25) & !\C1|Add21~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(25),
	datad => VCC,
	cin => \C1|Add21~49\,
	combout => \C1|Add21~50_combout\,
	cout => \C1|Add21~51\);

-- Location: LCCOMB_X30_Y21_N22
\C1|Add21~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~54_combout\ = (\C1|SQ2_Jump\(27) & (\C1|Add21~53\ & VCC)) # (!\C1|SQ2_Jump\(27) & (!\C1|Add21~53\))
-- \C1|Add21~55\ = CARRY((!\C1|SQ2_Jump\(27) & !\C1|Add21~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(27),
	datad => VCC,
	cin => \C1|Add21~53\,
	combout => \C1|Add21~54_combout\,
	cout => \C1|Add21~55\);

-- Location: LCCOMB_X30_Y21_N28
\C1|Add21~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~60_combout\ = (\C1|SQ2_Jump\(30) & ((GND) # (!\C1|Add21~59\))) # (!\C1|SQ2_Jump\(30) & (\C1|Add21~59\ $ (GND)))
-- \C1|Add21~61\ = CARRY((\C1|SQ2_Jump\(30)) # (!\C1|Add21~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(30),
	datad => VCC,
	cin => \C1|Add21~59\,
	combout => \C1|Add21~60_combout\,
	cout => \C1|Add21~61\);

-- Location: LCCOMB_X26_Y16_N0
\C1|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~1_combout\ = ((!\C1|VPOS\(4) & ((\C1|LessThan8~0_combout\) # (!\C1|VPOS\(3))))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|LessThan8~0_combout\,
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan8~1_combout\);

-- Location: LCCOMB_X30_Y15_N22
\C1|LessThan264~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan264~4_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|LessThan264~4_combout\);

-- Location: LCCOMB_X30_Y15_N26
\C1|LessThan18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan18~0_combout\ = ((\C1|LessThan264~4_combout\ & ((\C1|process_0~0_combout\) # (!\C1|LessThan264~5_combout\)))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan264~5_combout\,
	datab => \C1|LessThan264~4_combout\,
	datac => \C1|process_0~0_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|LessThan18~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\C1|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = (!\C1|HPOS\(10) & (!\C1|HPOS\(9) & ((\C1|LessThan18~0_combout\) # (!\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(10),
	datac => \C1|LessThan18~0_combout\,
	datad => \C1|HPOS\(9),
	combout => \C1|LessThan9~0_combout\);

-- Location: LCCOMB_X27_Y16_N4
\C1|DRAWMAP~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~14_combout\ = (!\C1|LessThan9~0_combout\ & (((\C1|VPOS\(10)) # (!\C1|LessThan265~0_combout\)) # (!\C1|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~1_combout\,
	datab => \C1|LessThan265~0_combout\,
	datac => \C1|LessThan9~0_combout\,
	datad => \C1|VPOS\(10),
	combout => \C1|DRAWMAP~14_combout\);

-- Location: LCCOMB_X26_Y16_N14
\C1|DRAWMAP~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~16_combout\ = (!\C1|HPOS\(8) & (\C1|HPOS\(10) & (\C1|LessThan18~0_combout\ & \C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(10),
	datac => \C1|LessThan18~0_combout\,
	datad => \C1|HPOS\(9),
	combout => \C1|DRAWMAP~16_combout\);

-- Location: LCCOMB_X31_Y15_N6
\C1|LessThan50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan50~0_combout\ = ((\C1|process_0~6_combout\ & ((!\C1|LessThan45~0_combout\) # (!\C1|HPOS\(3))))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(3),
	datac => \C1|LessThan45~0_combout\,
	datad => \C1|process_0~6_combout\,
	combout => \C1|LessThan50~0_combout\);

-- Location: LCCOMB_X29_Y16_N12
\C1|LessThan47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan47~0_combout\ = (!\C1|VPOS\(4) & (!\C1|VPOS\(3) & ((\C1|LessThan268~0_combout\) # (!\C1|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|LessThan268~0_combout\,
	combout => \C1|LessThan47~0_combout\);

-- Location: LCCOMB_X30_Y16_N8
\C1|DRAWMAP~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~19_combout\ = (!\C1|HPOS\(7) & (\C1|LessThan50~0_combout\ & !\C1|dMap~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datac => \C1|LessThan50~0_combout\,
	datad => \C1|dMap~165_combout\,
	combout => \C1|DRAWMAP~19_combout\);

-- Location: LCCOMB_X29_Y16_N20
\C1|DRAWMAP~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~20_combout\ = (\C1|VPOS\(7) & (\C1|VPOS\(8) & \C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~20_combout\);

-- Location: LCCOMB_X30_Y15_N6
\C1|dMap~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~168_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS\(5) & ((\C1|LessThan45~0_combout\)))) # (!\C1|HPOS\(3) & (\C1|HPOS\(5) & (\C1|LessThan46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(5),
	datac => \C1|LessThan46~0_combout\,
	datad => \C1|LessThan45~0_combout\,
	combout => \C1|dMap~168_combout\);

-- Location: LCCOMB_X29_Y18_N12
\C1|dMap~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~169_combout\ = ((!\C1|VPOS\(3) & ((!\C1|VPOS\(1)) # (!\C1|VPOS\(2))))) # (!\C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(1),
	combout => \C1|dMap~169_combout\);

-- Location: LCCOMB_X29_Y18_N14
\C1|DRAWMAP~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~22_combout\ = (!\C1|VPOS\(6) & (!\C1|HPOS\(5) & \C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|VPOS\(5),
	combout => \C1|DRAWMAP~22_combout\);

-- Location: LCCOMB_X29_Y19_N22
\C1|LessThan36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan36~0_combout\ = (((!\C1|HPOS\(1)) # (!\C1|HPOS\(2))) # (!\C1|HPOS\(0))) # (!\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan36~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\C1|DRAWMAP~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~23_combout\ = (\C1|dMap~169_combout\ & (\C1|DRAWMAP~22_combout\ & ((\C1|LessThan36~0_combout\) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~169_combout\,
	datab => \C1|DRAWMAP~22_combout\,
	datac => \C1|LessThan36~0_combout\,
	datad => \C1|HPOS\(4),
	combout => \C1|DRAWMAP~23_combout\);

-- Location: LCCOMB_X29_Y16_N14
\C1|dMap~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~173_combout\ = (\C1|VPOS\(4)) # ((!\C1|LessThan268~0_combout\ & (\C1|VPOS\(2) & \C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|LessThan268~0_combout\,
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~173_combout\);

-- Location: LCCOMB_X31_Y16_N6
\C1|DRAWMAP~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~29_combout\ = (\C1|VPOS\(8) & (\C1|HPOS\(5) & (\C1|VPOS\(9) & \C1|LessThan43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|HPOS\(5),
	datac => \C1|VPOS\(9),
	datad => \C1|LessThan43~0_combout\,
	combout => \C1|DRAWMAP~29_combout\);

-- Location: LCCOMB_X29_Y16_N24
\C1|dMap~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~174_combout\ = (!\C1|VPOS\(7) & (\C1|VPOS\(6) & (\C1|VPOS\(4) & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|VPOS\(6),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~174_combout\);

-- Location: LCCOMB_X29_Y16_N22
\C1|dMap~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~175_combout\ = (\C1|dMap~174_combout\ & (\C1|VPOS\(3) & ((\C1|VPOS\(2)) # (!\C1|LessThan268~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~174_combout\,
	datab => \C1|LessThan268~0_combout\,
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~175_combout\);

-- Location: LCCOMB_X32_Y17_N22
\C1|dMap~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~176_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(1)) # (!\C1|VPOS\(3))) # (!\C1|VPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(1),
	combout => \C1|dMap~176_combout\);

-- Location: LCCOMB_X32_Y17_N28
\C1|dMap~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~177_combout\ = (\C1|VPOS\(7) & (\C1|dMap~176_combout\ & (!\C1|VPOS\(6) & !\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|dMap~176_combout\,
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~177_combout\);

-- Location: LCCOMB_X31_Y16_N20
\C1|DRAWMAP~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~30_combout\ = (\C1|DRAWMAP~29_combout\ & (\C1|LessThan44~0_combout\ & ((\C1|dMap~175_combout\) # (\C1|dMap~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~29_combout\,
	datab => \C1|dMap~175_combout\,
	datac => \C1|dMap~177_combout\,
	datad => \C1|LessThan44~0_combout\,
	combout => \C1|DRAWMAP~30_combout\);

-- Location: LCCOMB_X25_Y18_N16
\C1|DRAW1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|Add1~20_combout\ & ((\C1|LessThan1~20_combout\) # ((\C1|Add0~18_combout\)))) # (!\C1|Add1~20_combout\ & (\C1|LessThan3~18_combout\ & ((\C1|LessThan1~20_combout\) # (\C1|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|LessThan1~20_combout\,
	datac => \C1|Add0~18_combout\,
	datad => \C1|LessThan3~18_combout\,
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X31_Y17_N26
\C1|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (!\C1|HPOS\(0) & (!\C1|HPOS\(6) & (!\C1|HPOS\(2) & !\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|process_0~8_combout\);

-- Location: LCFF_X23_Y16_N7
\C1|SQ1_Jump[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~5_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(1));

-- Location: LCFF_X20_Y16_N5
\C1|SQ1_Jump[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~14_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(10));

-- Location: LCCOMB_X20_Y16_N28
\C1|LessThan261~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~2_combout\ = (!\C1|SQ1_Jump\(10) & (!\C1|SQ1_Jump\(11) & (!\C1|SQ1_Jump\(8) & !\C1|SQ1_Jump\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(10),
	datab => \C1|SQ1_Jump\(11),
	datac => \C1|SQ1_Jump\(8),
	datad => \C1|SQ1_Jump\(9),
	combout => \C1|LessThan261~2_combout\);

-- Location: LCFF_X23_Y16_N21
\C1|SQ1_Jump[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~16_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(12));

-- Location: LCFF_X20_Y16_N27
\C1|SQ1_Jump[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~20_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(16));

-- Location: LCFF_X18_Y16_N13
\C1|SQ1_Jump[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~23_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(19));

-- Location: LCCOMB_X18_Y16_N14
\C1|LessThan261~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~5_combout\ = (!\C1|SQ1_Jump\(19) & (!\C1|SQ1_Jump\(17) & (!\C1|SQ1_Jump\(16) & !\C1|SQ1_Jump\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(19),
	datab => \C1|SQ1_Jump\(17),
	datac => \C1|SQ1_Jump\(16),
	datad => \C1|SQ1_Jump\(18),
	combout => \C1|LessThan261~5_combout\);

-- Location: LCFF_X18_Y16_N7
\C1|SQ1_Jump[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~28_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(24));

-- Location: LCCOMB_X23_Y20_N16
\C1|esqQ1X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~0_combout\ = (!\C1|LessThan69~1_combout\ & (((!\C1|SQ_X1\(8) & !\C1|LessThan134~1_combout\)) # (!\C1|LessThan132~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan132~0_combout\,
	datab => \C1|LessThan69~1_combout\,
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan134~1_combout\,
	combout => \C1|esqQ1X1~0_combout\);

-- Location: LCCOMB_X22_Y19_N26
\C1|LessThan142~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan142~0_combout\ = ((\C1|SQ_X1\(4) & (!\C1|SQ_X1\(3) & \C1|SQ_X1\(5)))) # (!\C1|SQ_X1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan142~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\C1|LessThan142~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan142~1_combout\ = ((\C1|SQ_X1\(8) & ((\C1|SQ_X1\(7)) # (\C1|LessThan142~0_combout\)))) # (!\C1|SQ_X1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(7),
	datad => \C1|LessThan142~0_combout\,
	combout => \C1|LessThan142~1_combout\);

-- Location: LCCOMB_X22_Y19_N0
\C1|LessThan141~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan141~0_combout\ = (!\C1|SQ_X1\(4) & (!\C1|SQ_X1\(5) & \C1|LessThan149~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X1\(5),
	datad => \C1|LessThan149~0_combout\,
	combout => \C1|LessThan141~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\C1|LessThan141~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan141~1_combout\ = (\C1|SQ_X1\(9) & (!\C1|SQ_X1\(7) & ((\C1|SQ_X1\(6)) # (\C1|LessThan141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(7),
	datad => \C1|LessThan141~0_combout\,
	combout => \C1|LessThan141~1_combout\);

-- Location: LCCOMB_X22_Y19_N12
\C1|DRAWMAP~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~53_combout\ = (!\C1|SQ_X1\(10) & (\C1|LessThan142~1_combout\ & ((\C1|LessThan141~1_combout\) # (!\C1|LessThan139~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|LessThan139~0_combout\,
	datac => \C1|LessThan142~1_combout\,
	datad => \C1|LessThan141~1_combout\,
	combout => \C1|DRAWMAP~53_combout\);

-- Location: LCCOMB_X22_Y20_N16
\C1|LessThan139~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan139~1_combout\ = (\C1|SQ_X1\(3)) # (((!\C1|SQ_X1\(1) & \C1|SQ_X1\(2))) # (!\C1|LessThan148~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(2),
	datac => \C1|SQ_X1\(3),
	datad => \C1|LessThan148~0_combout\,
	combout => \C1|LessThan139~1_combout\);

-- Location: LCCOMB_X23_Y20_N22
\C1|LessThan131~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan131~0_combout\ = (\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan131~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\C1|LessThan152~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan152~0_combout\ = ((\C1|LessThan136~1_combout\ & ((!\C1|LessThan131~0_combout\) # (!\C1|LessThan147~0_combout\)))) # (!\C1|SQ_X1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan147~0_combout\,
	datab => \C1|SQ_X1\(9),
	datac => \C1|LessThan136~1_combout\,
	datad => \C1|LessThan131~0_combout\,
	combout => \C1|LessThan152~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\C1|LessThan153~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~2_combout\ = (\C1|SQ_X1\(3) & (!\C1|SQ_X1\(4) & ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(1),
	combout => \C1|LessThan153~2_combout\);

-- Location: LCCOMB_X23_Y20_N8
\C1|LessThan147~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan147~1_combout\ = (\C1|SQ_X1\(9) & (((\C1|LessThan147~0_combout\ & \C1|LessThan137~0_combout\)) # (!\C1|LessThan136~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan147~0_combout\,
	datab => \C1|SQ_X1\(9),
	datac => \C1|LessThan136~1_combout\,
	datad => \C1|LessThan137~0_combout\,
	combout => \C1|LessThan147~1_combout\);

-- Location: LCCOMB_X21_Y19_N16
\C1|dMap~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~195_combout\ = (\C1|SQ_Y1\(5) & (((\C1|SQ_Y1\(4)) # (!\C1|SQ_Y1\(2))) # (!\C1|SQ_Y1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1\(1),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(2),
	combout => \C1|dMap~195_combout\);

-- Location: LCCOMB_X21_Y19_N18
\C1|dMap~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~196_combout\ = (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(3) & ((!\C1|SQ_Y1\(5)))) # (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~196_combout\);

-- Location: LCCOMB_X21_Y19_N24
\C1|dMap~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~197_combout\ = (\C1|SQ_Y1\(6)) # ((\C1|dMap~196_combout\) # ((\C1|dMap~195_combout\) # (!\C1|dMap~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|dMap~196_combout\,
	datac => \C1|dMap~195_combout\,
	datad => \C1|dMap~182_combout\,
	combout => \C1|dMap~197_combout\);

-- Location: LCCOMB_X23_Y19_N12
\C1|dMap~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~202_combout\ = (\C1|SQ_Y1\(7) & (((\C1|SQ_Y1\(3))) # (!\C1|SQ_Y1\(5)))) # (!\C1|SQ_Y1\(7) & (((\C1|SQ_Y1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(7),
	combout => \C1|dMap~202_combout\);

-- Location: LCCOMB_X23_Y19_N16
\C1|dMap~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~204_combout\ = (\C1|SQ_Y1\(5)) # ((!\C1|SQ_Y1\(1) & (!\C1|SQ_Y1\(3) & !\C1|SQ_Y1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~204_combout\);

-- Location: LCCOMB_X23_Y19_N8
\C1|dMap~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~206_combout\ = (((\C1|SQ_Y1\(2) & \C1|SQ_Y1\(3))) # (!\C1|SQ_Y1\(5))) # (!\C1|SQ_Y1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~206_combout\);

-- Location: LCCOMB_X23_Y19_N26
\C1|dMap~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~207_combout\ = (\C1|SQ_Y1\(5) & ((\C1|SQ_Y1\(6)) # ((\C1|dMap~206_combout\)))) # (!\C1|SQ_Y1\(5) & (((!\C1|SQ_Y1\(6) & \C1|dMap~206_combout\)) # (!\C1|LessThan91~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1\(6),
	datac => \C1|dMap~206_combout\,
	datad => \C1|LessThan91~0_combout\,
	combout => \C1|dMap~207_combout\);

-- Location: LCCOMB_X20_Y19_N20
\C1|dMap~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~208_combout\ = (\C1|dMap~207_combout\) # (!\C1|dMap~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~207_combout\,
	datad => \C1|dMap~182_combout\,
	combout => \C1|dMap~208_combout\);

-- Location: LCCOMB_X19_Y17_N6
\C1|DRAWMAP~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~71_combout\ = (\C1|dMap~208_combout\ & (!\C1|dMap~205_combout\ & ((\C1|dMap~373_combout\)))) # (!\C1|dMap~208_combout\ & ((\C1|dMap~374_combout\) # ((!\C1|dMap~205_combout\ & \C1|dMap~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~208_combout\,
	datab => \C1|dMap~205_combout\,
	datac => \C1|dMap~374_combout\,
	datad => \C1|dMap~373_combout\,
	combout => \C1|DRAWMAP~71_combout\);

-- Location: LCCOMB_X21_Y16_N6
\C1|LessThan80~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~3_combout\ = (!\C1|Add5~20_combout\ & ((!\C1|Add5~18_combout\) # (!\C1|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan80~3_combout\);

-- Location: LCCOMB_X21_Y17_N8
\C1|LessThan100~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~2_combout\ = (\C1|Add5~8_combout\ & (\C1|Add5~10_combout\ & (\C1|Add5~16_combout\ & \C1|LessThan100~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|LessThan100~0_combout\,
	combout => \C1|LessThan100~2_combout\);

-- Location: LCCOMB_X25_Y17_N4
\C1|dMap~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~220_combout\ = (\C1|Add1~6_combout\ & (\C1|Add1~4_combout\ & ((\C1|Add1~0_combout\) # (\C1|Add1~2_combout\)))) # (!\C1|Add1~6_combout\ & (((!\C1|Add1~2_combout\ & !\C1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|dMap~220_combout\);

-- Location: LCCOMB_X22_Y17_N16
\C1|dMap~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~221_combout\ = (\C1|Add1~10_combout\ & \C1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add1~10_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~221_combout\);

-- Location: LCCOMB_X22_Y17_N22
\C1|dMap~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~222_combout\ = (\C1|Add1~12_combout\) # ((\C1|dMap~220_combout\) # ((!\C1|dMap~217_combout\) # (!\C1|dMap~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|dMap~220_combout\,
	datac => \C1|dMap~221_combout\,
	datad => \C1|dMap~217_combout\,
	combout => \C1|dMap~222_combout\);

-- Location: LCCOMB_X22_Y16_N16
\C1|DRAWMAP~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~75_combout\ = (\C1|DRAWMAP~60_combout\ & (((\C1|DRAWMAP~59_combout\ & !\C1|dMap~219_combout\)) # (!\C1|dMap~222_combout\))) # (!\C1|DRAWMAP~60_combout\ & (((\C1|DRAWMAP~59_combout\ & !\C1|dMap~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~60_combout\,
	datab => \C1|dMap~222_combout\,
	datac => \C1|DRAWMAP~59_combout\,
	datad => \C1|dMap~219_combout\,
	combout => \C1|DRAWMAP~75_combout\);

-- Location: LCCOMB_X25_Y17_N10
\C1|LessThan60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan60~0_combout\ = (!\C1|Add1~6_combout\ & (((!\C1|Add1~0_combout\ & !\C1|Add1~2_combout\)) # (!\C1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~0_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|LessThan60~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\C1|dMap~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~234_combout\ = (!\C1|Add1~10_combout\ & (((\C1|dMap~223_combout\) # (!\C1|Add1~8_combout\)) # (!\C1|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~223_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~234_combout\);

-- Location: LCCOMB_X25_Y17_N20
\C1|dMap~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~235_combout\ = ((\C1|dMap~234_combout\) # ((\C1|Add1~10_combout\ & !\C1|LessThan58~0_combout\))) # (!\C1|LessThan51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan51~0_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|LessThan58~0_combout\,
	datad => \C1|dMap~234_combout\,
	combout => \C1|dMap~235_combout\);

-- Location: LCCOMB_X22_Y17_N26
\C1|dMap~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~236_combout\ = (\C1|Add1~4_combout\ & (\C1|Add1~6_combout\ & ((\C1|Add1~2_combout\) # (\C1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~2_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add1~0_combout\,
	combout => \C1|dMap~236_combout\);

-- Location: LCCOMB_X22_Y17_N20
\C1|LessThan52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~1_combout\ = (\C1|Add1~10_combout\) # ((\C1|Add1~8_combout\) # ((\C1|dMap~236_combout\) # (!\C1|LessThan52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|LessThan52~0_combout\,
	datad => \C1|dMap~236_combout\,
	combout => \C1|LessThan52~1_combout\);

-- Location: LCCOMB_X22_Y17_N2
\C1|LessThan52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~2_combout\ = (\C1|Add1~20_combout\) # ((\C1|LessThan52~1_combout\ & \C1|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~20_combout\,
	datac => \C1|LessThan52~1_combout\,
	datad => \C1|Add1~18_combout\,
	combout => \C1|LessThan52~2_combout\);

-- Location: LCCOMB_X22_Y17_N8
\C1|dMap~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~237_combout\ = (\C1|Add1~4_combout\ & ((\C1|Add1~10_combout\) # ((\C1|Add1~0_combout\ & \C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|Add1~2_combout\,
	datac => \C1|Add1~10_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|dMap~237_combout\);

-- Location: LCCOMB_X22_Y17_N30
\C1|dMap~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~238_combout\ = (\C1|Add1~10_combout\ & (\C1|Add1~6_combout\ & (!\C1|Add1~12_combout\ & \C1|Add1~8_combout\))) # (!\C1|Add1~10_combout\ & (!\C1|Add1~6_combout\ & (\C1|Add1~12_combout\ & !\C1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~238_combout\);

-- Location: LCCOMB_X22_Y17_N24
\C1|dMap~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~239_combout\ = ((\C1|dMap~237_combout\ $ (\C1|Add1~8_combout\)) # (!\C1|dMap~238_combout\)) # (!\C1|dMap~217_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~217_combout\,
	datab => \C1|dMap~238_combout\,
	datac => \C1|dMap~237_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~239_combout\);

-- Location: LCCOMB_X22_Y17_N10
\C1|arQ1X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X1~0_combout\ = (\C1|LessThan52~2_combout\) # ((\C1|dMap~370_combout\ & !\C1|dMap~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~370_combout\,
	datac => \C1|dMap~239_combout\,
	datad => \C1|LessThan52~2_combout\,
	combout => \C1|arQ1X1~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\C1|DRAWMAP~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~78_combout\ = (\C1|LessThan52~2_combout\) # ((!\C1|dMap~222_combout\ & \C1|dMap~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~222_combout\,
	datac => \C1|LessThan52~2_combout\,
	datad => \C1|dMap~210_combout\,
	combout => \C1|DRAWMAP~78_combout\);

-- Location: LCCOMB_X23_Y15_N26
\C1|dMap~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~244_combout\ = (\C1|Add8~6_combout\ & (\C1|Add8~4_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~4_combout\,
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~244_combout\);

-- Location: LCCOMB_X23_Y15_N8
\C1|dMap~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~245_combout\ = (!\C1|Add8~8_combout\ & !\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~245_combout\);

-- Location: LCCOMB_X23_Y15_N14
\C1|LessThan113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan113~0_combout\ = (\C1|Add8~18_combout\ & ((\C1|dMap~244_combout\) # ((!\C1|LessThan112~2_combout\) # (!\C1|dMap~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~18_combout\,
	datab => \C1|dMap~244_combout\,
	datac => \C1|dMap~245_combout\,
	datad => \C1|LessThan112~2_combout\,
	combout => \C1|LessThan113~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\C1|dMap~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~267_combout\ = ((!\C1|Add8~6_combout\ & !\C1|Add8~4_combout\)) # (!\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~4_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~267_combout\);

-- Location: LCCOMB_X23_Y15_N22
\C1|LessThan119~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan119~1_combout\ = (\C1|LessThan119~0_combout\) # (!\C1|Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~10_combout\,
	datad => \C1|LessThan119~0_combout\,
	combout => \C1|LessThan119~1_combout\);

-- Location: LCCOMB_X23_Y15_N28
\C1|dMap~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~268_combout\ = (\C1|dMap~267_combout\) # (((!\C1|LessThan119~1_combout\) # (!\C1|dMap~253_combout\)) # (!\C1|Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~267_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|dMap~253_combout\,
	datad => \C1|LessThan119~1_combout\,
	combout => \C1|dMap~268_combout\);

-- Location: LCCOMB_X23_Y15_N6
\C1|dMap~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~269_combout\ = (\C1|Add8~4_combout\ & (\C1|Add8~6_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1))))) # (!\C1|Add8~4_combout\ & (!\C1|SQ_Y1\(2) & (!\C1|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~6_combout\,
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~269_combout\);

-- Location: LCCOMB_X24_Y18_N16
\C1|dMap~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~270_combout\ = (\C1|Add8~12_combout\) # ((!\C1|Add8~8_combout\) # (!\C1|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|Add8~8_combout\,
	combout => \C1|dMap~270_combout\);

-- Location: LCCOMB_X24_Y18_N2
\C1|dMap~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~271_combout\ = ((\C1|dMap~269_combout\) # ((\C1|dMap~270_combout\) # (!\C1|dMap~248_combout\))) # (!\C1|Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~16_combout\,
	datab => \C1|dMap~269_combout\,
	datac => \C1|dMap~270_combout\,
	datad => \C1|dMap~248_combout\,
	combout => \C1|dMap~271_combout\);

-- Location: LCCOMB_X24_Y18_N24
\C1|process_0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~21_combout\ = (\C1|DRAWMAP~60_combout\ & (((\C1|DRAWMAP~59_combout\ & !\C1|dMap~268_combout\)) # (!\C1|dMap~271_combout\))) # (!\C1|DRAWMAP~60_combout\ & (((\C1|DRAWMAP~59_combout\ & !\C1|dMap~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~60_combout\,
	datab => \C1|dMap~271_combout\,
	datac => \C1|DRAWMAP~59_combout\,
	datad => \C1|dMap~268_combout\,
	combout => \C1|process_0~21_combout\);

-- Location: LCCOMB_X24_Y18_N6
\C1|process_0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~22_combout\ = (\C1|Add8~22_combout\ & (!\C1|LessThan112~1_combout\ & (\C1|process_0~21_combout\ & !\C1|LessThan130~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|LessThan112~1_combout\,
	datac => \C1|process_0~21_combout\,
	datad => \C1|LessThan130~2_combout\,
	combout => \C1|process_0~22_combout\);

-- Location: LCCOMB_X22_Y16_N2
\C1|SQ_X1[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~0_combout\ = (\C1|LessThan259~0_combout\ & (\SW~combout\(0) & \C1|LessThan260~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan259~0_combout\,
	datab => \SW~combout\(0),
	datad => \C1|LessThan260~0_combout\,
	combout => \C1|SQ_X1[1]~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\C1|dMap~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~272_combout\ = ((\C1|dMap~259_combout\) # ((\C1|dMap~261_combout\) # (!\C1|dMap~248_combout\))) # (!\C1|Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~16_combout\,
	datab => \C1|dMap~259_combout\,
	datac => \C1|dMap~248_combout\,
	datad => \C1|dMap~261_combout\,
	combout => \C1|dMap~272_combout\);

-- Location: LCCOMB_X20_Y18_N24
\C1|dirQ1X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~0_combout\ = (\C1|LessThan113~0_combout\) # ((\C1|dMap~373_combout\ & !\C1|dMap~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~373_combout\,
	datac => \C1|dMap~272_combout\,
	datad => \C1|LessThan113~0_combout\,
	combout => \C1|dirQ1X2~0_combout\);

-- Location: LCCOMB_X20_Y18_N30
\C1|dirQ1X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~1_combout\ = (\C1|dMap~257_combout\ & (\C1|dMap~214_combout\ & (!\C1|dMap~268_combout\))) # (!\C1|dMap~257_combout\ & ((\C1|dMap~241_combout\) # ((\C1|dMap~214_combout\ & !\C1|dMap~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~257_combout\,
	datab => \C1|dMap~214_combout\,
	datac => \C1|dMap~268_combout\,
	datad => \C1|dMap~241_combout\,
	combout => \C1|dirQ1X2~1_combout\);

-- Location: LCCOMB_X19_Y18_N4
\C1|dirQ1X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~2_combout\ = (!\C1|dMap~271_combout\ & ((\C1|dMap~375_combout\) # (\C1|dMap~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~375_combout\,
	datac => \C1|dMap~210_combout\,
	datad => \C1|dMap~271_combout\,
	combout => \C1|dirQ1X2~2_combout\);

-- Location: LCCOMB_X19_Y18_N14
\C1|dirQ1X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~3_combout\ = (\C1|dirQ1X2~2_combout\) # ((\C1|dirQ1X2~1_combout\) # ((!\C1|dMap~254_combout\ & \C1|dMap~216_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~254_combout\,
	datab => \C1|dMap~216_combout\,
	datac => \C1|dirQ1X2~2_combout\,
	datad => \C1|dirQ1X2~1_combout\,
	combout => \C1|dirQ1X2~3_combout\);

-- Location: LCCOMB_X19_Y18_N24
\C1|dMap~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~273_combout\ = (\C1|LessThan119~1_combout\ & (!\C1|dMap~262_combout\ & (\C1|dMap~213_combout\ & !\C1|dMap~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan119~1_combout\,
	datab => \C1|dMap~262_combout\,
	datac => \C1|dMap~213_combout\,
	datad => \C1|dMap~263_combout\,
	combout => \C1|dMap~273_combout\);

-- Location: LCCOMB_X19_Y18_N18
\C1|dirQ1X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~4_combout\ = (\C1|dMap~273_combout\) # ((!\C1|dMap~268_combout\ & ((\C1|dMap~211_combout\) # (\C1|dMap~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~268_combout\,
	datab => \C1|dMap~211_combout\,
	datac => \C1|dMap~273_combout\,
	datad => \C1|dMap~243_combout\,
	combout => \C1|dirQ1X2~4_combout\);

-- Location: LCCOMB_X19_Y18_N20
\C1|dirQ1X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~5_combout\ = (\C1|dMap~215_combout\ & (((\C1|dMap~374_combout\ & !\C1|dMap~249_combout\)) # (!\C1|dMap~268_combout\))) # (!\C1|dMap~215_combout\ & (\C1|dMap~374_combout\ & (!\C1|dMap~249_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~215_combout\,
	datab => \C1|dMap~374_combout\,
	datac => \C1|dMap~249_combout\,
	datad => \C1|dMap~268_combout\,
	combout => \C1|dirQ1X2~5_combout\);

-- Location: LCCOMB_X19_Y18_N6
\C1|dirQ1X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X2~6_combout\ = (\C1|dirQ1X2~5_combout\) # ((\C1|dirQ1X2~4_combout\) # ((\C1|dMap~372_combout\ & !\C1|dMap~266_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~372_combout\,
	datab => \C1|dMap~266_combout\,
	datac => \C1|dirQ1X2~5_combout\,
	datad => \C1|dirQ1X2~4_combout\,
	combout => \C1|dirQ1X2~6_combout\);

-- Location: LCCOMB_X19_Y18_N8
\C1|SQ_X1[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~2_combout\ = (!\C1|LessThan112~1_combout\ & ((\C1|dirQ1X2~0_combout\) # ((\C1|dirQ1X2~3_combout\) # (\C1|dirQ1X2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan112~1_combout\,
	datab => \C1|dirQ1X2~0_combout\,
	datac => \C1|dirQ1X2~3_combout\,
	datad => \C1|dirQ1X2~6_combout\,
	combout => \C1|SQ_X1[1]~2_combout\);

-- Location: LCFF_X32_Y19_N17
\C1|SQ2_Jump[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~81_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(13));

-- Location: LCFF_X31_Y22_N5
\C1|SQ2_Jump[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~82_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(14));

-- Location: LCCOMB_X31_Y22_N20
\C1|LessThan262~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~3_combout\ = (!\C1|SQ2_Jump\(12) & (!\C1|SQ2_Jump\(14) & (!\C1|SQ2_Jump\(13) & !\C1|SQ2_Jump\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(12),
	datab => \C1|SQ2_Jump\(14),
	datac => \C1|SQ2_Jump\(13),
	datad => \C1|SQ2_Jump\(15),
	combout => \C1|LessThan262~3_combout\);

-- Location: LCFF_X30_Y19_N19
\C1|SQ2_Jump[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~86_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(18));

-- Location: LCCOMB_X30_Y19_N10
\C1|LessThan262~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~5_combout\ = (!\C1|SQ2_Jump\(17) & (!\C1|SQ2_Jump\(18) & (!\C1|SQ2_Jump\(16) & !\C1|SQ2_Jump\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(17),
	datab => \C1|SQ2_Jump\(18),
	datac => \C1|SQ2_Jump\(16),
	datad => \C1|SQ2_Jump\(19),
	combout => \C1|LessThan262~5_combout\);

-- Location: LCFF_X31_Y21_N7
\C1|SQ2_Jump[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~91_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(23));

-- Location: LCFF_X30_Y19_N25
\C1|SQ2_Jump[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~92_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(24));

-- Location: LCCOMB_X30_Y20_N12
\C1|DRAWMAP~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~87_combout\ = (\C1|Add9~18_combout\ & (!\C1|Add9~14_combout\ & (\C1|Add9~20_combout\ & !\C1|Add9~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~18_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|Add9~20_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|DRAWMAP~87_combout\);

-- Location: LCCOMB_X36_Y18_N16
\C1|dMap~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~276_combout\ = (!\C1|SQ_Y2\(4) & (!\C1|SQ_Y2\(5) & ((\C1|SQ_Y2\(2)) # (\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~276_combout\);

-- Location: LCCOMB_X30_Y20_N22
\C1|LessThan257~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~1_combout\ = (\C1|Add9~20_combout\ & \C1|Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~20_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|LessThan257~1_combout\);

-- Location: LCCOMB_X30_Y20_N26
\C1|LessThan256~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~3_combout\ = (\C1|Add9~20_combout\ & ((\C1|Add9~16_combout\) # (\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~16_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|LessThan256~3_combout\);

-- Location: LCCOMB_X30_Y20_N4
\C1|LessThan258~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan258~0_combout\ = ((!\C1|Add9~18_combout\ & (!\C1|LessThan255~1_combout\ & \C1|LessThan256~2_combout\))) # (!\C1|LessThan256~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~18_combout\,
	datab => \C1|LessThan255~1_combout\,
	datac => \C1|LessThan256~2_combout\,
	datad => \C1|LessThan256~3_combout\,
	combout => \C1|LessThan258~0_combout\);

-- Location: LCCOMB_X30_Y20_N0
\C1|LessThan257~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~2_combout\ = (\C1|DRAWMAP~96_combout\ & (((\C1|LessThan257~0_combout\ & \C1|Add9~6_combout\)) # (!\C1|DRAWMAP~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan257~0_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|DRAWMAP~92_combout\,
	datad => \C1|DRAWMAP~96_combout\,
	combout => \C1|LessThan257~2_combout\);

-- Location: LCCOMB_X30_Y20_N10
\C1|dMap~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~286_combout\ = (\C1|LessThan258~0_combout\ & ((\C1|LessThan255~0_combout\) # ((\C1|LessThan257~1_combout\) # (\C1|LessThan257~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan255~0_combout\,
	datab => \C1|LessThan257~1_combout\,
	datac => \C1|LessThan258~0_combout\,
	datad => \C1|LessThan257~2_combout\,
	combout => \C1|dMap~286_combout\);

-- Location: LCCOMB_X35_Y18_N26
\C1|dMap~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~287_combout\ = (\C1|SQ_Y2\(4) & (((!\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(1))) # (!\C1|SQ_Y2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~287_combout\);

-- Location: LCCOMB_X35_Y18_N28
\C1|dMap~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~288_combout\ = (!\C1|SQ_Y2\(6) & ((!\C1|dMap~287_combout\) # (!\C1|SQ_Y2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(5),
	datac => \C1|SQ_Y2\(6),
	datad => \C1|dMap~287_combout\,
	combout => \C1|dMap~288_combout\);

-- Location: LCCOMB_X35_Y18_N30
\C1|dMap~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~289_combout\ = (((\C1|SQ_Y2\(10)) # (!\C1|SQ_Y2\(8))) # (!\C1|SQ_Y2\(7))) # (!\C1|SQ_Y2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2\(7),
	datac => \C1|SQ_Y2\(8),
	datad => \C1|SQ_Y2\(10),
	combout => \C1|dMap~289_combout\);

-- Location: LCCOMB_X35_Y18_N12
\C1|dMap~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~290_combout\ = (\C1|dMap~289_combout\) # ((\C1|dMap~288_combout\) # ((\C1|SQ_Y2\(6) & !\C1|LessThan191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|dMap~289_combout\,
	datac => \C1|LessThan191~1_combout\,
	datad => \C1|dMap~288_combout\,
	combout => \C1|dMap~290_combout\);

-- Location: LCCOMB_X35_Y18_N2
\C1|dMap~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~294_combout\ = ((\C1|dMap~287_combout\) # ((\C1|SQ_Y2\(6)) # (!\C1|dMap~274_combout\))) # (!\C1|SQ_Y2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|dMap~287_combout\,
	datac => \C1|SQ_Y2\(6),
	datad => \C1|dMap~274_combout\,
	combout => \C1|dMap~294_combout\);

-- Location: LCCOMB_X30_Y18_N6
\C1|DRAWMAP~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~104_combout\ = (!\C1|LessThan247~2_combout\ & (!\C1|dMap~294_combout\ & (\C1|DRAWMAP~90_combout\ & \C1|LessThan249~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan247~2_combout\,
	datab => \C1|dMap~294_combout\,
	datac => \C1|DRAWMAP~90_combout\,
	datad => \C1|LessThan249~0_combout\,
	combout => \C1|DRAWMAP~104_combout\);

-- Location: LCCOMB_X36_Y18_N6
\C1|dMap~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~297_combout\ = (!\C1|SQ_Y2\(3) & (\C1|SQ_Y2\(4) & ((!\C1|SQ_Y2\(1)) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|dMap~297_combout\);

-- Location: LCCOMB_X35_Y18_N10
\C1|LessThan175~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan175~0_combout\ = (\C1|SQ_Y2\(10) & ((\C1|SQ_Y2\(5)) # ((\C1|dMap~297_combout\) # (!\C1|LessThan173~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2\(10),
	datac => \C1|LessThan173~0_combout\,
	datad => \C1|dMap~297_combout\,
	combout => \C1|LessThan175~0_combout\);

-- Location: LCCOMB_X30_Y18_N12
\C1|LessThan244~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan244~0_combout\ = (((!\C1|Add9~6_combout\) # (!\C1|Add9~12_combout\)) # (!\C1|Add9~10_combout\)) # (!\C1|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|LessThan244~0_combout\);

-- Location: LCCOMB_X34_Y17_N6
\C1|LessThan184~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan184~0_combout\ = (\C1|Add2~8_combout\ & \C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~8_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|LessThan184~0_combout\);

-- Location: LCCOMB_X34_Y17_N14
\C1|DRAWMAP~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~112_combout\ = (\C1|LessThan175~0_combout\) # ((!\C1|dMap~275_combout\ & ((\C1|dMap~298_combout\) # (\C1|dMap~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~275_combout\,
	datab => \C1|LessThan175~0_combout\,
	datac => \C1|dMap~298_combout\,
	datad => \C1|dMap~365_combout\,
	combout => \C1|DRAWMAP~112_combout\);

-- Location: LCCOMB_X33_Y20_N10
\C1|dMap~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~300_combout\ = (\C1|Add2~4_combout\ & ((\C1|Add2~2_combout\) # (\C1|LessThan204~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~4_combout\,
	datac => \C1|Add2~2_combout\,
	datad => \C1|LessThan204~6_combout\,
	combout => \C1|dMap~300_combout\);

-- Location: LCCOMB_X33_Y18_N20
\C1|LessThan196~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan196~0_combout\ = (!\C1|SQ_X2\(2) & (!\C1|SQ_X2\(3) & \C1|SQ_X2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datac => \C1|SQ_X2\(3),
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan196~0_combout\);

-- Location: LCCOMB_X34_Y17_N30
\C1|DRAWMAP~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~113_combout\ = (\C1|dMap~275_combout\ & (\C1|dMap~296_combout\ & (\C1|dMap~299_combout\))) # (!\C1|dMap~275_combout\ & ((\C1|dMap~303_combout\) # ((\C1|dMap~296_combout\ & \C1|dMap~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~275_combout\,
	datab => \C1|dMap~296_combout\,
	datac => \C1|dMap~299_combout\,
	datad => \C1|dMap~303_combout\,
	combout => \C1|DRAWMAP~113_combout\);

-- Location: LCCOMB_X32_Y19_N20
\C1|dMap~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~317_combout\ = (\C1|Add3~6_combout\ & (\C1|Add3~4_combout\ & ((\C1|Add3~0_combout\) # (\C1|Add3~2_combout\)))) # (!\C1|Add3~6_combout\ & (((!\C1|Add3~4_combout\ & !\C1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~2_combout\,
	combout => \C1|dMap~317_combout\);

-- Location: LCCOMB_X33_Y19_N20
\C1|dMap~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~319_combout\ = (\C1|Add3~8_combout\ & \C1|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add3~8_combout\,
	datad => \C1|Add3~10_combout\,
	combout => \C1|dMap~319_combout\);

-- Location: LCCOMB_X32_Y19_N6
\C1|dMap~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~320_combout\ = (\C1|Add3~12_combout\) # (((\C1|dMap~317_combout\) # (!\C1|dMap~318_combout\)) # (!\C1|dMap~319_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|dMap~319_combout\,
	datac => \C1|dMap~317_combout\,
	datad => \C1|dMap~318_combout\,
	combout => \C1|dMap~320_combout\);

-- Location: LCCOMB_X35_Y21_N30
\C1|dMap~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~326_combout\ = (\C1|Add3~10_combout\ & ((\C1|Add3~8_combout\) # ((\C1|Add3~6_combout\) # (!\C1|dMap~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|dMap~314_combout\,
	combout => \C1|dMap~326_combout\);

-- Location: LCCOMB_X35_Y21_N0
\C1|dMap~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~327_combout\ = (\C1|Add3~20_combout\) # (((\C1|dMap~326_combout\) # (!\C1|Add3~18_combout\)) # (!\C1|LessThan156~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datab => \C1|LessThan156~0_combout\,
	datac => \C1|Add3~18_combout\,
	datad => \C1|dMap~326_combout\,
	combout => \C1|dMap~327_combout\);

-- Location: LCCOMB_X32_Y19_N22
\C1|dMap~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~329_combout\ = (((\C1|Add3~6_combout\ & !\C1|dMap~314_combout\)) # (!\C1|dMap~328_combout\)) # (!\C1|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|dMap~314_combout\,
	datad => \C1|dMap~328_combout\,
	combout => \C1|dMap~329_combout\);

-- Location: LCCOMB_X32_Y19_N0
\C1|dMap~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~331_combout\ = (\C1|Add3~2_combout\ & (!\C1|Add3~4_combout\)) # (!\C1|Add3~2_combout\ & (((!\C1|Add3~4_combout\ & \C1|Add3~0_combout\)) # (!\C1|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|Add3~4_combout\,
	datac => \C1|Add3~0_combout\,
	datad => \C1|Add3~8_combout\,
	combout => \C1|dMap~331_combout\);

-- Location: LCCOMB_X32_Y19_N8
\C1|arQ2X1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~9_combout\ = (\C1|DRAWMAP~93_combout\ & (!\C1|dMap~332_combout\ & ((\C1|Add3~6_combout\) # (!\C1|dMap~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|dMap~331_combout\,
	datac => \C1|DRAWMAP~93_combout\,
	datad => \C1|dMap~332_combout\,
	combout => \C1|arQ2X1~9_combout\);

-- Location: LCCOMB_X32_Y18_N0
\C1|dMap~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~333_combout\ = (\C1|Add3~4_combout\ & ((\C1|Add3~8_combout\) # ((\C1|Add3~0_combout\ & \C1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|Add3~4_combout\,
	datac => \C1|Add3~8_combout\,
	datad => \C1|Add3~2_combout\,
	combout => \C1|dMap~333_combout\);

-- Location: LCCOMB_X33_Y19_N2
\C1|dMap~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~334_combout\ = (\C1|Add3~10_combout\ & (\C1|Add3~6_combout\ & (\C1|Add3~8_combout\ & !\C1|Add3~12_combout\))) # (!\C1|Add3~10_combout\ & (!\C1|Add3~6_combout\ & (!\C1|Add3~8_combout\ & \C1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~8_combout\,
	datad => \C1|Add3~12_combout\,
	combout => \C1|dMap~334_combout\);

-- Location: LCCOMB_X33_Y19_N4
\C1|dMap~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~335_combout\ = ((\C1|Add3~6_combout\ $ (\C1|dMap~333_combout\)) # (!\C1|dMap~334_combout\)) # (!\C1|dMap~318_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~318_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|dMap~333_combout\,
	datad => \C1|dMap~334_combout\,
	combout => \C1|dMap~335_combout\);

-- Location: LCCOMB_X32_Y19_N26
\C1|arQ2X1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~10_combout\ = (\C1|LessThan156~2_combout\) # ((\C1|arQ2X1~9_combout\) # ((!\C1|dMap~335_combout\ & \C1|DRAWMAP~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~335_combout\,
	datab => \C1|LessThan156~2_combout\,
	datac => \C1|arQ2X1~9_combout\,
	datad => \C1|DRAWMAP~94_combout\,
	combout => \C1|arQ2X1~10_combout\);

-- Location: LCCOMB_X33_Y18_N0
\C1|dMap~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~336_combout\ = (!\C1|Add2~10_combout\ & (\C1|LessThan179~0_combout\ & ((\C1|LessThan178~1_combout\) # (!\C1|LessThan183~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan178~1_combout\,
	datac => \C1|LessThan179~0_combout\,
	datad => \C1|LessThan183~0_combout\,
	combout => \C1|dMap~336_combout\);

-- Location: LCCOMB_X34_Y19_N20
\C1|DRAWMAP~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~126_combout\ = (\C1|dMap~320_combout\ & (((!\C1|dMap~335_combout\ & \C1|dMap~312_combout\)))) # (!\C1|dMap~320_combout\ & ((\C1|DRAWMAP~125_combout\) # ((!\C1|dMap~335_combout\ & \C1|dMap~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~320_combout\,
	datab => \C1|DRAWMAP~125_combout\,
	datac => \C1|dMap~335_combout\,
	datad => \C1|dMap~312_combout\,
	combout => \C1|DRAWMAP~126_combout\);

-- Location: LCCOMB_X36_Y18_N2
\C1|dMap~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~342_combout\ = (!\C1|SQ_Y2\(3) & ((\C1|SQ_Y2\(1)) # (\C1|SQ_Y2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~342_combout\);

-- Location: LCCOMB_X35_Y20_N28
\C1|dMap~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~344_combout\ = (\C1|Add13~18_combout\) # (((\C1|dMap~342_combout\ & !\C1|Add13~10_combout\)) # (!\C1|dMap~343_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~342_combout\,
	datab => \C1|Add13~10_combout\,
	datac => \C1|Add13~18_combout\,
	datad => \C1|dMap~343_combout\,
	combout => \C1|dMap~344_combout\);

-- Location: LCCOMB_X35_Y20_N26
\C1|dMap~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~345_combout\ = (!\C1|Add13~10_combout\ & ((!\C1|Add13~8_combout\) # (!\C1|Add13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~6_combout\,
	datac => \C1|Add13~10_combout\,
	datad => \C1|Add13~8_combout\,
	combout => \C1|dMap~345_combout\);

-- Location: LCCOMB_X35_Y20_N24
\C1|dMap~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~346_combout\ = (((\C1|dMap~345_combout\) # (\C1|dMap~344_combout\)) # (!\C1|LessThan216~2_combout\)) # (!\C1|LessThan223~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan223~0_combout\,
	datab => \C1|LessThan216~2_combout\,
	datac => \C1|dMap~345_combout\,
	datad => \C1|dMap~344_combout\,
	combout => \C1|dMap~346_combout\);

-- Location: LCCOMB_X37_Y20_N4
\C1|dMap~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~348_combout\ = ((\C1|Add13~12_combout\) # (!\C1|Add13~8_combout\)) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~10_combout\,
	datac => \C1|Add13~8_combout\,
	datad => \C1|Add13~12_combout\,
	combout => \C1|dMap~348_combout\);

-- Location: LCCOMB_X35_Y20_N12
\C1|dMap~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~350_combout\ = (\C1|Add13~10_combout\ & ((\C1|Add13~8_combout\) # ((\C1|dMap~366_combout\) # (\C1|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|dMap~366_combout\,
	datac => \C1|Add13~10_combout\,
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~350_combout\);

-- Location: LCCOMB_X33_Y19_N12
\C1|DRAWMAP~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~130_combout\ = (\C1|dMap~367_combout\ & (!\C1|dMap~357_combout\ & (\C1|dMap~354_combout\ & \C1|DRAWMAP~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~367_combout\,
	datab => \C1|dMap~357_combout\,
	datac => \C1|dMap~354_combout\,
	datad => \C1|DRAWMAP~93_combout\,
	combout => \C1|DRAWMAP~130_combout\);

-- Location: LCCOMB_X36_Y20_N12
\C1|dMap~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~358_combout\ = (\C1|SQ_Y2\(3) & (\C1|Add13~6_combout\ & ((!\C1|SQ_Y2\(1)) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~358_combout\);

-- Location: LCCOMB_X35_Y20_N0
\C1|LessThan217~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan217~0_combout\ = (\C1|Add13~18_combout\ & ((\C1|Add13~8_combout\) # ((\C1|dMap~358_combout\) # (!\C1|LessThan216~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|Add13~18_combout\,
	datac => \C1|dMap~358_combout\,
	datad => \C1|LessThan216~0_combout\,
	combout => \C1|LessThan217~0_combout\);

-- Location: LCCOMB_X34_Y20_N6
\C1|esqQ2X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~4_combout\ = (\C1|LessThan217~0_combout\) # ((\C1|DRAWMAP~130_combout\) # ((\C1|DRAWMAP~94_combout\ & !\C1|dMap~360_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~94_combout\,
	datab => \C1|LessThan217~0_combout\,
	datac => \C1|dMap~360_combout\,
	datad => \C1|DRAWMAP~130_combout\,
	combout => \C1|esqQ2X2~4_combout\);

-- Location: LCCOMB_X36_Y20_N6
\C1|dMap~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~361_combout\ = (((\C1|dMap~353_combout\) # (!\C1|dMap~339_combout\)) # (!\C1|Add13~16_combout\)) # (!\C1|Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|Add13~16_combout\,
	datac => \C1|dMap~339_combout\,
	datad => \C1|dMap~353_combout\,
	combout => \C1|dMap~361_combout\);

-- Location: LCCOMB_X35_Y20_N16
\C1|dirQ2X2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~7_combout\ = (\C1|LessThan217~0_combout\) # ((\C1|LessThan183~0_combout\ & (!\C1|dMap~346_combout\ & \C1|dMap~336_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan183~0_combout\,
	datab => \C1|LessThan217~0_combout\,
	datac => \C1|dMap~346_combout\,
	datad => \C1|dMap~336_combout\,
	combout => \C1|dirQ2X2~7_combout\);

-- Location: LCCOMB_X23_Y16_N6
\C1|SQ1_Jump~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~5_combout\ = ((!\C1|esqQ1X1~1_combout\ & (\C1|Add19~2_combout\ & !\C1|dirQ1X1~0_combout\))) # (!\C1|SQ1_Jump[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~2_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~5_combout\);

-- Location: LCCOMB_X20_Y16_N4
\C1|SQ1_Jump~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~14_combout\ = (!\C1|esqQ1X1~1_combout\ & (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~20_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|dirQ1X1~0_combout\,
	datac => \C1|Add19~20_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~14_combout\);

-- Location: LCCOMB_X23_Y16_N20
\C1|SQ1_Jump~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~16_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~24_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~24_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~16_combout\);

-- Location: LCCOMB_X20_Y16_N26
\C1|SQ1_Jump~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~20_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~32_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~32_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~20_combout\);

-- Location: LCCOMB_X18_Y16_N12
\C1|SQ1_Jump~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~23_combout\ = (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~38_combout\ & (!\C1|esqQ1X1~1_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~0_combout\,
	datab => \C1|Add19~38_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~23_combout\);

-- Location: LCCOMB_X18_Y16_N6
\C1|SQ1_Jump~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~28_combout\ = (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~48_combout\ & (!\C1|esqQ1X1~1_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~0_combout\,
	datab => \C1|Add19~48_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~28_combout\);

-- Location: LCCOMB_X34_Y17_N22
\C1|dMap~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~365_combout\ = (!\C1|Add2~12_combout\ & (!\C1|Add2~14_combout\ & \C1|DRAWMAP~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~12_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|DRAWMAP~111_combout\,
	combout => \C1|dMap~365_combout\);

-- Location: LCCOMB_X36_Y20_N8
\C1|dMap~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~366_combout\ = (\C1|SQ_Y2\(3)) # ((!\C1|SQ_Y2\(1) & !\C1|SQ_Y2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~366_combout\);

-- Location: LCCOMB_X38_Y19_N20
\C1|dMap~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~367_combout\ = (\C1|Add13~6_combout\) # ((\C1|SQ_Y2\(3) & (!\C1|SQ_Y2\(2))) # (!\C1|SQ_Y2\(3) & ((\C1|Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~6_combout\,
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~8_combout\,
	combout => \C1|dMap~367_combout\);

-- Location: LCCOMB_X32_Y19_N16
\C1|SQ2_Jump~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~81_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add21~26_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add21~26_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~81_combout\);

-- Location: LCCOMB_X31_Y22_N4
\C1|SQ2_Jump~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~82_combout\ = (\C1|Add21~28_combout\ & (!\C1|esqQ2X1~0_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & !\C1|dirQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~28_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|SQ2_Jump[16]~65_combout\,
	datad => \C1|dirQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~82_combout\);

-- Location: LCCOMB_X30_Y19_N18
\C1|SQ2_Jump~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~86_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~36_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~36_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~86_combout\);

-- Location: LCCOMB_X31_Y21_N6
\C1|SQ2_Jump~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~91_combout\ = (\C1|Add21~46_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~46_combout\,
	datab => \C1|SQ2_Jump[16]~65_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~91_combout\);

-- Location: LCCOMB_X30_Y19_N24
\C1|SQ2_Jump~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~92_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~48_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~48_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~92_combout\);

-- Location: LCCOMB_X22_Y18_N4
\C1|dMap~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~43_combout\ = (\C1|SQ_X1\(4) & ((\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1))))) # (!\C1|SQ_X1\(4) & (!\C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(1),
	combout => \C1|dMap~43_combout\);

-- Location: LCCOMB_X22_Y18_N6
\C1|dMap~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~370_combout\ = (!\C1|SQ_X1\(5) & (\C1|SQ_X1\(8) & (\C1|SQ_X1\(7) & \C1|dMap~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(7),
	datad => \C1|dMap~39_combout\,
	combout => \C1|dMap~370_combout\);

-- Location: LCCOMB_X22_Y18_N0
\C1|dMap~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~39_combout\ = (\C1|SQ_X1\(6) & (!\C1|SQ_X1\(10) & (\C1|dMap~43_combout\ & \C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(10),
	datac => \C1|dMap~43_combout\,
	datad => \C1|SQ_X1\(9),
	combout => \C1|dMap~39_combout\);

-- Location: LCCOMB_X21_Y16_N24
\C1|LessThan83~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan83~2_combout\ = (!\C1|Add5~8_combout\ & !\C1|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan83~2_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_24(0),
	combout => \CLOCK_24~combout\(0));

-- Location: PLL_3
\C|altpll_0|sd1|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 9,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 41666,
	inclk1_input_frequency => 41666,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 27,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5937,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \C|altpll_0|sd1|pll_INCLK_bus\,
	clk => \C|altpll_0|sd1|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\C|altpll_0|sd1|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y19_N0
\C1|HPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~11_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~12\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~11_combout\,
	cout => \C1|HPOS[0]~12\);

-- Location: LCCOMB_X29_Y19_N16
\C1|HPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~27_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~26\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~26\ & VCC))
-- \C1|HPOS[8]~28\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~26\,
	combout => \C1|HPOS[8]~27_combout\,
	cout => \C1|HPOS[8]~28\);

-- Location: LCCOMB_X29_Y19_N18
\C1|HPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~29_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS[8]~28\)) # (!\C1|HPOS\(9) & ((\C1|HPOS[8]~28\) # (GND)))
-- \C1|HPOS[9]~30\ = CARRY((!\C1|HPOS[8]~28\) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|HPOS[8]~28\,
	combout => \C1|HPOS[9]~29_combout\,
	cout => \C1|HPOS[9]~30\);

-- Location: LCFF_X29_Y19_N19
\C1|HPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(9));

-- Location: LCCOMB_X29_Y19_N10
\C1|HPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: LCFF_X29_Y19_N11
\C1|HPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(5));

-- Location: LCCOMB_X29_Y19_N6
\C1|HPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: LCFF_X29_Y19_N7
\C1|HPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(3));

-- Location: LCCOMB_X30_Y15_N20
\C1|LessThan264~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan264~5_combout\ = (\C1|HPOS\(4) & \C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan264~5_combout\);

-- Location: LCCOMB_X29_Y19_N12
\C1|HPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~23_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~22\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~22\ & VCC))
-- \C1|HPOS[6]~24\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~22\,
	combout => \C1|HPOS[6]~23_combout\,
	cout => \C1|HPOS[6]~24\);

-- Location: LCFF_X29_Y19_N13
\C1|HPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(6));

-- Location: LCCOMB_X30_Y15_N24
\C1|LessThan264~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan264~6_combout\ = ((!\C1|HPOS\(5) & (!\C1|LessThan264~5_combout\ & !\C1|HPOS\(6)))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(5),
	datac => \C1|LessThan264~5_combout\,
	datad => \C1|HPOS\(6),
	combout => \C1|LessThan264~6_combout\);

-- Location: LCCOMB_X31_Y17_N22
\C1|LessThan259~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan259~0_combout\ = (\C1|HPOS\(10) & (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (!\C1|LessThan264~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan264~6_combout\,
	combout => \C1|LessThan259~0_combout\);

-- Location: LCFF_X29_Y19_N1
\C1|HPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(0));

-- Location: LCCOMB_X29_Y19_N2
\C1|HPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: LCFF_X29_Y19_N3
\C1|HPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(1));

-- Location: LCCOMB_X29_Y19_N4
\C1|HPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: LCFF_X29_Y19_N5
\C1|HPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(2));

-- Location: LCCOMB_X29_Y19_N8
\C1|HPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: LCFF_X29_Y19_N9
\C1|HPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(4));

-- Location: LCCOMB_X29_Y19_N14
\C1|HPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~24\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~24\) # (GND)))
-- \C1|HPOS[7]~26\ = CARRY((!\C1|HPOS[6]~24\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~24\,
	combout => \C1|HPOS[7]~25_combout\,
	cout => \C1|HPOS[7]~26\);

-- Location: LCFF_X29_Y19_N15
\C1|HPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(7));

-- Location: LCFF_X29_Y19_N17
\C1|HPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(8));

-- Location: LCCOMB_X30_Y15_N4
\C1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (!\C1|HPOS\(0) & (!\C1|HPOS\(2) & !\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X30_Y15_N18
\C1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (\C1|HPOS\(4) & (\C1|HPOS\(5) & ((\C1|HPOS\(3)) # (!\C1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(4),
	datac => \C1|process_0~0_combout\,
	datad => \C1|HPOS\(5),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X30_Y15_N16
\C1|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(7) & (((!\C1|HPOS\(5) & !\C1|HPOS\(6))))) # (!\C1|HPOS\(7) & ((\C1|process_0~1_combout\) # ((\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|process_0~1_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X26_Y19_N8
\C1|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|HPOS\(10)) # ((\C1|HPOS\(8)) # ((\C1|HPOS\(9)) # (!\C1|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|process_0~2_combout\,
	combout => \C1|process_0~3_combout\);

-- Location: LCFF_X26_Y19_N9
\C1|HSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HSYNC~regout\);

-- Location: LCCOMB_X29_Y17_N0
\C1|VPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~11_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~12\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~11_combout\,
	cout => \C1|VPOS[0]~12\);

-- Location: LCCOMB_X29_Y17_N16
\C1|VPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~27_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~26\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~26\ & VCC))
-- \C1|VPOS[8]~28\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~26\,
	combout => \C1|VPOS[8]~27_combout\,
	cout => \C1|VPOS[8]~28\);

-- Location: LCCOMB_X29_Y17_N18
\C1|VPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~29_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS[8]~28\)) # (!\C1|VPOS\(9) & ((\C1|VPOS[8]~28\) # (GND)))
-- \C1|VPOS[9]~30\ = CARRY((!\C1|VPOS[8]~28\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|VPOS[8]~28\,
	combout => \C1|VPOS[9]~29_combout\,
	cout => \C1|VPOS[9]~30\);

-- Location: LCFF_X29_Y17_N19
\C1|VPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(9));

-- Location: LCCOMB_X29_Y17_N20
\C1|VPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[10]~31_combout\ = \C1|VPOS\(10) $ (!\C1|VPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	cin => \C1|VPOS[9]~30\,
	combout => \C1|VPOS[10]~31_combout\);

-- Location: LCFF_X29_Y17_N21
\C1|VPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(10));

-- Location: LCCOMB_X29_Y17_N6
\C1|VPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: LCFF_X29_Y17_N7
\C1|VPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(3));

-- Location: LCCOMB_X29_Y18_N6
\C1|LessThan30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan30~0_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(2) & !\C1|VPOS\(1))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(1),
	combout => \C1|LessThan30~0_combout\);

-- Location: LCCOMB_X29_Y17_N22
\C1|LessThan260~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan260~0_combout\ = (\C1|VPOS\(10) & (((\C1|VPOS\(5) & !\C1|LessThan30~0_combout\)) # (!\C1|LessThan265~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|LessThan265~0_combout\,
	datac => \C1|VPOS\(10),
	datad => \C1|LessThan30~0_combout\,
	combout => \C1|LessThan260~0_combout\);

-- Location: LCFF_X29_Y17_N1
\C1|VPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(0));

-- Location: LCCOMB_X29_Y17_N2
\C1|VPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: LCFF_X29_Y17_N3
\C1|VPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(1));

-- Location: LCCOMB_X29_Y17_N4
\C1|VPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: LCFF_X29_Y17_N5
\C1|VPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(2));

-- Location: LCCOMB_X29_Y17_N8
\C1|VPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: LCFF_X29_Y17_N9
\C1|VPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(4));

-- Location: LCCOMB_X29_Y17_N10
\C1|VPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: LCCOMB_X29_Y17_N12
\C1|VPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~23_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~22\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~22\ & VCC))
-- \C1|VPOS[6]~24\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~22\,
	combout => \C1|VPOS[6]~23_combout\,
	cout => \C1|VPOS[6]~24\);

-- Location: LCCOMB_X29_Y17_N14
\C1|VPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~25_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~24\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~24\) # (GND)))
-- \C1|VPOS[7]~26\ = CARRY((!\C1|VPOS[6]~24\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~24\,
	combout => \C1|VPOS[7]~25_combout\,
	cout => \C1|VPOS[7]~26\);

-- Location: LCFF_X29_Y17_N15
\C1|VPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(7));

-- Location: LCFF_X29_Y17_N17
\C1|VPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(8));

-- Location: LCFF_X29_Y17_N13
\C1|VPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(6));

-- Location: LCCOMB_X26_Y17_N24
\C1|LessThan265~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan265~0_combout\ = (!\C1|VPOS\(9) & (!\C1|VPOS\(8) & (!\C1|VPOS\(7) & !\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(6),
	combout => \C1|LessThan265~0_combout\);

-- Location: LCCOMB_X29_Y18_N16
\C1|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|VPOS\(2)) # ((\C1|VPOS\(4)) # ((\C1|VPOS\(10)) # (\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(3),
	combout => \C1|process_0~4_combout\);

-- Location: LCFF_X29_Y17_N11
\C1|VPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan260~0_combout\,
	ena => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(5));

-- Location: LCCOMB_X29_Y17_N26
\C1|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (((\C1|process_0~4_combout\) # (\C1|VPOS\(5))) # (!\C1|LessThan265~0_combout\)) # (!\C1|LessThan268~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan268~1_combout\,
	datab => \C1|LessThan265~0_combout\,
	datac => \C1|process_0~4_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|process_0~5_combout\);

-- Location: LCFF_X29_Y17_N27
\C1|VSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VSYNC~regout\);

-- Location: LCCOMB_X35_Y19_N0
\C1|Add17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~0_combout\ = \C1|SQ_Y2\(1) $ (GND)
-- \C1|Add17~1\ = CARRY(!\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	combout => \C1|Add17~0_combout\,
	cout => \C1|Add17~1\);

-- Location: LCCOMB_X33_Y19_N18
\C1|SQ_Y2[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~7_combout\ = !\C1|Add17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add17~0_combout\,
	combout => \C1|SQ_Y2[1]~7_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X35_Y19_N10
\C1|Add17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~10_combout\ = (\C1|SQ_Y2\(6) & ((\C1|SQ_Y2[7]~0_combout\ & (!\C1|Add17~9\)) # (!\C1|SQ_Y2[7]~0_combout\ & (\C1|Add17~9\ & VCC)))) # (!\C1|SQ_Y2\(6) & ((\C1|SQ_Y2[7]~0_combout\ & ((\C1|Add17~9\) # (GND))) # (!\C1|SQ_Y2[7]~0_combout\ & 
-- (!\C1|Add17~9\))))
-- \C1|Add17~11\ = CARRY((\C1|SQ_Y2\(6) & (\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~9\)) # (!\C1|SQ_Y2\(6) & ((\C1|SQ_Y2[7]~0_combout\) # (!\C1|Add17~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~9\,
	combout => \C1|Add17~10_combout\,
	cout => \C1|Add17~11\);

-- Location: LCCOMB_X35_Y19_N12
\C1|Add17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~12_combout\ = ((\C1|SQ_Y2\(7) $ (\C1|SQ_Y2[7]~0_combout\ $ (!\C1|Add17~11\)))) # (GND)
-- \C1|Add17~13\ = CARRY((\C1|SQ_Y2\(7) & (!\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~11\)) # (!\C1|SQ_Y2\(7) & ((!\C1|Add17~11\) # (!\C1|SQ_Y2[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~11\,
	combout => \C1|Add17~12_combout\,
	cout => \C1|Add17~13\);

-- Location: LCCOMB_X36_Y19_N6
\C1|SQ_Y2[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~4_combout\ = !\C1|Add17~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~12_combout\,
	combout => \C1|SQ_Y2[7]~4_combout\);

-- Location: LCFF_X36_Y19_N7
\C1|SQ_Y2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[7]~4_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(7));

-- Location: LCCOMB_X35_Y19_N14
\C1|Add17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~14_combout\ = (\C1|SQ_Y2\(8) & ((\C1|SQ_Y2[7]~0_combout\ & ((\C1|Add17~13\) # (GND))) # (!\C1|SQ_Y2[7]~0_combout\ & (!\C1|Add17~13\)))) # (!\C1|SQ_Y2\(8) & ((\C1|SQ_Y2[7]~0_combout\ & (!\C1|Add17~13\)) # (!\C1|SQ_Y2[7]~0_combout\ & 
-- (\C1|Add17~13\ & VCC))))
-- \C1|Add17~15\ = CARRY((\C1|SQ_Y2\(8) & ((\C1|SQ_Y2[7]~0_combout\) # (!\C1|Add17~13\))) # (!\C1|SQ_Y2\(8) & (\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~13\,
	combout => \C1|Add17~14_combout\,
	cout => \C1|Add17~15\);

-- Location: LCCOMB_X35_Y19_N16
\C1|Add17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~16_combout\ = ((\C1|SQ_Y2\(9) $ (\C1|SQ_Y2[7]~0_combout\ $ (!\C1|Add17~15\)))) # (GND)
-- \C1|Add17~17\ = CARRY((\C1|SQ_Y2\(9) & (!\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~15\)) # (!\C1|SQ_Y2\(9) & ((!\C1|Add17~15\) # (!\C1|SQ_Y2[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~15\,
	combout => \C1|Add17~16_combout\,
	cout => \C1|Add17~17\);

-- Location: LCCOMB_X35_Y19_N28
\C1|SQ_Y2[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~2_combout\ = !\C1|Add17~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add17~16_combout\,
	combout => \C1|SQ_Y2[9]~2_combout\);

-- Location: LCFF_X35_Y19_N29
\C1|SQ_Y2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[9]~2_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(9));

-- Location: LCCOMB_X36_Y19_N4
\C1|SQ_Y2[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[8]~3_combout\ = !\C1|Add17~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~14_combout\,
	combout => \C1|SQ_Y2[8]~3_combout\);

-- Location: LCFF_X36_Y19_N5
\C1|SQ_Y2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[8]~3_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(8));

-- Location: LCCOMB_X36_Y18_N30
\C1|dMap~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~274_combout\ = (!\C1|SQ_Y2\(10) & (!\C1|SQ_Y2\(7) & (!\C1|SQ_Y2\(9) & !\C1|SQ_Y2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datab => \C1|SQ_Y2\(7),
	datac => \C1|SQ_Y2\(9),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|dMap~274_combout\);

-- Location: LCCOMB_X35_Y19_N8
\C1|Add17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~8_combout\ = ((\C1|SQ_Y2\(5) $ (\C1|SQ_Y2[7]~0_combout\ $ (\C1|Add17~7\)))) # (GND)
-- \C1|Add17~9\ = CARRY((\C1|SQ_Y2\(5) & ((!\C1|Add17~7\) # (!\C1|SQ_Y2[7]~0_combout\))) # (!\C1|SQ_Y2\(5) & (!\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~7\,
	combout => \C1|Add17~8_combout\,
	cout => \C1|Add17~9\);

-- Location: LCFF_X35_Y19_N9
\C1|SQ_Y2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~8_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(5));

-- Location: LCCOMB_X35_Y19_N2
\C1|Add17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~2_combout\ = (\C1|SQ_Y2\(2) & ((\C1|SQ_Y2[7]~0_combout\ & ((\C1|Add17~1\) # (GND))) # (!\C1|SQ_Y2[7]~0_combout\ & (!\C1|Add17~1\)))) # (!\C1|SQ_Y2\(2) & ((\C1|SQ_Y2[7]~0_combout\ & (!\C1|Add17~1\)) # (!\C1|SQ_Y2[7]~0_combout\ & (\C1|Add17~1\ & 
-- VCC))))
-- \C1|Add17~3\ = CARRY((\C1|SQ_Y2\(2) & ((\C1|SQ_Y2[7]~0_combout\) # (!\C1|Add17~1\))) # (!\C1|SQ_Y2\(2) & (\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~1\,
	combout => \C1|Add17~2_combout\,
	cout => \C1|Add17~3\);

-- Location: LCCOMB_X36_Y19_N30
\C1|SQ_Y2[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[2]~6_combout\ = !\C1|Add17~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add17~2_combout\,
	combout => \C1|SQ_Y2[2]~6_combout\);

-- Location: LCFF_X36_Y19_N31
\C1|SQ_Y2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[2]~6_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(2));

-- Location: LCCOMB_X35_Y19_N4
\C1|Add17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~4_combout\ = ((\C1|SQ_Y2\(3) $ (\C1|SQ_Y2[7]~0_combout\ $ (!\C1|Add17~3\)))) # (GND)
-- \C1|Add17~5\ = CARRY((\C1|SQ_Y2\(3) & (!\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~3\)) # (!\C1|SQ_Y2\(3) & ((!\C1|Add17~3\) # (!\C1|SQ_Y2[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~3\,
	combout => \C1|Add17~4_combout\,
	cout => \C1|Add17~5\);

-- Location: LCCOMB_X36_Y19_N0
\C1|SQ_Y2[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[3]~5_combout\ = !\C1|Add17~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add17~4_combout\,
	combout => \C1|SQ_Y2[3]~5_combout\);

-- Location: LCFF_X36_Y19_N1
\C1|SQ_Y2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y2[3]~5_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(3));

-- Location: LCCOMB_X35_Y18_N24
\C1|LessThan191~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan191~1_combout\ = (!\C1|SQ_Y2\(5) & (((\C1|SQ_Y2\(2)) # (\C1|SQ_Y2\(3))) # (!\C1|SQ_Y2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|LessThan191~1_combout\);

-- Location: LCCOMB_X35_Y19_N6
\C1|Add17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~6_combout\ = (\C1|SQ_Y2\(4) & ((\C1|SQ_Y2[7]~0_combout\ & (!\C1|Add17~5\)) # (!\C1|SQ_Y2[7]~0_combout\ & (\C1|Add17~5\ & VCC)))) # (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2[7]~0_combout\ & ((\C1|Add17~5\) # (GND))) # (!\C1|SQ_Y2[7]~0_combout\ & 
-- (!\C1|Add17~5\))))
-- \C1|Add17~7\ = CARRY((\C1|SQ_Y2\(4) & (\C1|SQ_Y2[7]~0_combout\ & !\C1|Add17~5\)) # (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2[7]~0_combout\) # (!\C1|Add17~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2[7]~0_combout\,
	datad => VCC,
	cin => \C1|Add17~5\,
	combout => \C1|Add17~6_combout\,
	cout => \C1|Add17~7\);

-- Location: LCFF_X35_Y19_N7
\C1|SQ_Y2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~6_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(4));

-- Location: LCCOMB_X36_Y18_N28
\C1|LessThan191~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan191~0_combout\ = (!\C1|SQ_Y2\(4) & \C1|SQ_Y2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|LessThan191~0_combout\);

-- Location: LCCOMB_X35_Y18_N22
\C1|dMap~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~275_combout\ = (((\C1|LessThan191~0_combout\) # (!\C1|LessThan191~1_combout\)) # (!\C1|dMap~274_combout\)) # (!\C1|SQ_Y2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|dMap~274_combout\,
	datac => \C1|LessThan191~1_combout\,
	datad => \C1|LessThan191~0_combout\,
	combout => \C1|dMap~275_combout\);

-- Location: LCCOMB_X32_Y20_N0
\C1|Add24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add24~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add24~0_combout\,
	cout => \C1|Add24~1\);

-- Location: LCCOMB_X37_Y19_N2
\C1|Add13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~1_cout\ = CARRY(\C1|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datad => VCC,
	cout => \C1|Add13~1_cout\);

-- Location: LCCOMB_X37_Y19_N4
\C1|Add13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~3_cout\ = CARRY((!\C1|Add3~2_combout\ & !\C1|Add13~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|Add13~1_cout\,
	cout => \C1|Add13~3_cout\);

-- Location: LCCOMB_X37_Y19_N6
\C1|Add13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~5_cout\ = CARRY((\C1|Add3~4_combout\) # (!\C1|Add13~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datad => VCC,
	cin => \C1|Add13~3_cout\,
	cout => \C1|Add13~5_cout\);

-- Location: LCCOMB_X37_Y19_N8
\C1|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~6_combout\ = (\C1|Add3~6_combout\ & (\C1|Add13~5_cout\ & VCC)) # (!\C1|Add3~6_combout\ & (!\C1|Add13~5_cout\))
-- \C1|Add13~7\ = CARRY((!\C1|Add3~6_combout\ & !\C1|Add13~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datad => VCC,
	cin => \C1|Add13~5_cout\,
	combout => \C1|Add13~6_combout\,
	cout => \C1|Add13~7\);

-- Location: LCCOMB_X36_Y20_N20
\C1|LessThan225~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan225~0_combout\ = (!\C1|Add13~6_combout\ & (((\C1|SQ_Y2\(2) & \C1|SQ_Y2\(1))) # (!\C1|SQ_Y2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|Add13~6_combout\,
	combout => \C1|LessThan225~0_combout\);

-- Location: LCCOMB_X36_Y19_N8
\C1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~0_combout\ = \C1|SQ_Y2\(1) $ (GND)
-- \C1|Add3~1\ = CARRY(!\C1|SQ_Y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	combout => \C1|Add3~0_combout\,
	cout => \C1|Add3~1\);

-- Location: LCCOMB_X36_Y19_N10
\C1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~2_combout\ = (\C1|SQ_Y2\(2) & ((\C1|Add3~1\) # (GND))) # (!\C1|SQ_Y2\(2) & (!\C1|Add3~1\))
-- \C1|Add3~3\ = CARRY((\C1|SQ_Y2\(2)) # (!\C1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|Add3~1\,
	combout => \C1|Add3~2_combout\,
	cout => \C1|Add3~3\);

-- Location: LCCOMB_X36_Y19_N12
\C1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~4_combout\ = (\C1|SQ_Y2\(3) & (\C1|Add3~3\ $ (GND))) # (!\C1|SQ_Y2\(3) & ((GND) # (!\C1|Add3~3\)))
-- \C1|Add3~5\ = CARRY((!\C1|Add3~3\) # (!\C1|SQ_Y2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add3~3\,
	combout => \C1|Add3~4_combout\,
	cout => \C1|Add3~5\);

-- Location: LCCOMB_X36_Y19_N14
\C1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~6_combout\ = (\C1|SQ_Y2\(4) & (!\C1|Add3~5\)) # (!\C1|SQ_Y2\(4) & ((\C1|Add3~5\) # (GND)))
-- \C1|Add3~7\ = CARRY((!\C1|Add3~5\) # (!\C1|SQ_Y2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add3~5\,
	combout => \C1|Add3~6_combout\,
	cout => \C1|Add3~7\);

-- Location: LCCOMB_X36_Y19_N16
\C1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~8_combout\ = (\C1|SQ_Y2\(5) & (\C1|Add3~7\ $ (GND))) # (!\C1|SQ_Y2\(5) & (!\C1|Add3~7\ & VCC))
-- \C1|Add3~9\ = CARRY((\C1|SQ_Y2\(5) & !\C1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add3~7\,
	combout => \C1|Add3~8_combout\,
	cout => \C1|Add3~9\);

-- Location: LCCOMB_X36_Y19_N18
\C1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~10_combout\ = (\C1|SQ_Y2\(6) & (!\C1|Add3~9\)) # (!\C1|SQ_Y2\(6) & ((\C1|Add3~9\) # (GND)))
-- \C1|Add3~11\ = CARRY((!\C1|Add3~9\) # (!\C1|SQ_Y2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add3~9\,
	combout => \C1|Add3~10_combout\,
	cout => \C1|Add3~11\);

-- Location: LCCOMB_X36_Y19_N20
\C1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~12_combout\ = (\C1|SQ_Y2\(7) & (!\C1|Add3~11\ & VCC)) # (!\C1|SQ_Y2\(7) & (\C1|Add3~11\ $ (GND)))
-- \C1|Add3~13\ = CARRY((!\C1|SQ_Y2\(7) & !\C1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add3~11\,
	combout => \C1|Add3~12_combout\,
	cout => \C1|Add3~13\);

-- Location: LCCOMB_X36_Y19_N22
\C1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~14_combout\ = (\C1|SQ_Y2\(8) & ((\C1|Add3~13\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add3~13\))
-- \C1|Add3~15\ = CARRY((\C1|SQ_Y2\(8)) # (!\C1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add3~13\,
	combout => \C1|Add3~14_combout\,
	cout => \C1|Add3~15\);

-- Location: LCCOMB_X36_Y19_N24
\C1|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~16_combout\ = (\C1|SQ_Y2\(9) & (!\C1|Add3~15\ & VCC)) # (!\C1|SQ_Y2\(9) & (\C1|Add3~15\ $ (GND)))
-- \C1|Add3~17\ = CARRY((!\C1|SQ_Y2\(9) & !\C1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add3~15\,
	combout => \C1|Add3~16_combout\,
	cout => \C1|Add3~17\);

-- Location: LCCOMB_X36_Y19_N26
\C1|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~18_combout\ = (\C1|SQ_Y2\(10) & (!\C1|Add3~17\)) # (!\C1|SQ_Y2\(10) & ((\C1|Add3~17\) # (GND)))
-- \C1|Add3~19\ = CARRY((!\C1|Add3~17\) # (!\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => VCC,
	cin => \C1|Add3~17\,
	combout => \C1|Add3~18_combout\,
	cout => \C1|Add3~19\);

-- Location: LCCOMB_X37_Y19_N10
\C1|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~8_combout\ = (\C1|Add3~8_combout\ & ((GND) # (!\C1|Add13~7\))) # (!\C1|Add3~8_combout\ & (\C1|Add13~7\ $ (GND)))
-- \C1|Add13~9\ = CARRY((\C1|Add3~8_combout\) # (!\C1|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~8_combout\,
	datad => VCC,
	cin => \C1|Add13~7\,
	combout => \C1|Add13~8_combout\,
	cout => \C1|Add13~9\);

-- Location: LCCOMB_X37_Y19_N12
\C1|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~10_combout\ = (\C1|Add3~10_combout\ & (\C1|Add13~9\ & VCC)) # (!\C1|Add3~10_combout\ & (!\C1|Add13~9\))
-- \C1|Add13~11\ = CARRY((!\C1|Add3~10_combout\ & !\C1|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|Add13~9\,
	combout => \C1|Add13~10_combout\,
	cout => \C1|Add13~11\);

-- Location: LCCOMB_X37_Y19_N14
\C1|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~12_combout\ = (\C1|Add3~12_combout\ & ((GND) # (!\C1|Add13~11\))) # (!\C1|Add3~12_combout\ & (\C1|Add13~11\ $ (GND)))
-- \C1|Add13~13\ = CARRY((\C1|Add3~12_combout\) # (!\C1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datad => VCC,
	cin => \C1|Add13~11\,
	combout => \C1|Add13~12_combout\,
	cout => \C1|Add13~13\);

-- Location: LCCOMB_X37_Y19_N16
\C1|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~14_combout\ = (\C1|Add3~14_combout\ & (\C1|Add13~13\ & VCC)) # (!\C1|Add3~14_combout\ & (!\C1|Add13~13\))
-- \C1|Add13~15\ = CARRY((!\C1|Add3~14_combout\ & !\C1|Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~14_combout\,
	datad => VCC,
	cin => \C1|Add13~13\,
	combout => \C1|Add13~14_combout\,
	cout => \C1|Add13~15\);

-- Location: LCCOMB_X37_Y19_N18
\C1|Add13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~16_combout\ = (\C1|Add3~16_combout\ & ((GND) # (!\C1|Add13~15\))) # (!\C1|Add3~16_combout\ & (\C1|Add13~15\ $ (GND)))
-- \C1|Add13~17\ = CARRY((\C1|Add3~16_combout\) # (!\C1|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~16_combout\,
	datad => VCC,
	cin => \C1|Add13~15\,
	combout => \C1|Add13~16_combout\,
	cout => \C1|Add13~17\);

-- Location: LCCOMB_X37_Y19_N20
\C1|Add13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~18_combout\ = (\C1|Add3~18_combout\ & (\C1|Add13~17\ & VCC)) # (!\C1|Add3~18_combout\ & (!\C1|Add13~17\))
-- \C1|Add13~19\ = CARRY((!\C1|Add3~18_combout\ & !\C1|Add13~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~18_combout\,
	datad => VCC,
	cin => \C1|Add13~17\,
	combout => \C1|Add13~18_combout\,
	cout => \C1|Add13~19\);

-- Location: LCCOMB_X37_Y19_N30
\C1|LessThan216~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~0_combout\ = (!\C1|Add13~10_combout\ & (!\C1|Add13~12_combout\ & (!\C1|Add13~14_combout\ & !\C1|Add13~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|Add13~12_combout\,
	datac => \C1|Add13~14_combout\,
	datad => \C1|Add13~16_combout\,
	combout => \C1|LessThan216~0_combout\);

-- Location: LCCOMB_X35_Y20_N8
\C1|LessThan216~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~1_combout\ = (!\C1|Add13~18_combout\ & (\C1|LessThan216~0_combout\ & ((\C1|LessThan225~0_combout\) # (!\C1|Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~8_combout\,
	datab => \C1|LessThan225~0_combout\,
	datac => \C1|Add13~18_combout\,
	datad => \C1|LessThan216~0_combout\,
	combout => \C1|LessThan216~1_combout\);

-- Location: LCCOMB_X32_Y20_N6
\C1|Add24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~6_combout\ = (\C1|SQ_X2\(4) & ((\C1|process_0~25_combout\ & (!\C1|Add24~5\)) # (!\C1|process_0~25_combout\ & (\C1|Add24~5\ & VCC)))) # (!\C1|SQ_X2\(4) & ((\C1|process_0~25_combout\ & ((\C1|Add24~5\) # (GND))) # (!\C1|process_0~25_combout\ & 
-- (!\C1|Add24~5\))))
-- \C1|Add24~7\ = CARRY((\C1|SQ_X2\(4) & (\C1|process_0~25_combout\ & !\C1|Add24~5\)) # (!\C1|SQ_X2\(4) & ((\C1|process_0~25_combout\) # (!\C1|Add24~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~5\,
	combout => \C1|Add24~6_combout\,
	cout => \C1|Add24~7\);

-- Location: LCFF_X32_Y20_N7
\C1|SQ_X2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add24~6_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(4));

-- Location: LCCOMB_X33_Y20_N14
\C1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = \C1|SQ_X2\(4) $ (VCC)
-- \C1|Add2~1\ = CARRY(\C1|SQ_X2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X33_Y20_N16
\C1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(5) & (!\C1|Add2~1\)) # (!\C1|SQ_X2\(5) & ((\C1|Add2~1\) # (GND)))
-- \C1|Add2~3\ = CARRY((!\C1|Add2~1\) # (!\C1|SQ_X2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X33_Y20_N18
\C1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~4_combout\ = (\C1|SQ_X2\(6) & (\C1|Add2~3\ $ (GND))) # (!\C1|SQ_X2\(6) & ((GND) # (!\C1|Add2~3\)))
-- \C1|Add2~5\ = CARRY((!\C1|Add2~3\) # (!\C1|SQ_X2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add2~3\,
	combout => \C1|Add2~4_combout\,
	cout => \C1|Add2~5\);

-- Location: LCCOMB_X34_Y20_N12
\C1|LessThan204~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~3_combout\ = (\C1|Add2~4_combout\ & (\C1|Add2~2_combout\ & \C1|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~4_combout\,
	datac => \C1|Add2~2_combout\,
	datad => \C1|Add2~10_combout\,
	combout => \C1|LessThan204~3_combout\);

-- Location: LCCOMB_X32_Y20_N10
\C1|Add24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~10_combout\ = (\C1|SQ_X2\(6) & ((\C1|process_0~25_combout\ & ((\C1|Add24~9\) # (GND))) # (!\C1|process_0~25_combout\ & (!\C1|Add24~9\)))) # (!\C1|SQ_X2\(6) & ((\C1|process_0~25_combout\ & (!\C1|Add24~9\)) # (!\C1|process_0~25_combout\ & 
-- (\C1|Add24~9\ & VCC))))
-- \C1|Add24~11\ = CARRY((\C1|SQ_X2\(6) & ((\C1|process_0~25_combout\) # (!\C1|Add24~9\))) # (!\C1|SQ_X2\(6) & (\C1|process_0~25_combout\ & !\C1|Add24~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~9\,
	combout => \C1|Add24~10_combout\,
	cout => \C1|Add24~11\);

-- Location: LCCOMB_X32_Y20_N12
\C1|Add24~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~12_combout\ = ((\C1|SQ_X2\(7) $ (\C1|process_0~25_combout\ $ (!\C1|Add24~11\)))) # (GND)
-- \C1|Add24~13\ = CARRY((\C1|SQ_X2\(7) & (!\C1|process_0~25_combout\ & !\C1|Add24~11\)) # (!\C1|SQ_X2\(7) & ((!\C1|Add24~11\) # (!\C1|process_0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~11\,
	combout => \C1|Add24~12_combout\,
	cout => \C1|Add24~13\);

-- Location: LCCOMB_X32_Y20_N14
\C1|Add24~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~14_combout\ = (\C1|SQ_X2\(8) & ((\C1|process_0~25_combout\ & ((\C1|Add24~13\) # (GND))) # (!\C1|process_0~25_combout\ & (!\C1|Add24~13\)))) # (!\C1|SQ_X2\(8) & ((\C1|process_0~25_combout\ & (!\C1|Add24~13\)) # (!\C1|process_0~25_combout\ & 
-- (\C1|Add24~13\ & VCC))))
-- \C1|Add24~15\ = CARRY((\C1|SQ_X2\(8) & ((\C1|process_0~25_combout\) # (!\C1|Add24~13\))) # (!\C1|SQ_X2\(8) & (\C1|process_0~25_combout\ & !\C1|Add24~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~13\,
	combout => \C1|Add24~14_combout\,
	cout => \C1|Add24~15\);

-- Location: LCCOMB_X32_Y20_N16
\C1|Add24~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~16_combout\ = ((\C1|SQ_X2\(9) $ (\C1|process_0~25_combout\ $ (\C1|Add24~15\)))) # (GND)
-- \C1|Add24~17\ = CARRY((\C1|SQ_X2\(9) & ((!\C1|Add24~15\) # (!\C1|process_0~25_combout\))) # (!\C1|SQ_X2\(9) & (!\C1|process_0~25_combout\ & !\C1|Add24~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~15\,
	combout => \C1|Add24~16_combout\,
	cout => \C1|Add24~17\);

-- Location: LCCOMB_X32_Y20_N18
\C1|Add24~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~18_combout\ = \C1|SQ_X2\(10) $ (\C1|Add24~17\ $ (!\C1|process_0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => \C1|process_0~25_combout\,
	cin => \C1|Add24~17\,
	combout => \C1|Add24~18_combout\);

-- Location: LCFF_X32_Y20_N19
\C1|SQ_X2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add24~18_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(10));

-- Location: LCCOMB_X32_Y20_N28
\C1|SQ_X2[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[8]~5_combout\ = !\C1|Add24~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add24~14_combout\,
	combout => \C1|SQ_X2[8]~5_combout\);

-- Location: LCFF_X32_Y20_N29
\C1|SQ_X2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[8]~5_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(8));

-- Location: LCCOMB_X32_Y20_N26
\C1|SQ_X2[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[7]~6_combout\ = !\C1|Add24~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add24~12_combout\,
	combout => \C1|SQ_X2[7]~6_combout\);

-- Location: LCFF_X32_Y20_N27
\C1|SQ_X2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[7]~6_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(7));

-- Location: LCCOMB_X33_Y20_N20
\C1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(7) & ((\C1|Add2~5\) # (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Add2~5\))
-- \C1|Add2~7\ = CARRY((\C1|SQ_X2\(7)) # (!\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X33_Y20_N22
\C1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add2~7\ & VCC)) # (!\C1|SQ_X2\(8) & (\C1|Add2~7\ $ (GND)))
-- \C1|Add2~9\ = CARRY((!\C1|SQ_X2\(8) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X33_Y20_N24
\C1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|SQ_X2\(9) & (!\C1|Add2~9\)) # (!\C1|SQ_X2\(9) & ((\C1|Add2~9\) # (GND)))
-- \C1|Add2~11\ = CARRY((!\C1|Add2~9\) # (!\C1|SQ_X2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X33_Y20_N26
\C1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = (\C1|SQ_X2\(10) & (\C1|Add2~11\ $ (GND))) # (!\C1|SQ_X2\(10) & (!\C1|Add2~11\ & VCC))
-- \C1|Add2~13\ = CARRY((\C1|SQ_X2\(10) & !\C1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\,
	cout => \C1|Add2~13\);

-- Location: LCCOMB_X33_Y20_N28
\C1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~14_combout\ = \C1|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add2~13\,
	combout => \C1|Add2~14_combout\);

-- Location: LCCOMB_X32_Y20_N20
\C1|LessThan204~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~4_combout\ = (!\C1|Add2~6_combout\ & !\C1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~6_combout\,
	datad => \C1|Add2~8_combout\,
	combout => \C1|LessThan204~4_combout\);

-- Location: LCCOMB_X33_Y20_N12
\C1|LessThan204~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~5_combout\ = (!\C1|Add2~14_combout\ & (!\C1|Add2~12_combout\ & ((\C1|LessThan204~4_combout\) # (!\C1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add2~14_combout\,
	datac => \C1|LessThan204~4_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan204~5_combout\);

-- Location: LCCOMB_X33_Y18_N14
\C1|LessThan208~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~0_combout\ = (((\C1|Add2~0_combout\) # (\C1|SQ_X2\(1))) # (!\C1|SQ_X2\(3))) # (!\C1|SQ_X2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(3),
	datac => \C1|Add2~0_combout\,
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan208~0_combout\);

-- Location: LCCOMB_X33_Y18_N6
\C1|LessThan208~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan208~1_combout\ = (\C1|Add2~4_combout\ & (\C1|Add2~2_combout\ & (\C1|LessThan208~0_combout\ & \C1|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|Add2~2_combout\,
	datac => \C1|LessThan208~0_combout\,
	datad => \C1|Add2~10_combout\,
	combout => \C1|LessThan208~1_combout\);

-- Location: LCCOMB_X33_Y19_N28
\C1|dMap~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~312_combout\ = (\C1|LessThan204~5_combout\ & (\C1|LessThan208~1_combout\ & ((!\C1|LessThan204~3_combout\) # (!\C1|LessThan204~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan204~6_combout\,
	datab => \C1|LessThan204~3_combout\,
	datac => \C1|LessThan204~5_combout\,
	datad => \C1|LessThan208~1_combout\,
	combout => \C1|dMap~312_combout\);

-- Location: LCCOMB_X36_Y20_N18
\C1|dMap~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~359_combout\ = (\C1|Add13~12_combout\ & (!\C1|Add13~8_combout\ & (!\C1|Add13~6_combout\ & !\C1|Add13~10_combout\))) # (!\C1|Add13~12_combout\ & (\C1|Add13~8_combout\ & (\C1|Add13~6_combout\ & \C1|Add13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|Add13~8_combout\,
	datac => \C1|Add13~6_combout\,
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~359_combout\);

-- Location: LCCOMB_X36_Y20_N2
\C1|dMap~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~368_combout\ = (\C1|SQ_Y2\(3) & ((\C1|Add13~10_combout\) # ((!\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~368_combout\);

-- Location: LCCOMB_X36_Y19_N28
\C1|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add3~20_combout\ = !\C1|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add3~19\,
	combout => \C1|Add3~20_combout\);

-- Location: LCCOMB_X37_Y19_N22
\C1|Add13~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~20_combout\ = (\C1|Add3~20_combout\ & ((GND) # (!\C1|Add13~19\))) # (!\C1|Add3~20_combout\ & (\C1|Add13~19\ $ (GND)))
-- \C1|Add13~21\ = CARRY((\C1|Add3~20_combout\) # (!\C1|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~20_combout\,
	datad => VCC,
	cin => \C1|Add13~19\,
	combout => \C1|Add13~20_combout\,
	cout => \C1|Add13~21\);

-- Location: LCCOMB_X37_Y19_N24
\C1|Add13~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add13~22_combout\ = \C1|Add13~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add13~21\,
	combout => \C1|Add13~22_combout\);

-- Location: LCCOMB_X37_Y19_N0
\C1|dMap~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~339_combout\ = (\C1|Add13~14_combout\ & (!\C1|Add13~20_combout\ & (\C1|Add13~22_combout\ & !\C1|Add13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~14_combout\,
	datab => \C1|Add13~20_combout\,
	datac => \C1|Add13~22_combout\,
	datad => \C1|Add13~18_combout\,
	combout => \C1|dMap~339_combout\);

-- Location: LCCOMB_X36_Y20_N22
\C1|dMap~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~340_combout\ = (\C1|Add13~16_combout\ & \C1|dMap~339_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~16_combout\,
	datac => \C1|dMap~339_combout\,
	combout => \C1|dMap~340_combout\);

-- Location: LCCOMB_X36_Y20_N24
\C1|dMap~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~360_combout\ = ((\C1|Add13~6_combout\ $ (\C1|dMap~368_combout\)) # (!\C1|dMap~340_combout\)) # (!\C1|dMap~359_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~6_combout\,
	datab => \C1|dMap~359_combout\,
	datac => \C1|dMap~368_combout\,
	datad => \C1|dMap~340_combout\,
	combout => \C1|dMap~360_combout\);

-- Location: LCCOMB_X33_Y18_N18
\C1|LessThan215~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan215~0_combout\ = ((!\C1|LessThan196~0_combout\ & (!\C1|Add2~0_combout\ & !\C1|Add2~2_combout\))) # (!\C1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan196~0_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan215~0_combout\);

-- Location: LCCOMB_X34_Y19_N24
\C1|dMap~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~311_combout\ = (\C1|Add2~10_combout\ & (!\C1|LessThan215~0_combout\ & (!\C1|LessThan208~1_combout\ & \C1|LessThan204~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan215~0_combout\,
	datac => \C1|LessThan208~1_combout\,
	datad => \C1|LessThan204~5_combout\,
	combout => \C1|dMap~311_combout\);

-- Location: LCCOMB_X33_Y18_N16
\C1|LessThan183~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~2_combout\ = (!\C1|Add2~4_combout\ & !\C1|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~4_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan183~2_combout\);

-- Location: LCCOMB_X32_Y20_N2
\C1|Add24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~2_combout\ = (\C1|SQ_X2\(2) & ((\C1|process_0~25_combout\ & ((\C1|Add24~1\) # (GND))) # (!\C1|process_0~25_combout\ & (!\C1|Add24~1\)))) # (!\C1|SQ_X2\(2) & ((\C1|process_0~25_combout\ & (!\C1|Add24~1\)) # (!\C1|process_0~25_combout\ & 
-- (\C1|Add24~1\ & VCC))))
-- \C1|Add24~3\ = CARRY((\C1|SQ_X2\(2) & ((\C1|process_0~25_combout\) # (!\C1|Add24~1\))) # (!\C1|SQ_X2\(2) & (\C1|process_0~25_combout\ & !\C1|Add24~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~1\,
	combout => \C1|Add24~2_combout\,
	cout => \C1|Add24~3\);

-- Location: LCCOMB_X29_Y20_N28
\C1|SQ_X2[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[2]~9_combout\ = !\C1|Add24~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add24~2_combout\,
	combout => \C1|SQ_X2[2]~9_combout\);

-- Location: LCFF_X29_Y20_N29
\C1|SQ_X2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[2]~9_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(2));

-- Location: LCCOMB_X33_Y18_N10
\C1|LessThan205~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~0_combout\ = (\C1|SQ_X2\(2) & !\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X2\(2),
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan205~0_combout\);

-- Location: LCCOMB_X33_Y18_N30
\C1|dMap~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~306_combout\ = (\C1|LessThan183~2_combout\ & (((\C1|SQ_X2\(3)) # (\C1|LessThan205~0_combout\)) # (!\C1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|SQ_X2\(3),
	datac => \C1|LessThan183~2_combout\,
	datad => \C1|LessThan205~0_combout\,
	combout => \C1|dMap~306_combout\);

-- Location: LCCOMB_X34_Y18_N28
\C1|LessThan183~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~0_combout\ = (!\C1|Add2~12_combout\ & !\C1|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~12_combout\,
	datad => \C1|Add2~14_combout\,
	combout => \C1|LessThan183~0_combout\);

-- Location: LCCOMB_X34_Y18_N22
\C1|dMap~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~307_combout\ = (\C1|LessThan183~0_combout\ & ((\C1|Add2~8_combout\ & (\C1|Add2~6_combout\ & !\C1|Add2~10_combout\)) # (!\C1|Add2~8_combout\ & (!\C1|Add2~6_combout\ & \C1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|LessThan183~0_combout\,
	combout => \C1|dMap~307_combout\);

-- Location: LCCOMB_X34_Y18_N16
\C1|dMap~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~308_combout\ = (\C1|dMap~307_combout\ & ((\C1|Add2~6_combout\ & ((!\C1|dMap~306_combout\))) # (!\C1|Add2~6_combout\ & (\C1|LessThan215~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|LessThan215~0_combout\,
	datac => \C1|dMap~306_combout\,
	datad => \C1|dMap~307_combout\,
	combout => \C1|dMap~308_combout\);

-- Location: LCCOMB_X34_Y19_N26
\C1|DRAWMAP~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~125_combout\ = (\C1|dMap~311_combout\) # (\C1|dMap~308_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~311_combout\,
	datad => \C1|dMap~308_combout\,
	combout => \C1|DRAWMAP~125_combout\);

-- Location: LCCOMB_X36_Y20_N26
\C1|dirQ2X2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~6_combout\ = (\C1|dMap~349_combout\ & (\C1|dMap~312_combout\ & (!\C1|dMap~360_combout\))) # (!\C1|dMap~349_combout\ & ((\C1|DRAWMAP~125_combout\) # ((\C1|dMap~312_combout\ & !\C1|dMap~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~349_combout\,
	datab => \C1|dMap~312_combout\,
	datac => \C1|dMap~360_combout\,
	datad => \C1|DRAWMAP~125_combout\,
	combout => \C1|dirQ2X2~6_combout\);

-- Location: LCCOMB_X33_Y20_N30
\C1|LessThan204~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~6_combout\ = (\C1|Add2~0_combout\ & (((!\C1|SQ_X2\(2) & \C1|SQ_X2\(1))) # (!\C1|SQ_X2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X2\(2),
	datac => \C1|SQ_X2\(1),
	datad => \C1|Add2~0_combout\,
	combout => \C1|LessThan204~6_combout\);

-- Location: LCCOMB_X33_Y18_N24
\C1|LessThan205~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan205~1_combout\ = (!\C1|Add2~0_combout\ & (!\C1|Add2~2_combout\ & ((\C1|LessThan205~0_combout\) # (\C1|SQ_X2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan205~0_combout\,
	datab => \C1|SQ_X2\(3),
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan205~1_combout\);

-- Location: LCCOMB_X34_Y18_N8
\C1|LessThan204~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan204~2_combout\ = (\C1|Add2~10_combout\ & \C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add2~10_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|LessThan204~2_combout\);

-- Location: LCCOMB_X34_Y18_N6
\C1|LessThan188~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan188~1_combout\ = (!\C1|Add2~12_combout\ & (!\C1|Add2~14_combout\ & ((!\C1|Add2~10_combout\) # (!\C1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|Add2~10_combout\,
	datad => \C1|Add2~14_combout\,
	combout => \C1|LessThan188~1_combout\);

-- Location: LCCOMB_X34_Y18_N18
\C1|LessThan200~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan200~0_combout\ = ((\C1|LessThan204~2_combout\ & ((\C1|Add2~4_combout\) # (!\C1|LessThan205~1_combout\)))) # (!\C1|LessThan188~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|LessThan205~1_combout\,
	datac => \C1|LessThan204~2_combout\,
	datad => \C1|LessThan188~1_combout\,
	combout => \C1|LessThan200~0_combout\);

-- Location: LCCOMB_X33_Y20_N6
\C1|dMap~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~305_combout\ = (!\C1|LessThan200~0_combout\ & (((\C1|LessThan204~6_combout\ & \C1|LessThan204~3_combout\)) # (!\C1|LessThan204~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan204~5_combout\,
	datab => \C1|LessThan204~6_combout\,
	datac => \C1|LessThan204~3_combout\,
	datad => \C1|LessThan200~0_combout\,
	combout => \C1|dMap~305_combout\);

-- Location: LCCOMB_X37_Y19_N26
\C1|dMap~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~354_combout\ = (!\C1|Add13~10_combout\ & (\C1|Add13~16_combout\ & (\C1|Add13~12_combout\ & \C1|dMap~339_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|Add13~16_combout\,
	datac => \C1|Add13~12_combout\,
	datad => \C1|dMap~339_combout\,
	combout => \C1|dMap~354_combout\);

-- Location: LCCOMB_X35_Y20_N14
\C1|dMap~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~355_combout\ = (((!\C1|dMap~342_combout\ & \C1|Add13~6_combout\)) # (!\C1|dMap~354_combout\)) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~342_combout\,
	datab => \C1|Add13~6_combout\,
	datac => \C1|Add13~8_combout\,
	datad => \C1|dMap~354_combout\,
	combout => \C1|dMap~355_combout\);

-- Location: LCCOMB_X33_Y19_N24
\C1|dMap~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~356_combout\ = (!\C1|SQ_Y2\(3) & !\C1|Add13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(3),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~356_combout\);

-- Location: LCCOMB_X33_Y19_N14
\C1|dMap~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~357_combout\ = (\C1|Add13~8_combout\ & (((!\C1|dMap~356_combout\) # (!\C1|SQ_Y2\(1))) # (!\C1|SQ_Y2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(1),
	datac => \C1|dMap~356_combout\,
	datad => \C1|Add13~8_combout\,
	combout => \C1|dMap~357_combout\);

-- Location: LCCOMB_X35_Y20_N22
\C1|dMap~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~362_combout\ = ((\C1|dMap~357_combout\) # (!\C1|dMap~354_combout\)) # (!\C1|dMap~367_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~367_combout\,
	datac => \C1|dMap~357_combout\,
	datad => \C1|dMap~354_combout\,
	combout => \C1|dMap~362_combout\);

-- Location: LCCOMB_X35_Y20_N4
\C1|dirQ2X2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~4_combout\ = (\C1|dMap~313_combout\ & (((\C1|dMap~305_combout\ & !\C1|dMap~362_combout\)) # (!\C1|dMap~355_combout\))) # (!\C1|dMap~313_combout\ & (\C1|dMap~305_combout\ & ((!\C1|dMap~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~313_combout\,
	datab => \C1|dMap~305_combout\,
	datac => \C1|dMap~355_combout\,
	datad => \C1|dMap~362_combout\,
	combout => \C1|dirQ2X2~4_combout\);

-- Location: LCCOMB_X33_Y20_N4
\C1|LessThan189~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan189~0_combout\ = (((!\C1|Add2~4_combout\) # (!\C1|Add2~6_combout\)) # (!\C1|Add2~8_combout\)) # (!\C1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|Add2~8_combout\,
	datac => \C1|Add2~6_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan189~0_combout\);

-- Location: LCCOMB_X33_Y18_N28
\C1|LessThan209~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan209~0_combout\ = (\C1|SQ_X2\(3) & ((\C1|SQ_X2\(2)) # (!\C1|SQ_X2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datac => \C1|SQ_X2\(3),
	datad => \C1|SQ_X2\(1),
	combout => \C1|LessThan209~0_combout\);

-- Location: LCCOMB_X34_Y18_N30
\C1|LessThan188~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan188~0_combout\ = ((\C1|Add2~0_combout\) # (\C1|Add2~2_combout\)) # (!\C1|LessThan209~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan209~0_combout\,
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan188~0_combout\);

-- Location: LCCOMB_X34_Y18_N12
\C1|LessThan188~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan188~2_combout\ = ((\C1|Add2~4_combout\ & (\C1|LessThan188~0_combout\ & \C1|LessThan204~2_combout\))) # (!\C1|LessThan188~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|LessThan188~0_combout\,
	datac => \C1|LessThan204~2_combout\,
	datad => \C1|LessThan188~1_combout\,
	combout => \C1|LessThan188~2_combout\);

-- Location: LCCOMB_X34_Y18_N10
\C1|DRAWMAP~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~111_combout\ = (\C1|LessThan188~2_combout\ & (((\C1|LessThan189~0_combout\) # (!\C1|Add2~2_combout\)) # (!\C1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|Add2~2_combout\,
	datac => \C1|LessThan189~0_combout\,
	datad => \C1|LessThan188~2_combout\,
	combout => \C1|DRAWMAP~111_combout\);

-- Location: LCCOMB_X34_Y20_N30
\C1|dMap~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~301_combout\ = (!\C1|Add2~10_combout\ & (\C1|Add2~12_combout\ & !\C1|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~10_combout\,
	datac => \C1|Add2~12_combout\,
	datad => \C1|Add2~14_combout\,
	combout => \C1|dMap~301_combout\);

-- Location: LCCOMB_X34_Y17_N26
\C1|dMap~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~302_combout\ = (\C1|dMap~301_combout\ & ((\C1|LessThan215~0_combout\) # (!\C1|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|dMap~301_combout\,
	datad => \C1|LessThan215~0_combout\,
	combout => \C1|dMap~302_combout\);

-- Location: LCCOMB_X34_Y17_N0
\C1|dMap~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~303_combout\ = (\C1|dMap~302_combout\ & ((\C1|Add2~6_combout\ & ((!\C1|Add2~8_combout\))) # (!\C1|Add2~6_combout\ & ((\C1|dMap~300_combout\) # (\C1|Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~300_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|dMap~302_combout\,
	combout => \C1|dMap~303_combout\);

-- Location: LCCOMB_X34_Y17_N2
\C1|LessThan184~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan184~2_combout\ = (\C1|Add2~12_combout\ & \C1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~12_combout\,
	datad => \C1|Add2~10_combout\,
	combout => \C1|LessThan184~2_combout\);

-- Location: LCCOMB_X34_Y17_N4
\C1|LessThan185~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan185~0_combout\ = (!\C1|Add2~8_combout\ & (!\C1|Add2~2_combout\ & (!\C1|Add2~4_combout\ & !\C1|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~2_combout\,
	datac => \C1|Add2~4_combout\,
	datad => \C1|Add2~6_combout\,
	combout => \C1|LessThan185~0_combout\);

-- Location: LCCOMB_X34_Y17_N18
\C1|LessThan183~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~1_combout\ = (\C1|Add2~14_combout\) # ((\C1|Add2~10_combout\ & \C1|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add2~10_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan183~1_combout\);

-- Location: LCCOMB_X34_Y17_N24
\C1|LessThan185~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan185~1_combout\ = ((!\C1|LessThan204~6_combout\ & (\C1|LessThan185~0_combout\ & !\C1|Add2~14_combout\))) # (!\C1|LessThan183~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan204~6_combout\,
	datab => \C1|LessThan185~0_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|LessThan183~1_combout\,
	combout => \C1|LessThan185~1_combout\);

-- Location: LCCOMB_X34_Y17_N28
\C1|LessThan184~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan184~1_combout\ = (\C1|LessThan184~0_combout\ & (\C1|Add2~12_combout\ & ((\C1|LessThan208~0_combout\) # (!\C1|LessThan183~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan184~0_combout\,
	datab => \C1|LessThan208~0_combout\,
	datac => \C1|LessThan183~2_combout\,
	datad => \C1|Add2~12_combout\,
	combout => \C1|LessThan184~1_combout\);

-- Location: LCCOMB_X34_Y17_N8
\C1|dMap~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~298_combout\ = (\C1|LessThan185~1_combout\ & ((\C1|Add2~14_combout\) # ((\C1|LessThan184~2_combout\) # (\C1|LessThan184~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|LessThan184~2_combout\,
	datac => \C1|LessThan185~1_combout\,
	datad => \C1|LessThan184~1_combout\,
	combout => \C1|dMap~298_combout\);

-- Location: LCCOMB_X34_Y19_N2
\C1|dirQ2X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~2_combout\ = (!\C1|dMap~303_combout\ & (!\C1|dMap~298_combout\ & ((\C1|LessThan188~2_combout\) # (!\C1|LessThan192~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan192~1_combout\,
	datab => \C1|LessThan188~2_combout\,
	datac => \C1|dMap~303_combout\,
	datad => \C1|dMap~298_combout\,
	combout => \C1|dirQ2X2~2_combout\);

-- Location: LCCOMB_X34_Y19_N0
\C1|dirQ2X2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~8_combout\ = ((!\C1|Add2~14_combout\ & (!\C1|Add2~12_combout\ & \C1|DRAWMAP~111_combout\))) # (!\C1|dirQ2X2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|Add2~12_combout\,
	datac => \C1|DRAWMAP~111_combout\,
	datad => \C1|dirQ2X2~2_combout\,
	combout => \C1|dirQ2X2~8_combout\);

-- Location: LCCOMB_X36_Y19_N2
\C1|LessThan216~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan216~2_combout\ = (!\C1|Add13~14_combout\ & (!\C1|Add13~12_combout\ & !\C1|Add13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~14_combout\,
	datab => \C1|Add13~12_combout\,
	datad => \C1|Add13~16_combout\,
	combout => \C1|LessThan216~2_combout\);

-- Location: LCCOMB_X34_Y20_N8
\C1|dMap~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~343_combout\ = (\C1|Add13~22_combout\ & !\C1|Add13~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~22_combout\,
	datad => \C1|Add13~20_combout\,
	combout => \C1|dMap~343_combout\);

-- Location: LCCOMB_X35_Y20_N18
\C1|dMap~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~351_combout\ = (\C1|dMap~350_combout\) # (((!\C1|dMap~343_combout\) # (!\C1|Add13~18_combout\)) # (!\C1|LessThan216~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~350_combout\,
	datab => \C1|LessThan216~2_combout\,
	datac => \C1|Add13~18_combout\,
	datad => \C1|dMap~343_combout\,
	combout => \C1|dMap~351_combout\);

-- Location: LCCOMB_X34_Y18_N20
\C1|LessThan196~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan196~1_combout\ = (\C1|LessThan204~2_combout\ & (((\C1|LessThan196~0_combout\ & \C1|Add2~0_combout\)) # (!\C1|LessThan183~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan196~0_combout\,
	datab => \C1|Add2~0_combout\,
	datac => \C1|LessThan204~2_combout\,
	datad => \C1|LessThan183~2_combout\,
	combout => \C1|LessThan196~1_combout\);

-- Location: LCCOMB_X33_Y18_N12
\C1|LessThan192~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan192~0_combout\ = (\C1|Add2~0_combout\ & (\C1|Add2~2_combout\ & ((!\C1|SQ_X2\(3)) # (!\C1|LessThan205~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan205~0_combout\,
	datab => \C1|SQ_X2\(3),
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan192~0_combout\);

-- Location: LCCOMB_X34_Y18_N2
\C1|LessThan192~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan192~1_combout\ = ((\C1|LessThan204~2_combout\ & ((\C1|Add2~4_combout\) # (\C1|LessThan192~0_combout\)))) # (!\C1|LessThan188~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|LessThan204~2_combout\,
	datac => \C1|LessThan192~0_combout\,
	datad => \C1|LessThan188~1_combout\,
	combout => \C1|LessThan192~1_combout\);

-- Location: LCCOMB_X34_Y18_N24
\C1|dMap~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~304_combout\ = (!\C1|LessThan192~1_combout\ & ((\C1|LessThan196~1_combout\) # (!\C1|LessThan188~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan188~1_combout\,
	datac => \C1|LessThan196~1_combout\,
	datad => \C1|LessThan192~1_combout\,
	combout => \C1|dMap~304_combout\);

-- Location: LCCOMB_X33_Y18_N22
\C1|LessThan182~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan182~0_combout\ = (\C1|Add2~8_combout\) # ((\C1|Add2~6_combout\) # ((!\C1|LessThan205~1_combout\ & \C1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan205~1_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan182~0_combout\);

-- Location: LCCOMB_X34_Y17_N12
\C1|LessThan183~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~3_combout\ = ((\C1|LessThan183~2_combout\ & ((\C1|SQ_X2\(3)) # (!\C1|Add2~0_combout\)))) # (!\C1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan183~2_combout\,
	datad => \C1|Add2~0_combout\,
	combout => \C1|LessThan183~3_combout\);

-- Location: LCCOMB_X34_Y17_N10
\C1|LessThan183~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan183~4_combout\ = ((!\C1|Add2~14_combout\ & (!\C1|Add2~8_combout\ & \C1|LessThan183~3_combout\))) # (!\C1|LessThan183~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|LessThan183~1_combout\,
	datac => \C1|Add2~8_combout\,
	datad => \C1|LessThan183~3_combout\,
	combout => \C1|LessThan183~4_combout\);

-- Location: LCCOMB_X34_Y17_N16
\C1|dMap~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~299_combout\ = (\C1|LessThan183~4_combout\ & ((\C1|Add2~14_combout\) # ((\C1|LessThan184~2_combout\ & \C1|LessThan182~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~14_combout\,
	datab => \C1|LessThan184~2_combout\,
	datac => \C1|LessThan182~0_combout\,
	datad => \C1|LessThan183~4_combout\,
	combout => \C1|dMap~299_combout\);

-- Location: LCCOMB_X36_Y20_N4
\C1|dirQ2X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~3_combout\ = (\C1|dMap~361_combout\ & (!\C1|dMap~351_combout\ & ((\C1|dMap~299_combout\)))) # (!\C1|dMap~361_combout\ & ((\C1|dMap~304_combout\) # ((!\C1|dMap~351_combout\ & \C1|dMap~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~361_combout\,
	datab => \C1|dMap~351_combout\,
	datac => \C1|dMap~304_combout\,
	datad => \C1|dMap~299_combout\,
	combout => \C1|dirQ2X2~3_combout\);

-- Location: LCCOMB_X35_Y20_N6
\C1|dirQ2X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X2~5_combout\ = (\C1|dirQ2X2~4_combout\) # ((\C1|dirQ2X2~3_combout\) # ((!\C1|dMap~341_combout\ & \C1|dirQ2X2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~341_combout\,
	datab => \C1|dirQ2X2~4_combout\,
	datac => \C1|dirQ2X2~8_combout\,
	datad => \C1|dirQ2X2~3_combout\,
	combout => \C1|dirQ2X2~5_combout\);

-- Location: LCCOMB_X35_Y20_N10
\C1|SQ_X2[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[9]~2_combout\ = (!\C1|LessThan216~1_combout\ & ((\C1|dirQ2X2~7_combout\) # ((\C1|dirQ2X2~6_combout\) # (\C1|dirQ2X2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X2~7_combout\,
	datab => \C1|LessThan216~1_combout\,
	datac => \C1|dirQ2X2~6_combout\,
	datad => \C1|dirQ2X2~5_combout\,
	combout => \C1|SQ_X2[9]~2_combout\);

-- Location: LCCOMB_X34_Y20_N10
\C1|SQ_X2[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[9]~3_combout\ = (\C1|Add13~22_combout\ & (!\C1|LessThan174~0_combout\ & \C1|process_0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add13~22_combout\,
	datac => \C1|LessThan174~0_combout\,
	datad => \C1|process_0~25_combout\,
	combout => \C1|SQ_X2[9]~3_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X31_Y19_N8
\C1|SQ_X2[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~0_combout\ = (\SW~combout\(1) & (\C1|LessThan260~0_combout\ & \C1|LessThan259~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \C1|LessThan260~0_combout\,
	datad => \C1|LessThan259~0_combout\,
	combout => \C1|SQ_X2[1]~0_combout\);

-- Location: LCCOMB_X33_Y20_N2
\C1|SQ_X2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~1_combout\ = (\C1|SQ_X2[1]~0_combout\ & (((!\KEY~combout\(0) & !\C1|dirQ2X1~0_combout\)) # (!\C1|process_0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \C1|SQ_X2[1]~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|process_0~25_combout\,
	combout => \C1|SQ_X2[1]~1_combout\);

-- Location: LCCOMB_X33_Y20_N8
\C1|SQ_X2[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[1]~4_combout\ = (\C1|SQ_X2[1]~1_combout\ & (((!\C1|Add13~20_combout\ & !\C1|SQ_X2[9]~2_combout\)) # (!\C1|SQ_X2[9]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \C1|SQ_X2[9]~2_combout\,
	datac => \C1|SQ_X2[9]~3_combout\,
	datad => \C1|SQ_X2[1]~1_combout\,
	combout => \C1|SQ_X2[1]~4_combout\);

-- Location: LCFF_X32_Y20_N1
\C1|SQ_X2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add24~0_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(1));

-- Location: LCCOMB_X32_Y20_N4
\C1|Add24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~4_combout\ = ((\C1|process_0~25_combout\ $ (\C1|SQ_X2\(3) $ (!\C1|Add24~3\)))) # (GND)
-- \C1|Add24~5\ = CARRY((\C1|process_0~25_combout\ & (!\C1|SQ_X2\(3) & !\C1|Add24~3\)) # (!\C1|process_0~25_combout\ & ((!\C1|Add24~3\) # (!\C1|SQ_X2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~25_combout\,
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add24~3\,
	combout => \C1|Add24~4_combout\,
	cout => \C1|Add24~5\);

-- Location: LCCOMB_X32_Y20_N30
\C1|SQ_X2[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[3]~8_combout\ = !\C1|Add24~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add24~4_combout\,
	combout => \C1|SQ_X2[3]~8_combout\);

-- Location: LCFF_X32_Y20_N31
\C1|SQ_X2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[3]~8_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(3));

-- Location: LCCOMB_X32_Y20_N8
\C1|Add24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add24~8_combout\ = ((\C1|SQ_X2\(5) $ (\C1|process_0~25_combout\ $ (\C1|Add24~7\)))) # (GND)
-- \C1|Add24~9\ = CARRY((\C1|SQ_X2\(5) & ((!\C1|Add24~7\) # (!\C1|process_0~25_combout\))) # (!\C1|SQ_X2\(5) & (!\C1|process_0~25_combout\ & !\C1|Add24~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \C1|process_0~25_combout\,
	datad => VCC,
	cin => \C1|Add24~7\,
	combout => \C1|Add24~8_combout\,
	cout => \C1|Add24~9\);

-- Location: LCCOMB_X32_Y20_N24
\C1|SQ_X2[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[6]~7_combout\ = !\C1|Add24~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add24~10_combout\,
	combout => \C1|SQ_X2[6]~7_combout\);

-- Location: LCFF_X32_Y20_N25
\C1|SQ_X2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[6]~7_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(6));

-- Location: LCFF_X32_Y20_N9
\C1|SQ_X2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add24~8_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(5));

-- Location: LCCOMB_X31_Y20_N8
\C1|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~0_combout\ = \C1|SQ_X2\(1) $ (VCC)
-- \C1|Add9~1\ = CARRY(\C1|SQ_X2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	combout => \C1|Add9~0_combout\,
	cout => \C1|Add9~1\);

-- Location: LCCOMB_X31_Y20_N10
\C1|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~2_combout\ = (\C1|SQ_X2\(2) & (!\C1|Add9~1\)) # (!\C1|SQ_X2\(2) & (\C1|Add9~1\ & VCC))
-- \C1|Add9~3\ = CARRY((\C1|SQ_X2\(2) & !\C1|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|Add9~1\,
	combout => \C1|Add9~2_combout\,
	cout => \C1|Add9~3\);

-- Location: LCCOMB_X31_Y20_N12
\C1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~4_combout\ = (\C1|SQ_X2\(3) & (\C1|Add9~3\ $ (GND))) # (!\C1|SQ_X2\(3) & ((GND) # (!\C1|Add9~3\)))
-- \C1|Add9~5\ = CARRY((!\C1|Add9~3\) # (!\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add9~3\,
	combout => \C1|Add9~4_combout\,
	cout => \C1|Add9~5\);

-- Location: LCCOMB_X31_Y20_N14
\C1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~6_combout\ = (\C1|SQ_X2\(4) & (\C1|Add9~5\ & VCC)) # (!\C1|SQ_X2\(4) & (!\C1|Add9~5\))
-- \C1|Add9~7\ = CARRY((!\C1|SQ_X2\(4) & !\C1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add9~5\,
	combout => \C1|Add9~6_combout\,
	cout => \C1|Add9~7\);

-- Location: LCCOMB_X31_Y20_N16
\C1|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~8_combout\ = (\C1|SQ_X2\(5) & ((GND) # (!\C1|Add9~7\))) # (!\C1|SQ_X2\(5) & (\C1|Add9~7\ $ (GND)))
-- \C1|Add9~9\ = CARRY((\C1|SQ_X2\(5)) # (!\C1|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add9~7\,
	combout => \C1|Add9~8_combout\,
	cout => \C1|Add9~9\);

-- Location: LCCOMB_X31_Y20_N18
\C1|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~10_combout\ = (\C1|SQ_X2\(6) & (!\C1|Add9~9\)) # (!\C1|SQ_X2\(6) & (\C1|Add9~9\ & VCC))
-- \C1|Add9~11\ = CARRY((\C1|SQ_X2\(6) & !\C1|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add9~9\,
	combout => \C1|Add9~10_combout\,
	cout => \C1|Add9~11\);

-- Location: LCCOMB_X31_Y20_N20
\C1|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~12_combout\ = (\C1|SQ_X2\(7) & (\C1|Add9~11\ $ (GND))) # (!\C1|SQ_X2\(7) & ((GND) # (!\C1|Add9~11\)))
-- \C1|Add9~13\ = CARRY((!\C1|Add9~11\) # (!\C1|SQ_X2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add9~11\,
	combout => \C1|Add9~12_combout\,
	cout => \C1|Add9~13\);

-- Location: LCCOMB_X31_Y20_N2
\C1|LessThan256~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~0_combout\ = (!\C1|Add9~2_combout\ & (!\C1|Add9~0_combout\ & !\C1|Add9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan256~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\C1|LessThan235~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan235~0_combout\ = (\C1|Add9~6_combout\ & \C1|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~8_combout\,
	combout => \C1|LessThan235~0_combout\);

-- Location: LCCOMB_X31_Y18_N14
\C1|LessThan245~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan245~0_combout\ = (\C1|Add9~12_combout\ & ((\C1|Add9~10_combout\) # ((!\C1|LessThan256~0_combout\ & \C1|LessThan235~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|Add9~12_combout\,
	datac => \C1|LessThan256~0_combout\,
	datad => \C1|LessThan235~0_combout\,
	combout => \C1|LessThan245~0_combout\);

-- Location: LCCOMB_X31_Y20_N22
\C1|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~14_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add9~13\)) # (!\C1|SQ_X2\(8) & (\C1|Add9~13\ & VCC))
-- \C1|Add9~15\ = CARRY((\C1|SQ_X2\(8) & !\C1|Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add9~13\,
	combout => \C1|Add9~14_combout\,
	cout => \C1|Add9~15\);

-- Location: LCCOMB_X31_Y20_N24
\C1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~16_combout\ = (\C1|SQ_X2\(9) & ((GND) # (!\C1|Add9~15\))) # (!\C1|SQ_X2\(9) & (\C1|Add9~15\ $ (GND)))
-- \C1|Add9~17\ = CARRY((\C1|SQ_X2\(9)) # (!\C1|Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add9~15\,
	combout => \C1|Add9~16_combout\,
	cout => \C1|Add9~17\);

-- Location: LCCOMB_X31_Y20_N26
\C1|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~18_combout\ = (\C1|SQ_X2\(10) & (\C1|Add9~17\ & VCC)) # (!\C1|SQ_X2\(10) & (!\C1|Add9~17\))
-- \C1|Add9~19\ = CARRY((!\C1|SQ_X2\(10) & !\C1|Add9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add9~17\,
	combout => \C1|Add9~18_combout\,
	cout => \C1|Add9~19\);

-- Location: LCCOMB_X31_Y20_N28
\C1|Add9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add9~20_combout\ = !\C1|Add9~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add9~19\,
	combout => \C1|Add9~20_combout\);

-- Location: LCCOMB_X31_Y20_N4
\C1|DRAWMAP~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~90_combout\ = (\C1|Add9~16_combout\ & (\C1|Add9~20_combout\ & (!\C1|Add9~14_combout\ & !\C1|Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~16_combout\,
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|DRAWMAP~90_combout\);

-- Location: LCCOMB_X30_Y18_N4
\C1|LessThan252~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan252~0_combout\ = (!\C1|Add9~8_combout\ & !\C1|Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~8_combout\,
	datad => \C1|Add9~6_combout\,
	combout => \C1|LessThan252~0_combout\);

-- Location: LCCOMB_X31_Y20_N0
\C1|LessThan254~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan254~0_combout\ = (!\C1|Add9~4_combout\ & ((!\C1|Add9~0_combout\) # (!\C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan254~0_combout\);

-- Location: LCCOMB_X30_Y18_N22
\C1|LessThan243~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan243~0_combout\ = (\C1|Add9~12_combout\ & (\C1|Add9~10_combout\ & ((!\C1|LessThan254~0_combout\) # (!\C1|LessThan252~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|LessThan252~0_combout\,
	datad => \C1|LessThan254~0_combout\,
	combout => \C1|LessThan243~0_combout\);

-- Location: LCCOMB_X30_Y18_N8
\C1|DRAWMAP~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~106_combout\ = (\C1|LessThan245~0_combout\ & (\C1|DRAWMAP~90_combout\ & !\C1|LessThan243~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan245~0_combout\,
	datac => \C1|DRAWMAP~90_combout\,
	datad => \C1|LessThan243~0_combout\,
	combout => \C1|DRAWMAP~106_combout\);

-- Location: LCCOMB_X30_Y18_N14
\C1|DRAWMAP~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~107_combout\ = (\C1|Add9~16_combout\ & (!\C1|Add9~18_combout\ & \C1|Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~16_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|DRAWMAP~107_combout\);

-- Location: LCCOMB_X30_Y18_N2
\C1|DRAWMAP~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~108_combout\ = (\C1|DRAWMAP~107_combout\ & ((\C1|Add9~14_combout\ & (\C1|LessThan244~0_combout\)) # (!\C1|Add9~14_combout\ & ((\C1|LessThan243~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan244~0_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|DRAWMAP~107_combout\,
	datad => \C1|LessThan243~0_combout\,
	combout => \C1|DRAWMAP~108_combout\);

-- Location: LCCOMB_X30_Y18_N0
\C1|DRAWMAP~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~109_combout\ = (\C1|LessThan175~0_combout\) # ((!\C1|dMap~275_combout\ & ((\C1|DRAWMAP~106_combout\) # (\C1|DRAWMAP~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan175~0_combout\,
	datab => \C1|dMap~275_combout\,
	datac => \C1|DRAWMAP~106_combout\,
	datad => \C1|DRAWMAP~108_combout\,
	combout => \C1|DRAWMAP~109_combout\);

-- Location: LCCOMB_X31_Y18_N24
\C1|arQ2X1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~2_combout\ = (\C1|Add9~6_combout\ & (\C1|Add9~16_combout\ & ((!\C1|LessThan254~0_combout\)))) # (!\C1|Add9~6_combout\ & (!\C1|Add9~16_combout\ & (\C1|LessThan256~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|LessThan256~0_combout\,
	datad => \C1|LessThan254~0_combout\,
	combout => \C1|arQ2X1~2_combout\);

-- Location: LCCOMB_X32_Y18_N30
\C1|arQ2X1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~13_combout\ = (\C1|Add9~12_combout\ & (\C1|Add9~14_combout\ & !\C1|Add9~16_combout\)) # (!\C1|Add9~12_combout\ & (!\C1|Add9~14_combout\ & \C1|Add9~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|arQ2X1~13_combout\);

-- Location: LCCOMB_X31_Y18_N2
\C1|arQ2X1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~3_combout\ = (\C1|arQ2X1~13_combout\ & ((\C1|DRAWMAP~92_combout\ & ((!\C1|arQ2X1~2_combout\))) # (!\C1|DRAWMAP~92_combout\ & (!\C1|Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~92_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|arQ2X1~2_combout\,
	datad => \C1|arQ2X1~13_combout\,
	combout => \C1|arQ2X1~3_combout\);

-- Location: LCCOMB_X30_Y18_N20
\C1|DRAWMAP~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~136_combout\ = (\C1|Add9~20_combout\ & (!\C1|dMap~275_combout\ & (\C1|Add9~18_combout\ & \C1|arQ2X1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datab => \C1|dMap~275_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|arQ2X1~3_combout\,
	combout => \C1|DRAWMAP~136_combout\);

-- Location: LCCOMB_X36_Y18_N10
\C1|dMap~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~295_combout\ = (\C1|SQ_Y2\(10) & (\C1|SQ_Y2\(7) & (\C1|SQ_Y2\(9) & \C1|SQ_Y2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datab => \C1|SQ_Y2\(7),
	datac => \C1|SQ_Y2\(9),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|dMap~295_combout\);

-- Location: LCCOMB_X36_Y18_N4
\C1|LessThan181~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan181~0_combout\ = (\C1|SQ_Y2\(3) & (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(2)) # (\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(4),
	datad => \C1|SQ_Y2\(1),
	combout => \C1|LessThan181~0_combout\);

-- Location: LCCOMB_X35_Y18_N16
\C1|dMap~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~296_combout\ = (\C1|dMap~295_combout\ & (((!\C1|SQ_Y2\(5) & \C1|LessThan181~0_combout\)) # (!\C1|SQ_Y2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~295_combout\,
	datad => \C1|LessThan181~0_combout\,
	combout => \C1|dMap~296_combout\);

-- Location: LCCOMB_X31_Y20_N6
\C1|LessThan257~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan257~0_combout\ = (\C1|Add9~4_combout\ & ((\C1|Add9~2_combout\) # (\C1|Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan257~0_combout\);

-- Location: LCCOMB_X30_Y20_N20
\C1|LessThan256~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~2_combout\ = (!\C1|Add9~12_combout\ & !\C1|Add9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~12_combout\,
	datad => \C1|Add9~14_combout\,
	combout => \C1|LessThan256~2_combout\);

-- Location: LCCOMB_X30_Y18_N24
\C1|LessThan237~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan237~0_combout\ = ((\C1|Add9~10_combout\ & ((\C1|LessThan257~0_combout\) # (!\C1|LessThan252~0_combout\)))) # (!\C1|LessThan256~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|LessThan252~0_combout\,
	datac => \C1|LessThan257~0_combout\,
	datad => \C1|LessThan256~2_combout\,
	combout => \C1|LessThan237~0_combout\);

-- Location: LCCOMB_X30_Y20_N24
\C1|DRAWMAP~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~92_combout\ = (!\C1|Add9~8_combout\ & !\C1|Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~8_combout\,
	datad => \C1|Add9~10_combout\,
	combout => \C1|DRAWMAP~92_combout\);

-- Location: LCCOMB_X30_Y18_N18
\C1|LessThan238~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan238~0_combout\ = ((\C1|DRAWMAP~92_combout\ & ((!\C1|Add9~6_combout\) # (!\C1|Add9~4_combout\)))) # (!\C1|Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~4_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|DRAWMAP~92_combout\,
	combout => \C1|LessThan238~0_combout\);

-- Location: LCCOMB_X30_Y18_N28
\C1|DRAWMAP~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~105_combout\ = (\C1|Add9~16_combout\ & (!\C1|Add9~14_combout\ & (\C1|LessThan237~0_combout\ & \C1|LessThan238~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~16_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|LessThan237~0_combout\,
	datad => \C1|LessThan238~0_combout\,
	combout => \C1|DRAWMAP~105_combout\);

-- Location: LCCOMB_X30_Y18_N10
\C1|DRAWMAP~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~135_combout\ = (\C1|Add9~20_combout\ & (\C1|dMap~296_combout\ & (\C1|Add9~18_combout\ & \C1|DRAWMAP~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datab => \C1|dMap~296_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|DRAWMAP~105_combout\,
	combout => \C1|DRAWMAP~135_combout\);

-- Location: LCCOMB_X30_Y18_N26
\C1|DRAWMAP~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~110_combout\ = (\C1|DRAWMAP~104_combout\) # ((\C1|DRAWMAP~109_combout\) # ((\C1|DRAWMAP~136_combout\) # (\C1|DRAWMAP~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~104_combout\,
	datab => \C1|DRAWMAP~109_combout\,
	datac => \C1|DRAWMAP~136_combout\,
	datad => \C1|DRAWMAP~135_combout\,
	combout => \C1|DRAWMAP~110_combout\);

-- Location: LCCOMB_X31_Y18_N4
\C1|LessThan256~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan256~1_combout\ = (((!\C1|Add9~6_combout\ & \C1|LessThan256~0_combout\)) # (!\C1|Add9~10_combout\)) # (!\C1|Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|LessThan256~0_combout\,
	datad => \C1|Add9~10_combout\,
	combout => \C1|LessThan256~1_combout\);

-- Location: LCCOMB_X32_Y18_N4
\C1|DRAWMAP~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~91_combout\ = (!\C1|Add9~12_combout\ & (((\C1|LessThan254~0_combout\) # (!\C1|LessThan235~0_combout\)) # (!\C1|Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|LessThan254~0_combout\,
	datad => \C1|LessThan235~0_combout\,
	combout => \C1|DRAWMAP~91_combout\);

-- Location: LCCOMB_X31_Y18_N18
\C1|DRAWMAP~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~94_combout\ = (\C1|DRAWMAP~90_combout\ & (!\C1|LessThan256~1_combout\ & \C1|DRAWMAP~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~90_combout\,
	datac => \C1|LessThan256~1_combout\,
	datad => \C1|DRAWMAP~91_combout\,
	combout => \C1|DRAWMAP~94_combout\);

-- Location: LCCOMB_X36_Y18_N22
\C1|dMap~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~279_combout\ = (\C1|SQ_Y2\(7) & (((\C1|SQ_Y2\(3)) # (!\C1|SQ_Y2\(5))))) # (!\C1|SQ_Y2\(7) & (\C1|SQ_Y2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(5),
	datad => \C1|SQ_Y2\(7),
	combout => \C1|dMap~279_combout\);

-- Location: LCCOMB_X36_Y18_N24
\C1|dMap~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~280_combout\ = (\C1|SQ_Y2\(10)) # ((\C1|SQ_Y2\(8)) # ((\C1|SQ_Y2\(9)) # (\C1|dMap~279_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datab => \C1|SQ_Y2\(8),
	datac => \C1|SQ_Y2\(9),
	datad => \C1|dMap~279_combout\,
	combout => \C1|dMap~280_combout\);

-- Location: LCCOMB_X36_Y18_N26
\C1|dMap~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~281_combout\ = (\C1|SQ_Y2\(5)) # ((!\C1|SQ_Y2\(1) & (!\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~281_combout\);

-- Location: LCCOMB_X36_Y18_N0
\C1|dMap~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~282_combout\ = (\C1|dMap~280_combout\) # ((\C1|SQ_Y2\(6) & (!\C1|SQ_Y2\(4))) # (!\C1|SQ_Y2\(6) & ((\C1|dMap~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(6),
	datac => \C1|dMap~280_combout\,
	datad => \C1|dMap~281_combout\,
	combout => \C1|dMap~282_combout\);

-- Location: LCCOMB_X31_Y18_N22
\C1|LessThan249~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan249~0_combout\ = (\C1|Add9~12_combout\ & ((\C1|Add9~6_combout\) # ((\C1|LessThan257~0_combout\) # (!\C1|DRAWMAP~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~12_combout\,
	datac => \C1|DRAWMAP~92_combout\,
	datad => \C1|LessThan257~0_combout\,
	combout => \C1|LessThan249~0_combout\);

-- Location: LCCOMB_X32_Y18_N2
\C1|DRAWMAP~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~93_combout\ = (\C1|DRAWMAP~90_combout\ & (!\C1|DRAWMAP~91_combout\ & !\C1|LessThan249~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~90_combout\,
	datac => \C1|DRAWMAP~91_combout\,
	datad => \C1|LessThan249~0_combout\,
	combout => \C1|DRAWMAP~93_combout\);

-- Location: LCCOMB_X31_Y18_N8
\C1|DRAWMAP~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~95_combout\ = (\C1|dMap~278_combout\ & (\C1|DRAWMAP~94_combout\ & (!\C1|dMap~282_combout\))) # (!\C1|dMap~278_combout\ & ((\C1|DRAWMAP~93_combout\) # ((\C1|DRAWMAP~94_combout\ & !\C1|dMap~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~278_combout\,
	datab => \C1|DRAWMAP~94_combout\,
	datac => \C1|dMap~282_combout\,
	datad => \C1|DRAWMAP~93_combout\,
	combout => \C1|DRAWMAP~95_combout\);

-- Location: LCCOMB_X36_Y18_N8
\C1|dMap~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~284_combout\ = (\C1|SQ_Y2\(10)) # (((\C1|SQ_Y2\(9)) # (\C1|SQ_Y2\(8))) # (!\C1|SQ_Y2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datab => \C1|SQ_Y2\(7),
	datac => \C1|SQ_Y2\(9),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|dMap~284_combout\);

-- Location: LCCOMB_X36_Y18_N18
\C1|dMap~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~283_combout\ = (\C1|SQ_Y2\(4) & (!\C1|SQ_Y2\(3) & ((!\C1|SQ_Y2\(2)) # (!\C1|SQ_Y2\(1))))) # (!\C1|SQ_Y2\(4) & (((\C1|SQ_Y2\(2) & \C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~283_combout\);

-- Location: LCCOMB_X35_Y18_N4
\C1|dMap~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~285_combout\ = (((\C1|dMap~284_combout\) # (\C1|dMap~283_combout\)) # (!\C1|SQ_Y2\(5))) # (!\C1|SQ_Y2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|dMap~284_combout\,
	datad => \C1|dMap~283_combout\,
	combout => \C1|dMap~285_combout\);

-- Location: LCCOMB_X31_Y19_N2
\C1|dMap~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~377_combout\ = (\C1|Add9~8_combout\ & (!\C1|Add9~0_combout\ & (!\C1|Add9~2_combout\ & !\C1|Add9~4_combout\))) # (!\C1|Add9~8_combout\ & (((\C1|Add9~0_combout\ & \C1|Add9~4_combout\)) # (!\C1|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~2_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|dMap~377_combout\);

-- Location: LCCOMB_X31_Y19_N12
\C1|dMap~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~378_combout\ = (\C1|Add9~6_combout\ & (!\C1|Add9~8_combout\ & ((\C1|Add9~2_combout\) # (\C1|dMap~377_combout\)))) # (!\C1|Add9~6_combout\ & (\C1|dMap~377_combout\ & (\C1|Add9~8_combout\ $ (\C1|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add9~6_combout\,
	datac => \C1|Add9~2_combout\,
	datad => \C1|dMap~377_combout\,
	combout => \C1|dMap~378_combout\);

-- Location: LCCOMB_X31_Y19_N20
\C1|dMap~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~146_combout\ = (!\C1|Add9~12_combout\ & (\C1|Add9~10_combout\ & (!\C1|Add9~14_combout\ & \C1|dMap~378_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|dMap~378_combout\,
	combout => \C1|dMap~146_combout\);

-- Location: LCCOMB_X30_Y20_N6
\C1|dMap~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~376_combout\ = (\C1|Add9~20_combout\ & (\C1|Add9~16_combout\ & (!\C1|Add9~18_combout\ & \C1|dMap~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~20_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|Add9~18_combout\,
	datad => \C1|dMap~146_combout\,
	combout => \C1|dMap~376_combout\);

-- Location: LCCOMB_X35_Y18_N18
\C1|LessThan195~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan195~0_combout\ = (!\C1|SQ_Y2\(4) & ((\C1|SQ_Y2\(3)) # ((\C1|SQ_Y2\(2) & \C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(2),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|LessThan195~0_combout\);

-- Location: LCCOMB_X35_Y18_N14
\C1|dMap~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~291_combout\ = (((\C1|SQ_Y2\(2) & \C1|SQ_Y2\(3))) # (!\C1|SQ_Y2\(5))) # (!\C1|SQ_Y2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|SQ_Y2\(5),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~291_combout\);

-- Location: LCCOMB_X35_Y18_N20
\C1|dMap~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~292_combout\ = (\C1|SQ_Y2\(6) & ((\C1|SQ_Y2\(5)))) # (!\C1|SQ_Y2\(6) & (\C1|dMap~291_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datac => \C1|dMap~291_combout\,
	datad => \C1|SQ_Y2\(5),
	combout => \C1|dMap~292_combout\);

-- Location: LCCOMB_X35_Y18_N8
\C1|dMap~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~293_combout\ = (\C1|dMap~292_combout\) # (((!\C1|SQ_Y2\(5) & !\C1|LessThan195~0_combout\)) # (!\C1|dMap~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|LessThan195~0_combout\,
	datac => \C1|dMap~292_combout\,
	datad => \C1|dMap~274_combout\,
	combout => \C1|dMap~293_combout\);

-- Location: LCCOMB_X31_Y19_N30
\C1|LessThan247~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan247~1_combout\ = (\C1|Add9~2_combout\ & (\C1|Add9~0_combout\ & (\C1|Add9~6_combout\ & \C1|Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|Add9~0_combout\,
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan247~1_combout\);

-- Location: LCCOMB_X31_Y19_N16
\C1|LessThan247~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan247~2_combout\ = (\C1|Add9~12_combout\ & ((\C1|Add9~10_combout\) # ((\C1|Add9~8_combout\) # (\C1|LessThan247~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~8_combout\,
	datad => \C1|LessThan247~1_combout\,
	combout => \C1|LessThan247~2_combout\);

-- Location: LCCOMB_X31_Y18_N20
\C1|DRAWMAP~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~100_combout\ = (!\C1|LessThan245~0_combout\ & (\C1|LessThan247~2_combout\ & \C1|DRAWMAP~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan245~0_combout\,
	datac => \C1|LessThan247~2_combout\,
	datad => \C1|DRAWMAP~90_combout\,
	combout => \C1|DRAWMAP~100_combout\);

-- Location: LCCOMB_X31_Y18_N26
\C1|LessThan235~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan235~1_combout\ = (\C1|Add9~8_combout\ & ((\C1|Add9~2_combout\) # ((\C1|Add9~6_combout\) # (\C1|Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|Add9~8_combout\,
	datac => \C1|Add9~6_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan235~1_combout\);

-- Location: LCCOMB_X30_Y20_N14
\C1|DRAWMAP~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~96_combout\ = (\C1|Add9~20_combout\ & (\C1|Add9~12_combout\ & \C1|Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~20_combout\,
	datac => \C1|Add9~12_combout\,
	datad => \C1|Add9~14_combout\,
	combout => \C1|DRAWMAP~96_combout\);

-- Location: LCCOMB_X31_Y18_N16
\C1|DRAWMAP~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~98_combout\ = (\C1|DRAWMAP~96_combout\ & (((!\C1|LessThan257~0_combout\ & \C1|LessThan252~0_combout\)) # (!\C1|Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|LessThan257~0_combout\,
	datac => \C1|LessThan252~0_combout\,
	datad => \C1|DRAWMAP~96_combout\,
	combout => \C1|DRAWMAP~98_combout\);

-- Location: LCCOMB_X31_Y18_N6
\C1|DRAWMAP~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~97_combout\ = (!\C1|Add9~18_combout\ & !\C1|Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~18_combout\,
	datad => \C1|Add9~16_combout\,
	combout => \C1|DRAWMAP~97_combout\);

-- Location: LCCOMB_X31_Y18_N0
\C1|DRAWMAP~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~99_combout\ = (\C1|DRAWMAP~98_combout\ & (\C1|DRAWMAP~97_combout\ & ((\C1|Add9~10_combout\) # (\C1|LessThan235~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~10_combout\,
	datab => \C1|LessThan235~1_combout\,
	datac => \C1|DRAWMAP~98_combout\,
	datad => \C1|DRAWMAP~97_combout\,
	combout => \C1|DRAWMAP~99_combout\);

-- Location: LCCOMB_X31_Y18_N30
\C1|DRAWMAP~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~101_combout\ = (\C1|dMap~290_combout\ & (!\C1|dMap~293_combout\ & (\C1|DRAWMAP~100_combout\))) # (!\C1|dMap~290_combout\ & ((\C1|DRAWMAP~99_combout\) # ((!\C1|dMap~293_combout\ & \C1|DRAWMAP~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~290_combout\,
	datab => \C1|dMap~293_combout\,
	datac => \C1|DRAWMAP~100_combout\,
	datad => \C1|DRAWMAP~99_combout\,
	combout => \C1|DRAWMAP~101_combout\);

-- Location: LCCOMB_X31_Y18_N12
\C1|DRAWMAP~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~102_combout\ = (\C1|DRAWMAP~101_combout\) # ((!\C1|dMap~285_combout\ & ((\C1|dMap~286_combout\) # (\C1|dMap~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~286_combout\,
	datab => \C1|dMap~285_combout\,
	datac => \C1|dMap~376_combout\,
	datad => \C1|DRAWMAP~101_combout\,
	combout => \C1|DRAWMAP~102_combout\);

-- Location: LCCOMB_X31_Y18_N10
\C1|DRAWMAP~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~103_combout\ = (\C1|DRAWMAP~95_combout\) # ((\C1|DRAWMAP~102_combout\) # ((\C1|DRAWMAP~89_combout\ & !\C1|dMap~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~89_combout\,
	datab => \C1|dMap~275_combout\,
	datac => \C1|DRAWMAP~95_combout\,
	datad => \C1|DRAWMAP~102_combout\,
	combout => \C1|DRAWMAP~103_combout\);

-- Location: LCCOMB_X34_Y20_N16
\C1|esqQ2X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X1~0_combout\ = (!\C1|LessThan234~0_combout\ & (!\C1|LessThan173~1_combout\ & ((\C1|DRAWMAP~110_combout\) # (\C1|DRAWMAP~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan234~0_combout\,
	datab => \C1|LessThan173~1_combout\,
	datac => \C1|DRAWMAP~110_combout\,
	datad => \C1|DRAWMAP~103_combout\,
	combout => \C1|esqQ2X1~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\C1|LessThan255~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan255~0_combout\ = (\C1|Add9~20_combout\ & \C1|Add9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~20_combout\,
	datad => \C1|Add9~18_combout\,
	combout => \C1|LessThan255~0_combout\);

-- Location: LCCOMB_X31_Y20_N30
\C1|LessThan247~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan247~0_combout\ = (\C1|Add9~2_combout\ & (\C1|Add9~0_combout\ & \C1|Add9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datac => \C1|Add9~0_combout\,
	datad => \C1|Add9~4_combout\,
	combout => \C1|LessThan247~0_combout\);

-- Location: LCCOMB_X30_Y20_N2
\C1|LessThan255~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan255~1_combout\ = (\C1|Add9~10_combout\ & ((\C1|Add9~8_combout\) # ((\C1|Add9~6_combout\) # (\C1|LessThan247~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~8_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~6_combout\,
	datad => \C1|LessThan247~0_combout\,
	combout => \C1|LessThan255~1_combout\);

-- Location: LCCOMB_X30_Y20_N8
\C1|DRAWMAP~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~88_combout\ = (!\C1|Add9~12_combout\ & (!\C1|Add9~16_combout\ & (\C1|LessThan255~0_combout\ & !\C1|LessThan255~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~12_combout\,
	datab => \C1|Add9~16_combout\,
	datac => \C1|LessThan255~0_combout\,
	datad => \C1|LessThan255~1_combout\,
	combout => \C1|DRAWMAP~88_combout\);

-- Location: LCCOMB_X30_Y20_N28
\C1|DRAWMAP~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~85_combout\ = (\C1|Add9~12_combout\) # ((\C1|Add9~10_combout\ & \C1|Add9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~10_combout\,
	datac => \C1|Add9~8_combout\,
	datad => \C1|Add9~12_combout\,
	combout => \C1|DRAWMAP~85_combout\);

-- Location: LCCOMB_X30_Y20_N30
\C1|DRAWMAP~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~86_combout\ = (\C1|DRAWMAP~85_combout\) # ((\C1|Add9~6_combout\ & (\C1|Add9~10_combout\ & !\C1|LessThan254~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~6_combout\,
	datab => \C1|Add9~10_combout\,
	datac => \C1|LessThan254~0_combout\,
	datad => \C1|DRAWMAP~85_combout\,
	combout => \C1|DRAWMAP~86_combout\);

-- Location: LCCOMB_X30_Y20_N18
\C1|DRAWMAP~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~89_combout\ = (\C1|DRAWMAP~87_combout\ & ((\C1|DRAWMAP~86_combout\) # ((\C1|Add9~14_combout\ & \C1|DRAWMAP~88_combout\)))) # (!\C1|DRAWMAP~87_combout\ & (\C1|Add9~14_combout\ & (\C1|DRAWMAP~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~87_combout\,
	datab => \C1|Add9~14_combout\,
	datac => \C1|DRAWMAP~88_combout\,
	datad => \C1|DRAWMAP~86_combout\,
	combout => \C1|DRAWMAP~89_combout\);

-- Location: LCCOMB_X33_Y20_N0
\C1|esqQ2X2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~0_combout\ = (!\C1|DRAWMAP~108_combout\ & (!\C1|DRAWMAP~89_combout\ & !\C1|DRAWMAP~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~108_combout\,
	datac => \C1|DRAWMAP~89_combout\,
	datad => \C1|DRAWMAP~106_combout\,
	combout => \C1|esqQ2X2~0_combout\);

-- Location: LCCOMB_X36_Y20_N30
\C1|dMap~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~337_combout\ = ((!\C1|Add13~6_combout\ & !\C1|SQ_Y2\(3))) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~6_combout\,
	datab => \C1|SQ_Y2\(3),
	datad => \C1|Add13~10_combout\,
	combout => \C1|dMap~337_combout\);

-- Location: LCCOMB_X36_Y17_N4
\C1|dMap~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~338_combout\ = (!\C1|SQ_Y2\(2) & \C1|SQ_Y2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_Y2\(2),
	datad => \C1|SQ_Y2\(3),
	combout => \C1|dMap~338_combout\);

-- Location: LCCOMB_X36_Y20_N16
\C1|LessThan223~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan223~0_combout\ = ((!\C1|Add13~8_combout\ & ((!\C1|dMap~338_combout\) # (!\C1|Add13~6_combout\)))) # (!\C1|Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~6_combout\,
	datab => \C1|dMap~338_combout\,
	datac => \C1|Add13~8_combout\,
	datad => \C1|Add13~10_combout\,
	combout => \C1|LessThan223~0_combout\);

-- Location: LCCOMB_X35_Y20_N30
\C1|dMap~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~341_combout\ = ((\C1|dMap~337_combout\) # ((!\C1|dMap~340_combout\) # (!\C1|LessThan223~0_combout\))) # (!\C1|Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|dMap~337_combout\,
	datac => \C1|LessThan223~0_combout\,
	datad => \C1|dMap~340_combout\,
	combout => \C1|dMap~341_combout\);

-- Location: LCCOMB_X34_Y20_N14
\C1|esqQ2X2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~1_combout\ = (!\C1|dMap~341_combout\ & (((\C1|arQ2X1~3_combout\ & \C1|LessThan255~0_combout\)) # (!\C1|esqQ2X2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|arQ2X1~3_combout\,
	datab => \C1|LessThan255~0_combout\,
	datac => \C1|esqQ2X2~0_combout\,
	datad => \C1|dMap~341_combout\,
	combout => \C1|esqQ2X2~1_combout\);

-- Location: LCCOMB_X34_Y20_N26
\C1|DRAWMAP~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~128_combout\ = (\C1|Add9~18_combout\ & (\C1|Add9~20_combout\ & (\C1|DRAWMAP~105_combout\ & !\C1|dMap~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~18_combout\,
	datab => \C1|Add9~20_combout\,
	datac => \C1|DRAWMAP~105_combout\,
	datad => \C1|dMap~351_combout\,
	combout => \C1|DRAWMAP~128_combout\);

-- Location: LCCOMB_X36_Y20_N0
\C1|dMap~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~352_combout\ = (((\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(3))) # (!\C1|Add13~6_combout\)) # (!\C1|Add13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|Add13~8_combout\,
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~352_combout\);

-- Location: LCCOMB_X36_Y20_N14
\C1|dMap~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~353_combout\ = (\C1|Add13~10_combout\ & ((\C1|Add13~8_combout\) # ((!\C1|LessThan225~0_combout\)))) # (!\C1|Add13~10_combout\ & ((\C1|dMap~352_combout\) # ((!\C1|Add13~8_combout\ & !\C1|LessThan225~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~10_combout\,
	datab => \C1|Add13~8_combout\,
	datac => \C1|LessThan225~0_combout\,
	datad => \C1|dMap~352_combout\,
	combout => \C1|dMap~353_combout\);

-- Location: LCCOMB_X35_Y20_N20
\C1|DRAWMAP~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~129_combout\ = (\C1|Add13~12_combout\ & (\C1|dMap~340_combout\ & (!\C1|dMap~353_combout\ & \C1|DRAWMAP~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~12_combout\,
	datab => \C1|dMap~340_combout\,
	datac => \C1|dMap~353_combout\,
	datad => \C1|DRAWMAP~100_combout\,
	combout => \C1|DRAWMAP~129_combout\);

-- Location: LCCOMB_X34_Y20_N24
\C1|esqQ2X2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~3_combout\ = (\C1|DRAWMAP~128_combout\) # ((\C1|DRAWMAP~129_combout\) # ((\C1|DRAWMAP~119_combout\ & !\C1|dMap~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~119_combout\,
	datab => \C1|DRAWMAP~128_combout\,
	datac => \C1|dMap~355_combout\,
	datad => \C1|DRAWMAP~129_combout\,
	combout => \C1|esqQ2X2~3_combout\);

-- Location: LCCOMB_X36_Y20_N28
\C1|dMap~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~347_combout\ = (\C1|SQ_Y2\(3) & (\C1|Add13~6_combout\ & ((!\C1|SQ_Y2\(1)) # (!\C1|SQ_Y2\(2))))) # (!\C1|SQ_Y2\(3) & (\C1|SQ_Y2\(2) & ((!\C1|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datac => \C1|SQ_Y2\(1),
	datad => \C1|Add13~6_combout\,
	combout => \C1|dMap~347_combout\);

-- Location: LCCOMB_X36_Y20_N10
\C1|dMap~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~349_combout\ = (\C1|dMap~348_combout\) # (((\C1|dMap~347_combout\) # (!\C1|dMap~339_combout\)) # (!\C1|Add13~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~348_combout\,
	datab => \C1|Add13~16_combout\,
	datac => \C1|dMap~339_combout\,
	datad => \C1|dMap~347_combout\,
	combout => \C1|dMap~349_combout\);

-- Location: LCCOMB_X30_Y20_N16
\C1|arQ2X1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~4_combout\ = (\C1|dMap~286_combout\) # (\C1|dMap~376_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~286_combout\,
	datad => \C1|dMap~376_combout\,
	combout => \C1|arQ2X1~4_combout\);

-- Location: LCCOMB_X35_Y20_N2
\C1|esqQ2X2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~2_combout\ = (\C1|dMap~346_combout\ & (!\C1|dMap~349_combout\ & ((\C1|arQ2X1~4_combout\)))) # (!\C1|dMap~346_combout\ & ((\C1|DRAWMAP~99_combout\) # ((!\C1|dMap~349_combout\ & \C1|arQ2X1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~346_combout\,
	datab => \C1|dMap~349_combout\,
	datac => \C1|DRAWMAP~99_combout\,
	datad => \C1|arQ2X1~4_combout\,
	combout => \C1|esqQ2X2~2_combout\);

-- Location: LCCOMB_X34_Y20_N0
\C1|esqQ2X2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ2X2~5_combout\ = (\C1|esqQ2X2~4_combout\) # ((\C1|esqQ2X2~1_combout\) # ((\C1|esqQ2X2~3_combout\) # (\C1|esqQ2X2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X2~4_combout\,
	datab => \C1|esqQ2X2~1_combout\,
	datac => \C1|esqQ2X2~3_combout\,
	datad => \C1|esqQ2X2~2_combout\,
	combout => \C1|esqQ2X2~5_combout\);

-- Location: LCCOMB_X34_Y20_N22
\C1|process_0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~24_combout\ = (\C1|Add13~22_combout\ & ((\C1|Add13~20_combout\) # ((!\C1|LessThan216~1_combout\ & \C1|esqQ2X2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add13~20_combout\,
	datab => \C1|Add13~22_combout\,
	datac => \C1|LessThan216~1_combout\,
	datad => \C1|esqQ2X2~5_combout\,
	combout => \C1|process_0~24_combout\);

-- Location: LCCOMB_X34_Y20_N28
\C1|process_0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~25_combout\ = (\KEY~combout\(1)) # ((\C1|esqQ2X1~0_combout\) # ((!\C1|LessThan234~0_combout\ & \C1|process_0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan234~0_combout\,
	datab => \KEY~combout\(1),
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|process_0~24_combout\,
	combout => \C1|process_0~25_combout\);

-- Location: LCFF_X32_Y20_N17
\C1|SQ_X2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add24~16_combout\,
	ena => \C1|SQ_X2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(9));

-- Location: LCCOMB_X34_Y17_N20
\C1|LessThan174~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan174~0_combout\ = (!\C1|Add2~10_combout\ & (\C1|LessThan183~0_combout\ & ((\C1|LessThan183~3_combout\) # (!\C1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~10_combout\,
	datac => \C1|LessThan183~0_combout\,
	datad => \C1|LessThan183~3_combout\,
	combout => \C1|LessThan174~0_combout\);

-- Location: LCCOMB_X33_Y19_N8
\C1|LessThan164~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan164~0_combout\ = (!\C1|Add3~6_combout\ & (((!\C1|Add3~0_combout\ & !\C1|Add3~2_combout\)) # (!\C1|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|Add3~2_combout\,
	combout => \C1|LessThan164~0_combout\);

-- Location: LCCOMB_X35_Y21_N22
\C1|LessThan156~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~0_combout\ = (!\C1|Add3~12_combout\ & (!\C1|Add3~16_combout\ & !\C1|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datac => \C1|Add3~16_combout\,
	datad => \C1|Add3~14_combout\,
	combout => \C1|LessThan156~0_combout\);

-- Location: LCCOMB_X35_Y21_N20
\C1|LessThan155~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan155~0_combout\ = (!\C1|Add3~18_combout\ & (!\C1|Add3~20_combout\ & \C1|LessThan156~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~18_combout\,
	datac => \C1|Add3~20_combout\,
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|LessThan155~0_combout\);

-- Location: LCCOMB_X34_Y21_N18
\C1|LessThan155~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan155~1_combout\ = (!\C1|Add3~10_combout\ & (\C1|LessThan155~0_combout\ & ((\C1|LessThan164~0_combout\) # (!\C1|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|LessThan164~0_combout\,
	datac => \C1|Add3~8_combout\,
	datad => \C1|LessThan155~0_combout\,
	combout => \C1|LessThan155~1_combout\);

-- Location: LCCOMB_X30_Y18_N16
\C1|LessThan234~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan234~0_combout\ = ((\C1|DRAWMAP~97_combout\ & ((\C1|LessThan238~0_combout\) # (!\C1|Add9~14_combout\)))) # (!\C1|Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~97_combout\,
	datab => \C1|LessThan238~0_combout\,
	datac => \C1|Add9~14_combout\,
	datad => \C1|Add9~20_combout\,
	combout => \C1|LessThan234~0_combout\);

-- Location: LCCOMB_X33_Y19_N22
\C1|LessThan162~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan162~0_combout\ = (!\C1|Add3~8_combout\ & (((!\C1|Add3~4_combout\) # (!\C1|Add3~6_combout\)) # (!\C1|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~8_combout\,
	datad => \C1|Add3~4_combout\,
	combout => \C1|LessThan162~0_combout\);

-- Location: LCCOMB_X32_Y19_N14
\C1|dMap~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~314_combout\ = (!\C1|Add3~4_combout\ & ((!\C1|Add3~2_combout\) # (!\C1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~0_combout\,
	datac => \C1|Add3~4_combout\,
	datad => \C1|Add3~2_combout\,
	combout => \C1|dMap~314_combout\);

-- Location: LCCOMB_X35_Y21_N8
\C1|dMap~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~315_combout\ = (!\C1|Add3~10_combout\ & (((\C1|dMap~314_combout\) # (!\C1|Add3~6_combout\)) # (!\C1|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|dMap~314_combout\,
	combout => \C1|dMap~315_combout\);

-- Location: LCCOMB_X34_Y21_N28
\C1|dMap~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~316_combout\ = (\C1|dMap~315_combout\) # (((\C1|Add3~10_combout\ & !\C1|LessThan162~0_combout\)) # (!\C1|LessThan155~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|LessThan162~0_combout\,
	datac => \C1|dMap~315_combout\,
	datad => \C1|LessThan155~0_combout\,
	combout => \C1|dMap~316_combout\);

-- Location: LCCOMB_X31_Y19_N18
\C1|arQ2X1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~5_combout\ = (\C1|dMap~320_combout\ & (\C1|DRAWMAP~99_combout\ & (!\C1|dMap~316_combout\))) # (!\C1|dMap~320_combout\ & ((\C1|arQ2X1~4_combout\) # ((\C1|DRAWMAP~99_combout\ & !\C1|dMap~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~320_combout\,
	datab => \C1|DRAWMAP~99_combout\,
	datac => \C1|dMap~316_combout\,
	datad => \C1|arQ2X1~4_combout\,
	combout => \C1|arQ2X1~5_combout\);

-- Location: LCCOMB_X37_Y19_N28
\C1|dMap~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~318_combout\ = (\C1|Add3~14_combout\ & (!\C1|Add3~18_combout\ & (\C1|Add3~16_combout\ & !\C1|Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~14_combout\,
	datab => \C1|Add3~18_combout\,
	datac => \C1|Add3~16_combout\,
	datad => \C1|Add3~20_combout\,
	combout => \C1|dMap~318_combout\);

-- Location: LCCOMB_X33_Y19_N26
\C1|dMap~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~321_combout\ = (((\C1|Add3~10_combout\ & !\C1|LessThan162~0_combout\)) # (!\C1|dMap~318_combout\)) # (!\C1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~12_combout\,
	datac => \C1|dMap~318_combout\,
	datad => \C1|LessThan162~0_combout\,
	combout => \C1|dMap~321_combout\);

-- Location: LCCOMB_X33_Y19_N0
\C1|dMap~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~322_combout\ = ((\C1|dMap~321_combout\) # ((!\C1|Add3~4_combout\ & !\C1|Add3~6_combout\))) # (!\C1|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~321_combout\,
	combout => \C1|dMap~322_combout\);

-- Location: LCCOMB_X32_Y21_N24
\C1|arQ2X1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~7_combout\ = (\C1|dMap~327_combout\ & (!\C1|dMap~322_combout\ & (\C1|arQ2X1~3_combout\))) # (!\C1|dMap~327_combout\ & ((\C1|DRAWMAP~105_combout\) # ((!\C1|dMap~322_combout\ & \C1|arQ2X1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~327_combout\,
	datab => \C1|dMap~322_combout\,
	datac => \C1|arQ2X1~3_combout\,
	datad => \C1|DRAWMAP~105_combout\,
	combout => \C1|arQ2X1~7_combout\);

-- Location: LCCOMB_X31_Y19_N0
\C1|DRAWMAP~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~119_combout\ = (\C1|DRAWMAP~90_combout\ & (!\C1|LessThan247~2_combout\ & \C1|LessThan249~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAWMAP~90_combout\,
	datac => \C1|LessThan247~2_combout\,
	datad => \C1|LessThan249~0_combout\,
	combout => \C1|DRAWMAP~119_combout\);

-- Location: LCCOMB_X31_Y19_N14
\C1|arQ2X1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~8_combout\ = (\C1|dMap~329_combout\ & (\C1|LessThan255~0_combout\ & (\C1|arQ2X1~7_combout\))) # (!\C1|dMap~329_combout\ & ((\C1|DRAWMAP~119_combout\) # ((\C1|LessThan255~0_combout\ & \C1|arQ2X1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~329_combout\,
	datab => \C1|LessThan255~0_combout\,
	datac => \C1|arQ2X1~7_combout\,
	datad => \C1|DRAWMAP~119_combout\,
	combout => \C1|arQ2X1~8_combout\);

-- Location: LCCOMB_X33_Y19_N6
\C1|dMap~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~323_combout\ = (((!\C1|Add3~4_combout\ & !\C1|Add3~2_combout\)) # (!\C1|Add3~6_combout\)) # (!\C1|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|Add3~4_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|Add3~2_combout\,
	combout => \C1|dMap~323_combout\);

-- Location: LCCOMB_X33_Y19_N10
\C1|dMap~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~324_combout\ = (\C1|Add3~8_combout\ & (((\C1|Add3~10_combout\) # (\C1|dMap~323_combout\)))) # (!\C1|Add3~8_combout\ & (((!\C1|Add3~10_combout\ & \C1|dMap~323_combout\)) # (!\C1|LessThan164~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|LessThan164~0_combout\,
	datac => \C1|Add3~10_combout\,
	datad => \C1|dMap~323_combout\,
	combout => \C1|dMap~324_combout\);

-- Location: LCCOMB_X33_Y19_N16
\C1|dMap~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~325_combout\ = ((\C1|dMap~324_combout\) # (!\C1|dMap~318_combout\)) # (!\C1|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datac => \C1|dMap~318_combout\,
	datad => \C1|dMap~324_combout\,
	combout => \C1|dMap~325_combout\);

-- Location: LCCOMB_X32_Y20_N22
\C1|arQ2X1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~6_combout\ = (\C1|dMap~322_combout\ & (!\C1|dMap~325_combout\ & ((\C1|DRAWMAP~100_combout\)))) # (!\C1|dMap~322_combout\ & (((!\C1|dMap~325_combout\ & \C1|DRAWMAP~100_combout\)) # (!\C1|esqQ2X2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~322_combout\,
	datab => \C1|dMap~325_combout\,
	datac => \C1|esqQ2X2~0_combout\,
	datad => \C1|DRAWMAP~100_combout\,
	combout => \C1|arQ2X1~6_combout\);

-- Location: LCCOMB_X31_Y19_N4
\C1|arQ2X1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~11_combout\ = (\C1|arQ2X1~10_combout\) # ((\C1|arQ2X1~5_combout\) # ((\C1|arQ2X1~8_combout\) # (\C1|arQ2X1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|arQ2X1~10_combout\,
	datab => \C1|arQ2X1~5_combout\,
	datac => \C1|arQ2X1~8_combout\,
	datad => \C1|arQ2X1~6_combout\,
	combout => \C1|arQ2X1~11_combout\);

-- Location: LCCOMB_X31_Y19_N26
\C1|arQ2X1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ2X1~12_combout\ = (!\C1|LessThan234~0_combout\ & (\C1|arQ2X1~11_combout\ & !\C1|LessThan155~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan234~0_combout\,
	datac => \C1|arQ2X1~11_combout\,
	datad => \C1|LessThan155~1_combout\,
	combout => \C1|arQ2X1~12_combout\);

-- Location: LCCOMB_X35_Y19_N24
\C1|SQ2_noAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_noAR~0_combout\ = (\C1|arQ2X1~12_combout\) # ((\C1|DRAWMAP~127_combout\ & (!\C1|LessThan174~0_combout\ & !\C1|LessThan155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~127_combout\,
	datab => \C1|LessThan174~0_combout\,
	datac => \C1|LessThan155~1_combout\,
	datad => \C1|arQ2X1~12_combout\,
	combout => \C1|SQ2_noAR~0_combout\);

-- Location: LCCOMB_X35_Y19_N30
\C1|SQ_Y2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[1]~1_combout\ = (\C1|LessThan259~0_combout\ & (\C1|LessThan260~0_combout\ & ((!\C1|SQ_Y2[7]~0_combout\) # (!\C1|SQ2_noAR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan259~0_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|SQ2_noAR~0_combout\,
	datad => \C1|SQ_Y2[7]~0_combout\,
	combout => \C1|SQ_Y2[1]~1_combout\);

-- Location: LCFF_X36_Y19_N3
\C1|SQ_Y2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y2[1]~7_combout\,
	sload => VCC,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(1));

-- Location: LCFF_X35_Y19_N11
\C1|SQ_Y2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~10_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(6));

-- Location: LCCOMB_X36_Y18_N12
\C1|LessThan173~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~0_combout\ = (\C1|SQ_Y2\(7) & (!\C1|SQ_Y2\(6) & (\C1|SQ_Y2\(9) & \C1|SQ_Y2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|SQ_Y2\(6),
	datac => \C1|SQ_Y2\(9),
	datad => \C1|SQ_Y2\(8),
	combout => \C1|LessThan173~0_combout\);

-- Location: LCCOMB_X35_Y18_N0
\C1|LessThan173~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan173~1_combout\ = (!\C1|SQ_Y2\(10) & (\C1|LessThan173~0_combout\ & ((\C1|LessThan195~0_combout\) # (!\C1|SQ_Y2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2\(10),
	datac => \C1|LessThan173~0_combout\,
	datad => \C1|LessThan195~0_combout\,
	combout => \C1|LessThan173~1_combout\);

-- Location: LCCOMB_X33_Y18_N26
\C1|LessThan178~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan178~0_combout\ = (\C1|Add2~2_combout\ & (((\C1|Add2~0_combout\) # (!\C1|SQ_X2\(3))) # (!\C1|SQ_X2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(3),
	datac => \C1|Add2~0_combout\,
	datad => \C1|Add2~2_combout\,
	combout => \C1|LessThan178~0_combout\);

-- Location: LCCOMB_X33_Y18_N4
\C1|LessThan178~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan178~1_combout\ = (\C1|Add2~8_combout\ & (\C1|Add2~6_combout\ & ((\C1|Add2~4_combout\) # (\C1|LessThan178~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~4_combout\,
	datac => \C1|Add2~6_combout\,
	datad => \C1|LessThan178~0_combout\,
	combout => \C1|LessThan178~1_combout\);

-- Location: LCCOMB_X33_Y18_N8
\C1|LessThan179~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan179~0_combout\ = (((\C1|LessThan205~1_combout\) # (!\C1|Add2~4_combout\)) # (!\C1|Add2~6_combout\)) # (!\C1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|Add2~6_combout\,
	datac => \C1|LessThan205~1_combout\,
	datad => \C1|Add2~4_combout\,
	combout => \C1|LessThan179~0_combout\);

-- Location: LCCOMB_X34_Y18_N14
\C1|dMap~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~309_combout\ = (!\C1|Add2~10_combout\ & (\C1|LessThan183~0_combout\ & (\C1|LessThan178~1_combout\ & \C1|LessThan179~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|LessThan183~0_combout\,
	datac => \C1|LessThan178~1_combout\,
	datad => \C1|LessThan179~0_combout\,
	combout => \C1|dMap~309_combout\);

-- Location: LCCOMB_X35_Y18_N6
\C1|DRAWMAP~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~115_combout\ = (\C1|dMap~290_combout\ & (\C1|dMap~308_combout\ & (!\C1|dMap~285_combout\))) # (!\C1|dMap~290_combout\ & ((\C1|dMap~309_combout\) # ((\C1|dMap~308_combout\ & !\C1|dMap~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~290_combout\,
	datab => \C1|dMap~308_combout\,
	datac => \C1|dMap~285_combout\,
	datad => \C1|dMap~309_combout\,
	combout => \C1|DRAWMAP~115_combout\);

-- Location: LCCOMB_X34_Y18_N26
\C1|dMap~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~313_combout\ = (\C1|LessThan200~0_combout\ & (!\C1|LessThan196~1_combout\ & \C1|LessThan188~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan200~0_combout\,
	datac => \C1|LessThan196~1_combout\,
	datad => \C1|LessThan188~1_combout\,
	combout => \C1|dMap~313_combout\);

-- Location: LCCOMB_X34_Y18_N4
\C1|dMap~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~310_combout\ = (!\C1|LessThan188~2_combout\ & (\C1|LessThan192~1_combout\ & !\C1|dMap~275_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan188~2_combout\,
	datab => \C1|LessThan192~1_combout\,
	datad => \C1|dMap~275_combout\,
	combout => \C1|dMap~310_combout\);

-- Location: LCCOMB_X34_Y19_N22
\C1|DRAWMAP~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~116_combout\ = (\C1|dMap~311_combout\ & (((!\C1|dMap~282_combout\ & \C1|dMap~312_combout\)) # (!\C1|dMap~285_combout\))) # (!\C1|dMap~311_combout\ & (((!\C1|dMap~282_combout\ & \C1|dMap~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~311_combout\,
	datab => \C1|dMap~285_combout\,
	datac => \C1|dMap~282_combout\,
	datad => \C1|dMap~312_combout\,
	combout => \C1|DRAWMAP~116_combout\);

-- Location: LCCOMB_X34_Y19_N4
\C1|DRAWMAP~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~117_combout\ = (\C1|dMap~310_combout\) # ((\C1|DRAWMAP~116_combout\) # ((!\C1|dMap~294_combout\ & \C1|dMap~313_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~294_combout\,
	datab => \C1|dMap~313_combout\,
	datac => \C1|dMap~310_combout\,
	datad => \C1|DRAWMAP~116_combout\,
	combout => \C1|DRAWMAP~117_combout\);

-- Location: LCCOMB_X36_Y18_N14
\C1|dMap~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~277_combout\ = (\C1|SQ_Y2\(5) & (((!\C1|LessThan191~0_combout\) # (!\C1|SQ_Y2\(2))) # (!\C1|SQ_Y2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \C1|SQ_Y2\(1),
	datac => \C1|SQ_Y2\(2),
	datad => \C1|LessThan191~0_combout\,
	combout => \C1|dMap~277_combout\);

-- Location: LCCOMB_X36_Y18_N20
\C1|dMap~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~278_combout\ = (\C1|dMap~276_combout\) # ((\C1|SQ_Y2\(6)) # ((\C1|dMap~277_combout\) # (!\C1|dMap~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~276_combout\,
	datab => \C1|SQ_Y2\(6),
	datac => \C1|dMap~277_combout\,
	datad => \C1|dMap~274_combout\,
	combout => \C1|dMap~278_combout\);

-- Location: LCCOMB_X34_Y18_N0
\C1|DRAWMAP~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~114_combout\ = (\C1|dMap~304_combout\ & (((\C1|dMap~305_combout\ & !\C1|dMap~278_combout\)) # (!\C1|dMap~293_combout\))) # (!\C1|dMap~304_combout\ & (((\C1|dMap~305_combout\ & !\C1|dMap~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~304_combout\,
	datab => \C1|dMap~293_combout\,
	datac => \C1|dMap~305_combout\,
	datad => \C1|dMap~278_combout\,
	combout => \C1|DRAWMAP~114_combout\);

-- Location: LCCOMB_X35_Y19_N26
\C1|DRAWMAP~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~118_combout\ = (\C1|DRAWMAP~113_combout\) # ((\C1|DRAWMAP~115_combout\) # ((\C1|DRAWMAP~117_combout\) # (\C1|DRAWMAP~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~113_combout\,
	datab => \C1|DRAWMAP~115_combout\,
	datac => \C1|DRAWMAP~117_combout\,
	datad => \C1|DRAWMAP~114_combout\,
	combout => \C1|DRAWMAP~118_combout\);

-- Location: LCCOMB_X35_Y19_N20
\C1|dirQ2X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ2X1~0_combout\ = (!\C1|LessThan173~1_combout\ & (!\C1|LessThan174~0_combout\ & ((\C1|DRAWMAP~112_combout\) # (\C1|DRAWMAP~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~112_combout\,
	datab => \C1|LessThan173~1_combout\,
	datac => \C1|LessThan174~0_combout\,
	datad => \C1|DRAWMAP~118_combout\,
	combout => \C1|dirQ2X1~0_combout\);

-- Location: LCCOMB_X35_Y21_N14
\C1|dMap~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~330_combout\ = (\C1|Add3~6_combout\ & (\C1|Add3~4_combout\ & ((\C1|Add3~0_combout\) # (\C1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|Add3~6_combout\,
	datac => \C1|Add3~2_combout\,
	datad => \C1|Add3~4_combout\,
	combout => \C1|dMap~330_combout\);

-- Location: LCCOMB_X35_Y21_N28
\C1|LessThan156~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~1_combout\ = (\C1|Add3~10_combout\) # ((\C1|Add3~8_combout\) # ((\C1|dMap~330_combout\) # (!\C1|LessThan156~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|dMap~330_combout\,
	datad => \C1|LessThan156~0_combout\,
	combout => \C1|LessThan156~1_combout\);

-- Location: LCCOMB_X35_Y21_N18
\C1|LessThan156~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan156~2_combout\ = (\C1|Add3~20_combout\) # ((\C1|Add3~18_combout\ & \C1|LessThan156~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~20_combout\,
	datac => \C1|Add3~18_combout\,
	datad => \C1|LessThan156~1_combout\,
	combout => \C1|LessThan156~2_combout\);

-- Location: LCCOMB_X34_Y21_N12
\C1|DRAWMAP~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~120_combout\ = (\C1|dMap~336_combout\ & (((\C1|DRAWMAP~111_combout\ & !\C1|dMap~322_combout\)) # (!\C1|dMap~316_combout\))) # (!\C1|dMap~336_combout\ & (((\C1|DRAWMAP~111_combout\ & !\C1|dMap~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~336_combout\,
	datab => \C1|dMap~316_combout\,
	datac => \C1|DRAWMAP~111_combout\,
	datad => \C1|dMap~322_combout\,
	combout => \C1|DRAWMAP~120_combout\);

-- Location: LCCOMB_X34_Y19_N8
\C1|DRAWMAP~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~121_combout\ = (\C1|dMap~322_combout\ & (\C1|LessThan183~0_combout\ & (\C1|DRAWMAP~120_combout\))) # (!\C1|dMap~322_combout\ & (((\C1|LessThan183~0_combout\ & \C1|DRAWMAP~120_combout\)) # (!\C1|dirQ2X2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~322_combout\,
	datab => \C1|LessThan183~0_combout\,
	datac => \C1|DRAWMAP~120_combout\,
	datad => \C1|dirQ2X2~2_combout\,
	combout => \C1|DRAWMAP~121_combout\);

-- Location: LCCOMB_X32_Y19_N12
\C1|dMap~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~328_combout\ = (!\C1|Add3~10_combout\ & (\C1|Add3~12_combout\ & \C1|dMap~318_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~10_combout\,
	datac => \C1|Add3~12_combout\,
	datad => \C1|dMap~318_combout\,
	combout => \C1|dMap~328_combout\);

-- Location: LCCOMB_X32_Y19_N18
\C1|dMap~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~332_combout\ = ((\C1|Add3~8_combout\ & ((\C1|Add3~4_combout\) # (\C1|Add3~6_combout\)))) # (!\C1|dMap~328_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|Add3~8_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|dMap~328_combout\,
	combout => \C1|dMap~332_combout\);

-- Location: LCCOMB_X33_Y19_N30
\C1|DRAWMAP~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~123_combout\ = (!\C1|dMap~332_combout\ & (\C1|dMap~305_combout\ & ((\C1|Add3~6_combout\) # (!\C1|dMap~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~331_combout\,
	datab => \C1|dMap~332_combout\,
	datac => \C1|Add3~6_combout\,
	datad => \C1|dMap~305_combout\,
	combout => \C1|DRAWMAP~123_combout\);

-- Location: LCCOMB_X34_Y19_N18
\C1|DRAWMAP~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~122_combout\ = (\C1|dMap~327_combout\ & (!\C1|dMap~325_combout\ & (\C1|dMap~304_combout\))) # (!\C1|dMap~327_combout\ & ((\C1|dMap~299_combout\) # ((!\C1|dMap~325_combout\ & \C1|dMap~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~327_combout\,
	datab => \C1|dMap~325_combout\,
	datac => \C1|dMap~304_combout\,
	datad => \C1|dMap~299_combout\,
	combout => \C1|DRAWMAP~122_combout\);

-- Location: LCCOMB_X34_Y19_N28
\C1|DRAWMAP~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~124_combout\ = (\C1|DRAWMAP~123_combout\) # ((\C1|DRAWMAP~122_combout\) # ((!\C1|dMap~329_combout\ & \C1|dMap~313_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~329_combout\,
	datab => \C1|dMap~313_combout\,
	datac => \C1|DRAWMAP~123_combout\,
	datad => \C1|DRAWMAP~122_combout\,
	combout => \C1|DRAWMAP~124_combout\);

-- Location: LCCOMB_X34_Y19_N10
\C1|DRAWMAP~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~127_combout\ = (\C1|DRAWMAP~126_combout\) # ((\C1|LessThan156~2_combout\) # ((\C1|DRAWMAP~121_combout\) # (\C1|DRAWMAP~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~126_combout\,
	datab => \C1|LessThan156~2_combout\,
	datac => \C1|DRAWMAP~121_combout\,
	datad => \C1|DRAWMAP~124_combout\,
	combout => \C1|DRAWMAP~127_combout\);

-- Location: LCCOMB_X31_Y19_N22
\C1|SQ2_Jump[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump[16]~64_combout\ = (!\C1|LessThan155~1_combout\ & (!\C1|LessThan174~0_combout\ & \C1|DRAWMAP~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan155~1_combout\,
	datac => \C1|LessThan174~0_combout\,
	datad => \C1|DRAWMAP~127_combout\,
	combout => \C1|SQ2_Jump[16]~64_combout\);

-- Location: LCCOMB_X31_Y19_N28
\C1|SQ2_Jump[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump[16]~65_combout\ = (\KEY~combout\(2)) # (((!\C1|SQ2_Jump[16]~64_combout\ & !\C1|arQ2X1~12_combout\)) # (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \C1|SQ2_Jump[16]~64_combout\,
	datac => \SW~combout\(1),
	datad => \C1|arQ2X1~12_combout\,
	combout => \C1|SQ2_Jump[16]~65_combout\);

-- Location: LCCOMB_X30_Y19_N22
\C1|SQ2_Jump~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~98_combout\ = (\C1|Add21~60_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~60_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~98_combout\);

-- Location: LCCOMB_X31_Y19_N10
\C1|SQ2_Jump[31]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump[31]~66_combout\ = (\C1|LessThan259~0_combout\ & (\C1|LessThan260~0_combout\ & ((!\C1|SQ2_Jump[16]~65_combout\) # (!\C1|LessThan262~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan259~0_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|LessThan262~10_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump[31]~66_combout\);

-- Location: LCFF_X30_Y19_N23
\C1|SQ2_Jump[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~98_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(30));

-- Location: LCCOMB_X30_Y19_N26
\C1|SQ2_Jump~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~95_combout\ = (\C1|Add21~54_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~54_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~95_combout\);

-- Location: LCFF_X30_Y19_N27
\C1|SQ2_Jump[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~95_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(27));

-- Location: LCCOMB_X30_Y19_N14
\C1|SQ2_Jump~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~93_combout\ = (\C1|Add21~50_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~50_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~93_combout\);

-- Location: LCFF_X30_Y19_N15
\C1|SQ2_Jump[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~93_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(25));

-- Location: LCCOMB_X31_Y21_N24
\C1|SQ2_Jump~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~90_combout\ = (\C1|Add21~44_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~44_combout\,
	datab => \C1|SQ2_Jump[16]~65_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~90_combout\);

-- Location: LCFF_X31_Y21_N25
\C1|SQ2_Jump[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~90_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(22));

-- Location: LCCOMB_X30_Y19_N16
\C1|SQ2_Jump~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~85_combout\ = (\C1|Add21~34_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~34_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~85_combout\);

-- Location: LCFF_X30_Y19_N17
\C1|SQ2_Jump[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~85_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(17));

-- Location: LCCOMB_X31_Y22_N18
\C1|SQ2_Jump~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~83_combout\ = (\C1|Add21~30_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~30_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~83_combout\);

-- Location: LCFF_X31_Y22_N19
\C1|SQ2_Jump[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~83_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(15));

-- Location: LCCOMB_X31_Y22_N22
\C1|SQ2_Jump~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~78_combout\ = (\C1|Add21~20_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~20_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~78_combout\);

-- Location: LCFF_X31_Y22_N23
\C1|SQ2_Jump[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~78_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(10));

-- Location: LCCOMB_X32_Y19_N10
\C1|SQ2_Jump~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~75_combout\ = (\C1|Add21~14_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~14_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~75_combout\);

-- Location: LCFF_X32_Y19_N11
\C1|SQ2_Jump[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~75_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(7));

-- Location: LCCOMB_X31_Y22_N28
\C1|SQ2_Jump~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~73_combout\ = (\C1|Add21~10_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~10_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~73_combout\);

-- Location: LCFF_X31_Y22_N29
\C1|SQ2_Jump[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~73_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(5));

-- Location: LCCOMB_X31_Y22_N14
\C1|SQ2_Jump~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~69_combout\ = ((\C1|Add21~2_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\))) # (!\C1|SQ2_Jump[16]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~2_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~69_combout\);

-- Location: LCFF_X31_Y22_N15
\C1|SQ2_Jump[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~69_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(1));

-- Location: LCCOMB_X31_Y22_N24
\C1|SQ2_Jump~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~68_combout\ = (\C1|Add21~0_combout\ & (!\C1|dirQ2X1~0_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~0_combout\,
	datab => \C1|dirQ2X1~0_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~68_combout\);

-- Location: LCFF_X31_Y22_N25
\C1|SQ2_Jump[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~68_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(0));

-- Location: LCCOMB_X30_Y22_N4
\C1|Add21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~4_combout\ = (\C1|SQ2_Jump\(2) & ((GND) # (!\C1|Add21~3\))) # (!\C1|SQ2_Jump\(2) & (\C1|Add21~3\ $ (GND)))
-- \C1|Add21~5\ = CARRY((\C1|SQ2_Jump\(2)) # (!\C1|Add21~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(2),
	datad => VCC,
	cin => \C1|Add21~3\,
	combout => \C1|Add21~4_combout\,
	cout => \C1|Add21~5\);

-- Location: LCCOMB_X31_Y22_N0
\C1|SQ2_Jump~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~70_combout\ = ((!\C1|esqQ2X1~0_combout\ & (\C1|Add21~4_combout\ & !\C1|dirQ2X1~0_combout\))) # (!\C1|SQ2_Jump[16]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~4_combout\,
	datac => \C1|SQ2_Jump[16]~65_combout\,
	datad => \C1|dirQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~70_combout\);

-- Location: LCFF_X31_Y22_N1
\C1|SQ2_Jump[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~70_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(2));

-- Location: LCCOMB_X30_Y22_N6
\C1|Add21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~6_combout\ = (\C1|SQ2_Jump\(3) & (\C1|Add21~5\ & VCC)) # (!\C1|SQ2_Jump\(3) & (!\C1|Add21~5\))
-- \C1|Add21~7\ = CARRY((!\C1|SQ2_Jump\(3) & !\C1|Add21~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(3),
	datad => VCC,
	cin => \C1|Add21~5\,
	combout => \C1|Add21~6_combout\,
	cout => \C1|Add21~7\);

-- Location: LCCOMB_X32_Y19_N4
\C1|SQ2_Jump~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~71_combout\ = ((!\C1|dirQ2X1~0_combout\ & (\C1|Add21~6_combout\ & !\C1|esqQ2X1~0_combout\))) # (!\C1|SQ2_Jump[16]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add21~6_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~71_combout\);

-- Location: LCFF_X32_Y19_N5
\C1|SQ2_Jump[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~71_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(3));

-- Location: LCCOMB_X30_Y22_N8
\C1|Add21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~8_combout\ = (\C1|SQ2_Jump\(4) & ((GND) # (!\C1|Add21~7\))) # (!\C1|SQ2_Jump\(4) & (\C1|Add21~7\ $ (GND)))
-- \C1|Add21~9\ = CARRY((\C1|SQ2_Jump\(4)) # (!\C1|Add21~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(4),
	datad => VCC,
	cin => \C1|Add21~7\,
	combout => \C1|Add21~8_combout\,
	cout => \C1|Add21~9\);

-- Location: LCCOMB_X32_Y19_N2
\C1|SQ2_Jump~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~72_combout\ = ((!\C1|dirQ2X1~0_combout\ & (\C1|Add21~8_combout\ & !\C1|esqQ2X1~0_combout\))) # (!\C1|SQ2_Jump[16]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add21~8_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~72_combout\);

-- Location: LCFF_X32_Y19_N3
\C1|SQ2_Jump[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~72_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(4));

-- Location: LCCOMB_X30_Y22_N12
\C1|Add21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~12_combout\ = (\C1|SQ2_Jump\(6) & ((GND) # (!\C1|Add21~11\))) # (!\C1|SQ2_Jump\(6) & (\C1|Add21~11\ $ (GND)))
-- \C1|Add21~13\ = CARRY((\C1|SQ2_Jump\(6)) # (!\C1|Add21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(6),
	datad => VCC,
	cin => \C1|Add21~11\,
	combout => \C1|Add21~12_combout\,
	cout => \C1|Add21~13\);

-- Location: LCCOMB_X32_Y19_N24
\C1|SQ2_Jump~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~74_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add21~12_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add21~12_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~74_combout\);

-- Location: LCFF_X32_Y19_N25
\C1|SQ2_Jump[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~74_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(6));

-- Location: LCCOMB_X30_Y22_N18
\C1|Add21~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~18_combout\ = (\C1|SQ2_Jump\(9) & (\C1|Add21~17\ & VCC)) # (!\C1|SQ2_Jump\(9) & (!\C1|Add21~17\))
-- \C1|Add21~19\ = CARRY((!\C1|SQ2_Jump\(9) & !\C1|Add21~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(9),
	datad => VCC,
	cin => \C1|Add21~17\,
	combout => \C1|Add21~18_combout\,
	cout => \C1|Add21~19\);

-- Location: LCCOMB_X31_Y22_N8
\C1|SQ2_Jump~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~77_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~18_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & !\C1|dirQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~18_combout\,
	datac => \C1|SQ2_Jump[16]~65_combout\,
	datad => \C1|dirQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~77_combout\);

-- Location: LCFF_X31_Y22_N9
\C1|SQ2_Jump[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~77_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(9));

-- Location: LCCOMB_X30_Y22_N22
\C1|Add21~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~22_combout\ = (\C1|SQ2_Jump\(11) & (\C1|Add21~21\ & VCC)) # (!\C1|SQ2_Jump\(11) & (!\C1|Add21~21\))
-- \C1|Add21~23\ = CARRY((!\C1|SQ2_Jump\(11) & !\C1|Add21~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(11),
	datad => VCC,
	cin => \C1|Add21~21\,
	combout => \C1|Add21~22_combout\,
	cout => \C1|Add21~23\);

-- Location: LCCOMB_X30_Y22_N24
\C1|Add21~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~24_combout\ = (\C1|SQ2_Jump\(12) & ((GND) # (!\C1|Add21~23\))) # (!\C1|SQ2_Jump\(12) & (\C1|Add21~23\ $ (GND)))
-- \C1|Add21~25\ = CARRY((\C1|SQ2_Jump\(12)) # (!\C1|Add21~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(12),
	datad => VCC,
	cin => \C1|Add21~23\,
	combout => \C1|Add21~24_combout\,
	cout => \C1|Add21~25\);

-- Location: LCCOMB_X31_Y22_N10
\C1|SQ2_Jump~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~80_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~24_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & !\C1|dirQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~24_combout\,
	datac => \C1|SQ2_Jump[16]~65_combout\,
	datad => \C1|dirQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~80_combout\);

-- Location: LCFF_X31_Y22_N11
\C1|SQ2_Jump[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~80_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(12));

-- Location: LCCOMB_X30_Y21_N0
\C1|Add21~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~32_combout\ = (\C1|SQ2_Jump\(16) & ((GND) # (!\C1|Add21~31\))) # (!\C1|SQ2_Jump\(16) & (\C1|Add21~31\ $ (GND)))
-- \C1|Add21~33\ = CARRY((\C1|SQ2_Jump\(16)) # (!\C1|Add21~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(16),
	datad => VCC,
	cin => \C1|Add21~31\,
	combout => \C1|Add21~32_combout\,
	cout => \C1|Add21~33\);

-- Location: LCCOMB_X30_Y19_N2
\C1|SQ2_Jump~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~84_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~32_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~32_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~84_combout\);

-- Location: LCFF_X30_Y19_N3
\C1|SQ2_Jump[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~84_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(16));

-- Location: LCCOMB_X30_Y21_N6
\C1|Add21~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~38_combout\ = (\C1|SQ2_Jump\(19) & (\C1|Add21~37\ & VCC)) # (!\C1|SQ2_Jump\(19) & (!\C1|Add21~37\))
-- \C1|Add21~39\ = CARRY((!\C1|SQ2_Jump\(19) & !\C1|Add21~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(19),
	datad => VCC,
	cin => \C1|Add21~37\,
	combout => \C1|Add21~38_combout\,
	cout => \C1|Add21~39\);

-- Location: LCCOMB_X30_Y19_N0
\C1|SQ2_Jump~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~87_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~38_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~38_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~87_combout\);

-- Location: LCFF_X30_Y19_N1
\C1|SQ2_Jump[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~87_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(19));

-- Location: LCCOMB_X30_Y21_N20
\C1|Add21~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~52_combout\ = (\C1|SQ2_Jump\(26) & ((GND) # (!\C1|Add21~51\))) # (!\C1|SQ2_Jump\(26) & (\C1|Add21~51\ $ (GND)))
-- \C1|Add21~53\ = CARRY((\C1|SQ2_Jump\(26)) # (!\C1|Add21~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(26),
	datad => VCC,
	cin => \C1|Add21~51\,
	combout => \C1|Add21~52_combout\,
	cout => \C1|Add21~53\);

-- Location: LCCOMB_X30_Y19_N12
\C1|SQ2_Jump~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~94_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~52_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~52_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~94_combout\);

-- Location: LCFF_X30_Y19_N13
\C1|SQ2_Jump[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~94_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(26));

-- Location: LCCOMB_X30_Y21_N24
\C1|Add21~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~56_combout\ = (\C1|SQ2_Jump\(28) & ((GND) # (!\C1|Add21~55\))) # (!\C1|SQ2_Jump\(28) & (\C1|Add21~55\ $ (GND)))
-- \C1|Add21~57\ = CARRY((\C1|SQ2_Jump\(28)) # (!\C1|Add21~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(28),
	datad => VCC,
	cin => \C1|Add21~55\,
	combout => \C1|Add21~56_combout\,
	cout => \C1|Add21~57\);

-- Location: LCCOMB_X30_Y19_N6
\C1|SQ2_Jump~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~96_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~56_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~56_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~96_combout\);

-- Location: LCFF_X30_Y19_N7
\C1|SQ2_Jump[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~96_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(28));

-- Location: LCCOMB_X30_Y21_N26
\C1|Add21~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~58_combout\ = (\C1|SQ2_Jump\(29) & (\C1|Add21~57\ & VCC)) # (!\C1|SQ2_Jump\(29) & (!\C1|Add21~57\))
-- \C1|Add21~59\ = CARRY((!\C1|SQ2_Jump\(29) & !\C1|Add21~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(29),
	datad => VCC,
	cin => \C1|Add21~57\,
	combout => \C1|Add21~58_combout\,
	cout => \C1|Add21~59\);

-- Location: LCCOMB_X30_Y21_N30
\C1|Add21~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add21~62_combout\ = \C1|Add21~61\ $ (!\C1|SQ2_Jump\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|SQ2_Jump\(31),
	cin => \C1|Add21~61\,
	combout => \C1|Add21~62_combout\);

-- Location: LCCOMB_X30_Y19_N4
\C1|SQ2_Jump~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~67_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~62_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~62_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~67_combout\);

-- Location: LCFF_X30_Y19_N5
\C1|SQ2_Jump[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~67_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(31));

-- Location: LCCOMB_X30_Y19_N20
\C1|SQ2_Jump~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~97_combout\ = (!\C1|esqQ2X1~0_combout\ & (\C1|Add21~58_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ2X1~0_combout\,
	datab => \C1|Add21~58_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~97_combout\);

-- Location: LCFF_X30_Y19_N21
\C1|SQ2_Jump[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~97_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(29));

-- Location: LCCOMB_X30_Y19_N8
\C1|LessThan262~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~8_combout\ = (!\C1|SQ2_Jump\(30) & (!\C1|SQ2_Jump\(29) & !\C1|SQ2_Jump\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(30),
	datac => \C1|SQ2_Jump\(29),
	datad => \C1|SQ2_Jump\(28),
	combout => \C1|LessThan262~8_combout\);

-- Location: LCCOMB_X31_Y21_N2
\C1|SQ2_Jump~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~89_combout\ = (\C1|Add21~42_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~42_combout\,
	datab => \C1|SQ2_Jump[16]~65_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~89_combout\);

-- Location: LCFF_X31_Y21_N3
\C1|SQ2_Jump[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~89_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(21));

-- Location: LCCOMB_X31_Y21_N0
\C1|SQ2_Jump~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~88_combout\ = (\C1|Add21~40_combout\ & (\C1|SQ2_Jump[16]~65_combout\ & (!\C1|dirQ2X1~0_combout\ & !\C1|esqQ2X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~40_combout\,
	datab => \C1|SQ2_Jump[16]~65_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ2_Jump~88_combout\);

-- Location: LCFF_X31_Y21_N1
\C1|SQ2_Jump[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~88_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(20));

-- Location: LCCOMB_X31_Y21_N12
\C1|LessThan262~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~6_combout\ = (!\C1|SQ2_Jump\(23) & (!\C1|SQ2_Jump\(21) & (!\C1|SQ2_Jump\(22) & !\C1|SQ2_Jump\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(23),
	datab => \C1|SQ2_Jump\(21),
	datac => \C1|SQ2_Jump\(22),
	datad => \C1|SQ2_Jump\(20),
	combout => \C1|LessThan262~6_combout\);

-- Location: LCCOMB_X30_Y19_N28
\C1|LessThan262~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~7_combout\ = (!\C1|SQ2_Jump\(24) & (!\C1|SQ2_Jump\(27) & (!\C1|SQ2_Jump\(25) & !\C1|SQ2_Jump\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(24),
	datab => \C1|SQ2_Jump\(27),
	datac => \C1|SQ2_Jump\(25),
	datad => \C1|SQ2_Jump\(26),
	combout => \C1|LessThan262~7_combout\);

-- Location: LCCOMB_X30_Y19_N30
\C1|LessThan262~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~9_combout\ = (\C1|LessThan262~5_combout\ & (\C1|LessThan262~8_combout\ & (\C1|LessThan262~6_combout\ & \C1|LessThan262~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan262~5_combout\,
	datab => \C1|LessThan262~8_combout\,
	datac => \C1|LessThan262~6_combout\,
	datad => \C1|LessThan262~7_combout\,
	combout => \C1|LessThan262~9_combout\);

-- Location: LCCOMB_X31_Y22_N26
\C1|LessThan262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~0_combout\ = (!\C1|SQ2_Jump\(1) & (!\C1|SQ2_Jump\(2) & (!\C1|SQ2_Jump\(0) & !\C1|SQ2_Jump\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(1),
	datab => \C1|SQ2_Jump\(2),
	datac => \C1|SQ2_Jump\(0),
	datad => \C1|SQ2_Jump\(3),
	combout => \C1|LessThan262~0_combout\);

-- Location: LCCOMB_X32_Y19_N28
\C1|SQ2_Jump~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~76_combout\ = (\C1|Add21~16_combout\ & (!\C1|esqQ2X1~0_combout\ & (!\C1|dirQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add21~16_combout\,
	datab => \C1|esqQ2X1~0_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~76_combout\);

-- Location: LCFF_X32_Y19_N29
\C1|SQ2_Jump[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~76_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(8));

-- Location: LCCOMB_X32_Y19_N30
\C1|SQ2_Jump~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ2_Jump~79_combout\ = (!\C1|dirQ2X1~0_combout\ & (\C1|Add21~22_combout\ & (!\C1|esqQ2X1~0_combout\ & \C1|SQ2_Jump[16]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ2X1~0_combout\,
	datab => \C1|Add21~22_combout\,
	datac => \C1|esqQ2X1~0_combout\,
	datad => \C1|SQ2_Jump[16]~65_combout\,
	combout => \C1|SQ2_Jump~79_combout\);

-- Location: LCFF_X32_Y19_N31
\C1|SQ2_Jump[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ2_Jump~79_combout\,
	ena => \C1|SQ2_Jump[31]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ2_Jump\(11));

-- Location: LCCOMB_X31_Y22_N16
\C1|LessThan262~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~2_combout\ = (!\C1|SQ2_Jump\(9) & (!\C1|SQ2_Jump\(10) & (!\C1|SQ2_Jump\(8) & !\C1|SQ2_Jump\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(9),
	datab => \C1|SQ2_Jump\(10),
	datac => \C1|SQ2_Jump\(8),
	datad => \C1|SQ2_Jump\(11),
	combout => \C1|LessThan262~2_combout\);

-- Location: LCCOMB_X31_Y22_N2
\C1|LessThan262~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~1_combout\ = (!\C1|SQ2_Jump\(4) & (!\C1|SQ2_Jump\(5) & (!\C1|SQ2_Jump\(7) & !\C1|SQ2_Jump\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2_Jump\(4),
	datab => \C1|SQ2_Jump\(5),
	datac => \C1|SQ2_Jump\(7),
	datad => \C1|SQ2_Jump\(6),
	combout => \C1|LessThan262~1_combout\);

-- Location: LCCOMB_X31_Y22_N6
\C1|LessThan262~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~4_combout\ = (\C1|LessThan262~3_combout\ & (\C1|LessThan262~0_combout\ & (\C1|LessThan262~2_combout\ & \C1|LessThan262~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan262~3_combout\,
	datab => \C1|LessThan262~0_combout\,
	datac => \C1|LessThan262~2_combout\,
	datad => \C1|LessThan262~1_combout\,
	combout => \C1|LessThan262~4_combout\);

-- Location: LCCOMB_X31_Y19_N24
\C1|LessThan262~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan262~10_combout\ = (\C1|SQ2_Jump\(31)) # ((\C1|LessThan262~9_combout\ & \C1|LessThan262~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ2_Jump\(31),
	datac => \C1|LessThan262~9_combout\,
	datad => \C1|LessThan262~4_combout\,
	combout => \C1|LessThan262~10_combout\);

-- Location: LCCOMB_X35_Y19_N22
\C1|SQ_Y2[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~0_combout\ = (\C1|LessThan262~10_combout\) # ((\C1|dirQ2X1~0_combout\) # (\C1|esqQ2X1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan262~10_combout\,
	datac => \C1|dirQ2X1~0_combout\,
	datad => \C1|esqQ2X1~0_combout\,
	combout => \C1|SQ_Y2[7]~0_combout\);

-- Location: LCCOMB_X35_Y19_N18
\C1|Add17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add17~18_combout\ = \C1|SQ_Y2\(10) $ (\C1|Add17~17\ $ (!\C1|SQ_Y2[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => \C1|SQ_Y2[7]~0_combout\,
	cin => \C1|Add17~17\,
	combout => \C1|Add17~18_combout\);

-- Location: LCFF_X35_Y19_N19
\C1|SQ_Y2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add17~18_combout\,
	ena => \C1|SQ_Y2[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y2\(10));

-- Location: LCCOMB_X32_Y17_N0
\C1|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan6~1_cout\);

-- Location: LCCOMB_X32_Y17_N2
\C1|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\C1|VPOS\(1) & (!\C1|SQ_Y2\(1) & !\C1|LessThan6~1_cout\)) # (!\C1|VPOS\(1) & ((!\C1|LessThan6~1_cout\) # (!\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X32_Y17_N4
\C1|LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((\C1|VPOS\(2) & ((\C1|SQ_Y2\(2)) # (!\C1|LessThan6~3_cout\))) # (!\C1|VPOS\(2) & (\C1|SQ_Y2\(2) & !\C1|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X32_Y17_N6
\C1|LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~7_cout\ = CARRY((\C1|SQ_Y2\(3) & (!\C1|VPOS\(3) & !\C1|LessThan6~5_cout\)) # (!\C1|SQ_Y2\(3) & ((!\C1|LessThan6~5_cout\) # (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan6~5_cout\,
	cout => \C1|LessThan6~7_cout\);

-- Location: LCCOMB_X32_Y17_N8
\C1|LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~9_cout\ = CARRY((\C1|SQ_Y2\(4) & (\C1|VPOS\(4) & !\C1|LessThan6~7_cout\)) # (!\C1|SQ_Y2\(4) & ((\C1|VPOS\(4)) # (!\C1|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan6~7_cout\,
	cout => \C1|LessThan6~9_cout\);

-- Location: LCCOMB_X32_Y17_N10
\C1|LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~11_cout\ = CARRY((\C1|VPOS\(5) & (\C1|SQ_Y2\(5) & !\C1|LessThan6~9_cout\)) # (!\C1|VPOS\(5) & ((\C1|SQ_Y2\(5)) # (!\C1|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|LessThan6~9_cout\,
	cout => \C1|LessThan6~11_cout\);

-- Location: LCCOMB_X32_Y17_N12
\C1|LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~13_cout\ = CARRY((\C1|SQ_Y2\(6) & (\C1|VPOS\(6) & !\C1|LessThan6~11_cout\)) # (!\C1|SQ_Y2\(6) & ((\C1|VPOS\(6)) # (!\C1|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan6~11_cout\,
	cout => \C1|LessThan6~13_cout\);

-- Location: LCCOMB_X32_Y17_N14
\C1|LessThan6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~15_cout\ = CARRY((\C1|VPOS\(7) & (!\C1|SQ_Y2\(7) & !\C1|LessThan6~13_cout\)) # (!\C1|VPOS\(7) & ((!\C1|LessThan6~13_cout\) # (!\C1|SQ_Y2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|LessThan6~13_cout\,
	cout => \C1|LessThan6~15_cout\);

-- Location: LCCOMB_X32_Y17_N16
\C1|LessThan6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~17_cout\ = CARRY((\C1|SQ_Y2\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan6~15_cout\))) # (!\C1|SQ_Y2\(8) & (\C1|VPOS\(8) & !\C1|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan6~15_cout\,
	cout => \C1|LessThan6~17_cout\);

-- Location: LCCOMB_X32_Y17_N18
\C1|LessThan6~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~19_cout\ = CARRY((\C1|SQ_Y2\(9) & (!\C1|VPOS\(9) & !\C1|LessThan6~17_cout\)) # (!\C1|SQ_Y2\(9) & ((!\C1|LessThan6~17_cout\) # (!\C1|VPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan6~17_cout\,
	cout => \C1|LessThan6~19_cout\);

-- Location: LCCOMB_X32_Y17_N20
\C1|LessThan6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~20_combout\ = (\C1|SQ_Y2\(10) & (!\C1|LessThan6~19_cout\ & \C1|VPOS\(10))) # (!\C1|SQ_Y2\(10) & ((\C1|VPOS\(10)) # (!\C1|LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(10),
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan6~19_cout\,
	combout => \C1|LessThan6~20_combout\);

-- Location: LCCOMB_X29_Y20_N4
\C1|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X29_Y20_N6
\C1|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~3_cout\ = CARRY((\C1|SQ_X2\(1) & ((!\C1|LessThan4~1_cout\) # (!\C1|HPOS\(1)))) # (!\C1|SQ_X2\(1) & (!\C1|HPOS\(1) & !\C1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan4~1_cout\,
	cout => \C1|LessThan4~3_cout\);

-- Location: LCCOMB_X29_Y20_N8
\C1|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~5_cout\ = CARRY((\C1|HPOS\(2) & ((\C1|SQ_X2\(2)) # (!\C1|LessThan4~3_cout\))) # (!\C1|HPOS\(2) & (\C1|SQ_X2\(2) & !\C1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan4~3_cout\,
	cout => \C1|LessThan4~5_cout\);

-- Location: LCCOMB_X29_Y20_N10
\C1|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|HPOS\(3) & !\C1|LessThan4~5_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X29_Y20_N12
\C1|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~9_cout\ = CARRY((\C1|SQ_X2\(4) & (\C1|HPOS\(4) & !\C1|LessThan4~7_cout\)) # (!\C1|SQ_X2\(4) & ((\C1|HPOS\(4)) # (!\C1|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan4~7_cout\,
	cout => \C1|LessThan4~9_cout\);

-- Location: LCCOMB_X29_Y20_N14
\C1|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~11_cout\ = CARRY((\C1|HPOS\(5) & (\C1|SQ_X2\(5) & !\C1|LessThan4~9_cout\)) # (!\C1|HPOS\(5) & ((\C1|SQ_X2\(5)) # (!\C1|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|LessThan4~9_cout\,
	cout => \C1|LessThan4~11_cout\);

-- Location: LCCOMB_X29_Y20_N16
\C1|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|HPOS\(6) & ((\C1|SQ_X2\(6)) # (!\C1|LessThan4~11_cout\))) # (!\C1|HPOS\(6) & (\C1|SQ_X2\(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X29_Y20_N18
\C1|LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((\C1|HPOS\(7) & (!\C1|SQ_X2\(7) & !\C1|LessThan4~13_cout\)) # (!\C1|HPOS\(7) & ((!\C1|LessThan4~13_cout\) # (!\C1|SQ_X2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X29_Y20_N20
\C1|LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~17_cout\ = CARRY((\C1|SQ_X2\(8) & ((\C1|HPOS\(8)) # (!\C1|LessThan4~15_cout\))) # (!\C1|SQ_X2\(8) & (\C1|HPOS\(8) & !\C1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan4~15_cout\,
	cout => \C1|LessThan4~17_cout\);

-- Location: LCCOMB_X29_Y20_N22
\C1|LessThan4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~19_cout\ = CARRY((\C1|SQ_X2\(9) & ((!\C1|LessThan4~17_cout\) # (!\C1|HPOS\(9)))) # (!\C1|SQ_X2\(9) & (!\C1|HPOS\(9) & !\C1|LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|LessThan4~17_cout\,
	cout => \C1|LessThan4~19_cout\);

-- Location: LCCOMB_X29_Y20_N24
\C1|LessThan4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~20_combout\ = (\C1|HPOS\(10) & ((!\C1|SQ_X2\(10)) # (!\C1|LessThan4~19_cout\))) # (!\C1|HPOS\(10) & (!\C1|LessThan4~19_cout\ & !\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => \C1|SQ_X2\(10),
	cin => \C1|LessThan4~19_cout\,
	combout => \C1|LessThan4~20_combout\);

-- Location: LCCOMB_X31_Y17_N0
\C1|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((\C1|SQ_X2\(1) & !\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X31_Y17_N2
\C1|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~3_cout\ = CARRY((\C1|SQ_X2\(2) & ((\C1|HPOS\(2)) # (!\C1|LessThan5~1_cout\))) # (!\C1|SQ_X2\(2) & (\C1|HPOS\(2) & !\C1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan5~1_cout\,
	cout => \C1|LessThan5~3_cout\);

-- Location: LCCOMB_X31_Y17_N4
\C1|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|HPOS\(3) & !\C1|LessThan5~3_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan5~3_cout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X31_Y17_N6
\C1|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|Add2~0_combout\ & (\C1|HPOS\(4) & !\C1|LessThan5~5_cout\)) # (!\C1|Add2~0_combout\ & ((\C1|HPOS\(4)) # (!\C1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X31_Y17_N8
\C1|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|HPOS\(5) & (\C1|Add2~2_combout\ & !\C1|LessThan5~7_cout\)) # (!\C1|HPOS\(5) & ((\C1|Add2~2_combout\) # (!\C1|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X31_Y17_N10
\C1|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|Add2~4_combout\ & (\C1|HPOS\(6) & !\C1|LessThan5~9_cout\)) # (!\C1|Add2~4_combout\ & ((\C1|HPOS\(6)) # (!\C1|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X31_Y17_N12
\C1|LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|Add2~6_combout\ & ((!\C1|LessThan5~11_cout\) # (!\C1|HPOS\(7)))) # (!\C1|Add2~6_combout\ & (!\C1|HPOS\(7) & !\C1|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X31_Y17_N14
\C1|LessThan5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|Add2~8_combout\ & (\C1|HPOS\(8) & !\C1|LessThan5~13_cout\)) # (!\C1|Add2~8_combout\ & ((\C1|HPOS\(8)) # (!\C1|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X31_Y17_N16
\C1|LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|HPOS\(9) & (\C1|Add2~10_combout\ & !\C1|LessThan5~15_cout\)) # (!\C1|HPOS\(9) & ((\C1|Add2~10_combout\) # (!\C1|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add2~10_combout\,
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X31_Y17_N18
\C1|LessThan5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~18_combout\ = (\C1|HPOS\(10) & (\C1|Add2~12_combout\ & \C1|LessThan5~17_cout\)) # (!\C1|HPOS\(10) & ((\C1|Add2~12_combout\) # (\C1|LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|Add2~12_combout\,
	cin => \C1|LessThan5~17_cout\,
	combout => \C1|LessThan5~18_combout\);

-- Location: LCCOMB_X32_Y17_N30
\C1|DRAW2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~0_combout\ = (\C1|LessThan7~18_combout\ & (((\C1|Add2~14_combout\) # (\C1|LessThan5~18_combout\)))) # (!\C1|LessThan7~18_combout\ & (\C1|Add3~20_combout\ & ((\C1|Add2~14_combout\) # (\C1|LessThan5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan7~18_combout\,
	datab => \C1|Add3~20_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|LessThan5~18_combout\,
	combout => \C1|DRAW2~0_combout\);

-- Location: LCCOMB_X31_Y17_N28
\C1|DRAW2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~1_combout\ = (\C1|LessThan6~20_combout\ & (\C1|LessThan4~20_combout\ & \C1|DRAW2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan6~20_combout\,
	datac => \C1|LessThan4~20_combout\,
	datad => \C1|DRAW2~0_combout\,
	combout => \C1|DRAW2~1_combout\);

-- Location: LCCOMB_X29_Y17_N30
\C1|LessThan265~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan265~1_combout\ = (\C1|LessThan265~0_combout\ & ((\C1|LessThan30~0_combout\) # (!\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datac => \C1|LessThan265~0_combout\,
	datad => \C1|LessThan30~0_combout\,
	combout => \C1|LessThan265~1_combout\);

-- Location: LCCOMB_X29_Y17_N28
\C1|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (\C1|LessThan265~1_combout\ & (!\C1|VPOS\(10) & ((\C1|LessThan268~1_combout\) # (\C1|VPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan268~1_combout\,
	datab => \C1|LessThan265~1_combout\,
	datac => \C1|VPOS\(10),
	datad => \C1|VPOS\(5),
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X30_Y15_N28
\C1|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X30_Y15_N12
\C1|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (!\C1|HPOS\(3) & (\C1|process_0~6_combout\ & (!\C1|HPOS\(8) & !\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|process_0~6_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X31_Y17_N20
\C1|process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = (\C1|HPOS\(10)) # ((\C1|HPOS\(9)) # ((\C1|HPOS\(8) & !\C1|LessThan264~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan264~6_combout\,
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X30_Y17_N30
\C1|process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (\C1|process_0~7_combout\) # ((!\C1|process_0~10_combout\ & ((!\C1|process_0~9_combout\) # (!\C1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~8_combout\,
	datab => \C1|process_0~7_combout\,
	datac => \C1|process_0~9_combout\,
	datad => \C1|process_0~10_combout\,
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X31_Y16_N2
\C1|DRAWMAP~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~45_combout\ = (!\C1|HPOS\(9) & (\C1|HPOS\(7) & \C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(8),
	combout => \C1|DRAWMAP~45_combout\);

-- Location: LCCOMB_X29_Y16_N16
\C1|DRAWMAP~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~36_combout\ = (!\C1|VPOS\(8) & (!\C1|VPOS\(10) & (!\C1|VPOS\(7) & !\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(10),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(9),
	combout => \C1|DRAWMAP~36_combout\);

-- Location: LCCOMB_X30_Y15_N14
\C1|DRAWMAP~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~39_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(2)) # (\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|DRAWMAP~39_combout\);

-- Location: LCCOMB_X30_Y15_N8
\C1|LessThan46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan46~0_combout\ = (!\C1|HPOS\(2) & ((!\C1|HPOS\(1)) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan46~0_combout\);

-- Location: LCCOMB_X30_Y15_N10
\C1|LessThan40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan40~2_combout\ = (!\C1|HPOS\(5) & (!\C1|HPOS\(4) & ((\C1|LessThan46~0_combout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(5),
	datac => \C1|LessThan46~0_combout\,
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan40~2_combout\);

-- Location: LCCOMB_X29_Y16_N26
\C1|DRAWMAP~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~37_combout\ = (\C1|VPOS\(5) & ((\C1|VPOS\(3)) # ((\C1|VPOS\(2) & \C1|VPOS\(1))))) # (!\C1|VPOS\(5) & (\C1|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(3),
	combout => \C1|DRAWMAP~37_combout\);

-- Location: LCCOMB_X29_Y16_N2
\C1|DRAWMAP~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~132_combout\ = (\C1|VPOS\(4) & (\C1|DRAWMAP~37_combout\ & ((\C1|VPOS\(5)) # (\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|DRAWMAP~37_combout\,
	combout => \C1|DRAWMAP~132_combout\);

-- Location: LCCOMB_X29_Y16_N0
\C1|LessThan268~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan268~0_combout\ = (!\C1|VPOS\(1) & !\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan268~0_combout\);

-- Location: LCCOMB_X29_Y16_N28
\C1|DRAWMAP~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~38_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS\(6) & (\C1|DRAWMAP~132_combout\))) # (!\C1|VPOS\(5) & (\C1|VPOS\(6) & ((\C1|LessThan268~0_combout\) # (!\C1|DRAWMAP~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(6),
	datac => \C1|DRAWMAP~132_combout\,
	datad => \C1|LessThan268~0_combout\,
	combout => \C1|DRAWMAP~38_combout\);

-- Location: LCCOMB_X30_Y16_N24
\C1|DRAWMAP~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~40_combout\ = (\C1|DRAWMAP~38_combout\ & ((\C1|HPOS\(6) & ((\C1|LessThan40~2_combout\))) # (!\C1|HPOS\(6) & (\C1|DRAWMAP~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|DRAWMAP~39_combout\,
	datac => \C1|LessThan40~2_combout\,
	datad => \C1|DRAWMAP~38_combout\,
	combout => \C1|DRAWMAP~40_combout\);

-- Location: LCCOMB_X29_Y19_N20
\C1|HPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS\(10) $ (!\C1|HPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: LCFF_X29_Y19_N21
\C1|HPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan259~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(10));

-- Location: LCCOMB_X30_Y16_N30
\C1|DRAWMAP~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~41_combout\ = (\C1|HPOS\(3) & (\C1|HPOS\(4) & ((\C1|HPOS\(2)) # (\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(1),
	combout => \C1|DRAWMAP~41_combout\);

-- Location: LCCOMB_X30_Y16_N28
\C1|LessThan43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan43~0_combout\ = (\C1|HPOS\(3)) # ((\C1|HPOS\(2)) # ((\C1|HPOS\(4)) # (\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan43~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\C1|DRAWMAP~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~42_combout\ = (\C1|LessThan264~4_combout\ & ((\C1|HPOS\(10) & ((!\C1|LessThan43~0_combout\))) # (!\C1|HPOS\(10) & (!\C1|DRAWMAP~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan264~4_combout\,
	datab => \C1|DRAWMAP~41_combout\,
	datac => \C1|HPOS\(10),
	datad => \C1|LessThan43~0_combout\,
	combout => \C1|DRAWMAP~42_combout\);

-- Location: LCCOMB_X29_Y16_N18
\C1|dMap~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~163_combout\ = (!\C1|VPOS\(10) & (\C1|VPOS\(9) & (\C1|VPOS\(8) & \C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(6),
	combout => \C1|dMap~163_combout\);

-- Location: LCCOMB_X29_Y16_N6
\C1|dMap~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~161_combout\ = (\C1|VPOS\(4) & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~161_combout\);

-- Location: LCCOMB_X29_Y16_N8
\C1|dMap~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~164_combout\ = ((\C1|dMap~161_combout\ & ((\C1|VPOS\(2)) # (\C1|VPOS\(1))))) # (!\C1|dMap~163_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|dMap~163_combout\,
	datac => \C1|VPOS\(1),
	datad => \C1|dMap~161_combout\,
	combout => \C1|dMap~164_combout\);

-- Location: LCCOMB_X29_Y16_N10
\C1|dMap~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~165_combout\ = (\C1|LessThan47~0_combout\) # ((\C1|dMap~164_combout\) # ((\C1|VPOS\(7)) # (!\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan47~0_combout\,
	datab => \C1|dMap~164_combout\,
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~165_combout\);

-- Location: LCCOMB_X30_Y16_N6
\C1|DRAWMAP~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~43_combout\ = (\C1|DRAWMAP~42_combout\) # ((\C1|HPOS\(10) & (\C1|dMap~388_combout\)) # (!\C1|HPOS\(10) & ((\C1|dMap~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~388_combout\,
	datab => \C1|HPOS\(10),
	datac => \C1|DRAWMAP~42_combout\,
	datad => \C1|dMap~165_combout\,
	combout => \C1|DRAWMAP~43_combout\);

-- Location: LCCOMB_X30_Y16_N0
\C1|DRAWMAP~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~44_combout\ = ((!\C1|HPOS\(10) & (\C1|DRAWMAP~36_combout\ & \C1|DRAWMAP~40_combout\))) # (!\C1|DRAWMAP~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|DRAWMAP~36_combout\,
	datac => \C1|DRAWMAP~40_combout\,
	datad => \C1|DRAWMAP~43_combout\,
	combout => \C1|DRAWMAP~44_combout\);

-- Location: LCCOMB_X31_Y15_N4
\C1|LessThan45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan45~0_combout\ = (\C1|HPOS\(1) & \C1|HPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan45~0_combout\);

-- Location: LCCOMB_X30_Y15_N0
\C1|LessThan44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan44~0_combout\ = ((!\C1|HPOS\(3) & ((!\C1|LessThan45~0_combout\) # (!\C1|HPOS\(0))))) # (!\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(0),
	datad => \C1|LessThan45~0_combout\,
	combout => \C1|LessThan44~0_combout\);

-- Location: LCCOMB_X31_Y15_N0
\C1|DRAWMAP~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~133_combout\ = (!\C1|HPOS\(3) & (\C1|process_0~6_combout\ & ((!\C1|HPOS\(1)) # (!\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|process_0~6_combout\,
	combout => \C1|DRAWMAP~133_combout\);

-- Location: LCCOMB_X31_Y16_N0
\C1|DRAWMAP~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~46_combout\ = (\C1|HPOS\(10) & ((\C1|HPOS\(6)) # ((\C1|HPOS\(5)) # (\C1|HPOS\(7))))) # (!\C1|HPOS\(10) & (\C1|HPOS\(6) & ((\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(7),
	combout => \C1|DRAWMAP~46_combout\);

-- Location: LCCOMB_X31_Y16_N14
\C1|DRAWMAP~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~47_combout\ = (\C1|HPOS\(8) & ((\C1|process_0~1_combout\) # ((!\C1|DRAWMAP~46_combout\)))) # (!\C1|HPOS\(8) & (((\C1|DRAWMAP~133_combout\ & \C1|DRAWMAP~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~1_combout\,
	datab => \C1|DRAWMAP~133_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|DRAWMAP~46_combout\,
	combout => \C1|DRAWMAP~47_combout\);

-- Location: LCCOMB_X31_Y16_N4
\C1|DRAWMAP~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~48_combout\ = (\C1|HPOS\(10) & (\C1|LessThan44~0_combout\ & (!\C1|DRAWMAP~47_combout\ & !\C1|DRAWMAP~46_combout\))) # (!\C1|HPOS\(10) & ((\C1|DRAWMAP~47_combout\ $ (\C1|DRAWMAP~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datab => \C1|LessThan44~0_combout\,
	datac => \C1|DRAWMAP~47_combout\,
	datad => \C1|DRAWMAP~46_combout\,
	combout => \C1|DRAWMAP~48_combout\);

-- Location: LCCOMB_X30_Y16_N26
\C1|dMap~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~363_combout\ = ((\C1|LessThan36~0_combout\ & (!\C1|HPOS\(4) & !\C1|HPOS\(5)))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan36~0_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|dMap~363_combout\);

-- Location: LCCOMB_X30_Y16_N18
\C1|LessThan39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan39~0_combout\ = (\C1|HPOS\(4) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(2) & \C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan39~0_combout\);

-- Location: LCCOMB_X31_Y16_N22
\C1|dMap~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~178_combout\ = (\C1|HPOS\(7)) # ((\C1|HPOS\(6) & ((\C1|HPOS\(5)) # (\C1|LessThan39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|dMap~178_combout\);

-- Location: LCCOMB_X31_Y16_N28
\C1|dMap~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~179_combout\ = (\C1|HPOS\(8) & (!\C1|HPOS\(7) & (\C1|dMap~363_combout\))) # (!\C1|HPOS\(8) & (((\C1|dMap~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|dMap~363_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|dMap~178_combout\,
	combout => \C1|dMap~179_combout\);

-- Location: LCCOMB_X31_Y16_N10
\C1|DRAWMAP~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~49_combout\ = (\C1|HPOS\(9) & (\C1|DRAWMAP~48_combout\)) # (!\C1|HPOS\(9) & (((\C1|HPOS\(10) & \C1|dMap~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|DRAWMAP~48_combout\,
	datac => \C1|HPOS\(10),
	datad => \C1|dMap~179_combout\,
	combout => \C1|DRAWMAP~49_combout\);

-- Location: LCCOMB_X31_Y16_N8
\C1|DRAWMAP~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~50_combout\ = (\C1|dMap~388_combout\ & (\C1|DRAWMAP~45_combout\ & (\C1|DRAWMAP~44_combout\))) # (!\C1|dMap~388_combout\ & ((\C1|DRAWMAP~49_combout\) # ((\C1|DRAWMAP~45_combout\ & \C1|DRAWMAP~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~388_combout\,
	datab => \C1|DRAWMAP~45_combout\,
	datac => \C1|DRAWMAP~44_combout\,
	datad => \C1|DRAWMAP~49_combout\,
	combout => \C1|DRAWMAP~50_combout\);

-- Location: LCCOMB_X30_Y15_N2
\C1|LessThan35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan35~0_combout\ = ((\C1|HPOS\(3) & ((\C1|HPOS\(1)) # (\C1|HPOS\(2))))) # (!\C1|process_0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|process_0~6_combout\,
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan35~0_combout\);

-- Location: LCCOMB_X31_Y16_N16
\C1|dMap~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~162_combout\ = (\C1|HPOS\(7)) # ((\C1|HPOS\(6) & \C1|LessThan35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(7),
	datad => \C1|LessThan35~0_combout\,
	combout => \C1|dMap~162_combout\);

-- Location: LCCOMB_X25_Y16_N4
\C1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (!\C1|VPOS\(2) & ((!\C1|VPOS\(0)) # (!\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan8~0_combout\);

-- Location: LCCOMB_X26_Y16_N16
\C1|DRAWMAP~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~15_combout\ = ((\C1|VPOS\(5)) # ((\C1|dMap~161_combout\ & !\C1|LessThan8~0_combout\))) # (!\C1|LessThan265~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~161_combout\,
	datab => \C1|LessThan265~0_combout\,
	datac => \C1|LessThan8~0_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|DRAWMAP~15_combout\);

-- Location: LCCOMB_X27_Y16_N2
\C1|DRAWMAP~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~17_combout\ = (\C1|VPOS\(10) & ((\C1|DRAWMAP~15_combout\) # ((\C1|DRAWMAP~16_combout\ & \C1|dMap~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~16_combout\,
	datab => \C1|VPOS\(10),
	datac => \C1|dMap~162_combout\,
	datad => \C1|DRAWMAP~15_combout\,
	combout => \C1|DRAWMAP~17_combout\);

-- Location: LCCOMB_X31_Y16_N26
\C1|DRAWMAP~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~18_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS\(8) & !\C1|HPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(10),
	combout => \C1|DRAWMAP~18_combout\);

-- Location: LCCOMB_X29_Y17_N24
\C1|LessThan268~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan268~1_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(4)) # ((\C1|VPOS\(2)) # (!\C1|LessThan268~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(2),
	datad => \C1|LessThan268~0_combout\,
	combout => \C1|LessThan268~1_combout\);

-- Location: LCCOMB_X30_Y17_N18
\C1|DRAWMAP~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~24_combout\ = (\C1|DRAWMAP~23_combout\ & (\C1|LessThan35~0_combout\ & \C1|LessThan268~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~23_combout\,
	datac => \C1|LessThan35~0_combout\,
	datad => \C1|LessThan268~1_combout\,
	combout => \C1|DRAWMAP~24_combout\);

-- Location: LCCOMB_X29_Y18_N0
\C1|dMap~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~166_combout\ = (\C1|VPOS\(4) & ((\C1|VPOS\(3)) # ((!\C1|LessThan268~0_combout\ & \C1|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan268~0_combout\,
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(2),
	combout => \C1|dMap~166_combout\);

-- Location: LCCOMB_X29_Y18_N18
\C1|dMap~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~167_combout\ = (\C1|VPOS\(5) & (\C1|dMap~166_combout\ & (!\C1|VPOS\(6)))) # (!\C1|VPOS\(5) & (((\C1|VPOS\(6) & \C1|LessThan30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|dMap~166_combout\,
	datac => \C1|VPOS\(6),
	datad => \C1|LessThan30~0_combout\,
	combout => \C1|dMap~167_combout\);

-- Location: LCCOMB_X30_Y16_N10
\C1|DRAWMAP~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~21_combout\ = (\C1|dMap~167_combout\ & ((\C1|HPOS\(4) & (\C1|dMap~168_combout\)) # (!\C1|HPOS\(4) & ((\C1|HPOS\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~168_combout\,
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|dMap~167_combout\,
	combout => \C1|DRAWMAP~21_combout\);

-- Location: LCCOMB_X30_Y16_N20
\C1|DRAWMAP~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS\(6) & ((\C1|DRAWMAP~24_combout\) # (\C1|DRAWMAP~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(6),
	datac => \C1|DRAWMAP~24_combout\,
	datad => \C1|DRAWMAP~21_combout\,
	combout => \C1|DRAWMAP~25_combout\);

-- Location: LCCOMB_X26_Y16_N12
\C1|dMap~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~172_combout\ = (!\C1|VPOS\(4) & (!\C1|VPOS\(2) & (!\C1|VPOS\(3) & !\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(1),
	combout => \C1|dMap~172_combout\);

-- Location: LCCOMB_X31_Y16_N24
\C1|dMap~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~170_combout\ = (!\C1|HPOS\(7) & (\C1|HPOS\(5) & (\C1|HPOS\(6) & \C1|LessThan39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan39~0_combout\,
	combout => \C1|dMap~170_combout\);

-- Location: LCCOMB_X30_Y16_N12
\C1|dMap~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~171_combout\ = (\C1|dMap~170_combout\) # ((!\C1|HPOS\(6) & (\C1|LessThan40~2_combout\ & \C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|dMap~170_combout\,
	datac => \C1|LessThan40~2_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|dMap~171_combout\);

-- Location: LCCOMB_X30_Y16_N2
\C1|DRAWMAP~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~26_combout\ = (\C1|dMap~171_combout\ & ((\C1|VPOS\(5) & ((\C1|dMap~172_combout\))) # (!\C1|VPOS\(5) & (\C1|dMap~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~173_combout\,
	datab => \C1|dMap~172_combout\,
	datac => \C1|VPOS\(5),
	datad => \C1|dMap~171_combout\,
	combout => \C1|DRAWMAP~26_combout\);

-- Location: LCCOMB_X30_Y16_N4
\C1|DRAWMAP~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~27_combout\ = (\C1|DRAWMAP~20_combout\ & ((\C1|DRAWMAP~25_combout\) # ((!\C1|VPOS\(6) & \C1|DRAWMAP~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~20_combout\,
	datab => \C1|VPOS\(6),
	datac => \C1|DRAWMAP~25_combout\,
	datad => \C1|DRAWMAP~26_combout\,
	combout => \C1|DRAWMAP~27_combout\);

-- Location: LCCOMB_X29_Y19_N26
\C1|DRAWMAP~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~32_combout\ = (!\C1|HPOS\(6) & ((\C1|HPOS\(3)) # ((\C1|HPOS\(1)) # (\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(6),
	combout => \C1|DRAWMAP~32_combout\);

-- Location: LCCOMB_X29_Y19_N24
\C1|LessThan44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan44~1_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(1)) # (!\C1|HPOS\(2))) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan44~1_combout\);

-- Location: LCCOMB_X29_Y19_N30
\C1|DRAWMAP~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~131_combout\ = (\C1|HPOS\(6) & (!\C1|HPOS\(4) & (\C1|LessThan44~1_combout\ & !\C1|HPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(4),
	datac => \C1|LessThan44~1_combout\,
	datad => \C1|HPOS\(5),
	combout => \C1|DRAWMAP~131_combout\);

-- Location: LCCOMB_X29_Y19_N28
\C1|DRAWMAP~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~33_combout\ = (\C1|DRAWMAP~131_combout\) # ((\C1|HPOS\(5) & (\C1|DRAWMAP~32_combout\ & \C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|DRAWMAP~32_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|DRAWMAP~131_combout\,
	combout => \C1|DRAWMAP~33_combout\);

-- Location: LCCOMB_X29_Y16_N4
\C1|dMap~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~387_combout\ = (\C1|VPOS\(4) & (((\C1|VPOS\(2) & \C1|VPOS\(3))))) # (!\C1|VPOS\(4) & (((\C1|LessThan268~0_combout\ & !\C1|VPOS\(2))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|LessThan268~0_combout\,
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(3),
	combout => \C1|dMap~387_combout\);

-- Location: LCCOMB_X29_Y16_N30
\C1|dMap~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~388_combout\ = (((\C1|dMap~387_combout\) # (\C1|VPOS\(5))) # (!\C1|dMap~163_combout\)) # (!\C1|VPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|dMap~163_combout\,
	datac => \C1|dMap~387_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|dMap~388_combout\);

-- Location: LCCOMB_X30_Y16_N14
\C1|DRAWMAP~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~28_combout\ = (!\C1|dMap~165_combout\ & ((\C1|HPOS\(4) & ((!\C1|HPOS\(5)))) # (!\C1|HPOS\(4) & (\C1|dMap~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~168_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|dMap~165_combout\,
	combout => \C1|DRAWMAP~28_combout\);

-- Location: LCCOMB_X31_Y16_N30
\C1|DRAWMAP~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~31_combout\ = (\C1|HPOS\(6) & (!\C1|HPOS\(7) & ((\C1|DRAWMAP~30_combout\) # (\C1|DRAWMAP~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~30_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(7),
	datad => \C1|DRAWMAP~28_combout\,
	combout => \C1|DRAWMAP~31_combout\);

-- Location: LCCOMB_X30_Y16_N22
\C1|DRAWMAP~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~34_combout\ = (\C1|DRAWMAP~31_combout\) # ((\C1|HPOS\(7) & (\C1|DRAWMAP~33_combout\ & !\C1|dMap~388_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|DRAWMAP~33_combout\,
	datac => \C1|dMap~388_combout\,
	datad => \C1|DRAWMAP~31_combout\,
	combout => \C1|DRAWMAP~34_combout\);

-- Location: LCCOMB_X31_Y16_N12
\C1|DRAWMAP~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~35_combout\ = (\C1|DRAWMAP~18_combout\ & ((\C1|DRAWMAP~19_combout\) # ((\C1|DRAWMAP~27_combout\) # (\C1|DRAWMAP~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~19_combout\,
	datab => \C1|DRAWMAP~18_combout\,
	datac => \C1|DRAWMAP~27_combout\,
	datad => \C1|DRAWMAP~34_combout\,
	combout => \C1|DRAWMAP~35_combout\);

-- Location: LCCOMB_X31_Y16_N18
\C1|DRAWMAP~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~51_combout\ = (\C1|DRAWMAP~14_combout\ & ((\C1|DRAWMAP~50_combout\) # ((\C1|DRAWMAP~17_combout\) # (\C1|DRAWMAP~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~14_combout\,
	datab => \C1|DRAWMAP~50_combout\,
	datac => \C1|DRAWMAP~17_combout\,
	datad => \C1|DRAWMAP~35_combout\,
	combout => \C1|DRAWMAP~51_combout\);

-- Location: LCCOMB_X23_Y17_N2
\C1|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~0_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add16~1\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add16~0_combout\,
	cout => \C1|Add16~1\);

-- Location: LCCOMB_X21_Y17_N24
\C1|SQ_Y1[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~7_combout\ = !\C1|Add16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~0_combout\,
	combout => \C1|SQ_Y1[1]~7_combout\);

-- Location: LCCOMB_X23_Y17_N6
\C1|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~4_combout\ = ((\C1|SQ_Y1\(3) $ (\C1|SQ_Y1[3]~0_combout\ $ (!\C1|Add16~3\)))) # (GND)
-- \C1|Add16~5\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~3\)) # (!\C1|SQ_Y1\(3) & ((!\C1|Add16~3\) # (!\C1|SQ_Y1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~3\,
	combout => \C1|Add16~4_combout\,
	cout => \C1|Add16~5\);

-- Location: LCCOMB_X23_Y17_N22
\C1|SQ_Y1[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[3]~5_combout\ = !\C1|Add16~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~4_combout\,
	combout => \C1|SQ_Y1[3]~5_combout\);

-- Location: LCFF_X23_Y17_N23
\C1|SQ_Y1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[3]~5_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(3));

-- Location: LCCOMB_X23_Y17_N4
\C1|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~2_combout\ = (\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[3]~0_combout\ & ((\C1|Add16~1\) # (GND))) # (!\C1|SQ_Y1[3]~0_combout\ & (!\C1|Add16~1\)))) # (!\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[3]~0_combout\ & (!\C1|Add16~1\)) # (!\C1|SQ_Y1[3]~0_combout\ & (\C1|Add16~1\ & 
-- VCC))))
-- \C1|Add16~3\ = CARRY((\C1|SQ_Y1\(2) & ((\C1|SQ_Y1[3]~0_combout\) # (!\C1|Add16~1\))) # (!\C1|SQ_Y1\(2) & (\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~1\,
	combout => \C1|Add16~2_combout\,
	cout => \C1|Add16~3\);

-- Location: LCCOMB_X23_Y17_N24
\C1|SQ_Y1[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[2]~6_combout\ = !\C1|Add16~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add16~2_combout\,
	combout => \C1|SQ_Y1[2]~6_combout\);

-- Location: LCFF_X23_Y17_N25
\C1|SQ_Y1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[2]~6_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(2));

-- Location: LCCOMB_X24_Y17_N8
\C1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = \C1|SQ_Y1\(1) $ (GND)
-- \C1|Add1~1\ = CARRY(!\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X24_Y17_N10
\C1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|SQ_Y1\(2) & (!\C1|Add1~1\)) # (!\C1|SQ_Y1\(2) & (\C1|Add1~1\ & VCC))
-- \C1|Add1~3\ = CARRY((\C1|SQ_Y1\(2) & !\C1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X24_Y17_N12
\C1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~4_combout\ = (\C1|SQ_Y1\(3) & (\C1|Add1~3\ $ (GND))) # (!\C1|SQ_Y1\(3) & ((GND) # (!\C1|Add1~3\)))
-- \C1|Add1~5\ = CARRY((!\C1|Add1~3\) # (!\C1|SQ_Y1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	cin => \C1|Add1~3\,
	combout => \C1|Add1~4_combout\,
	cout => \C1|Add1~5\);

-- Location: LCCOMB_X24_Y17_N14
\C1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|SQ_Y1\(4) & (\C1|Add1~5\ & VCC)) # (!\C1|SQ_Y1\(4) & (!\C1|Add1~5\))
-- \C1|Add1~7\ = CARRY((!\C1|SQ_Y1\(4) & !\C1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X24_Y17_N16
\C1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|SQ_Y1\(5) & (\C1|Add1~7\ $ (GND))) # (!\C1|SQ_Y1\(5) & (!\C1|Add1~7\ & VCC))
-- \C1|Add1~9\ = CARRY((\C1|SQ_Y1\(5) & !\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X23_Y17_N12
\C1|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~10_combout\ = (\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[3]~0_combout\ & (!\C1|Add16~9\)) # (!\C1|SQ_Y1[3]~0_combout\ & (\C1|Add16~9\ & VCC)))) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[3]~0_combout\ & ((\C1|Add16~9\) # (GND))) # (!\C1|SQ_Y1[3]~0_combout\ & 
-- (!\C1|Add16~9\))))
-- \C1|Add16~11\ = CARRY((\C1|SQ_Y1\(6) & (\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~9\)) # (!\C1|SQ_Y1\(6) & ((\C1|SQ_Y1[3]~0_combout\) # (!\C1|Add16~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~9\,
	combout => \C1|Add16~10_combout\,
	cout => \C1|Add16~11\);

-- Location: LCCOMB_X23_Y17_N14
\C1|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~12_combout\ = ((\C1|SQ_Y1\(7) $ (\C1|SQ_Y1[3]~0_combout\ $ (!\C1|Add16~11\)))) # (GND)
-- \C1|Add16~13\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~11\)) # (!\C1|SQ_Y1\(7) & ((!\C1|Add16~11\) # (!\C1|SQ_Y1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~11\,
	combout => \C1|Add16~12_combout\,
	cout => \C1|Add16~13\);

-- Location: LCCOMB_X23_Y17_N16
\C1|Add16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~14_combout\ = (\C1|SQ_Y1[3]~0_combout\ & ((\C1|SQ_Y1\(8) & ((\C1|Add16~13\) # (GND))) # (!\C1|SQ_Y1\(8) & (!\C1|Add16~13\)))) # (!\C1|SQ_Y1[3]~0_combout\ & ((\C1|SQ_Y1\(8) & (!\C1|Add16~13\)) # (!\C1|SQ_Y1\(8) & (\C1|Add16~13\ & VCC))))
-- \C1|Add16~15\ = CARRY((\C1|SQ_Y1[3]~0_combout\ & ((\C1|SQ_Y1\(8)) # (!\C1|Add16~13\))) # (!\C1|SQ_Y1[3]~0_combout\ & (\C1|SQ_Y1\(8) & !\C1|Add16~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1[3]~0_combout\,
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add16~13\,
	combout => \C1|Add16~14_combout\,
	cout => \C1|Add16~15\);

-- Location: LCCOMB_X23_Y17_N26
\C1|SQ_Y1[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[8]~3_combout\ = !\C1|Add16~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add16~14_combout\,
	combout => \C1|SQ_Y1[8]~3_combout\);

-- Location: LCFF_X23_Y17_N27
\C1|SQ_Y1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[8]~3_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(8));

-- Location: LCCOMB_X23_Y17_N28
\C1|SQ_Y1[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[7]~4_combout\ = !\C1|Add16~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add16~12_combout\,
	combout => \C1|SQ_Y1[7]~4_combout\);

-- Location: LCFF_X23_Y17_N29
\C1|SQ_Y1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[7]~4_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(7));

-- Location: LCCOMB_X24_Y17_N18
\C1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|SQ_Y1\(6) & (!\C1|Add1~9\)) # (!\C1|SQ_Y1\(6) & ((\C1|Add1~9\) # (GND)))
-- \C1|Add1~11\ = CARRY((!\C1|Add1~9\) # (!\C1|SQ_Y1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X24_Y17_N20
\C1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|SQ_Y1\(7) & (!\C1|Add1~11\ & VCC)) # (!\C1|SQ_Y1\(7) & (\C1|Add1~11\ $ (GND)))
-- \C1|Add1~13\ = CARRY((!\C1|SQ_Y1\(7) & !\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X24_Y17_N22
\C1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = (\C1|SQ_Y1\(8) & ((\C1|Add1~13\) # (GND))) # (!\C1|SQ_Y1\(8) & (!\C1|Add1~13\))
-- \C1|Add1~15\ = CARRY((\C1|SQ_Y1\(8)) # (!\C1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\,
	cout => \C1|Add1~15\);

-- Location: LCCOMB_X24_Y17_N24
\C1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~16_combout\ = (\C1|SQ_Y1\(9) & (!\C1|Add1~15\ & VCC)) # (!\C1|SQ_Y1\(9) & (\C1|Add1~15\ $ (GND)))
-- \C1|Add1~17\ = CARRY((!\C1|SQ_Y1\(9) & !\C1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|Add1~15\,
	combout => \C1|Add1~16_combout\,
	cout => \C1|Add1~17\);

-- Location: LCCOMB_X24_Y17_N26
\C1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~18_combout\ = (\C1|SQ_Y1\(10) & (!\C1|Add1~17\)) # (!\C1|SQ_Y1\(10) & ((\C1|Add1~17\) # (GND)))
-- \C1|Add1~19\ = CARRY((!\C1|Add1~17\) # (!\C1|SQ_Y1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datad => VCC,
	cin => \C1|Add1~17\,
	combout => \C1|Add1~18_combout\,
	cout => \C1|Add1~19\);

-- Location: LCCOMB_X24_Y17_N28
\C1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add1~20_combout\ = !\C1|Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add1~19\,
	combout => \C1|Add1~20_combout\);

-- Location: LCCOMB_X24_Y17_N2
\C1|LessThan52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan52~0_combout\ = (!\C1|Add1~12_combout\ & (!\C1|Add1~16_combout\ & !\C1|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datac => \C1|Add1~16_combout\,
	datad => \C1|Add1~14_combout\,
	combout => \C1|LessThan52~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\C1|LessThan51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan51~0_combout\ = (!\C1|Add1~18_combout\ & (!\C1|Add1~20_combout\ & \C1|LessThan52~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|Add1~20_combout\,
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|LessThan51~0_combout\);

-- Location: LCCOMB_X25_Y17_N24
\C1|LessThan51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan51~1_combout\ = (\C1|LessThan51~0_combout\ & (!\C1|Add1~10_combout\ & ((\C1|LessThan60~0_combout\) # (!\C1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan60~0_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|LessThan51~0_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|LessThan51~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\C1|Add22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~0_combout\ = \C1|SQ_X1\(1) $ (GND)
-- \C1|Add22~1\ = CARRY(!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	combout => \C1|Add22~0_combout\,
	cout => \C1|Add22~1\);

-- Location: LCCOMB_X22_Y18_N30
\C1|SQ_X1[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~9_combout\ = !\C1|Add22~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add22~0_combout\,
	combout => \C1|SQ_X1[1]~9_combout\);

-- Location: LCCOMB_X24_Y15_N8
\C1|Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~1_cout\ = CARRY(\C1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cout => \C1|Add8~1_cout\);

-- Location: LCCOMB_X24_Y15_N10
\C1|Add8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~3_cout\ = CARRY((!\C1|Add1~2_combout\ & !\C1|Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|Add8~1_cout\,
	cout => \C1|Add8~3_cout\);

-- Location: LCCOMB_X24_Y15_N12
\C1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~4_combout\ = (\C1|Add1~4_combout\ & ((GND) # (!\C1|Add8~3_cout\))) # (!\C1|Add1~4_combout\ & (\C1|Add8~3_cout\ $ (GND)))
-- \C1|Add8~5\ = CARRY((\C1|Add1~4_combout\) # (!\C1|Add8~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|Add8~3_cout\,
	combout => \C1|Add8~4_combout\,
	cout => \C1|Add8~5\);

-- Location: LCCOMB_X24_Y15_N14
\C1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~6_combout\ = (\C1|Add1~6_combout\ & (\C1|Add8~5\ & VCC)) # (!\C1|Add1~6_combout\ & (!\C1|Add8~5\))
-- \C1|Add8~7\ = CARRY((!\C1|Add1~6_combout\ & !\C1|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|Add8~5\,
	combout => \C1|Add8~6_combout\,
	cout => \C1|Add8~7\);

-- Location: LCCOMB_X24_Y15_N16
\C1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~8_combout\ = (\C1|Add1~8_combout\ & ((GND) # (!\C1|Add8~7\))) # (!\C1|Add1~8_combout\ & (\C1|Add8~7\ $ (GND)))
-- \C1|Add8~9\ = CARRY((\C1|Add1~8_combout\) # (!\C1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datad => VCC,
	cin => \C1|Add8~7\,
	combout => \C1|Add8~8_combout\,
	cout => \C1|Add8~9\);

-- Location: LCCOMB_X24_Y15_N18
\C1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~10_combout\ = (\C1|Add1~10_combout\ & (\C1|Add8~9\ & VCC)) # (!\C1|Add1~10_combout\ & (!\C1|Add8~9\))
-- \C1|Add8~11\ = CARRY((!\C1|Add1~10_combout\ & !\C1|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|Add8~9\,
	combout => \C1|Add8~10_combout\,
	cout => \C1|Add8~11\);

-- Location: LCCOMB_X24_Y15_N20
\C1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~12_combout\ = (\C1|Add1~12_combout\ & ((GND) # (!\C1|Add8~11\))) # (!\C1|Add1~12_combout\ & (\C1|Add8~11\ $ (GND)))
-- \C1|Add8~13\ = CARRY((\C1|Add1~12_combout\) # (!\C1|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|Add8~11\,
	combout => \C1|Add8~12_combout\,
	cout => \C1|Add8~13\);

-- Location: LCCOMB_X24_Y15_N22
\C1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~14_combout\ = (\C1|Add1~14_combout\ & (\C1|Add8~13\ & VCC)) # (!\C1|Add1~14_combout\ & (!\C1|Add8~13\))
-- \C1|Add8~15\ = CARRY((!\C1|Add1~14_combout\ & !\C1|Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|Add8~13\,
	combout => \C1|Add8~14_combout\,
	cout => \C1|Add8~15\);

-- Location: LCCOMB_X24_Y15_N24
\C1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~16_combout\ = (\C1|Add1~16_combout\ & ((GND) # (!\C1|Add8~15\))) # (!\C1|Add1~16_combout\ & (\C1|Add8~15\ $ (GND)))
-- \C1|Add8~17\ = CARRY((\C1|Add1~16_combout\) # (!\C1|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datad => VCC,
	cin => \C1|Add8~15\,
	combout => \C1|Add8~16_combout\,
	cout => \C1|Add8~17\);

-- Location: LCCOMB_X24_Y15_N26
\C1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~18_combout\ = (\C1|Add1~18_combout\ & (\C1|Add8~17\ & VCC)) # (!\C1|Add1~18_combout\ & (!\C1|Add8~17\))
-- \C1|Add8~19\ = CARRY((!\C1|Add1~18_combout\ & !\C1|Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~18_combout\,
	datad => VCC,
	cin => \C1|Add8~17\,
	combout => \C1|Add8~18_combout\,
	cout => \C1|Add8~19\);

-- Location: LCCOMB_X24_Y15_N28
\C1|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~20_combout\ = (\C1|Add1~20_combout\ & ((GND) # (!\C1|Add8~19\))) # (!\C1|Add1~20_combout\ & (\C1|Add8~19\ $ (GND)))
-- \C1|Add8~21\ = CARRY((\C1|Add1~20_combout\) # (!\C1|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add8~19\,
	combout => \C1|Add8~20_combout\,
	cout => \C1|Add8~21\);

-- Location: LCCOMB_X23_Y18_N18
\C1|Add22~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~14_combout\ = (\C1|SQ_X1\(8) & ((\C1|process_0~23_combout\ & ((\C1|Add22~13\) # (GND))) # (!\C1|process_0~23_combout\ & (!\C1|Add22~13\)))) # (!\C1|SQ_X1\(8) & ((\C1|process_0~23_combout\ & (!\C1|Add22~13\)) # (!\C1|process_0~23_combout\ & 
-- (\C1|Add22~13\ & VCC))))
-- \C1|Add22~15\ = CARRY((\C1|SQ_X1\(8) & ((\C1|process_0~23_combout\) # (!\C1|Add22~13\))) # (!\C1|SQ_X1\(8) & (\C1|process_0~23_combout\ & !\C1|Add22~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~13\,
	combout => \C1|Add22~14_combout\,
	cout => \C1|Add22~15\);

-- Location: LCCOMB_X23_Y18_N28
\C1|SQ_X1[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~5_combout\ = !\C1|Add22~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add22~14_combout\,
	combout => \C1|SQ_X1[8]~5_combout\);

-- Location: LCFF_X23_Y18_N29
\C1|SQ_X1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[8]~5_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(8));

-- Location: LCCOMB_X23_Y18_N14
\C1|Add22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~10_combout\ = (\C1|SQ_X1\(6) & ((\C1|process_0~23_combout\ & (!\C1|Add22~9\)) # (!\C1|process_0~23_combout\ & (\C1|Add22~9\ & VCC)))) # (!\C1|SQ_X1\(6) & ((\C1|process_0~23_combout\ & ((\C1|Add22~9\) # (GND))) # (!\C1|process_0~23_combout\ & 
-- (!\C1|Add22~9\))))
-- \C1|Add22~11\ = CARRY((\C1|SQ_X1\(6) & (\C1|process_0~23_combout\ & !\C1|Add22~9\)) # (!\C1|SQ_X1\(6) & ((\C1|process_0~23_combout\) # (!\C1|Add22~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~9\,
	combout => \C1|Add22~10_combout\,
	cout => \C1|Add22~11\);

-- Location: LCFF_X23_Y18_N15
\C1|SQ_X1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add22~10_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(6));

-- Location: LCCOMB_X23_Y18_N12
\C1|Add22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~8_combout\ = ((\C1|SQ_X1\(5) $ (\C1|process_0~23_combout\ $ (!\C1|Add22~7\)))) # (GND)
-- \C1|Add22~9\ = CARRY((\C1|SQ_X1\(5) & (!\C1|process_0~23_combout\ & !\C1|Add22~7\)) # (!\C1|SQ_X1\(5) & ((!\C1|Add22~7\) # (!\C1|process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~7\,
	combout => \C1|Add22~8_combout\,
	cout => \C1|Add22~9\);

-- Location: LCCOMB_X23_Y18_N24
\C1|SQ_X1[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~7_combout\ = !\C1|Add22~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add22~8_combout\,
	combout => \C1|SQ_X1[5]~7_combout\);

-- Location: LCFF_X23_Y18_N25
\C1|SQ_X1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[5]~7_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(5));

-- Location: LCCOMB_X23_Y18_N10
\C1|Add22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~6_combout\ = (\C1|SQ_X1\(4) & ((\C1|process_0~23_combout\ & ((\C1|Add22~5\) # (GND))) # (!\C1|process_0~23_combout\ & (!\C1|Add22~5\)))) # (!\C1|SQ_X1\(4) & ((\C1|process_0~23_combout\ & (!\C1|Add22~5\)) # (!\C1|process_0~23_combout\ & 
-- (\C1|Add22~5\ & VCC))))
-- \C1|Add22~7\ = CARRY((\C1|SQ_X1\(4) & ((\C1|process_0~23_combout\) # (!\C1|Add22~5\))) # (!\C1|SQ_X1\(4) & (\C1|process_0~23_combout\ & !\C1|Add22~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~5\,
	combout => \C1|Add22~6_combout\,
	cout => \C1|Add22~7\);

-- Location: LCCOMB_X22_Y18_N8
\C1|SQ_X1[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[4]~8_combout\ = !\C1|Add22~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add22~6_combout\,
	combout => \C1|SQ_X1[4]~8_combout\);

-- Location: LCFF_X22_Y18_N9
\C1|SQ_X1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[4]~8_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(4));

-- Location: LCCOMB_X23_Y18_N8
\C1|Add22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~4_combout\ = ((\C1|SQ_X1\(3) $ (\C1|process_0~23_combout\ $ (\C1|Add22~3\)))) # (GND)
-- \C1|Add22~5\ = CARRY((\C1|SQ_X1\(3) & ((!\C1|Add22~3\) # (!\C1|process_0~23_combout\))) # (!\C1|SQ_X1\(3) & (!\C1|process_0~23_combout\ & !\C1|Add22~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~3\,
	combout => \C1|Add22~4_combout\,
	cout => \C1|Add22~5\);

-- Location: LCFF_X23_Y18_N9
\C1|SQ_X1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add22~4_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(3));

-- Location: LCCOMB_X22_Y18_N10
\C1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = \C1|SQ_X1\(2) $ (VCC)
-- \C1|Add0~1\ = CARRY(\C1|SQ_X1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X22_Y18_N12
\C1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|SQ_X1\(3) & (!\C1|Add0~1\)) # (!\C1|SQ_X1\(3) & ((\C1|Add0~1\) # (GND)))
-- \C1|Add0~3\ = CARRY((!\C1|Add0~1\) # (!\C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X22_Y18_N14
\C1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|SQ_X1\(4) & (\C1|Add0~3\ $ (GND))) # (!\C1|SQ_X1\(4) & ((GND) # (!\C1|Add0~3\)))
-- \C1|Add0~5\ = CARRY((!\C1|Add0~3\) # (!\C1|SQ_X1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X22_Y18_N18
\C1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(6) & (\C1|Add0~7\ $ (GND))) # (!\C1|SQ_X1\(6) & (!\C1|Add0~7\ & VCC))
-- \C1|Add0~9\ = CARRY((\C1|SQ_X1\(6) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X22_Y18_N20
\C1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|SQ_X1\(7) & ((\C1|Add0~9\) # (GND))) # (!\C1|SQ_X1\(7) & (!\C1|Add0~9\))
-- \C1|Add0~11\ = CARRY((\C1|SQ_X1\(7)) # (!\C1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X22_Y18_N22
\C1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|SQ_X1\(8) & (!\C1|Add0~11\ & VCC)) # (!\C1|SQ_X1\(8) & (\C1|Add0~11\ $ (GND)))
-- \C1|Add0~13\ = CARRY((!\C1|SQ_X1\(8) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X21_Y18_N0
\C1|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~0_combout\ = \C1|SQ_X1\(1) $ (GND)
-- \C1|Add5~1\ = CARRY(!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	combout => \C1|Add5~0_combout\,
	cout => \C1|Add5~1\);

-- Location: LCCOMB_X21_Y18_N2
\C1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~2_combout\ = (\C1|Add0~0_combout\ & (!\C1|Add5~1\)) # (!\C1|Add0~0_combout\ & ((\C1|Add5~1\) # (GND)))
-- \C1|Add5~3\ = CARRY((!\C1|Add5~1\) # (!\C1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|Add5~1\,
	combout => \C1|Add5~2_combout\,
	cout => \C1|Add5~3\);

-- Location: LCCOMB_X21_Y18_N4
\C1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~4_combout\ = (\C1|Add0~2_combout\ & (\C1|Add5~3\ $ (GND))) # (!\C1|Add0~2_combout\ & (!\C1|Add5~3\ & VCC))
-- \C1|Add5~5\ = CARRY((\C1|Add0~2_combout\ & !\C1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|Add5~3\,
	combout => \C1|Add5~4_combout\,
	cout => \C1|Add5~5\);

-- Location: LCCOMB_X21_Y18_N6
\C1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~6_combout\ = (\C1|Add0~4_combout\ & (!\C1|Add5~5\)) # (!\C1|Add0~4_combout\ & ((\C1|Add5~5\) # (GND)))
-- \C1|Add5~7\ = CARRY((!\C1|Add5~5\) # (!\C1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|Add5~5\,
	combout => \C1|Add5~6_combout\,
	cout => \C1|Add5~7\);

-- Location: LCCOMB_X21_Y18_N8
\C1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~8_combout\ = (\C1|Add0~6_combout\ & (\C1|Add5~7\ $ (GND))) # (!\C1|Add0~6_combout\ & (!\C1|Add5~7\ & VCC))
-- \C1|Add5~9\ = CARRY((\C1|Add0~6_combout\ & !\C1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|Add5~7\,
	combout => \C1|Add5~8_combout\,
	cout => \C1|Add5~9\);

-- Location: LCCOMB_X21_Y18_N10
\C1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~10_combout\ = (\C1|Add0~8_combout\ & (!\C1|Add5~9\)) # (!\C1|Add0~8_combout\ & ((\C1|Add5~9\) # (GND)))
-- \C1|Add5~11\ = CARRY((!\C1|Add5~9\) # (!\C1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|Add5~9\,
	combout => \C1|Add5~10_combout\,
	cout => \C1|Add5~11\);

-- Location: LCCOMB_X21_Y18_N12
\C1|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~12_combout\ = (\C1|Add0~10_combout\ & (\C1|Add5~11\ $ (GND))) # (!\C1|Add0~10_combout\ & (!\C1|Add5~11\ & VCC))
-- \C1|Add5~13\ = CARRY((\C1|Add0~10_combout\ & !\C1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|Add5~11\,
	combout => \C1|Add5~12_combout\,
	cout => \C1|Add5~13\);

-- Location: LCCOMB_X21_Y18_N14
\C1|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~14_combout\ = (\C1|Add0~12_combout\ & (!\C1|Add5~13\)) # (!\C1|Add0~12_combout\ & ((\C1|Add5~13\) # (GND)))
-- \C1|Add5~15\ = CARRY((!\C1|Add5~13\) # (!\C1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|Add5~13\,
	combout => \C1|Add5~14_combout\,
	cout => \C1|Add5~15\);

-- Location: LCCOMB_X21_Y18_N16
\C1|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~16_combout\ = (\C1|Add0~14_combout\ & (\C1|Add5~15\ $ (GND))) # (!\C1|Add0~14_combout\ & (!\C1|Add5~15\ & VCC))
-- \C1|Add5~17\ = CARRY((\C1|Add0~14_combout\ & !\C1|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|Add5~15\,
	combout => \C1|Add5~16_combout\,
	cout => \C1|Add5~17\);

-- Location: LCCOMB_X21_Y16_N8
\C1|LessThan79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~0_combout\ = (((!\C1|Add5~0_combout\ & !\C1|Add5~2_combout\)) # (!\C1|Add5~6_combout\)) # (!\C1|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~0_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan79~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\C1|LessThan79~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~1_combout\ = ((!\C1|Add5~8_combout\ & (!\C1|Add5~10_combout\ & \C1|LessThan79~0_combout\))) # (!\C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~8_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan79~0_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|LessThan79~1_combout\);

-- Location: LCCOMB_X22_Y18_N24
\C1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|SQ_X1\(9) & (!\C1|Add0~13\)) # (!\C1|SQ_X1\(9) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|SQ_X1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCCOMB_X22_Y18_N28
\C1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~18_combout\ = \C1|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~17\,
	combout => \C1|Add0~18_combout\);

-- Location: LCCOMB_X21_Y18_N18
\C1|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~18_combout\ = (\C1|Add0~16_combout\ & (!\C1|Add5~17\)) # (!\C1|Add0~16_combout\ & ((\C1|Add5~17\) # (GND)))
-- \C1|Add5~19\ = CARRY((!\C1|Add5~17\) # (!\C1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datad => VCC,
	cin => \C1|Add5~17\,
	combout => \C1|Add5~18_combout\,
	cout => \C1|Add5~19\);

-- Location: LCCOMB_X21_Y18_N20
\C1|Add5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add5~20_combout\ = \C1|Add5~19\ $ (!\C1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add0~18_combout\,
	cin => \C1|Add5~19\,
	combout => \C1|Add5~20_combout\);

-- Location: LCCOMB_X21_Y18_N22
\C1|LessThan79~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~4_combout\ = (!\C1|Add5~20_combout\ & !\C1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan79~4_combout\);

-- Location: LCCOMB_X21_Y16_N18
\C1|LessThan70~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan70~0_combout\ = (!\C1|Add5~16_combout\ & (\C1|LessThan79~4_combout\ & ((\C1|LessThan79~1_combout\) # (!\C1|Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan79~1_combout\,
	datad => \C1|LessThan79~4_combout\,
	combout => \C1|LessThan70~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\C1|SQ_X1[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~3_combout\ = (\C1|Add8~22_combout\ & (\C1|process_0~23_combout\ & !\C1|LessThan70~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datac => \C1|process_0~23_combout\,
	datad => \C1|LessThan70~0_combout\,
	combout => \C1|SQ_X1[1]~3_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X23_Y17_N18
\C1|Add16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~16_combout\ = ((\C1|SQ_Y1\(9) $ (\C1|SQ_Y1[3]~0_combout\ $ (!\C1|Add16~15\)))) # (GND)
-- \C1|Add16~17\ = CARRY((\C1|SQ_Y1\(9) & (!\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~15\)) # (!\C1|SQ_Y1\(9) & ((!\C1|Add16~15\) # (!\C1|SQ_Y1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~15\,
	combout => \C1|Add16~16_combout\,
	cout => \C1|Add16~17\);

-- Location: LCCOMB_X23_Y17_N0
\C1|SQ_Y1[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~2_combout\ = !\C1|Add16~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add16~16_combout\,
	combout => \C1|SQ_Y1[9]~2_combout\);

-- Location: LCFF_X23_Y17_N1
\C1|SQ_Y1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_Y1[9]~2_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(9));

-- Location: LCCOMB_X23_Y19_N24
\C1|LessThan69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan69~0_combout\ = (\C1|SQ_Y1\(7) & (!\C1|SQ_Y1\(6) & (\C1|SQ_Y1\(8) & \C1|SQ_Y1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(6),
	datac => \C1|SQ_Y1\(8),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|LessThan69~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\C1|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~6_combout\ = (\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[3]~0_combout\ & (!\C1|Add16~5\)) # (!\C1|SQ_Y1[3]~0_combout\ & (\C1|Add16~5\ & VCC)))) # (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[3]~0_combout\ & ((\C1|Add16~5\) # (GND))) # (!\C1|SQ_Y1[3]~0_combout\ & 
-- (!\C1|Add16~5\))))
-- \C1|Add16~7\ = CARRY((\C1|SQ_Y1\(4) & (\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~5\)) # (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1[3]~0_combout\) # (!\C1|Add16~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~5\,
	combout => \C1|Add16~6_combout\,
	cout => \C1|Add16~7\);

-- Location: LCFF_X23_Y17_N9
\C1|SQ_Y1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add16~6_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(4));

-- Location: LCCOMB_X23_Y19_N6
\C1|LessThan91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan91~0_combout\ = (!\C1|SQ_Y1\(4) & ((\C1|SQ_Y1\(3)) # ((\C1|SQ_Y1\(2) & \C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|LessThan91~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\C1|LessThan69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan69~1_combout\ = (!\C1|SQ_Y1\(10) & (\C1|LessThan69~0_combout\ & ((\C1|LessThan91~0_combout\) # (!\C1|SQ_Y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1\(10),
	datac => \C1|LessThan69~0_combout\,
	datad => \C1|LessThan91~0_combout\,
	combout => \C1|LessThan69~1_combout\);

-- Location: LCCOMB_X20_Y17_N6
\C1|LessThan89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan89~0_combout\ = ((!\C1|Add5~6_combout\ & (!\C1|Add5~4_combout\ & !\C1|Add5~8_combout\))) # (!\C1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan89~0_combout\);

-- Location: LCCOMB_X20_Y17_N4
\C1|LessThan89~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan89~1_combout\ = (!\C1|Add5~14_combout\ & (\C1|LessThan79~4_combout\ & ((\C1|LessThan89~0_combout\) # (!\C1|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|LessThan79~4_combout\,
	datad => \C1|LessThan89~0_combout\,
	combout => \C1|LessThan89~1_combout\);

-- Location: LCCOMB_X21_Y17_N14
\C1|LessThan104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan104~0_combout\ = (\C1|Add5~2_combout\) # ((\C1|Add5~0_combout\) # (\C1|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datac => \C1|Add5~0_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan104~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\C1|LessThan88~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan88~2_combout\ = (\C1|Add5~10_combout\) # ((\C1|Add5~6_combout\ & (\C1|Add5~8_combout\ & \C1|LessThan104~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|LessThan104~0_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan88~2_combout\);

-- Location: LCCOMB_X21_Y17_N28
\C1|LessThan84~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan84~0_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~18_combout\ & ((!\C1|Add5~14_combout\) # (!\C1|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan84~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\C1|LessThan88~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan88~3_combout\ = ((\C1|Add5~16_combout\ & (\C1|Add5~12_combout\ & \C1|LessThan88~2_combout\))) # (!\C1|LessThan84~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|LessThan88~2_combout\,
	datad => \C1|LessThan84~0_combout\,
	combout => \C1|LessThan88~3_combout\);

-- Location: LCCOMB_X20_Y17_N10
\C1|dMap~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~211_combout\ = (\C1|LessThan88~3_combout\ & ((\C1|LessThan89~1_combout\) # ((\C1|LessThan79~4_combout\ & !\C1|Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan79~4_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan89~1_combout\,
	datad => \C1|LessThan88~3_combout\,
	combout => \C1|dMap~211_combout\);

-- Location: LCCOMB_X20_Y17_N22
\C1|LessThan82~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~0_combout\ = (\C1|Add5~14_combout\ & \C1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan82~0_combout\);

-- Location: LCCOMB_X20_Y18_N16
\C1|LessThan82~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~2_combout\ = (\C1|Add5~20_combout\) # ((\C1|Add5~18_combout\ & ((\C1|Add5~16_combout\) # (\C1|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~20_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan82~2_combout\);

-- Location: LCCOMB_X21_Y17_N12
\C1|LessThan100~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~0_combout\ = (\C1|Add5~6_combout\ & ((\C1|Add5~4_combout\) # ((\C1|Add5~2_combout\ & \C1|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan100~0_combout\);

-- Location: LCCOMB_X20_Y17_N28
\C1|LessThan82~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan82~1_combout\ = (\C1|Add5~10_combout\ & (\C1|Add5~18_combout\ & ((\C1|Add5~8_combout\) # (\C1|LessThan100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|LessThan100~0_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan82~1_combout\);

-- Location: LCCOMB_X19_Y17_N26
\C1|DRAWMAP~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~66_combout\ = (!\C1|dMap~185_combout\ & ((\C1|LessThan82~0_combout\) # ((\C1|LessThan82~2_combout\) # (\C1|LessThan82~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~185_combout\,
	datab => \C1|LessThan82~0_combout\,
	datac => \C1|LessThan82~2_combout\,
	datad => \C1|LessThan82~1_combout\,
	combout => \C1|DRAWMAP~66_combout\);

-- Location: LCCOMB_X21_Y16_N28
\C1|LessThan79~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~2_combout\ = (\C1|Add5~20_combout\) # ((\C1|Add5~16_combout\ & \C1|Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan79~2_combout\);

-- Location: LCCOMB_X20_Y16_N10
\C1|LessThan79~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~3_combout\ = ((!\C1|Add5~20_combout\ & (!\C1|Add5~14_combout\ & \C1|LessThan79~1_combout\))) # (!\C1|LessThan79~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|LessThan79~1_combout\,
	datad => \C1|LessThan79~2_combout\,
	combout => \C1|LessThan79~3_combout\);

-- Location: LCCOMB_X23_Y17_N10
\C1|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~8_combout\ = ((\C1|SQ_Y1\(5) $ (\C1|SQ_Y1[3]~0_combout\ $ (\C1|Add16~7\)))) # (GND)
-- \C1|Add16~9\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|Add16~7\) # (!\C1|SQ_Y1[3]~0_combout\))) # (!\C1|SQ_Y1\(5) & (!\C1|SQ_Y1[3]~0_combout\ & !\C1|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1[3]~0_combout\,
	datad => VCC,
	cin => \C1|Add16~7\,
	combout => \C1|Add16~8_combout\,
	cout => \C1|Add16~9\);

-- Location: LCFF_X23_Y17_N11
\C1|SQ_Y1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add16~8_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(5));

-- Location: LCCOMB_X24_Y19_N20
\C1|dMap~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~199_combout\ = (!\C1|SQ_Y1\(4) & (\C1|SQ_Y1\(3) & ((\C1|SQ_Y1\(2)) # (\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(3),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~199_combout\);

-- Location: LCCOMB_X24_Y19_N26
\C1|dMap~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~198_combout\ = (\C1|SQ_Y1\(8) & (\C1|SQ_Y1\(7) & (\C1|SQ_Y1\(10) & \C1|SQ_Y1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|SQ_Y1\(7),
	datac => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|dMap~198_combout\);

-- Location: LCCOMB_X24_Y19_N10
\C1|dMap~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~200_combout\ = (\C1|dMap~198_combout\ & (((!\C1|SQ_Y1\(5) & \C1|dMap~199_combout\)) # (!\C1|SQ_Y1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|dMap~199_combout\,
	datad => \C1|dMap~198_combout\,
	combout => \C1|dMap~200_combout\);

-- Location: LCCOMB_X20_Y15_N0
\C1|LessThan110~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan110~0_combout\ = (\C1|Add5~4_combout\ & ((\C1|Add5~0_combout\) # (\C1|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan110~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\C1|LessThan93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan93~0_combout\ = (!\C1|Add5~14_combout\ & !\C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~14_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|LessThan93~0_combout\);

-- Location: LCCOMB_X21_Y16_N30
\C1|LessThan78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~0_combout\ = ((\C1|Add5~10_combout\ & ((\C1|LessThan110~0_combout\) # (!\C1|LessThan83~2_combout\)))) # (!\C1|LessThan93~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan83~2_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|LessThan110~0_combout\,
	datad => \C1|LessThan93~0_combout\,
	combout => \C1|LessThan78~0_combout\);

-- Location: LCCOMB_X20_Y16_N2
\C1|DRAWMAP~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~65_combout\ = (\C1|dMap~200_combout\ & ((\C1|Add5~20_combout\) # ((\C1|LessThan78~1_combout\ & \C1|LessThan78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|dMap~200_combout\,
	datac => \C1|LessThan78~1_combout\,
	datad => \C1|LessThan78~0_combout\,
	combout => \C1|DRAWMAP~65_combout\);

-- Location: LCCOMB_X19_Y17_N4
\C1|DRAWMAP~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~67_combout\ = (\C1|dMap~209_combout\ & ((\C1|DRAWMAP~66_combout\) # ((\C1|LessThan79~3_combout\ & \C1|DRAWMAP~65_combout\)))) # (!\C1|dMap~209_combout\ & (((\C1|LessThan79~3_combout\ & \C1|DRAWMAP~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~209_combout\,
	datab => \C1|DRAWMAP~66_combout\,
	datac => \C1|LessThan79~3_combout\,
	datad => \C1|DRAWMAP~65_combout\,
	combout => \C1|DRAWMAP~67_combout\);

-- Location: LCCOMB_X20_Y18_N20
\C1|dMap~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~383_combout\ = (\C1|Add5~4_combout\ & (!\C1|Add5~8_combout\ & ((\C1|Add5~0_combout\) # (\C1|Add5~6_combout\)))) # (!\C1|Add5~4_combout\ & ((\C1|Add5~8_combout\ $ (\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|dMap~383_combout\);

-- Location: LCCOMB_X20_Y18_N2
\C1|dMap~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~384_combout\ = (\C1|dMap~383_combout\ & ((\C1|Add5~6_combout\) # (\C1|Add5~4_combout\ $ (!\C1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~2_combout\,
	datac => \C1|dMap~383_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|dMap~384_combout\);

-- Location: LCCOMB_X20_Y18_N14
\C1|dMap~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~128_combout\ = (\C1|Add5~10_combout\ & (!\C1|Add5~14_combout\ & (!\C1|Add5~12_combout\ & \C1|dMap~384_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|dMap~384_combout\,
	combout => \C1|dMap~128_combout\);

-- Location: LCCOMB_X20_Y18_N28
\C1|dMap~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~375_combout\ = (\C1|Add5~16_combout\ & (!\C1|Add5~18_combout\ & (\C1|dMap~128_combout\ & !\C1|Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~18_combout\,
	datac => \C1|dMap~128_combout\,
	datad => \C1|Add5~20_combout\,
	combout => \C1|dMap~375_combout\);

-- Location: LCCOMB_X20_Y15_N18
\C1|LessThan111~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan111~6_combout\ = ((!\C1|Add5~4_combout\) # (!\C1|Add5~2_combout\)) # (!\C1|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan111~6_combout\);

-- Location: LCCOMB_X20_Y15_N16
\C1|LessThan111~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan111~3_combout\ = ((!\C1|Add5~6_combout\ & (!\C1|Add5~8_combout\ & \C1|LessThan111~6_combout\))) # (!\C1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|LessThan111~6_combout\,
	combout => \C1|LessThan111~3_combout\);

-- Location: LCCOMB_X20_Y15_N14
\C1|LessThan111~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan111~19_combout\ = ((!\C1|Add5~12_combout\ & (!\C1|Add5~14_combout\ & \C1|LessThan111~3_combout\))) # (!\C1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|LessThan111~3_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan111~19_combout\);

-- Location: LCCOMB_X20_Y15_N24
\C1|LessThan79~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan79~5_combout\ = (!\C1|Add5~8_combout\ & !\C1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan79~5_combout\);

-- Location: LCCOMB_X20_Y15_N10
\C1|LessThan80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~0_combout\ = (\C1|Add5~14_combout\ & \C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~14_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|LessThan80~0_combout\);

-- Location: LCCOMB_X20_Y15_N26
\C1|LessThan110~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan110~1_combout\ = (\C1|LessThan80~0_combout\ & (((\C1|Add5~6_combout\ & \C1|LessThan110~0_combout\)) # (!\C1|LessThan79~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|LessThan110~0_combout\,
	datac => \C1|LessThan79~5_combout\,
	datad => \C1|LessThan80~0_combout\,
	combout => \C1|LessThan110~1_combout\);

-- Location: LCCOMB_X20_Y15_N28
\C1|dMap~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~210_combout\ = (\C1|LessThan79~4_combout\ & (\C1|LessThan111~19_combout\ & ((\C1|Add5~16_combout\) # (\C1|LessThan110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan79~4_combout\,
	datac => \C1|LessThan111~19_combout\,
	datad => \C1|LessThan110~1_combout\,
	combout => \C1|dMap~210_combout\);

-- Location: LCCOMB_X19_Y17_N10
\C1|DRAWMAP~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~68_combout\ = (!\C1|dMap~188_combout\ & ((\C1|dMap~375_combout\) # (\C1|dMap~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~188_combout\,
	datac => \C1|dMap~375_combout\,
	datad => \C1|dMap~210_combout\,
	combout => \C1|DRAWMAP~68_combout\);

-- Location: LCCOMB_X19_Y17_N20
\C1|DRAWMAP~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~69_combout\ = (\C1|DRAWMAP~67_combout\) # ((\C1|DRAWMAP~68_combout\) # ((!\C1|dMap~185_combout\ & \C1|dMap~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~185_combout\,
	datab => \C1|dMap~211_combout\,
	datac => \C1|DRAWMAP~67_combout\,
	datad => \C1|DRAWMAP~68_combout\,
	combout => \C1|DRAWMAP~69_combout\);

-- Location: LCCOMB_X21_Y19_N0
\C1|LessThan87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan87~0_combout\ = (!\C1|SQ_Y1\(5) & ((\C1|SQ_Y1\(3)) # ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(5),
	combout => \C1|LessThan87~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\C1|dMap~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~193_combout\ = ((\C1|SQ_Y1\(10)) # ((!\C1|SQ_Y1\(9)) # (!\C1|SQ_Y1\(8)))) # (!\C1|SQ_Y1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(10),
	datac => \C1|SQ_Y1\(8),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|dMap~193_combout\);

-- Location: LCCOMB_X21_Y19_N20
\C1|dMap~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~181_combout\ = (\C1|SQ_Y1\(4) & (((!\C1|SQ_Y1\(2) & !\C1|SQ_Y1\(1))) # (!\C1|SQ_Y1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~181_combout\);

-- Location: LCCOMB_X21_Y19_N12
\C1|dMap~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~192_combout\ = (!\C1|SQ_Y1\(6) & ((!\C1|SQ_Y1\(5)) # (!\C1|dMap~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datac => \C1|dMap~181_combout\,
	datad => \C1|SQ_Y1\(5),
	combout => \C1|dMap~192_combout\);

-- Location: LCCOMB_X21_Y19_N22
\C1|dMap~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~194_combout\ = (\C1|dMap~193_combout\) # ((\C1|dMap~192_combout\) # ((\C1|SQ_Y1\(6) & !\C1|LessThan87~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|LessThan87~0_combout\,
	datac => \C1|dMap~193_combout\,
	datad => \C1|dMap~192_combout\,
	combout => \C1|dMap~194_combout\);

-- Location: LCCOMB_X20_Y18_N4
\C1|dMap~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~76_combout\ = (\C1|Add5~0_combout\) # (\C1|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~0_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|dMap~76_combout\);

-- Location: LCCOMB_X20_Y18_N10
\C1|dMap~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~73_combout\ = (\C1|Add5~16_combout\ & ((\C1|Add5~6_combout\) # ((\C1|Add5~4_combout\ & \C1|dMap~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|dMap~76_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|dMap~73_combout\);

-- Location: LCCOMB_X20_Y18_N12
\C1|dMap~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~70_combout\ = (!\C1|Add5~10_combout\ & (\C1|Add5~12_combout\ & (!\C1|Add5~14_combout\ & \C1|dMap~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|dMap~73_combout\,
	combout => \C1|dMap~70_combout\);

-- Location: LCCOMB_X20_Y18_N26
\C1|dMap~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~372_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~18_combout\ & (!\C1|Add5~8_combout\ & \C1|dMap~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~18_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|dMap~70_combout\,
	combout => \C1|dMap~372_combout\);

-- Location: LCCOMB_X21_Y17_N18
\C1|LessThan74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan74~0_combout\ = (\C1|Add5~8_combout\ & ((\C1|Add5~2_combout\) # ((\C1|Add5~4_combout\) # (\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan74~0_combout\);

-- Location: LCCOMB_X20_Y17_N24
\C1|dMap~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~212_combout\ = (\C1|Add5~14_combout\ & (!\C1|Add5~16_combout\ & (\C1|LessThan79~4_combout\ & \C1|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan79~4_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|dMap~212_combout\);

-- Location: LCCOMB_X21_Y18_N24
\C1|LessThan101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan101~0_combout\ = (!\C1|Add5~8_combout\ & (!\C1|Add5~6_combout\ & ((!\C1|Add5~4_combout\) # (!\C1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|LessThan101~0_combout\);

-- Location: LCCOMB_X20_Y17_N18
\C1|dMap~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~213_combout\ = (\C1|dMap~212_combout\ & ((\C1|Add5~10_combout\ & ((\C1|LessThan101~0_combout\))) # (!\C1|Add5~10_combout\ & (\C1|LessThan74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|LessThan74~0_combout\,
	datac => \C1|dMap~212_combout\,
	datad => \C1|LessThan101~0_combout\,
	combout => \C1|dMap~213_combout\);

-- Location: LCCOMB_X20_Y17_N8
\C1|DRAWMAP~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~70_combout\ = (\C1|dMap~183_combout\ & (!\C1|dMap~194_combout\ & ((\C1|dMap~213_combout\)))) # (!\C1|dMap~183_combout\ & ((\C1|dMap~372_combout\) # ((!\C1|dMap~194_combout\ & \C1|dMap~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~183_combout\,
	datab => \C1|dMap~194_combout\,
	datac => \C1|dMap~372_combout\,
	datad => \C1|dMap~213_combout\,
	combout => \C1|DRAWMAP~70_combout\);

-- Location: LCCOMB_X21_Y19_N10
\C1|dMap~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~184_combout\ = ((\C1|SQ_Y1\(3) & !\C1|SQ_Y1\(4))) # (!\C1|SQ_Y1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(4),
	datac => \C1|SQ_Y1\(6),
	combout => \C1|dMap~184_combout\);

-- Location: LCCOMB_X20_Y19_N24
\C1|dMap~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~185_combout\ = ((\C1|dMap~184_combout\) # ((!\C1|LessThan87~0_combout\ & \C1|SQ_Y1\(6)))) # (!\C1|dMap~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~182_combout\,
	datab => \C1|dMap~184_combout\,
	datac => \C1|LessThan87~0_combout\,
	datad => \C1|SQ_Y1\(6),
	combout => \C1|dMap~185_combout\);

-- Location: LCCOMB_X21_Y17_N22
\C1|LessThan100~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~1_combout\ = (\C1|Add5~16_combout\ & \C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~12_combout\,
	combout => \C1|LessThan100~1_combout\);

-- Location: LCCOMB_X21_Y17_N20
\C1|dMap~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~379_combout\ = (!\C1|Add5~14_combout\ & (((!\C1|Add5~10_combout\ & \C1|LessThan101~0_combout\)) # (!\C1|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|LessThan101~0_combout\,
	combout => \C1|dMap~379_combout\);

-- Location: LCCOMB_X21_Y17_N30
\C1|dMap~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~380_combout\ = (\C1|LessThan79~4_combout\ & ((\C1|dMap~379_combout\) # (!\C1|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datac => \C1|dMap~379_combout\,
	datad => \C1|LessThan79~4_combout\,
	combout => \C1|dMap~380_combout\);

-- Location: LCCOMB_X21_Y17_N6
\C1|dMap~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~216_combout\ = (\C1|dMap~380_combout\ & ((\C1|LessThan100~2_combout\) # ((\C1|LessThan100~1_combout\) # (!\C1|LessThan84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan100~2_combout\,
	datab => \C1|LessThan100~1_combout\,
	datac => \C1|LessThan84~0_combout\,
	datad => \C1|dMap~380_combout\,
	combout => \C1|dMap~216_combout\);

-- Location: LCCOMB_X20_Y18_N18
\C1|LessThan85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan85~0_combout\ = ((!\C1|Add5~2_combout\ & (!\C1|Add5~0_combout\ & !\C1|Add5~4_combout\))) # (!\C1|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|Add5~4_combout\,
	combout => \C1|LessThan85~0_combout\);

-- Location: LCCOMB_X20_Y17_N26
\C1|LessThan85~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan85~1_combout\ = ((!\C1|Add5~8_combout\) # (!\C1|Add5~6_combout\)) # (!\C1|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan85~1_combout\);

-- Location: LCCOMB_X20_Y17_N20
\C1|LessThan85~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan85~2_combout\ = (((\C1|LessThan85~0_combout\) # (\C1|LessThan85~1_combout\)) # (!\C1|Add5~16_combout\)) # (!\C1|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~16_combout\,
	datac => \C1|LessThan85~0_combout\,
	datad => \C1|LessThan85~1_combout\,
	combout => \C1|LessThan85~2_combout\);

-- Location: LCCOMB_X21_Y17_N10
\C1|LessThan100~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan100~3_combout\ = (\C1|Add5~0_combout\ & \C1|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~0_combout\,
	datad => \C1|Add5~2_combout\,
	combout => \C1|LessThan100~3_combout\);

-- Location: LCCOMB_X20_Y17_N14
\C1|LessThan89~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan89~2_combout\ = (!\C1|Add5~4_combout\ & (!\C1|Add5~6_combout\ & !\C1|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datac => \C1|Add5~6_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan89~2_combout\);

-- Location: LCCOMB_X20_Y17_N12
\C1|LessThan84~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan84~1_combout\ = (\C1|Add5~10_combout\ & (\C1|LessThan100~1_combout\ & ((\C1|LessThan100~3_combout\) # (!\C1|LessThan89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|LessThan100~3_combout\,
	datac => \C1|LessThan89~2_combout\,
	datad => \C1|LessThan100~1_combout\,
	combout => \C1|LessThan84~1_combout\);

-- Location: LCCOMB_X20_Y17_N30
\C1|dMap~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~215_combout\ = (\C1|LessThan79~4_combout\ & (\C1|LessThan85~2_combout\ & ((\C1|LessThan84~1_combout\) # (!\C1|LessThan84~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan79~4_combout\,
	datab => \C1|LessThan84~0_combout\,
	datac => \C1|LessThan85~2_combout\,
	datad => \C1|LessThan84~1_combout\,
	combout => \C1|dMap~215_combout\);

-- Location: LCCOMB_X19_Y17_N14
\C1|DRAWMAP~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~73_combout\ = (\C1|dMap~197_combout\ & (!\C1|dMap~185_combout\ & ((\C1|dMap~215_combout\)))) # (!\C1|dMap~197_combout\ & ((\C1|dMap~216_combout\) # ((!\C1|dMap~185_combout\ & \C1|dMap~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~197_combout\,
	datab => \C1|dMap~185_combout\,
	datac => \C1|dMap~216_combout\,
	datad => \C1|dMap~215_combout\,
	combout => \C1|DRAWMAP~73_combout\);

-- Location: LCCOMB_X21_Y16_N26
\C1|LessThan81~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~3_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~10_combout\ & ((!\C1|Add5~6_combout\) # (!\C1|Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~6_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan81~3_combout\);

-- Location: LCCOMB_X21_Y16_N20
\C1|LessThan81~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan81~15_combout\ = (!\C1|Add5~12_combout\ & (!\C1|Add5~8_combout\ & (!\C1|Add5~14_combout\ & \C1|LessThan81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~12_combout\,
	datab => \C1|Add5~8_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|LessThan81~3_combout\,
	combout => \C1|LessThan81~15_combout\);

-- Location: LCCOMB_X21_Y18_N30
\C1|LessThan80~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~1_combout\ = (\C1|Add5~2_combout\) # ((\C1|Add5~0_combout\) # ((\C1|Add5~4_combout\) # (\C1|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~4_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|LessThan80~1_combout\);

-- Location: LCCOMB_X21_Y16_N12
\C1|LessThan80~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan80~2_combout\ = (\C1|Add5~18_combout\ & (\C1|LessThan80~0_combout\ & ((\C1|LessThan80~1_combout\) # (!\C1|LessThan83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan83~2_combout\,
	datab => \C1|Add5~18_combout\,
	datac => \C1|LessThan80~1_combout\,
	datad => \C1|LessThan80~0_combout\,
	combout => \C1|LessThan80~2_combout\);

-- Location: LCCOMB_X21_Y16_N0
\C1|dMap~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~214_combout\ = (\C1|LessThan80~3_combout\ & (\C1|LessThan80~2_combout\ & ((\C1|LessThan81~15_combout\) # (!\C1|LessThan79~2_combout\)))) # (!\C1|LessThan80~3_combout\ & (((\C1|LessThan81~15_combout\)) # (!\C1|LessThan79~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan80~3_combout\,
	datab => \C1|LessThan79~2_combout\,
	datac => \C1|LessThan81~15_combout\,
	datad => \C1|LessThan80~2_combout\,
	combout => \C1|dMap~214_combout\);

-- Location: LCCOMB_X23_Y19_N2
\C1|dMap~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~180_combout\ = (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(4) & ((!\C1|SQ_Y1\(1)) # (!\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~180_combout\);

-- Location: LCCOMB_X23_Y19_N4
\C1|LessThan71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan71~0_combout\ = (\C1|SQ_Y1\(10) & ((\C1|SQ_Y1\(5)) # ((\C1|dMap~180_combout\) # (!\C1|LessThan69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|SQ_Y1\(10),
	datac => \C1|LessThan69~0_combout\,
	datad => \C1|dMap~180_combout\,
	combout => \C1|LessThan71~0_combout\);

-- Location: LCCOMB_X19_Y17_N0
\C1|DRAWMAP~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~72_combout\ = (\C1|LessThan71~0_combout\) # ((!\C1|dMap~185_combout\ & \C1|dMap~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|dMap~185_combout\,
	datac => \C1|dMap~214_combout\,
	datad => \C1|LessThan71~0_combout\,
	combout => \C1|DRAWMAP~72_combout\);

-- Location: LCCOMB_X19_Y17_N28
\C1|DRAWMAP~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~74_combout\ = (\C1|DRAWMAP~71_combout\) # ((\C1|DRAWMAP~70_combout\) # ((\C1|DRAWMAP~73_combout\) # (\C1|DRAWMAP~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~71_combout\,
	datab => \C1|DRAWMAP~70_combout\,
	datac => \C1|DRAWMAP~73_combout\,
	datad => \C1|DRAWMAP~72_combout\,
	combout => \C1|DRAWMAP~74_combout\);

-- Location: LCCOMB_X19_Y17_N22
\C1|dirQ1X1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dirQ1X1~0_combout\ = (!\C1|LessThan70~0_combout\ & (!\C1|LessThan69~1_combout\ & ((\C1|DRAWMAP~69_combout\) # (\C1|DRAWMAP~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan70~0_combout\,
	datab => \C1|LessThan69~1_combout\,
	datac => \C1|DRAWMAP~69_combout\,
	datad => \C1|DRAWMAP~74_combout\,
	combout => \C1|dirQ1X1~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\C1|SQ_X1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~1_combout\ = (\C1|SQ_X1[1]~0_combout\ & (((!\KEY~combout\(0) & !\C1|dirQ1X1~0_combout\)) # (!\C1|process_0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[1]~0_combout\,
	datab => \KEY~combout\(0),
	datac => \C1|process_0~23_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ_X1[1]~1_combout\);

-- Location: LCCOMB_X23_Y18_N26
\C1|SQ_X1[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[1]~4_combout\ = (\C1|SQ_X1[1]~1_combout\ & (((!\C1|SQ_X1[1]~2_combout\ & !\C1|Add8~20_combout\)) # (!\C1|SQ_X1[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[1]~2_combout\,
	datab => \C1|Add8~20_combout\,
	datac => \C1|SQ_X1[1]~3_combout\,
	datad => \C1|SQ_X1[1]~1_combout\,
	combout => \C1|SQ_X1[1]~4_combout\);

-- Location: LCFF_X22_Y18_N31
\C1|SQ_X1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[1]~9_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(1));

-- Location: LCCOMB_X23_Y18_N6
\C1|Add22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~2_combout\ = (\C1|SQ_X1\(2) & ((\C1|process_0~23_combout\ & (!\C1|Add22~1\)) # (!\C1|process_0~23_combout\ & (\C1|Add22~1\ & VCC)))) # (!\C1|SQ_X1\(2) & ((\C1|process_0~23_combout\ & ((\C1|Add22~1\) # (GND))) # (!\C1|process_0~23_combout\ & 
-- (!\C1|Add22~1\))))
-- \C1|Add22~3\ = CARRY((\C1|SQ_X1\(2) & (\C1|process_0~23_combout\ & !\C1|Add22~1\)) # (!\C1|SQ_X1\(2) & ((\C1|process_0~23_combout\) # (!\C1|Add22~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~1\,
	combout => \C1|Add22~2_combout\,
	cout => \C1|Add22~3\);

-- Location: LCCOMB_X23_Y18_N16
\C1|Add22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~12_combout\ = ((\C1|SQ_X1\(7) $ (\C1|process_0~23_combout\ $ (!\C1|Add22~11\)))) # (GND)
-- \C1|Add22~13\ = CARRY((\C1|SQ_X1\(7) & (!\C1|process_0~23_combout\ & !\C1|Add22~11\)) # (!\C1|SQ_X1\(7) & ((!\C1|Add22~11\) # (!\C1|process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~11\,
	combout => \C1|Add22~12_combout\,
	cout => \C1|Add22~13\);

-- Location: LCCOMB_X23_Y18_N20
\C1|Add22~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~16_combout\ = ((\C1|SQ_X1\(9) $ (\C1|process_0~23_combout\ $ (\C1|Add22~15\)))) # (GND)
-- \C1|Add22~17\ = CARRY((\C1|SQ_X1\(9) & ((!\C1|Add22~15\) # (!\C1|process_0~23_combout\))) # (!\C1|SQ_X1\(9) & (!\C1|process_0~23_combout\ & !\C1|Add22~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|process_0~23_combout\,
	datad => VCC,
	cin => \C1|Add22~15\,
	combout => \C1|Add22~16_combout\,
	cout => \C1|Add22~17\);

-- Location: LCFF_X23_Y18_N21
\C1|SQ_X1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add22~16_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(9));

-- Location: LCCOMB_X20_Y16_N24
\C1|LessThan78~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan78~1_combout\ = (\C1|Add5~18_combout\ & \C1|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~18_combout\,
	datad => \C1|Add5~16_combout\,
	combout => \C1|LessThan78~1_combout\);

-- Location: LCCOMB_X21_Y16_N22
\C1|dMap~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~241_combout\ = (\C1|LessThan79~3_combout\ & ((\C1|Add5~20_combout\) # ((\C1|LessThan78~1_combout\ & \C1|LessThan78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|LessThan78~1_combout\,
	datac => \C1|LessThan78~0_combout\,
	datad => \C1|LessThan79~3_combout\,
	combout => \C1|dMap~241_combout\);

-- Location: LCCOMB_X24_Y17_N6
\C1|LessThan58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan58~0_combout\ = (!\C1|Add1~8_combout\ & (((!\C1|Add1~2_combout\) # (!\C1|Add1~6_combout\)) # (!\C1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|LessThan58~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\C1|dMap~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~217_combout\ = (\C1|Add1~16_combout\ & (\C1|Add1~14_combout\ & (!\C1|Add1~18_combout\ & !\C1|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|Add1~14_combout\,
	datac => \C1|Add1~18_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|dMap~217_combout\);

-- Location: LCCOMB_X22_Y17_N12
\C1|dMap~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~218_combout\ = (((\C1|Add1~10_combout\ & !\C1|LessThan58~0_combout\)) # (!\C1|dMap~217_combout\)) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|LessThan58~0_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|dMap~217_combout\,
	combout => \C1|dMap~218_combout\);

-- Location: LCCOMB_X22_Y17_N14
\C1|dMap~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~219_combout\ = ((\C1|dMap~218_combout\) # ((!\C1|Add1~4_combout\ & !\C1|Add1~6_combout\))) # (!\C1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~10_combout\,
	datad => \C1|dMap~218_combout\,
	combout => \C1|dMap~219_combout\);

-- Location: LCCOMB_X22_Y16_N24
\C1|dMap~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~240_combout\ = (\C1|dMap~214_combout\ & !\C1|dMap~219_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|dMap~214_combout\,
	datad => \C1|dMap~219_combout\,
	combout => \C1|dMap~240_combout\);

-- Location: LCCOMB_X24_Y17_N30
\C1|dMap~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~224_combout\ = (\C1|Add1~12_combout\ & (\C1|dMap~217_combout\ & !\C1|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datac => \C1|dMap~217_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|dMap~224_combout\);

-- Location: LCCOMB_X25_Y17_N18
\C1|dMap~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~223_combout\ = (!\C1|Add1~4_combout\ & ((!\C1|Add1~2_combout\) # (!\C1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|dMap~223_combout\);

-- Location: LCCOMB_X22_Y17_N28
\C1|dMap~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~225_combout\ = (((\C1|Add1~6_combout\ & !\C1|dMap~223_combout\)) # (!\C1|dMap~224_combout\)) # (!\C1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|dMap~224_combout\,
	datad => \C1|dMap~223_combout\,
	combout => \C1|dMap~225_combout\);

-- Location: LCCOMB_X21_Y16_N16
\C1|DRAWMAP~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~79_combout\ = (\C1|dMap~222_combout\ & (!\C1|dMap~225_combout\ & (\C1|dMap~372_combout\))) # (!\C1|dMap~222_combout\ & ((\C1|dMap~375_combout\) # ((!\C1|dMap~225_combout\ & \C1|dMap~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~222_combout\,
	datab => \C1|dMap~225_combout\,
	datac => \C1|dMap~372_combout\,
	datad => \C1|dMap~375_combout\,
	combout => \C1|DRAWMAP~79_combout\);

-- Location: LCCOMB_X22_Y16_N22
\C1|DRAWMAP~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~80_combout\ = (\C1|dMap~240_combout\) # ((\C1|DRAWMAP~79_combout\) # ((!\C1|dMap~233_combout\ & \C1|dMap~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~233_combout\,
	datab => \C1|dMap~241_combout\,
	datac => \C1|dMap~240_combout\,
	datad => \C1|DRAWMAP~79_combout\,
	combout => \C1|DRAWMAP~80_combout\);

-- Location: LCCOMB_X20_Y18_N0
\C1|dMap~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~98_combout\ = (\C1|Add5~4_combout\ & (((!\C1|Add5~6_combout\)))) # (!\C1|Add5~4_combout\ & ((\C1|Add5~0_combout\) # ((\C1|Add5~2_combout\) # (\C1|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~4_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|dMap~98_combout\);

-- Location: LCCOMB_X20_Y18_N22
\C1|dMap~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~96_combout\ = (\C1|Add5~16_combout\ & \C1|dMap~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add5~16_combout\,
	datad => \C1|dMap~98_combout\,
	combout => \C1|dMap~96_combout\);

-- Location: LCCOMB_X20_Y18_N6
\C1|dMap~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~93_combout\ = (\C1|Add5~10_combout\ & (!\C1|Add5~14_combout\ & (!\C1|Add5~12_combout\ & \C1|dMap~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~10_combout\,
	datab => \C1|Add5~14_combout\,
	datac => \C1|Add5~12_combout\,
	datad => \C1|dMap~96_combout\,
	combout => \C1|dMap~93_combout\);

-- Location: LCCOMB_X20_Y18_N8
\C1|dMap~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~373_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~18_combout\ & (\C1|Add5~8_combout\ & \C1|dMap~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~18_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|dMap~93_combout\,
	combout => \C1|dMap~373_combout\);

-- Location: LCCOMB_X25_Y17_N14
\C1|dMap~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~229_combout\ = (((!\C1|Add1~4_combout\ & !\C1|Add1~2_combout\)) # (!\C1|Add1~6_combout\)) # (!\C1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~229_combout\);

-- Location: LCCOMB_X25_Y17_N28
\C1|dMap~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~230_combout\ = (\C1|Add1~10_combout\ & (((\C1|Add1~8_combout\)) # (!\C1|LessThan60~0_combout\))) # (!\C1|Add1~10_combout\ & ((\C1|dMap~229_combout\) # ((!\C1|LessThan60~0_combout\ & !\C1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan60~0_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~229_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~230_combout\);

-- Location: LCCOMB_X21_Y18_N28
\C1|dMap~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~381_combout\ = (\C1|Add5~2_combout\ & ((\C1|Add5~8_combout\ & ((!\C1|Add5~6_combout\))) # (!\C1|Add5~8_combout\ & (\C1|Add5~0_combout\ & \C1|Add5~6_combout\)))) # (!\C1|Add5~2_combout\ & (((\C1|Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~2_combout\,
	datab => \C1|Add5~0_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~6_combout\,
	combout => \C1|dMap~381_combout\);

-- Location: LCCOMB_X21_Y18_N26
\C1|dMap~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~382_combout\ = (\C1|dMap~381_combout\ & (\C1|Add5~8_combout\ $ (((\C1|Add5~6_combout\ & \C1|Add5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|dMap~381_combout\,
	combout => \C1|dMap~382_combout\);

-- Location: LCCOMB_X22_Y17_N6
\C1|dMap~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~110_combout\ = (\C1|Add5~16_combout\ & (!\C1|Add5~10_combout\ & (!\C1|Add5~14_combout\ & \C1|dMap~382_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|Add5~10_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|dMap~382_combout\,
	combout => \C1|dMap~110_combout\);

-- Location: LCCOMB_X22_Y17_N0
\C1|dMap~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~374_combout\ = (!\C1|Add5~18_combout\ & (\C1|Add5~12_combout\ & (!\C1|Add5~20_combout\ & \C1|dMap~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~18_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|dMap~110_combout\,
	combout => \C1|dMap~374_combout\);

-- Location: LCCOMB_X22_Y17_N18
\C1|dMap~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~364_combout\ = (\C1|dMap~217_combout\ & (!\C1|dMap~230_combout\ & (\C1|Add1~12_combout\ & \C1|dMap~374_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~217_combout\,
	datab => \C1|dMap~230_combout\,
	datac => \C1|Add1~12_combout\,
	datad => \C1|dMap~374_combout\,
	combout => \C1|dMap~364_combout\);

-- Location: LCCOMB_X21_Y17_N26
\C1|DRAWMAP~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~82_combout\ = (\C1|dMap~235_combout\ & (!\C1|dMap~219_combout\ & (\C1|dMap~215_combout\))) # (!\C1|dMap~235_combout\ & ((\C1|dMap~213_combout\) # ((!\C1|dMap~219_combout\ & \C1|dMap~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~235_combout\,
	datab => \C1|dMap~219_combout\,
	datac => \C1|dMap~215_combout\,
	datad => \C1|dMap~213_combout\,
	combout => \C1|DRAWMAP~82_combout\);

-- Location: LCCOMB_X22_Y16_N8
\C1|DRAWMAP~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~83_combout\ = (\C1|dMap~364_combout\) # ((\C1|DRAWMAP~82_combout\) # ((!\C1|dMap~239_combout\ & \C1|dMap~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~239_combout\,
	datab => \C1|dMap~373_combout\,
	datac => \C1|dMap~364_combout\,
	datad => \C1|DRAWMAP~82_combout\,
	combout => \C1|DRAWMAP~83_combout\);

-- Location: LCCOMB_X25_Y17_N16
\C1|dMap~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~226_combout\ = (!\C1|Add1~6_combout\ & ((\C1|Add1~4_combout\ & ((!\C1|Add1~2_combout\))) # (!\C1|Add1~4_combout\ & (!\C1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~226_combout\);

-- Location: LCCOMB_X22_Y16_N4
\C1|dMap~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~242_combout\ = (!\C1|dMap~227_combout\ & (\C1|dMap~224_combout\ & (!\C1|dMap~226_combout\ & \C1|dMap~216_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~227_combout\,
	datab => \C1|dMap~224_combout\,
	datac => \C1|dMap~226_combout\,
	datad => \C1|dMap~216_combout\,
	combout => \C1|dMap~242_combout\);

-- Location: LCCOMB_X20_Y17_N2
\C1|LessThan83~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan83~1_combout\ = (!\C1|Add5~12_combout\ & (((!\C1|Add5~6_combout\ & !\C1|Add5~8_combout\)) # (!\C1|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~10_combout\,
	datad => \C1|Add5~8_combout\,
	combout => \C1|LessThan83~1_combout\);

-- Location: LCCOMB_X20_Y17_N0
\C1|LessThan83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan83~0_combout\ = ((!\C1|Add5~14_combout\ & !\C1|Add5~16_combout\)) # (!\C1|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|LessThan83~0_combout\);

-- Location: LCCOMB_X20_Y17_N16
\C1|dMap~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~209_combout\ = (!\C1|Add5~20_combout\ & ((\C1|LessThan83~0_combout\) # ((!\C1|Add5~16_combout\ & \C1|LessThan83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datab => \C1|LessThan83~1_combout\,
	datac => \C1|Add5~20_combout\,
	datad => \C1|LessThan83~0_combout\,
	combout => \C1|dMap~209_combout\);

-- Location: LCCOMB_X21_Y17_N0
\C1|dMap~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~243_combout\ = (\C1|dMap~209_combout\ & ((\C1|LessThan82~0_combout\) # ((\C1|LessThan82~1_combout\) # (\C1|LessThan82~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan82~0_combout\,
	datab => \C1|LessThan82~1_combout\,
	datac => \C1|LessThan82~2_combout\,
	datad => \C1|dMap~209_combout\,
	combout => \C1|dMap~243_combout\);

-- Location: LCCOMB_X22_Y16_N18
\C1|DRAWMAP~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~81_combout\ = (\C1|dMap~242_combout\) # ((!\C1|dMap~219_combout\ & ((\C1|dMap~211_combout\) # (\C1|dMap~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~219_combout\,
	datab => \C1|dMap~211_combout\,
	datac => \C1|dMap~242_combout\,
	datad => \C1|dMap~243_combout\,
	combout => \C1|DRAWMAP~81_combout\);

-- Location: LCCOMB_X22_Y16_N6
\C1|DRAWMAP~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~84_combout\ = (\C1|DRAWMAP~78_combout\) # ((\C1|DRAWMAP~80_combout\) # ((\C1|DRAWMAP~83_combout\) # (\C1|DRAWMAP~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~78_combout\,
	datab => \C1|DRAWMAP~80_combout\,
	datac => \C1|DRAWMAP~83_combout\,
	datad => \C1|DRAWMAP~81_combout\,
	combout => \C1|DRAWMAP~84_combout\);

-- Location: LCCOMB_X22_Y16_N20
\C1|SQ1_noAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_noAR~0_combout\ = (\C1|arQ1X1~2_combout\) # ((!\C1|LessThan70~0_combout\ & (!\C1|LessThan51~1_combout\ & \C1|DRAWMAP~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan70~0_combout\,
	datab => \C1|arQ1X1~2_combout\,
	datac => \C1|LessThan51~1_combout\,
	datad => \C1|DRAWMAP~84_combout\,
	combout => \C1|SQ1_noAR~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\C1|SQ_Y1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[1]~1_combout\ = (\C1|LessThan259~0_combout\ & (\C1|LessThan260~0_combout\ & ((!\C1|SQ1_noAR~0_combout\) # (!\C1|SQ_Y1[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan259~0_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|SQ_Y1[3]~0_combout\,
	datad => \C1|SQ1_noAR~0_combout\,
	combout => \C1|SQ_Y1[1]~1_combout\);

-- Location: LCFF_X24_Y17_N1
\C1|SQ_Y1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_Y1[1]~7_combout\,
	sload => VCC,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(1));

-- Location: LCFF_X23_Y17_N13
\C1|SQ_Y1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add16~10_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(6));

-- Location: LCCOMB_X23_Y19_N30
\C1|dMap~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~203_combout\ = (\C1|dMap~202_combout\) # ((\C1|SQ_Y1\(10)) # ((\C1|SQ_Y1\(8)) # (\C1|SQ_Y1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~202_combout\,
	datab => \C1|SQ_Y1\(10),
	datac => \C1|SQ_Y1\(8),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|dMap~203_combout\);

-- Location: LCCOMB_X23_Y19_N10
\C1|dMap~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~205_combout\ = (\C1|dMap~203_combout\) # ((\C1|SQ_Y1\(6) & ((!\C1|SQ_Y1\(4)))) # (!\C1|SQ_Y1\(6) & (\C1|dMap~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~204_combout\,
	datab => \C1|SQ_Y1\(6),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|dMap~203_combout\,
	combout => \C1|dMap~205_combout\);

-- Location: LCCOMB_X22_Y20_N26
\C1|LessThan148~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan148~0_combout\ = (\C1|SQ_X1\(4) & \C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan148~0_combout\);

-- Location: LCFF_X23_Y18_N7
\C1|SQ_X1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add22~2_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(2));

-- Location: LCCOMB_X22_Y20_N4
\C1|LessThan153~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~0_combout\ = (\C1|SQ_X1\(3) & ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(1),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan153~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\C1|SQ_X1[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~6_combout\ = !\C1|Add22~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add22~12_combout\,
	combout => \C1|SQ_X1[7]~6_combout\);

-- Location: LCFF_X23_Y18_N3
\C1|SQ_X1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[7]~6_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(7));

-- Location: LCCOMB_X23_Y20_N20
\C1|LessThan136~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~1_combout\ = (\C1|SQ_X1\(8) & \C1|SQ_X1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(8),
	datad => \C1|SQ_X1\(7),
	combout => \C1|LessThan136~1_combout\);

-- Location: LCCOMB_X22_Y20_N8
\C1|LessThan133~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan133~0_combout\ = ((\C1|SQ_X1\(6) & ((\C1|LessThan153~0_combout\) # (!\C1|LessThan148~0_combout\)))) # (!\C1|LessThan136~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan148~0_combout\,
	datac => \C1|LessThan153~0_combout\,
	datad => \C1|LessThan136~1_combout\,
	combout => \C1|LessThan133~0_combout\);

-- Location: LCCOMB_X22_Y20_N14
\C1|LessThan136~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~3_combout\ = (\C1|SQ_X1\(10) & \C1|SQ_X1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(10),
	datad => \C1|SQ_X1\(9),
	combout => \C1|LessThan136~3_combout\);

-- Location: LCCOMB_X22_Y20_N12
\C1|LessThan134~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan134~0_combout\ = (\C1|SQ_X1\(4)) # (((\C1|SQ_X1\(1) & !\C1|SQ_X1\(2))) # (!\C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan134~0_combout\);

-- Location: LCCOMB_X22_Y20_N18
\C1|LessThan134~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan134~1_combout\ = (\C1|SQ_X1\(7)) # ((!\C1|SQ_X1\(6) & (\C1|SQ_X1\(5) & \C1|LessThan134~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|SQ_X1\(5),
	datac => \C1|SQ_X1\(7),
	datad => \C1|LessThan134~0_combout\,
	combout => \C1|LessThan134~1_combout\);

-- Location: LCCOMB_X22_Y20_N22
\C1|dMap~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~201_combout\ = (\C1|SQ_X1\(8) & (\C1|LessThan133~0_combout\ & (\C1|LessThan136~3_combout\ & \C1|LessThan134~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|LessThan133~0_combout\,
	datac => \C1|LessThan136~3_combout\,
	datad => \C1|LessThan134~1_combout\,
	combout => \C1|dMap~201_combout\);

-- Location: LCCOMB_X20_Y19_N30
\C1|DRAWMAP~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~63_combout\ = (\C1|dMap~370_combout\ & (((\C1|dMap~201_combout\ & \C1|dMap~200_combout\)) # (!\C1|dMap~205_combout\))) # (!\C1|dMap~370_combout\ & (((\C1|dMap~201_combout\ & \C1|dMap~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~370_combout\,
	datab => \C1|dMap~205_combout\,
	datac => \C1|dMap~201_combout\,
	datad => \C1|dMap~200_combout\,
	combout => \C1|DRAWMAP~63_combout\);

-- Location: LCCOMB_X23_Y20_N30
\C1|LessThan148~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan148~1_combout\ = (\C1|SQ_X1\(4) & (\C1|SQ_X1\(5) & ((!\C1|SQ_X1\(3)) # (!\C1|SQ_X1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan148~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
\C1|LessThan148~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan148~2_combout\ = (\C1|SQ_X1\(8) & ((\C1|SQ_X1\(7)) # ((!\C1|SQ_X1\(6) & \C1|LessThan148~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan148~1_combout\,
	combout => \C1|LessThan148~2_combout\);

-- Location: LCCOMB_X24_Y20_N16
\C1|dMap~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~191_combout\ = (\C1|LessThan147~1_combout\ & (!\C1|SQ_X1\(10) & ((\C1|LessThan148~2_combout\) # (!\C1|SQ_X1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan147~1_combout\,
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan148~2_combout\,
	datad => \C1|SQ_X1\(9),
	combout => \C1|dMap~191_combout\);

-- Location: LCCOMB_X24_Y20_N2
\C1|LessThan131~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan131~1_combout\ = (!\C1|SQ_X1\(5) & ((\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan131~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\C1|LessThan132~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan132~0_combout\ = (!\C1|SQ_X1\(10) & !\C1|SQ_X1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|SQ_X1\(9),
	combout => \C1|LessThan132~0_combout\);

-- Location: LCCOMB_X23_Y20_N14
\C1|LessThan153~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~1_combout\ = (!\C1|SQ_X1\(7) & !\C1|SQ_X1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datac => \C1|SQ_X1\(8),
	combout => \C1|LessThan153~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\C1|dMap~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~189_combout\ = (\C1|LessThan132~0_combout\ & (\C1|LessThan153~1_combout\ & ((\C1|SQ_X1\(6)) # (\C1|LessThan131~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan131~1_combout\,
	datac => \C1|LessThan132~0_combout\,
	datad => \C1|LessThan153~1_combout\,
	combout => \C1|dMap~189_combout\);

-- Location: LCCOMB_X24_Y20_N26
\C1|dMap~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~190_combout\ = (\C1|dMap~189_combout\ & (((\C1|LessThan148~1_combout\) # (!\C1|SQ_X1\(6))) # (!\C1|LessThan153~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan153~1_combout\,
	datab => \C1|dMap~189_combout\,
	datac => \C1|LessThan148~1_combout\,
	datad => \C1|SQ_X1\(6),
	combout => \C1|dMap~190_combout\);

-- Location: LCCOMB_X21_Y19_N14
\C1|DRAWMAP~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~62_combout\ = (\C1|dMap~197_combout\ & (!\C1|dMap~194_combout\ & ((\C1|dMap~190_combout\)))) # (!\C1|dMap~197_combout\ & ((\C1|dMap~191_combout\) # ((!\C1|dMap~194_combout\ & \C1|dMap~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~197_combout\,
	datab => \C1|dMap~194_combout\,
	datac => \C1|dMap~191_combout\,
	datad => \C1|dMap~190_combout\,
	combout => \C1|DRAWMAP~62_combout\);

-- Location: LCCOMB_X24_Y19_N18
\C1|dMap~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~385_combout\ = (\C1|SQ_X1\(3) & (!\C1|SQ_X1\(1) & (\C1|SQ_X1\(2) & \C1|SQ_X1\(5)))) # (!\C1|SQ_X1\(3) & (((!\C1|SQ_X1\(2) & !\C1|SQ_X1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|SQ_X1\(1),
	datac => \C1|SQ_X1\(2),
	datad => \C1|SQ_X1\(5),
	combout => \C1|dMap~385_combout\);

-- Location: LCCOMB_X24_Y19_N4
\C1|dMap~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~386_combout\ = (\C1|SQ_X1\(4) & (!\C1|SQ_X1\(5))) # (!\C1|SQ_X1\(4) & (\C1|dMap~385_combout\ & ((!\C1|SQ_X1\(1)) # (!\C1|SQ_X1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(1),
	datad => \C1|dMap~385_combout\,
	combout => \C1|dMap~386_combout\);

-- Location: LCCOMB_X24_Y19_N16
\C1|dMap~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~55_combout\ = (\C1|SQ_X1\(8) & (\C1|dMap~386_combout\ & !\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datac => \C1|dMap~386_combout\,
	datad => \C1|SQ_X1\(10),
	combout => \C1|dMap~55_combout\);

-- Location: LCCOMB_X24_Y19_N2
\C1|dMap~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~371_combout\ = (!\C1|SQ_X1\(7) & (\C1|SQ_X1\(9) & (\C1|dMap~55_combout\ & !\C1|SQ_X1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|SQ_X1\(9),
	datac => \C1|dMap~55_combout\,
	datad => \C1|SQ_X1\(6),
	combout => \C1|dMap~371_combout\);

-- Location: LCCOMB_X20_Y19_N22
\C1|DRAWMAP~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~64_combout\ = (\C1|DRAWMAP~63_combout\) # ((\C1|DRAWMAP~62_combout\) # ((!\C1|dMap~208_combout\ & \C1|dMap~371_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~208_combout\,
	datab => \C1|DRAWMAP~63_combout\,
	datac => \C1|DRAWMAP~62_combout\,
	datad => \C1|dMap~371_combout\,
	combout => \C1|DRAWMAP~64_combout\);

-- Location: LCCOMB_X23_Y19_N14
\C1|dMap~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~182_combout\ = (!\C1|SQ_Y1\(7) & (!\C1|SQ_Y1\(10) & (!\C1|SQ_Y1\(8) & !\C1|SQ_Y1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|SQ_Y1\(10),
	datac => \C1|SQ_Y1\(8),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|dMap~182_combout\);

-- Location: LCCOMB_X21_Y19_N2
\C1|dMap~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~183_combout\ = (\C1|SQ_Y1\(6)) # (((\C1|dMap~181_combout\) # (!\C1|dMap~182_combout\)) # (!\C1|SQ_Y1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|SQ_Y1\(5),
	datac => \C1|dMap~181_combout\,
	datad => \C1|dMap~182_combout\,
	combout => \C1|dMap~183_combout\);

-- Location: LCCOMB_X21_Y19_N8
\C1|DRAWMAP~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~52_combout\ = (\C1|LessThan71~0_combout\) # ((\C1|dMap~369_combout\ & !\C1|dMap~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~369_combout\,
	datab => \C1|LessThan71~0_combout\,
	datad => \C1|dMap~183_combout\,
	combout => \C1|DRAWMAP~52_combout\);

-- Location: LCCOMB_X21_Y19_N26
\C1|dMap~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~186_combout\ = (\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(2) & (!\C1|SQ_Y1\(4)))) # (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(4) & ((!\C1|SQ_Y1\(1)) # (!\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|SQ_Y1\(4),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~186_combout\);

-- Location: LCCOMB_X24_Y19_N24
\C1|dMap~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~187_combout\ = (\C1|SQ_Y1\(8)) # (((\C1|SQ_Y1\(10)) # (\C1|SQ_Y1\(9))) # (!\C1|SQ_Y1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|SQ_Y1\(7),
	datac => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1\(9),
	combout => \C1|dMap~187_combout\);

-- Location: LCCOMB_X21_Y19_N28
\C1|dMap~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~188_combout\ = ((\C1|dMap~186_combout\) # ((\C1|dMap~187_combout\) # (!\C1|SQ_Y1\(6)))) # (!\C1|SQ_Y1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|dMap~186_combout\,
	datac => \C1|SQ_Y1\(6),
	datad => \C1|dMap~187_combout\,
	combout => \C1|dMap~188_combout\);

-- Location: LCCOMB_X22_Y19_N18
\C1|LessThan154~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan154~0_combout\ = (\C1|LessThan148~0_combout\ & (((\C1|SQ_X1\(1)) # (!\C1|SQ_X1\(3))) # (!\C1|SQ_X1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(1),
	datac => \C1|SQ_X1\(3),
	datad => \C1|LessThan148~0_combout\,
	combout => \C1|LessThan154~0_combout\);

-- Location: LCCOMB_X22_Y19_N20
\C1|LessThan151~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan151~0_combout\ = (\C1|SQ_X1\(9) & (((\C1|SQ_X1\(6) & !\C1|LessThan154~0_combout\)) # (!\C1|LessThan136~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan136~1_combout\,
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan154~0_combout\,
	combout => \C1|LessThan151~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\C1|LessThan136~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~0_combout\ = (!\C1|SQ_X1\(6) & \C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(6),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan136~0_combout\);

-- Location: LCCOMB_X23_Y20_N12
\C1|LessThan153~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan153~3_combout\ = ((\C1|LessThan153~1_combout\ & ((\C1|LessThan153~2_combout\) # (!\C1|LessThan136~0_combout\)))) # (!\C1|LessThan132~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan153~2_combout\,
	datab => \C1|LessThan153~1_combout\,
	datac => \C1|LessThan136~0_combout\,
	datad => \C1|LessThan132~0_combout\,
	combout => \C1|LessThan153~3_combout\);

-- Location: LCCOMB_X22_Y19_N14
\C1|DRAWMAP~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~60_combout\ = (!\C1|SQ_X1\(10) & ((\C1|LessThan151~0_combout\ & (\C1|LessThan152~0_combout\)) # (!\C1|LessThan151~0_combout\ & ((\C1|LessThan153~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan152~0_combout\,
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan151~0_combout\,
	datad => \C1|LessThan153~3_combout\,
	combout => \C1|DRAWMAP~60_combout\);

-- Location: LCCOMB_X22_Y19_N28
\C1|LessThan139~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan139~0_combout\ = (!\C1|SQ_X1\(10) & ((\C1|SQ_X1\(8)) # (!\C1|SQ_X1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(9),
	datad => \C1|SQ_X1\(10),
	combout => \C1|LessThan139~0_combout\);

-- Location: LCCOMB_X22_Y19_N16
\C1|LessThan141~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan141~2_combout\ = (\C1|SQ_X1\(9) & (\C1|SQ_X1\(6) & !\C1|SQ_X1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(7),
	combout => \C1|LessThan141~2_combout\);

-- Location: LCCOMB_X22_Y19_N6
\C1|LessThan149~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan149~0_combout\ = ((\C1|SQ_X1\(3)) # (\C1|SQ_X1\(2))) # (!\C1|SQ_X1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(1),
	datac => \C1|SQ_X1\(3),
	datad => \C1|SQ_X1\(2),
	combout => \C1|LessThan149~0_combout\);

-- Location: LCCOMB_X22_Y19_N8
\C1|LessThan140~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan140~0_combout\ = (!\C1|SQ_X1\(4) & (\C1|SQ_X1\(9) & \C1|LessThan149~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(9),
	datad => \C1|LessThan149~0_combout\,
	combout => \C1|LessThan140~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\C1|LessThan147~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan147~0_combout\ = (\C1|SQ_X1\(6) & !\C1|SQ_X1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ_X1\(6),
	datad => \C1|SQ_X1\(5),
	combout => \C1|LessThan147~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\C1|DRAWMAP~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~57_combout\ = (!\C1|SQ_X1\(10) & (((!\C1|LessThan147~0_combout\) # (!\C1|LessThan140~0_combout\)) # (!\C1|LessThan153~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan153~1_combout\,
	datab => \C1|SQ_X1\(10),
	datac => \C1|LessThan140~0_combout\,
	datad => \C1|LessThan147~0_combout\,
	combout => \C1|DRAWMAP~57_combout\);

-- Location: LCCOMB_X22_Y19_N22
\C1|DRAWMAP~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~58_combout\ = (\C1|DRAWMAP~57_combout\ & (((\C1|LessThan139~1_combout\ & \C1|LessThan141~2_combout\)) # (!\C1|LessThan139~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan139~1_combout\,
	datab => \C1|LessThan139~0_combout\,
	datac => \C1|LessThan141~2_combout\,
	datad => \C1|DRAWMAP~57_combout\,
	combout => \C1|DRAWMAP~58_combout\);

-- Location: LCCOMB_X22_Y20_N2
\C1|LessThan136~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan136~2_combout\ = (\C1|LessThan136~0_combout\ & (\C1|LessThan136~1_combout\ & ((\C1|SQ_X1\(4)) # (!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan136~0_combout\,
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(3),
	datad => \C1|LessThan136~1_combout\,
	combout => \C1|LessThan136~2_combout\);

-- Location: LCCOMB_X22_Y20_N24
\C1|LessThan135~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan135~0_combout\ = (\C1|LessThan153~1_combout\ & ((\C1|SQ_X1\(6)) # ((\C1|LessThan149~0_combout\) # (!\C1|LessThan148~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|LessThan148~0_combout\,
	datac => \C1|LessThan153~1_combout\,
	datad => \C1|LessThan149~0_combout\,
	combout => \C1|LessThan135~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\C1|DRAWMAP~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~56_combout\ = (\C1|SQ_X1\(10) & ((\C1|SQ_X1\(9) & (\C1|LessThan136~2_combout\)) # (!\C1|SQ_X1\(9) & ((\C1|LessThan135~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datab => \C1|LessThan136~2_combout\,
	datac => \C1|LessThan135~0_combout\,
	datad => \C1|SQ_X1\(9),
	combout => \C1|DRAWMAP~56_combout\);

-- Location: LCCOMB_X23_Y20_N26
\C1|LessThan137~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan137~0_combout\ = (!\C1|SQ_X1\(4) & ((\C1|SQ_X1\(3)) # ((\C1|SQ_X1\(2) & !\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datac => \C1|SQ_X1\(4),
	datad => \C1|SQ_X1\(1),
	combout => \C1|LessThan137~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\C1|DRAWMAP~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~134_combout\ = (\C1|SQ_X1\(5) & ((\C1|SQ_X1\(8) & ((!\C1|LessThan137~0_combout\))) # (!\C1|SQ_X1\(8) & (\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|SQ_X1\(8),
	datac => \C1|SQ_X1\(4),
	datad => \C1|LessThan137~0_combout\,
	combout => \C1|DRAWMAP~134_combout\);

-- Location: LCCOMB_X23_Y19_N20
\C1|DRAWMAP~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~54_combout\ = (\C1|SQ_X1\(7) & ((\C1|DRAWMAP~134_combout\) # (!\C1|SQ_X1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datac => \C1|SQ_X1\(7),
	datad => \C1|DRAWMAP~134_combout\,
	combout => \C1|DRAWMAP~54_combout\);

-- Location: LCCOMB_X22_Y19_N10
\C1|DRAWMAP~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~55_combout\ = (!\C1|SQ_X1\(9) & (\C1|SQ_X1\(10) & (\C1|SQ_X1\(8) $ (\C1|DRAWMAP~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(8),
	datad => \C1|DRAWMAP~54_combout\,
	combout => \C1|DRAWMAP~55_combout\);

-- Location: LCCOMB_X22_Y19_N24
\C1|DRAWMAP~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~59_combout\ = (\C1|DRAWMAP~53_combout\) # ((\C1|DRAWMAP~58_combout\) # ((\C1|DRAWMAP~56_combout\) # (\C1|DRAWMAP~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~53_combout\,
	datab => \C1|DRAWMAP~58_combout\,
	datac => \C1|DRAWMAP~56_combout\,
	datad => \C1|DRAWMAP~55_combout\,
	combout => \C1|DRAWMAP~59_combout\);

-- Location: LCCOMB_X21_Y19_N30
\C1|DRAWMAP~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~61_combout\ = (\C1|dMap~185_combout\ & (!\C1|dMap~188_combout\ & (\C1|DRAWMAP~60_combout\))) # (!\C1|dMap~185_combout\ & ((\C1|DRAWMAP~59_combout\) # ((!\C1|dMap~188_combout\ & \C1|DRAWMAP~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~185_combout\,
	datab => \C1|dMap~188_combout\,
	datac => \C1|DRAWMAP~60_combout\,
	datad => \C1|DRAWMAP~59_combout\,
	combout => \C1|DRAWMAP~61_combout\);

-- Location: LCCOMB_X20_Y19_N28
\C1|esqQ1X1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|esqQ1X1~1_combout\ = (\C1|esqQ1X1~0_combout\ & ((\C1|DRAWMAP~64_combout\) # ((\C1|DRAWMAP~52_combout\) # (\C1|DRAWMAP~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~0_combout\,
	datab => \C1|DRAWMAP~64_combout\,
	datac => \C1|DRAWMAP~52_combout\,
	datad => \C1|DRAWMAP~61_combout\,
	combout => \C1|esqQ1X1~1_combout\);

-- Location: LCCOMB_X24_Y15_N30
\C1|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~22_combout\ = \C1|Add8~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add8~21\,
	combout => \C1|Add8~22_combout\);

-- Location: LCCOMB_X24_Y15_N2
\C1|dMap~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~252_combout\ = (!\C1|Add8~20_combout\ & \C1|Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~20_combout\,
	datad => \C1|Add8~22_combout\,
	combout => \C1|dMap~252_combout\);

-- Location: LCCOMB_X24_Y15_N0
\C1|dMap~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~253_combout\ = (\C1|Add8~16_combout\ & (\C1|Add8~14_combout\ & (!\C1|Add8~18_combout\ & \C1|dMap~252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~16_combout\,
	datab => \C1|Add8~14_combout\,
	datac => \C1|Add8~18_combout\,
	datad => \C1|dMap~252_combout\,
	combout => \C1|dMap~253_combout\);

-- Location: LCCOMB_X25_Y15_N28
\C1|dMap~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~250_combout\ = (\C1|Add8~6_combout\ & (\C1|Add8~8_combout\)) # (!\C1|Add8~6_combout\ & ((\C1|Add8~8_combout\ & ((\C1|Add8~4_combout\))) # (!\C1|Add8~8_combout\ & ((!\C1|Add8~4_combout\) # (!\C1|SQ_Y1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~6_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|SQ_Y1\(2),
	datad => \C1|Add8~4_combout\,
	combout => \C1|dMap~250_combout\);

-- Location: LCCOMB_X25_Y18_N30
\C1|dMap~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~251_combout\ = (\C1|dMap~250_combout\) # ((\C1|Add8~8_combout\ & ((\C1|SQ_Y1\(2)) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|SQ_Y1\(2),
	datac => \C1|dMap~250_combout\,
	datad => \C1|Add8~8_combout\,
	combout => \C1|dMap~251_combout\);

-- Location: LCCOMB_X25_Y18_N8
\C1|dMap~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~254_combout\ = (\C1|Add8~10_combout\) # (((\C1|dMap~251_combout\) # (!\C1|dMap~253_combout\)) # (!\C1|Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~10_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|dMap~253_combout\,
	datad => \C1|dMap~251_combout\,
	combout => \C1|dMap~254_combout\);

-- Location: LCCOMB_X23_Y15_N24
\C1|LessThan121~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan121~0_combout\ = (!\C1|Add8~6_combout\ & (((!\C1|SQ_Y1\(2) & \C1|SQ_Y1\(1))) # (!\C1|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~6_combout\,
	datad => \C1|SQ_Y1\(1),
	combout => \C1|LessThan121~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\C1|dMap~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~246_combout\ = (((!\C1|SQ_Y1\(2) & !\C1|Add8~4_combout\)) # (!\C1|Add8~6_combout\)) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|dMap~246_combout\);

-- Location: LCCOMB_X23_Y15_N10
\C1|dMap~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~247_combout\ = (\C1|Add8~8_combout\ & ((\C1|Add8~10_combout\) # ((\C1|dMap~246_combout\)))) # (!\C1|Add8~8_combout\ & (((!\C1|Add8~10_combout\ & \C1|dMap~246_combout\)) # (!\C1|LessThan121~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|LessThan121~0_combout\,
	datad => \C1|dMap~246_combout\,
	combout => \C1|dMap~247_combout\);

-- Location: LCCOMB_X25_Y15_N30
\C1|dMap~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~248_combout\ = (\C1|Add8~22_combout\ & (!\C1|Add8~18_combout\ & (\C1|Add8~14_combout\ & !\C1|Add8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|Add8~18_combout\,
	datac => \C1|Add8~14_combout\,
	datad => \C1|Add8~20_combout\,
	combout => \C1|dMap~248_combout\);

-- Location: LCCOMB_X24_Y18_N4
\C1|dMap~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~249_combout\ = (((\C1|dMap~247_combout\) # (!\C1|dMap~248_combout\)) # (!\C1|Add8~12_combout\)) # (!\C1|Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~16_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|dMap~247_combout\,
	datad => \C1|dMap~248_combout\,
	combout => \C1|dMap~249_combout\);

-- Location: LCCOMB_X25_Y15_N12
\C1|LessThan112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~0_combout\ = (!\C1|Add8~12_combout\ & (!\C1|Add8~16_combout\ & (!\C1|Add8~10_combout\ & !\C1|Add8~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|Add8~16_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|Add8~14_combout\,
	combout => \C1|LessThan112~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\C1|LessThan112~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~1_combout\ = (\C1|LessThan112~0_combout\ & (!\C1|Add8~18_combout\ & ((\C1|LessThan121~0_combout\) # (!\C1|Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan121~0_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|LessThan112~0_combout\,
	datad => \C1|Add8~18_combout\,
	combout => \C1|LessThan112~1_combout\);

-- Location: LCCOMB_X24_Y18_N22
\C1|process_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~12_combout\ = (!\C1|LessThan130~2_combout\ & (\C1|Add8~22_combout\ & !\C1|LessThan112~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan130~2_combout\,
	datac => \C1|Add8~22_combout\,
	datad => \C1|LessThan112~1_combout\,
	combout => \C1|process_0~12_combout\);

-- Location: LCCOMB_X24_Y18_N14
\C1|process_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~13_combout\ = (\C1|process_0~12_combout\ & ((\C1|LessThan113~0_combout\) # ((\C1|dMap~371_combout\ & !\C1|dMap~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan113~0_combout\,
	datab => \C1|dMap~371_combout\,
	datac => \C1|dMap~249_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C1|process_0~13_combout\);

-- Location: LCCOMB_X24_Y18_N20
\C1|process_0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~14_combout\ = (\C1|process_0~13_combout\) # ((\C1|dMap~191_combout\ & (!\C1|dMap~254_combout\ & \C1|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~191_combout\,
	datab => \C1|dMap~254_combout\,
	datac => \C1|process_0~13_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C1|process_0~14_combout\);

-- Location: LCCOMB_X24_Y15_N4
\C1|LessThan112~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan112~2_combout\ = (!\C1|Add8~12_combout\ & (!\C1|Add8~16_combout\ & !\C1|Add8~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datac => \C1|Add8~16_combout\,
	datad => \C1|Add8~14_combout\,
	combout => \C1|LessThan112~2_combout\);

-- Location: LCCOMB_X23_Y15_N20
\C1|dMap~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~255_combout\ = (!\C1|Add8~4_combout\ & ((\C1|SQ_Y1\(1)) # (!\C1|SQ_Y1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datac => \C1|Add8~4_combout\,
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~255_combout\);

-- Location: LCCOMB_X23_Y15_N30
\C1|dMap~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~256_combout\ = (\C1|Add8~10_combout\ & ((\C1|Add8~8_combout\) # ((\C1|Add8~6_combout\) # (!\C1|dMap~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|dMap~255_combout\,
	datad => \C1|Add8~10_combout\,
	combout => \C1|dMap~256_combout\);

-- Location: LCCOMB_X24_Y15_N6
\C1|dMap~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~257_combout\ = (((\C1|dMap~256_combout\) # (!\C1|dMap~252_combout\)) # (!\C1|LessThan112~2_combout\)) # (!\C1|Add8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~18_combout\,
	datab => \C1|LessThan112~2_combout\,
	datac => \C1|dMap~256_combout\,
	datad => \C1|dMap~252_combout\,
	combout => \C1|dMap~257_combout\);

-- Location: LCCOMB_X24_Y18_N26
\C1|process_0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~15_combout\ = (\C1|Add8~22_combout\ & (!\C1|LessThan112~1_combout\ & (\C1|dMap~201_combout\ & !\C1|dMap~257_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|LessThan112~1_combout\,
	datac => \C1|dMap~201_combout\,
	datad => \C1|dMap~257_combout\,
	combout => \C1|process_0~15_combout\);

-- Location: LCCOMB_X23_Y18_N30
\C1|process_0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~16_combout\ = (\KEY~combout\(1)) # ((\C1|Add8~22_combout\ & (!\C1|LessThan130~2_combout\ & \C1|Add8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \C1|Add8~22_combout\,
	datac => \C1|LessThan130~2_combout\,
	datad => \C1|Add8~20_combout\,
	combout => \C1|process_0~16_combout\);

-- Location: LCCOMB_X25_Y18_N28
\C1|dMap~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~259_combout\ = (!\C1|Add8~10_combout\ & ((\C1|Add8~8_combout\) # ((\C1|dMap~258_combout\ & \C1|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~258_combout\,
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|Add8~8_combout\,
	combout => \C1|dMap~259_combout\);

-- Location: LCCOMB_X25_Y18_N22
\C1|dMap~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~260_combout\ = (\C1|Add8~6_combout\ & ((!\C1|Add8~8_combout\) # (!\C1|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add8~4_combout\,
	datac => \C1|Add8~8_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|dMap~260_combout\);

-- Location: LCCOMB_X25_Y18_N12
\C1|dMap~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~261_combout\ = (\C1|dMap~260_combout\) # ((\C1|Add8~12_combout\ & ((\C1|Add8~10_combout\))) # (!\C1|Add8~12_combout\ & (!\C1|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~6_combout\,
	datab => \C1|Add8~12_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|dMap~260_combout\,
	combout => \C1|dMap~261_combout\);

-- Location: LCCOMB_X25_Y18_N26
\C1|process_0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~17_combout\ = (\C1|dMap~370_combout\ & (!\C1|dMap~259_combout\ & (\C1|dMap~253_combout\ & !\C1|dMap~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~370_combout\,
	datab => \C1|dMap~259_combout\,
	datac => \C1|dMap~253_combout\,
	datad => \C1|dMap~261_combout\,
	combout => \C1|process_0~17_combout\);

-- Location: LCCOMB_X23_Y15_N0
\C1|LessThan119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan119~0_combout\ = (!\C1|Add8~8_combout\ & (((!\C1|SQ_Y1\(2)) # (!\C1|Add8~4_combout\)) # (!\C1|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~6_combout\,
	datac => \C1|Add8~4_combout\,
	datad => \C1|SQ_Y1\(2),
	combout => \C1|LessThan119~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\C1|dMap~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~262_combout\ = (\C1|Add8~18_combout\) # (((!\C1|Add8~10_combout\ & \C1|dMap~255_combout\)) # (!\C1|dMap~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~18_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|dMap~255_combout\,
	datad => \C1|dMap~252_combout\,
	combout => \C1|dMap~262_combout\);

-- Location: LCCOMB_X23_Y15_N18
\C1|dMap~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~263_combout\ = ((!\C1|Add8~10_combout\ & ((!\C1|Add8~6_combout\) # (!\C1|Add8~8_combout\)))) # (!\C1|LessThan112~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~8_combout\,
	datab => \C1|Add8~10_combout\,
	datac => \C1|Add8~6_combout\,
	datad => \C1|LessThan112~2_combout\,
	combout => \C1|dMap~263_combout\);

-- Location: LCCOMB_X23_Y15_N2
\C1|dMap~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~264_combout\ = (\C1|dMap~262_combout\) # ((\C1|dMap~263_combout\) # ((\C1|Add8~10_combout\ & !\C1|LessThan119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~10_combout\,
	datab => \C1|LessThan119~0_combout\,
	datac => \C1|dMap~262_combout\,
	datad => \C1|dMap~263_combout\,
	combout => \C1|dMap~264_combout\);

-- Location: LCCOMB_X25_Y18_N10
\C1|dMap~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~258_combout\ = (\C1|SQ_Y1\(2) & !\C1|SQ_Y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(2),
	datad => \C1|SQ_Y1\(1),
	combout => \C1|dMap~258_combout\);

-- Location: LCCOMB_X25_Y15_N22
\C1|dMap~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~265_combout\ = ((\C1|Add8~6_combout\ & ((\C1|Add8~4_combout\) # (\C1|dMap~258_combout\)))) # (!\C1|Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~4_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|dMap~258_combout\,
	datad => \C1|Add8~6_combout\,
	combout => \C1|dMap~265_combout\);

-- Location: LCCOMB_X24_Y18_N12
\C1|dMap~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~266_combout\ = ((\C1|dMap~265_combout\) # ((\C1|Add8~10_combout\) # (!\C1|dMap~253_combout\))) # (!\C1|Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~12_combout\,
	datab => \C1|dMap~265_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|dMap~253_combout\,
	combout => \C1|dMap~266_combout\);

-- Location: LCCOMB_X24_Y18_N18
\C1|process_0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~18_combout\ = (\C1|dMap~369_combout\ & (((\C1|dMap~190_combout\ & !\C1|dMap~264_combout\)) # (!\C1|dMap~266_combout\))) # (!\C1|dMap~369_combout\ & (\C1|dMap~190_combout\ & (!\C1|dMap~264_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~369_combout\,
	datab => \C1|dMap~190_combout\,
	datac => \C1|dMap~264_combout\,
	datad => \C1|dMap~266_combout\,
	combout => \C1|process_0~18_combout\);

-- Location: LCCOMB_X24_Y18_N28
\C1|process_0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~19_combout\ = (!\C1|LessThan130~2_combout\ & (!\C1|LessThan112~1_combout\ & ((\C1|process_0~17_combout\) # (\C1|process_0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan130~2_combout\,
	datab => \C1|LessThan112~1_combout\,
	datac => \C1|process_0~17_combout\,
	datad => \C1|process_0~18_combout\,
	combout => \C1|process_0~19_combout\);

-- Location: LCCOMB_X24_Y18_N30
\C1|process_0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~20_combout\ = (\C1|process_0~15_combout\) # ((\C1|process_0~16_combout\) # ((\C1|Add8~22_combout\ & \C1|process_0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|process_0~15_combout\,
	datac => \C1|process_0~16_combout\,
	datad => \C1|process_0~19_combout\,
	combout => \C1|process_0~20_combout\);

-- Location: LCCOMB_X24_Y18_N8
\C1|process_0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~23_combout\ = (\C1|process_0~22_combout\) # ((\C1|esqQ1X1~1_combout\) # ((\C1|process_0~14_combout\) # (\C1|process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~22_combout\,
	datab => \C1|esqQ1X1~1_combout\,
	datac => \C1|process_0~14_combout\,
	datad => \C1|process_0~20_combout\,
	combout => \C1|process_0~23_combout\);

-- Location: LCCOMB_X23_Y18_N22
\C1|Add22~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add22~18_combout\ = \C1|process_0~23_combout\ $ (\C1|Add22~17\ $ (!\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~23_combout\,
	datad => \C1|SQ_X1\(10),
	cin => \C1|Add22~17\,
	combout => \C1|Add22~18_combout\);

-- Location: LCFF_X23_Y18_N23
\C1|SQ_X1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add22~18_combout\,
	ena => \C1|SQ_X1[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(10));

-- Location: LCCOMB_X23_Y19_N18
\C1|LessThan130~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan130~2_combout\ = (!\C1|SQ_X1\(9) & (!\C1|SQ_X1\(10) & ((\C1|SQ_X1\(8)) # (\C1|LessThan134~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|SQ_X1\(10),
	datac => \C1|SQ_X1\(8),
	datad => \C1|LessThan134~1_combout\,
	combout => \C1|LessThan130~2_combout\);

-- Location: LCCOMB_X24_Y19_N8
\C1|dMap~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~20_combout\ = ((\C1|SQ_X1\(3) & ((\C1|SQ_X1\(2)) # (!\C1|SQ_X1\(1))))) # (!\C1|SQ_X1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(4),
	datac => \C1|SQ_X1\(1),
	datad => \C1|SQ_X1\(3),
	combout => \C1|dMap~20_combout\);

-- Location: LCCOMB_X24_Y19_N14
\C1|dMap~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~17_combout\ = (!\C1|SQ_X1\(7) & (!\C1|SQ_X1\(10) & (\C1|dMap~20_combout\ & \C1|SQ_X1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|SQ_X1\(10),
	datac => \C1|dMap~20_combout\,
	datad => \C1|SQ_X1\(8),
	combout => \C1|dMap~17_combout\);

-- Location: LCCOMB_X24_Y19_N12
\C1|dMap~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~369_combout\ = (!\C1|SQ_X1\(6) & (\C1|dMap~17_combout\ & (\C1|SQ_X1\(9) & \C1|SQ_X1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|dMap~17_combout\,
	datac => \C1|SQ_X1\(9),
	datad => \C1|SQ_X1\(5),
	combout => \C1|dMap~369_combout\);

-- Location: LCCOMB_X25_Y17_N30
\C1|dMap~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~231_combout\ = ((\C1|dMap~230_combout\) # (!\C1|dMap~217_combout\)) # (!\C1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datac => \C1|dMap~217_combout\,
	datad => \C1|dMap~230_combout\,
	combout => \C1|dMap~231_combout\);

-- Location: LCCOMB_X25_Y17_N12
\C1|dMap~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~232_combout\ = (\C1|Add1~10_combout\ & ((\C1|Add1~6_combout\) # ((\C1|Add1~8_combout\) # (!\C1|dMap~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|dMap~223_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|dMap~232_combout\);

-- Location: LCCOMB_X25_Y17_N6
\C1|dMap~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~233_combout\ = (((\C1|dMap~232_combout\) # (\C1|Add1~20_combout\)) # (!\C1|Add1~18_combout\)) # (!\C1|LessThan52~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan52~0_combout\,
	datab => \C1|Add1~18_combout\,
	datac => \C1|dMap~232_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|dMap~233_combout\);

-- Location: LCCOMB_X25_Y17_N8
\C1|DRAWMAP~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~76_combout\ = (\C1|dMap~201_combout\ & (((!\C1|dMap~231_combout\ & \C1|dMap~371_combout\)) # (!\C1|dMap~233_combout\))) # (!\C1|dMap~201_combout\ & (!\C1|dMap~231_combout\ & (\C1|dMap~371_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~201_combout\,
	datab => \C1|dMap~231_combout\,
	datac => \C1|dMap~371_combout\,
	datad => \C1|dMap~233_combout\,
	combout => \C1|DRAWMAP~76_combout\);

-- Location: LCCOMB_X25_Y17_N2
\C1|dMap~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~227_combout\ = (\C1|Add1~8_combout\ & ((\C1|Add1~0_combout\) # ((\C1|Add1~2_combout\) # (\C1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~2_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|dMap~227_combout\);

-- Location: LCCOMB_X25_Y17_N0
\C1|dMap~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|dMap~228_combout\ = (!\C1|dMap~226_combout\ & (!\C1|dMap~227_combout\ & (\C1|dMap~224_combout\ & \C1|dMap~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~226_combout\,
	datab => \C1|dMap~227_combout\,
	datac => \C1|dMap~224_combout\,
	datad => \C1|dMap~191_combout\,
	combout => \C1|dMap~228_combout\);

-- Location: LCCOMB_X25_Y17_N26
\C1|DRAWMAP~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAWMAP~77_combout\ = (\C1|DRAWMAP~76_combout\) # ((\C1|dMap~228_combout\) # ((!\C1|dMap~235_combout\ & \C1|dMap~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dMap~235_combout\,
	datab => \C1|dMap~190_combout\,
	datac => \C1|DRAWMAP~76_combout\,
	datad => \C1|dMap~228_combout\,
	combout => \C1|DRAWMAP~77_combout\);

-- Location: LCCOMB_X22_Y17_N4
\C1|arQ1X1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X1~1_combout\ = (\C1|arQ1X1~0_combout\) # ((\C1|DRAWMAP~77_combout\) # ((\C1|dMap~369_combout\ & !\C1|dMap~225_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|arQ1X1~0_combout\,
	datab => \C1|dMap~369_combout\,
	datac => \C1|DRAWMAP~77_combout\,
	datad => \C1|dMap~225_combout\,
	combout => \C1|arQ1X1~1_combout\);

-- Location: LCCOMB_X22_Y16_N26
\C1|arQ1X1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|arQ1X1~2_combout\ = (!\C1|LessThan130~2_combout\ & (!\C1|LessThan51~1_combout\ & ((\C1|DRAWMAP~75_combout\) # (\C1|arQ1X1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAWMAP~75_combout\,
	datab => \C1|LessThan130~2_combout\,
	datac => \C1|LessThan51~1_combout\,
	datad => \C1|arQ1X1~1_combout\,
	combout => \C1|arQ1X1~2_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X22_Y16_N28
\C1|SQ1_Jump[13]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump[13]~0_combout\ = (!\C1|LessThan51~1_combout\ & (!\C1|LessThan70~0_combout\ & \C1|DRAWMAP~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan51~1_combout\,
	datac => \C1|LessThan70~0_combout\,
	datad => \C1|DRAWMAP~84_combout\,
	combout => \C1|SQ1_Jump[13]~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\C1|SQ1_Jump[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump[13]~1_combout\ = (\KEY~combout\(2)) # (((!\C1|arQ1X1~2_combout\ & !\C1|SQ1_Jump[13]~0_combout\)) # (!\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \C1|arQ1X1~2_combout\,
	datac => \SW~combout\(0),
	datad => \C1|SQ1_Jump[13]~0_combout\,
	combout => \C1|SQ1_Jump[13]~1_combout\);

-- Location: LCCOMB_X18_Y16_N4
\C1|SQ1_Jump~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~31_combout\ = (\C1|Add19~54_combout\ & (\C1|SQ1_Jump[13]~1_combout\ & (!\C1|esqQ1X1~1_combout\ & !\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add19~54_combout\,
	datab => \C1|SQ1_Jump[13]~1_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ1_Jump~31_combout\);

-- Location: LCCOMB_X19_Y15_N26
\C1|Add19~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~58_combout\ = (\C1|SQ1_Jump\(29) & (\C1|Add19~57\ & VCC)) # (!\C1|SQ1_Jump\(29) & (!\C1|Add19~57\))
-- \C1|Add19~59\ = CARRY((!\C1|SQ1_Jump\(29) & !\C1|Add19~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(29),
	datad => VCC,
	cin => \C1|Add19~57\,
	combout => \C1|Add19~58_combout\,
	cout => \C1|Add19~59\);

-- Location: LCCOMB_X18_Y16_N22
\C1|SQ1_Jump~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~33_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~58_combout\ & (\C1|SQ1_Jump[13]~1_combout\ & !\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~58_combout\,
	datac => \C1|SQ1_Jump[13]~1_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ1_Jump~33_combout\);

-- Location: LCFF_X18_Y16_N23
\C1|SQ1_Jump[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~33_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(29));

-- Location: LCCOMB_X19_Y15_N28
\C1|Add19~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~60_combout\ = (\C1|SQ1_Jump\(30) & ((GND) # (!\C1|Add19~59\))) # (!\C1|SQ1_Jump\(30) & (\C1|Add19~59\ $ (GND)))
-- \C1|Add19~61\ = CARRY((\C1|SQ1_Jump\(30)) # (!\C1|Add19~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(30),
	datad => VCC,
	cin => \C1|Add19~59\,
	combout => \C1|Add19~60_combout\,
	cout => \C1|Add19~61\);

-- Location: LCCOMB_X18_Y16_N24
\C1|SQ1_Jump~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~34_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~60_combout\ & (\C1|SQ1_Jump[13]~1_combout\ & !\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~60_combout\,
	datac => \C1|SQ1_Jump[13]~1_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ1_Jump~34_combout\);

-- Location: LCFF_X18_Y16_N25
\C1|SQ1_Jump[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~34_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(30));

-- Location: LCCOMB_X23_Y16_N2
\C1|SQ1_Jump~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~7_combout\ = ((\C1|Add19~6_combout\ & (!\C1|dirQ1X1~0_combout\ & !\C1|esqQ1X1~1_combout\))) # (!\C1|SQ1_Jump[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add19~6_combout\,
	datab => \C1|dirQ1X1~0_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~7_combout\);

-- Location: LCFF_X23_Y16_N3
\C1|SQ1_Jump[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~7_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(3));

-- Location: LCCOMB_X19_Y16_N0
\C1|Add19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~0_combout\ = \C1|SQ1_Jump\(0) $ (VCC)
-- \C1|Add19~1\ = CARRY(\C1|SQ1_Jump\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(0),
	datad => VCC,
	combout => \C1|Add19~0_combout\,
	cout => \C1|Add19~1\);

-- Location: LCCOMB_X23_Y16_N12
\C1|SQ1_Jump~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~4_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~0_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~0_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~4_combout\);

-- Location: LCFF_X23_Y16_N13
\C1|SQ1_Jump[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~4_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(0));

-- Location: LCCOMB_X19_Y16_N4
\C1|Add19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~4_combout\ = (\C1|SQ1_Jump\(2) & ((GND) # (!\C1|Add19~3\))) # (!\C1|SQ1_Jump\(2) & (\C1|Add19~3\ $ (GND)))
-- \C1|Add19~5\ = CARRY((\C1|SQ1_Jump\(2)) # (!\C1|Add19~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(2),
	datad => VCC,
	cin => \C1|Add19~3\,
	combout => \C1|Add19~4_combout\,
	cout => \C1|Add19~5\);

-- Location: LCCOMB_X19_Y16_N8
\C1|Add19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~8_combout\ = (\C1|SQ1_Jump\(4) & ((GND) # (!\C1|Add19~7\))) # (!\C1|SQ1_Jump\(4) & (\C1|Add19~7\ $ (GND)))
-- \C1|Add19~9\ = CARRY((\C1|SQ1_Jump\(4)) # (!\C1|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(4),
	datad => VCC,
	cin => \C1|Add19~7\,
	combout => \C1|Add19~8_combout\,
	cout => \C1|Add19~9\);

-- Location: LCCOMB_X23_Y16_N30
\C1|SQ1_Jump~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~8_combout\ = ((!\C1|esqQ1X1~1_combout\ & (\C1|Add19~8_combout\ & !\C1|dirQ1X1~0_combout\))) # (!\C1|SQ1_Jump[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~8_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~8_combout\);

-- Location: LCFF_X23_Y16_N31
\C1|SQ1_Jump[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~8_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(4));

-- Location: LCCOMB_X19_Y16_N10
\C1|Add19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~10_combout\ = (\C1|SQ1_Jump\(5) & (\C1|Add19~9\ & VCC)) # (!\C1|SQ1_Jump\(5) & (!\C1|Add19~9\))
-- \C1|Add19~11\ = CARRY((!\C1|SQ1_Jump\(5) & !\C1|Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(5),
	datad => VCC,
	cin => \C1|Add19~9\,
	combout => \C1|Add19~10_combout\,
	cout => \C1|Add19~11\);

-- Location: LCCOMB_X23_Y16_N28
\C1|SQ1_Jump~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~9_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~10_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~10_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~9_combout\);

-- Location: LCFF_X23_Y16_N29
\C1|SQ1_Jump[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~9_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(5));

-- Location: LCCOMB_X19_Y16_N12
\C1|Add19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~12_combout\ = (\C1|SQ1_Jump\(6) & ((GND) # (!\C1|Add19~11\))) # (!\C1|SQ1_Jump\(6) & (\C1|Add19~11\ $ (GND)))
-- \C1|Add19~13\ = CARRY((\C1|SQ1_Jump\(6)) # (!\C1|Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(6),
	datad => VCC,
	cin => \C1|Add19~11\,
	combout => \C1|Add19~12_combout\,
	cout => \C1|Add19~13\);

-- Location: LCCOMB_X23_Y16_N22
\C1|SQ1_Jump~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~10_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~12_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~12_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~10_combout\);

-- Location: LCFF_X23_Y16_N23
\C1|SQ1_Jump[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~10_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(6));

-- Location: LCCOMB_X19_Y16_N14
\C1|Add19~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~14_combout\ = (\C1|SQ1_Jump\(7) & (\C1|Add19~13\ & VCC)) # (!\C1|SQ1_Jump\(7) & (!\C1|Add19~13\))
-- \C1|Add19~15\ = CARRY((!\C1|SQ1_Jump\(7) & !\C1|Add19~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(7),
	datad => VCC,
	cin => \C1|Add19~13\,
	combout => \C1|Add19~14_combout\,
	cout => \C1|Add19~15\);

-- Location: LCCOMB_X23_Y16_N24
\C1|SQ1_Jump~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~11_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~14_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~14_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~11_combout\);

-- Location: LCFF_X23_Y16_N25
\C1|SQ1_Jump[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~11_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(7));

-- Location: LCCOMB_X19_Y16_N16
\C1|Add19~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~16_combout\ = (\C1|SQ1_Jump\(8) & ((GND) # (!\C1|Add19~15\))) # (!\C1|SQ1_Jump\(8) & (\C1|Add19~15\ $ (GND)))
-- \C1|Add19~17\ = CARRY((\C1|SQ1_Jump\(8)) # (!\C1|Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(8),
	datad => VCC,
	cin => \C1|Add19~15\,
	combout => \C1|Add19~16_combout\,
	cout => \C1|Add19~17\);

-- Location: LCCOMB_X20_Y16_N20
\C1|SQ1_Jump~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~12_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~16_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~16_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~12_combout\);

-- Location: LCFF_X20_Y16_N21
\C1|SQ1_Jump[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~12_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(8));

-- Location: LCCOMB_X19_Y16_N18
\C1|Add19~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~18_combout\ = (\C1|SQ1_Jump\(9) & (\C1|Add19~17\ & VCC)) # (!\C1|SQ1_Jump\(9) & (!\C1|Add19~17\))
-- \C1|Add19~19\ = CARRY((!\C1|SQ1_Jump\(9) & !\C1|Add19~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(9),
	datad => VCC,
	cin => \C1|Add19~17\,
	combout => \C1|Add19~18_combout\,
	cout => \C1|Add19~19\);

-- Location: LCCOMB_X20_Y16_N22
\C1|SQ1_Jump~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~13_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~18_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~18_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~13_combout\);

-- Location: LCFF_X20_Y16_N23
\C1|SQ1_Jump[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~13_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(9));

-- Location: LCCOMB_X19_Y16_N22
\C1|Add19~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~22_combout\ = (\C1|SQ1_Jump\(11) & (\C1|Add19~21\ & VCC)) # (!\C1|SQ1_Jump\(11) & (!\C1|Add19~21\))
-- \C1|Add19~23\ = CARRY((!\C1|SQ1_Jump\(11) & !\C1|Add19~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(11),
	datad => VCC,
	cin => \C1|Add19~21\,
	combout => \C1|Add19~22_combout\,
	cout => \C1|Add19~23\);

-- Location: LCCOMB_X20_Y16_N30
\C1|SQ1_Jump~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~15_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~22_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~22_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~15_combout\);

-- Location: LCFF_X20_Y16_N31
\C1|SQ1_Jump[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~15_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(11));

-- Location: LCCOMB_X19_Y16_N26
\C1|Add19~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~26_combout\ = (\C1|SQ1_Jump\(13) & (\C1|Add19~25\ & VCC)) # (!\C1|SQ1_Jump\(13) & (!\C1|Add19~25\))
-- \C1|Add19~27\ = CARRY((!\C1|SQ1_Jump\(13) & !\C1|Add19~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(13),
	datad => VCC,
	cin => \C1|Add19~25\,
	combout => \C1|Add19~26_combout\,
	cout => \C1|Add19~27\);

-- Location: LCCOMB_X23_Y16_N26
\C1|SQ1_Jump~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~17_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~26_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~26_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~17_combout\);

-- Location: LCFF_X23_Y16_N27
\C1|SQ1_Jump[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~17_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(13));

-- Location: LCCOMB_X19_Y16_N28
\C1|Add19~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~28_combout\ = (\C1|SQ1_Jump\(14) & ((GND) # (!\C1|Add19~27\))) # (!\C1|SQ1_Jump\(14) & (\C1|Add19~27\ $ (GND)))
-- \C1|Add19~29\ = CARRY((\C1|SQ1_Jump\(14)) # (!\C1|Add19~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(14),
	datad => VCC,
	cin => \C1|Add19~27\,
	combout => \C1|Add19~28_combout\,
	cout => \C1|Add19~29\);

-- Location: LCCOMB_X23_Y16_N16
\C1|SQ1_Jump~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~18_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~28_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~28_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~18_combout\);

-- Location: LCFF_X23_Y16_N17
\C1|SQ1_Jump[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~18_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(14));

-- Location: LCCOMB_X19_Y16_N30
\C1|Add19~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~30_combout\ = (\C1|SQ1_Jump\(15) & (\C1|Add19~29\ & VCC)) # (!\C1|SQ1_Jump\(15) & (!\C1|Add19~29\))
-- \C1|Add19~31\ = CARRY((!\C1|SQ1_Jump\(15) & !\C1|Add19~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(15),
	datad => VCC,
	cin => \C1|Add19~29\,
	combout => \C1|Add19~30_combout\,
	cout => \C1|Add19~31\);

-- Location: LCCOMB_X19_Y15_N2
\C1|Add19~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~34_combout\ = (\C1|SQ1_Jump\(17) & (\C1|Add19~33\ & VCC)) # (!\C1|SQ1_Jump\(17) & (!\C1|Add19~33\))
-- \C1|Add19~35\ = CARRY((!\C1|SQ1_Jump\(17) & !\C1|Add19~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(17),
	datad => VCC,
	cin => \C1|Add19~33\,
	combout => \C1|Add19~34_combout\,
	cout => \C1|Add19~35\);

-- Location: LCCOMB_X18_Y16_N0
\C1|SQ1_Jump~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~21_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~34_combout\ & (\C1|SQ1_Jump[13]~1_combout\ & !\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~34_combout\,
	datac => \C1|SQ1_Jump[13]~1_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ1_Jump~21_combout\);

-- Location: LCFF_X18_Y16_N1
\C1|SQ1_Jump[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~21_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(17));

-- Location: LCCOMB_X19_Y15_N4
\C1|Add19~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~36_combout\ = (\C1|SQ1_Jump\(18) & ((GND) # (!\C1|Add19~35\))) # (!\C1|SQ1_Jump\(18) & (\C1|Add19~35\ $ (GND)))
-- \C1|Add19~37\ = CARRY((\C1|SQ1_Jump\(18)) # (!\C1|Add19~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(18),
	datad => VCC,
	cin => \C1|Add19~35\,
	combout => \C1|Add19~36_combout\,
	cout => \C1|Add19~37\);

-- Location: LCCOMB_X18_Y16_N2
\C1|SQ1_Jump~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~22_combout\ = (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~36_combout\ & (!\C1|esqQ1X1~1_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~0_combout\,
	datab => \C1|Add19~36_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~22_combout\);

-- Location: LCFF_X18_Y16_N3
\C1|SQ1_Jump[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~22_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(18));

-- Location: LCCOMB_X19_Y15_N8
\C1|Add19~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~40_combout\ = (\C1|SQ1_Jump\(20) & ((GND) # (!\C1|Add19~39\))) # (!\C1|SQ1_Jump\(20) & (\C1|Add19~39\ $ (GND)))
-- \C1|Add19~41\ = CARRY((\C1|SQ1_Jump\(20)) # (!\C1|Add19~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(20),
	datad => VCC,
	cin => \C1|Add19~39\,
	combout => \C1|Add19~40_combout\,
	cout => \C1|Add19~41\);

-- Location: LCCOMB_X19_Y15_N10
\C1|Add19~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~42_combout\ = (\C1|SQ1_Jump\(21) & (\C1|Add19~41\ & VCC)) # (!\C1|SQ1_Jump\(21) & (!\C1|Add19~41\))
-- \C1|Add19~43\ = CARRY((!\C1|SQ1_Jump\(21) & !\C1|Add19~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(21),
	datad => VCC,
	cin => \C1|Add19~41\,
	combout => \C1|Add19~42_combout\,
	cout => \C1|Add19~43\);

-- Location: LCCOMB_X19_Y17_N24
\C1|SQ1_Jump~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~25_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~42_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~42_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~25_combout\);

-- Location: LCFF_X19_Y17_N25
\C1|SQ1_Jump[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~25_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(21));

-- Location: LCCOMB_X19_Y15_N12
\C1|Add19~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~44_combout\ = (\C1|SQ1_Jump\(22) & ((GND) # (!\C1|Add19~43\))) # (!\C1|SQ1_Jump\(22) & (\C1|Add19~43\ $ (GND)))
-- \C1|Add19~45\ = CARRY((\C1|SQ1_Jump\(22)) # (!\C1|Add19~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(22),
	datad => VCC,
	cin => \C1|Add19~43\,
	combout => \C1|Add19~44_combout\,
	cout => \C1|Add19~45\);

-- Location: LCCOMB_X18_Y16_N16
\C1|SQ1_Jump~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~26_combout\ = (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~44_combout\ & (!\C1|esqQ1X1~1_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~0_combout\,
	datab => \C1|Add19~44_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~26_combout\);

-- Location: LCFF_X18_Y16_N17
\C1|SQ1_Jump[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~26_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(22));

-- Location: LCCOMB_X19_Y15_N14
\C1|Add19~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~46_combout\ = (\C1|SQ1_Jump\(23) & (\C1|Add19~45\ & VCC)) # (!\C1|SQ1_Jump\(23) & (!\C1|Add19~45\))
-- \C1|Add19~47\ = CARRY((!\C1|SQ1_Jump\(23) & !\C1|Add19~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(23),
	datad => VCC,
	cin => \C1|Add19~45\,
	combout => \C1|Add19~46_combout\,
	cout => \C1|Add19~47\);

-- Location: LCCOMB_X18_Y16_N30
\C1|SQ1_Jump~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~27_combout\ = (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~46_combout\ & (!\C1|esqQ1X1~1_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~0_combout\,
	datab => \C1|Add19~46_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~27_combout\);

-- Location: LCFF_X18_Y16_N31
\C1|SQ1_Jump[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~27_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(23));

-- Location: LCCOMB_X19_Y15_N18
\C1|Add19~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~50_combout\ = (\C1|SQ1_Jump\(25) & (\C1|Add19~49\ & VCC)) # (!\C1|SQ1_Jump\(25) & (!\C1|Add19~49\))
-- \C1|Add19~51\ = CARRY((!\C1|SQ1_Jump\(25) & !\C1|Add19~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(25),
	datad => VCC,
	cin => \C1|Add19~49\,
	combout => \C1|Add19~50_combout\,
	cout => \C1|Add19~51\);

-- Location: LCCOMB_X18_Y16_N8
\C1|SQ1_Jump~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~29_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~50_combout\ & (\C1|SQ1_Jump[13]~1_combout\ & !\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~50_combout\,
	datac => \C1|SQ1_Jump[13]~1_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ1_Jump~29_combout\);

-- Location: LCFF_X18_Y16_N9
\C1|SQ1_Jump[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~29_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(25));

-- Location: LCCOMB_X19_Y15_N20
\C1|Add19~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~52_combout\ = (\C1|SQ1_Jump\(26) & ((GND) # (!\C1|Add19~51\))) # (!\C1|SQ1_Jump\(26) & (\C1|Add19~51\ $ (GND)))
-- \C1|Add19~53\ = CARRY((\C1|SQ1_Jump\(26)) # (!\C1|Add19~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(26),
	datad => VCC,
	cin => \C1|Add19~51\,
	combout => \C1|Add19~52_combout\,
	cout => \C1|Add19~53\);

-- Location: LCCOMB_X18_Y16_N18
\C1|SQ1_Jump~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~30_combout\ = (!\C1|dirQ1X1~0_combout\ & (\C1|Add19~52_combout\ & (!\C1|esqQ1X1~1_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|dirQ1X1~0_combout\,
	datab => \C1|Add19~52_combout\,
	datac => \C1|esqQ1X1~1_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~30_combout\);

-- Location: LCFF_X18_Y16_N19
\C1|SQ1_Jump[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~30_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(26));

-- Location: LCCOMB_X18_Y16_N26
\C1|LessThan261~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~7_combout\ = (!\C1|SQ1_Jump\(24) & (!\C1|SQ1_Jump\(27) & (!\C1|SQ1_Jump\(25) & !\C1|SQ1_Jump\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(24),
	datab => \C1|SQ1_Jump\(27),
	datac => \C1|SQ1_Jump\(25),
	datad => \C1|SQ1_Jump\(26),
	combout => \C1|LessThan261~7_combout\);

-- Location: LCCOMB_X18_Y16_N10
\C1|LessThan261~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~8_combout\ = (!\C1|SQ1_Jump\(28) & (!\C1|SQ1_Jump\(29) & (!\C1|SQ1_Jump\(30) & \C1|LessThan261~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(28),
	datab => \C1|SQ1_Jump\(29),
	datac => \C1|SQ1_Jump\(30),
	datad => \C1|LessThan261~7_combout\,
	combout => \C1|LessThan261~8_combout\);

-- Location: LCCOMB_X19_Y17_N18
\C1|SQ1_Jump~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~24_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~40_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~40_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~24_combout\);

-- Location: LCFF_X19_Y17_N19
\C1|SQ1_Jump[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~24_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(20));

-- Location: LCCOMB_X18_Y16_N28
\C1|LessThan261~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~6_combout\ = (!\C1|SQ1_Jump\(22) & (!\C1|SQ1_Jump\(23) & (!\C1|SQ1_Jump\(21) & !\C1|SQ1_Jump\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(22),
	datab => \C1|SQ1_Jump\(23),
	datac => \C1|SQ1_Jump\(21),
	datad => \C1|SQ1_Jump\(20),
	combout => \C1|LessThan261~6_combout\);

-- Location: LCCOMB_X23_Y16_N18
\C1|LessThan261~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~1_combout\ = (!\C1|SQ1_Jump\(6) & (!\C1|SQ1_Jump\(5) & (!\C1|SQ1_Jump\(7) & !\C1|SQ1_Jump\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(6),
	datab => \C1|SQ1_Jump\(5),
	datac => \C1|SQ1_Jump\(7),
	datad => \C1|SQ1_Jump\(4),
	combout => \C1|LessThan261~1_combout\);

-- Location: LCCOMB_X23_Y16_N14
\C1|SQ1_Jump~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~19_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~30_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~30_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~19_combout\);

-- Location: LCFF_X23_Y16_N15
\C1|SQ1_Jump[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~19_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(15));

-- Location: LCCOMB_X23_Y16_N4
\C1|LessThan261~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~3_combout\ = (!\C1|SQ1_Jump\(12) & (!\C1|SQ1_Jump\(15) & (!\C1|SQ1_Jump\(14) & !\C1|SQ1_Jump\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(12),
	datab => \C1|SQ1_Jump\(15),
	datac => \C1|SQ1_Jump\(14),
	datad => \C1|SQ1_Jump\(13),
	combout => \C1|LessThan261~3_combout\);

-- Location: LCCOMB_X23_Y16_N8
\C1|SQ1_Jump~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~6_combout\ = ((!\C1|esqQ1X1~1_combout\ & (\C1|Add19~4_combout\ & !\C1|dirQ1X1~0_combout\))) # (!\C1|SQ1_Jump[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~4_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~6_combout\);

-- Location: LCFF_X23_Y16_N9
\C1|SQ1_Jump[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~6_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(2));

-- Location: LCCOMB_X23_Y16_N0
\C1|LessThan261~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~0_combout\ = (!\C1|SQ1_Jump\(1) & (!\C1|SQ1_Jump\(3) & (!\C1|SQ1_Jump\(2) & !\C1|SQ1_Jump\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ1_Jump\(1),
	datab => \C1|SQ1_Jump\(3),
	datac => \C1|SQ1_Jump\(2),
	datad => \C1|SQ1_Jump\(0),
	combout => \C1|LessThan261~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\C1|LessThan261~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~4_combout\ = (\C1|LessThan261~2_combout\ & (\C1|LessThan261~1_combout\ & (\C1|LessThan261~3_combout\ & \C1|LessThan261~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan261~2_combout\,
	datab => \C1|LessThan261~1_combout\,
	datac => \C1|LessThan261~3_combout\,
	datad => \C1|LessThan261~0_combout\,
	combout => \C1|LessThan261~4_combout\);

-- Location: LCCOMB_X20_Y16_N16
\C1|LessThan261~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~9_combout\ = (\C1|LessThan261~5_combout\ & (\C1|LessThan261~8_combout\ & (\C1|LessThan261~6_combout\ & \C1|LessThan261~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan261~5_combout\,
	datab => \C1|LessThan261~8_combout\,
	datac => \C1|LessThan261~6_combout\,
	datad => \C1|LessThan261~4_combout\,
	combout => \C1|LessThan261~9_combout\);

-- Location: LCCOMB_X20_Y16_N8
\C1|LessThan261~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan261~10_combout\ = (\C1|SQ1_Jump\(31)) # (\C1|LessThan261~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(31),
	datac => \C1|LessThan261~9_combout\,
	combout => \C1|LessThan261~10_combout\);

-- Location: LCCOMB_X22_Y16_N0
\C1|SQ1_Jump[31]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump[31]~3_combout\ = (\C1|LessThan259~0_combout\ & (\C1|LessThan260~0_combout\ & ((!\C1|SQ1_Jump[13]~1_combout\) # (!\C1|LessThan261~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan259~0_combout\,
	datab => \C1|LessThan260~0_combout\,
	datac => \C1|LessThan261~10_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump[31]~3_combout\);

-- Location: LCFF_X18_Y16_N5
\C1|SQ1_Jump[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~31_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(27));

-- Location: LCCOMB_X19_Y15_N24
\C1|Add19~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~56_combout\ = (\C1|SQ1_Jump\(28) & ((GND) # (!\C1|Add19~55\))) # (!\C1|SQ1_Jump\(28) & (\C1|Add19~55\ $ (GND)))
-- \C1|Add19~57\ = CARRY((\C1|SQ1_Jump\(28)) # (!\C1|Add19~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ1_Jump\(28),
	datad => VCC,
	cin => \C1|Add19~55\,
	combout => \C1|Add19~56_combout\,
	cout => \C1|Add19~57\);

-- Location: LCCOMB_X18_Y16_N20
\C1|SQ1_Jump~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~32_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~56_combout\ & (\C1|SQ1_Jump[13]~1_combout\ & !\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~56_combout\,
	datac => \C1|SQ1_Jump[13]~1_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ1_Jump~32_combout\);

-- Location: LCFF_X18_Y16_N21
\C1|SQ1_Jump[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~32_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(28));

-- Location: LCCOMB_X19_Y15_N30
\C1|Add19~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add19~62_combout\ = \C1|Add19~61\ $ (!\C1|SQ1_Jump\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|SQ1_Jump\(31),
	cin => \C1|Add19~61\,
	combout => \C1|Add19~62_combout\);

-- Location: LCCOMB_X19_Y17_N8
\C1|SQ1_Jump~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ1_Jump~2_combout\ = (!\C1|esqQ1X1~1_combout\ & (\C1|Add19~62_combout\ & (!\C1|dirQ1X1~0_combout\ & \C1|SQ1_Jump[13]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|Add19~62_combout\,
	datac => \C1|dirQ1X1~0_combout\,
	datad => \C1|SQ1_Jump[13]~1_combout\,
	combout => \C1|SQ1_Jump~2_combout\);

-- Location: LCFF_X19_Y17_N9
\C1|SQ1_Jump[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ1_Jump~2_combout\,
	ena => \C1|SQ1_Jump[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ1_Jump\(31));

-- Location: LCCOMB_X19_Y17_N12
\C1|SQ_Y1[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[3]~0_combout\ = (\C1|esqQ1X1~1_combout\) # ((\C1|SQ1_Jump\(31)) # ((\C1|LessThan261~9_combout\) # (\C1|dirQ1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|esqQ1X1~1_combout\,
	datab => \C1|SQ1_Jump\(31),
	datac => \C1|LessThan261~9_combout\,
	datad => \C1|dirQ1X1~0_combout\,
	combout => \C1|SQ_Y1[3]~0_combout\);

-- Location: LCCOMB_X23_Y17_N20
\C1|Add16~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add16~18_combout\ = \C1|SQ_Y1\(10) $ (\C1|Add16~17\ $ (!\C1|SQ_Y1[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datad => \C1|SQ_Y1[3]~0_combout\,
	cin => \C1|Add16~17\,
	combout => \C1|Add16~18_combout\);

-- Location: LCFF_X23_Y17_N21
\C1|SQ_Y1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add16~18_combout\,
	ena => \C1|SQ_Y1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_Y1\(10));

-- Location: LCCOMB_X26_Y17_N2
\C1|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan2~1_cout\);

-- Location: LCCOMB_X26_Y17_N4
\C1|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~3_cout\ = CARRY((\C1|SQ_Y1\(1) & (!\C1|VPOS\(1) & !\C1|LessThan2~1_cout\)) # (!\C1|SQ_Y1\(1) & ((!\C1|LessThan2~1_cout\) # (!\C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan2~1_cout\,
	cout => \C1|LessThan2~3_cout\);

-- Location: LCCOMB_X26_Y17_N6
\C1|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~5_cout\ = CARRY((\C1|SQ_Y1\(2) & ((\C1|VPOS\(2)) # (!\C1|LessThan2~3_cout\))) # (!\C1|SQ_Y1\(2) & (\C1|VPOS\(2) & !\C1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan2~3_cout\,
	cout => \C1|LessThan2~5_cout\);

-- Location: LCCOMB_X26_Y17_N8
\C1|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~7_cout\ = CARRY((\C1|SQ_Y1\(3) & (!\C1|VPOS\(3) & !\C1|LessThan2~5_cout\)) # (!\C1|SQ_Y1\(3) & ((!\C1|LessThan2~5_cout\) # (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan2~5_cout\,
	cout => \C1|LessThan2~7_cout\);

-- Location: LCCOMB_X26_Y17_N10
\C1|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~9_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan2~7_cout\) # (!\C1|SQ_Y1\(4)))) # (!\C1|VPOS\(4) & (!\C1|SQ_Y1\(4) & !\C1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|LessThan2~7_cout\,
	cout => \C1|LessThan2~9_cout\);

-- Location: LCCOMB_X26_Y17_N12
\C1|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~11_cout\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|LessThan2~9_cout\) # (!\C1|VPOS\(5)))) # (!\C1|SQ_Y1\(5) & (!\C1|VPOS\(5) & !\C1|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan2~9_cout\,
	cout => \C1|LessThan2~11_cout\);

-- Location: LCCOMB_X26_Y17_N14
\C1|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~13_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan2~11_cout\) # (!\C1|SQ_Y1\(6)))) # (!\C1|VPOS\(6) & (!\C1|SQ_Y1\(6) & !\C1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|LessThan2~11_cout\,
	cout => \C1|LessThan2~13_cout\);

-- Location: LCCOMB_X26_Y17_N16
\C1|LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~15_cout\ = CARRY((\C1|SQ_Y1\(7) & (!\C1|VPOS\(7) & !\C1|LessThan2~13_cout\)) # (!\C1|SQ_Y1\(7) & ((!\C1|LessThan2~13_cout\) # (!\C1|VPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan2~13_cout\,
	cout => \C1|LessThan2~15_cout\);

-- Location: LCCOMB_X26_Y17_N18
\C1|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~17_cout\ = CARRY((\C1|SQ_Y1\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan2~15_cout\))) # (!\C1|SQ_Y1\(8) & (\C1|VPOS\(8) & !\C1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan2~15_cout\,
	cout => \C1|LessThan2~17_cout\);

-- Location: LCCOMB_X26_Y17_N20
\C1|LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~19_cout\ = CARRY((\C1|VPOS\(9) & (!\C1|SQ_Y1\(9) & !\C1|LessThan2~17_cout\)) # (!\C1|VPOS\(9) & ((!\C1|LessThan2~17_cout\) # (!\C1|SQ_Y1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|LessThan2~17_cout\,
	cout => \C1|LessThan2~19_cout\);

-- Location: LCCOMB_X26_Y17_N22
\C1|LessThan2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~20_combout\ = (\C1|SQ_Y1\(10) & (!\C1|LessThan2~19_cout\ & \C1|VPOS\(10))) # (!\C1|SQ_Y1\(10) & ((\C1|VPOS\(10)) # (!\C1|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan2~19_cout\,
	combout => \C1|LessThan2~20_combout\);

-- Location: LCCOMB_X26_Y19_N12
\C1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_cout\ = CARRY((\C1|SQ_X1\(1) & \C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cout => \C1|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y19_N14
\C1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_cout\ = CARRY((\C1|HPOS\(2) & (\C1|SQ_X1\(2) & !\C1|LessThan0~1_cout\)) # (!\C1|HPOS\(2) & ((\C1|SQ_X1\(2)) # (!\C1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan0~1_cout\,
	cout => \C1|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y19_N16
\C1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~5_cout\ = CARRY((\C1|HPOS\(3) & ((!\C1|LessThan0~3_cout\) # (!\C1|SQ_X1\(3)))) # (!\C1|HPOS\(3) & (!\C1|SQ_X1\(3) & !\C1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan0~3_cout\,
	cout => \C1|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y19_N18
\C1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~7_cout\ = CARRY((\C1|HPOS\(4) & (!\C1|SQ_X1\(4) & !\C1|LessThan0~5_cout\)) # (!\C1|HPOS\(4) & ((!\C1|LessThan0~5_cout\) # (!\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|LessThan0~5_cout\,
	cout => \C1|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y19_N20
\C1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~9_cout\ = CARRY((\C1|HPOS\(5) & ((\C1|SQ_X1\(5)) # (!\C1|LessThan0~7_cout\))) # (!\C1|HPOS\(5) & (\C1|SQ_X1\(5) & !\C1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|LessThan0~7_cout\,
	cout => \C1|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y19_N22
\C1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~11_cout\ = CARRY((\C1|HPOS\(6) & (\C1|SQ_X1\(6) & !\C1|LessThan0~9_cout\)) # (!\C1|HPOS\(6) & ((\C1|SQ_X1\(6)) # (!\C1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|LessThan0~9_cout\,
	cout => \C1|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y19_N24
\C1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~13_cout\ = CARRY((\C1|SQ_X1\(7) & ((\C1|HPOS\(7)) # (!\C1|LessThan0~11_cout\))) # (!\C1|SQ_X1\(7) & (\C1|HPOS\(7) & !\C1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan0~11_cout\,
	cout => \C1|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y19_N26
\C1|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~15_cout\ = CARRY((\C1|SQ_X1\(8) & (!\C1|HPOS\(8) & !\C1|LessThan0~13_cout\)) # (!\C1|SQ_X1\(8) & ((!\C1|LessThan0~13_cout\) # (!\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan0~13_cout\,
	cout => \C1|LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y19_N28
\C1|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~17_cout\ = CARRY((\C1|HPOS\(9) & ((!\C1|LessThan0~15_cout\) # (!\C1|SQ_X1\(9)))) # (!\C1|HPOS\(9) & (!\C1|SQ_X1\(9) & !\C1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|LessThan0~15_cout\,
	cout => \C1|LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y19_N30
\C1|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~18_combout\ = (\C1|SQ_X1\(10) & (\C1|LessThan0~17_cout\ & \C1|HPOS\(10))) # (!\C1|SQ_X1\(10) & ((\C1|LessThan0~17_cout\) # (\C1|HPOS\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan0~17_cout\,
	combout => \C1|LessThan0~18_combout\);

-- Location: LCCOMB_X30_Y17_N12
\C1|B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~0_combout\ = (!\C1|DRAW2~1_combout\ & (((!\C1|LessThan0~18_combout\) # (!\C1|LessThan2~20_combout\)) # (!\C1|DRAW1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~0_combout\,
	datab => \C1|LessThan2~20_combout\,
	datac => \C1|LessThan0~18_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|B~0_combout\);

-- Location: LCCOMB_X30_Y17_N28
\C1|R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (!\C1|process_0~11_combout\ & ((\C1|DRAWMAP~51_combout\) # (!\C1|B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~11_combout\,
	datac => \C1|DRAWMAP~51_combout\,
	datad => \C1|B~0_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X30_Y17_N8
\C1|R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\C1|R~0_combout\ & ((!\C1|DRAW2~1_combout\) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \C1|DRAW2~1_combout\,
	datad => \C1|R~0_combout\,
	combout => \C1|R~1_combout\);

-- Location: LCFF_X30_Y17_N9
\C1|R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(0));

-- Location: LCCOMB_X30_Y17_N14
\C1|B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~1_combout\ = (\C1|B~0_combout\ & ((\C1|DRAWMAP~51_combout\))) # (!\C1|B~0_combout\ & (!\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datac => \C1|DRAWMAP~51_combout\,
	datad => \C1|B~0_combout\,
	combout => \C1|B~1_combout\);

-- Location: LCCOMB_X30_Y17_N6
\C1|B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (!\C1|process_0~11_combout\ & ((\C1|R~2_combout\ & ((!\SW~combout\(0)))) # (!\C1|R~2_combout\ & (\C1|B~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~2_combout\,
	datab => \C1|process_0~11_combout\,
	datac => \C1|B~1_combout\,
	datad => \SW~combout\(0),
	combout => \C1|B~2_combout\);

-- Location: LCFF_X30_Y17_N7
\C1|B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(0));

-- Location: LCCOMB_X30_Y17_N16
\C1|R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~2_combout\ = (\C1|DRAW1~0_combout\ & (\C1|LessThan2~20_combout\ & (\C1|LessThan0~18_combout\ & !\C1|DRAW2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~0_combout\,
	datab => \C1|LessThan2~20_combout\,
	datac => \C1|LessThan0~18_combout\,
	datad => \C1|DRAW2~1_combout\,
	combout => \C1|R~2_combout\);

-- Location: LCCOMB_X30_Y17_N0
\C1|G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~0_combout\ = (\C1|R~0_combout\ & ((!\C1|R~2_combout\) # (!\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \C1|R~2_combout\,
	datad => \C1|R~0_combout\,
	combout => \C1|G~0_combout\);

-- Location: LCFF_X30_Y17_N1
\C1|G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|G\(0));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_24(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|HSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|VSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));
END structure;


