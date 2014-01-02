--
-- VHDL Architecture ece411.SEXT6.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 04:24:05 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT6 IS
   PORT( 
      input : IN     LC3b_index6;
      SEXT6 : OUT    LC3b_word
   );

-- Declarations

END SEXT6 ;

--
ARCHITECTURE untitled OF SEXT6 IS
BEGIN
  SEXT6 <= input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

