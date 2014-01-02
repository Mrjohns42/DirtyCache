--
-- VHDL Architecture ece411.ZEXT4.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 04:45:18 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXT4 IS
   PORT( 
      ZEXT4 : OUT    LC3b_word;
      input : IN     LC3b_imm4
   );

-- Declarations

END ZEXT4 ;

--
ARCHITECTURE untitled OF ZEXT4 IS
BEGIN
  ZEXT4 <= "000000000000" & input;
END ARCHITECTURE untitled;

