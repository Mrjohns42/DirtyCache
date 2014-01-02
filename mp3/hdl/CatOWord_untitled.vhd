--
-- VHDL Architecture ece411.CatOWord.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 16:56:32 09/26/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CatOWord IS
   PORT( 
      word0 : IN     LC3b_word;
      word1 : IN     LC3b_word;
      word2 : IN     LC3b_word;
      word3 : IN     LC3b_word;
      word4 : IN     LC3b_word;
      word5 : IN     LC3b_word;
      word6 : IN     LC3b_word;
      word7 : IN     LC3b_word;
      OWord : OUT    LC3b_Oword
   );

-- Declarations

END CatOWord ;

--
ARCHITECTURE untitled OF CatOWord IS
BEGIN
  OWord <= word7 & word6 & word5 & word4 & word3 & word2 & word1 & word0;
END ARCHITECTURE untitled;

