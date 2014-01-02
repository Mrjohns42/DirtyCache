--
-- VHDL Architecture ece411.ADJ8.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 03:47:36 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ8 IS
   PORT( 
      input : IN     LC3b_trapvect8;
      ADJ8  : OUT    LC3b_word
   );

-- Declarations

END ADJ8 ;

--
ARCHITECTURE untitled OF ADJ8 IS
BEGIN
  ADJ8 <= "0000000" & input & '0';
END ARCHITECTURE untitled;

