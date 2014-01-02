--
-- VHDL Architecture ece411.SplitOWord.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 21:44:49 09/19/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SplitOWord IS
   PORT( 
      input : IN     LC3b_Oword;
      word0 : OUT    LC3b_word;
      word1 : OUT    LC3b_word;
      word2 : OUT    LC3b_word;
      word3 : OUT    LC3b_word;
      word4 : OUT    LC3b_word;
      word5 : OUT    LC3b_word;
      word6 : OUT    LC3b_word;
      word7 : OUT    LC3b_word
   );

-- Declarations

END SplitOWord ;

--
ARCHITECTURE untitled OF SplitOWord IS
BEGIN
  word7 <= input(127 downto 112);
  word6 <= input(111 downto 96);
  word5 <= input(95 downto 80);
  word4 <= input(79 downto 64);
  word3 <= input(63 downto 48);
  word2 <= input(47 downto 32);
  word1 <= input(31 downto 16);
  word0 <= input(15 downto 0);
END ARCHITECTURE untitled;

