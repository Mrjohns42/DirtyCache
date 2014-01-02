--
-- VHDL Architecture ece411.ZEXT8.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 05:37:08 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXT8 IS
   PORT( 
      input : IN     LC3b_byte;
      ZEXT8 : OUT    LC3b_word
   );

-- Declarations

END ZEXT8 ;

--
ARCHITECTURE untitled OF ZEXT8 IS
BEGIN
  ZEXT8 <= "00000000" & input;
END ARCHITECTURE untitled;

