--
-- VHDL Architecture ece411.SplitWord.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 05:20:59 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SplitWord IS
   PORT( 
      word  : IN     LC3b_word;
      byte0 : OUT    LC3b_byte;
      byte1 : OUT    LC3b_byte
   );

-- Declarations

END SplitWord ;

--
ARCHITECTURE untitled OF SplitWord IS
BEGIN
  byte1 <= word(15 DOWNTO 8);
  byte0 <= word(7 DOWNTO 0);
END ARCHITECTURE untitled;

