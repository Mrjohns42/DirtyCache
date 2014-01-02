--
-- VHDL Architecture ece411.CatWord.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 17:39:37 09/26/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CatWord IS
   PORT( 
      byte0 : IN     LC3b_byte;
      byte1 : IN     LC3b_byte;
      Word  : OUT    LC3b_word
   );

-- Declarations

END CatWord ;

--
ARCHITECTURE untitled OF CatWord IS
BEGIN
  word <= byte1 & byte0;
END ARCHITECTURE untitled;

