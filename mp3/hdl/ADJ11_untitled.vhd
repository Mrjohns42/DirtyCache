--
-- VHDL Architecture ece411.ADJ11.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 09:24:09 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ11 IS
   PORT( 
      input : IN     LC3b_offset11;
      ADJ11 : OUT    LC3b_word
   );

-- Declarations

END ADJ11 ;

--
ARCHITECTURE untitled OF ADJ11 IS
BEGIN
    ADJ11 <= input(10) & input(10) & input(10) & input(10) & input & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

