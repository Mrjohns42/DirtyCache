--
-- VHDL Architecture ece411.SplitADDR.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 21:38:14 09/19/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SplitADDR IS
   PORT( 
      addr   : IN     LC3b_word;
      tag    : OUT    LC3b_c_tag;
      index  : OUT    LC3b_c_index;
      offset : OUT    LC3b_c_offset
   );

-- Declarations

END SplitADDR ;

--
ARCHITECTURE untitled OF SplitADDR IS
BEGIN
  tag <= addr(15 downto 7);
  index <= addr(6 downto 4);
  offset <= addr(3 downto 0);
END ARCHITECTURE untitled;

