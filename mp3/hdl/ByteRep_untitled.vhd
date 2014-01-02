--
-- VHDL Architecture ece411.ByteRep.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 04:55:38 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ByteRep IS
   PORT( 
      output : OUT    LC3b_word;
      input  : IN     LC3b_word
   );

-- Declarations

END ByteRep ;

--
ARCHITECTURE untitled OF ByteRep IS
BEGIN
  output <= input(7 DOWNTO 0) & input(7 DOWNTO 0);
END ARCHITECTURE untitled;

