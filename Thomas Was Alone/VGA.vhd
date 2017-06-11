library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.sync_package.all;

-- Unidade de conex~ao VGA

ENTITY VGA IS
PORT(
CLOCK_24: IN STD_LOGIC_VECTOR(1 downto 0);
VGA_HS,VGA_VS:OUT STD_LOGIC;
SW: STD_LOGIC_VECTOR(9 downto 0);
KEY: STD_LOGIC_VECTOR(3 DOWNTO 0);
VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0);
LEDG : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END VGA;


ARCHITECTURE MAIN OF VGA IS
SIGNAL VGACLK,RESET,OVER:STD_LOGIC;

    component pll is
        port (
            clkout_clk : out std_logic;        -- clk
            clkin_clk  : in  std_logic := 'X'; -- clk
            rst_reset  : in  std_logic := 'X'  -- reset
        );
	 END COMPONENT pll;
 BEGIN
 
 C: pll PORT MAP (VGACLK,CLOCK_24(0),RESET);
 C1: SYNC PORT MAP(VGACLK,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B,KEY,SW(1 DOWNTO 0), SW(9 DOWNTO 8), OVER);
 
 LEDG <= (others => OVER);
 
 END MAIN;
 