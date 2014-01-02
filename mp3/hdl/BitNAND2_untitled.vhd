--
-- VHDL Architecture ece411.BitNAND2.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 23:14:24 09/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitNAND2 IS
   PORT( 
      I0 : IN     std_logic;
      I1 : IN     std_logic;
      O  : OUT    std_logic
   );

-- Declarations

END BitNAND2 ;

--
ARCHITECTURE untitled OF BitNAND2 IS
BEGIN
  O <= NOT(I0 AND I1) after delay_logic2;
END ARCHITECTURE untitled;

