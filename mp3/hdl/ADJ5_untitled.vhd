--
-- VHDL Architecture ece411.ADJ5.untitled
--
-- Created:
--          by - hcander2.ews (linux6.ews.illinois.edu)
--          at - 17:40:32 09/09/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ5 IS
   PORT( 
      input : IN     LC3b_imm5;
      ADJ5  : OUT    LC3b_word
   );

-- Declarations

END ADJ5 ;

--
ARCHITECTURE untitled OF ADJ5 IS
BEGIN
    ADJ5 <= input(4) & input(4) & input(4) & input(4) & input(4) & input(4) & input(4) & input(4) & input(4) & input(4) & input(4) & input AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

