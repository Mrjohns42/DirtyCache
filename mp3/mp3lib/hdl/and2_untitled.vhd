--
-- VHDL ARCHITECTURE ECE411.AND2.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (EESN25.EWS.UIUC.EDU)
--          AT - 14:04:31 03/12/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
-- HDS INTERFACE_START
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY AND2 IS
PORT( 
	A : IN     STD_LOGIC;
	B : IN     STD_LOGIC;
	F : OUT    STD_LOGIC
);
-- DECLARATIONS
END AND2 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF AND2 IS
BEGIN
	F <= A AND B AFTER DELAY_LOGIC2;
END UNTITLED;