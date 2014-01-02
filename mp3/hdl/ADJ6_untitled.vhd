--
-- VHDL Architecture ece411.ADJ6.untitled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 01:24:07 09/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6 IS
   PORT( 
      input : IN     LC3b_index6;
      ADJ6  : OUT    LC3b_word
   );

-- Declarations

END ADJ6 ;

--
ARCHITECTURE untitled OF ADJ6 IS
BEGIN
  ADJ6 <= input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input(5) & input & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

