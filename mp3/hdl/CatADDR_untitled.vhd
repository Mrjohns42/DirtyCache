--
-- VHDL Architecture ece411.CatADDR.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 22:03:49 09/29/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CatADDR IS
   PORT( 
      tag     : IN     LC3b_c_tag;
      Index   : IN     LC3b_c_index;
      offset  : IN     LC3b_c_offset;
      ADDRESS : OUT    LC3b_word
   );

-- Declarations

END CatADDR ;

--
ARCHITECTURE untitled OF CatADDR IS
BEGIN
  ADDRESS <= tag & index & offset;
END ARCHITECTURE untitled;

