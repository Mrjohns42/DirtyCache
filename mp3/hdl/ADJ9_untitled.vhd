--
-- VHDL Architecture ece411.ADJ9.untitled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 01:25:05 09/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ9 IS
   PORT( 
      input : IN     LC3b_offset9;
      ADJ9  : OUT    LC3b_word
   );

-- Declarations

END ADJ9 ;

--
ARCHITECTURE untitled OF ADJ9 IS
BEGIN
  ADJ9 <= input(8) & input(8) & input(8) & input(8) & input(8) & input(8) & input & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

