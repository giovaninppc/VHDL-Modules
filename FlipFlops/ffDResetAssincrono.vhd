LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ffDResetAssincrono IS 
	PORT (
		D, Resetn, Clock : IN STD_LOGIC;
		Q: OUT STD_LOGIC;
	);
END ffDResetAssincrono;

ARCHITECTURE Behavior OF ffDResetAssincrono IS BEGIN
	BEGIN