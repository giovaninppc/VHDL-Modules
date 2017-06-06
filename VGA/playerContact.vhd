library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

PACKAGE PC IS
PROCEDURE SQ(SIGNAL Xcur,Ycur,Xpos,Ypos,Xsize,Ysize:IN INTEGER;
				 SIGNAL RGB:OUT STD_LOGIC_VECTOR(3 downto 0);
				 SIGNAL DRAW: OUT STD_LOGIC);
END PC;

-- Esses procedures retornam 1 se deve desenhar um personagem na tela!!!

PACKAGE BODY PC IS
PROCEDURE SQ(SIGNAL X1,Y1,width1,height1,X2,Y2,width2,height2:IN INTEGER;SIGNAL dir, esq, baixo, cima : STD_LOGIC IS
BEGIN
 IF(X1 + height1 
 3)THEN
		baixo <= '1';
 ELSE
	 DRAW<='0';
 END IF;
 
END SQ;
END PC;