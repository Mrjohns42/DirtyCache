--
-- VHDL Architecture ece411.BitNOT1.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 18:29:41 09/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitNOT1 IS
   PORT( 
      I : IN     std_logic;
      O : OUT    std_logic
   );

-- Declarations

END BitNOT1 ;

--
ARCHITECTURE untitled OF BitNOT1 IS
BEGIN
  O <= NOT(I) after delay_logic2;
END ARCHITECTURE untitled;

