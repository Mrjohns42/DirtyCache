--
-- VHDL Architecture ece411.BTBPCSplitter.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 21:05:14 11/29/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY BTB_PCSplitter IS
   PORT( 
      wordin   : IN     LC3b_word;
      indexout : OUT    LC3b_btb_index;
      tagout   : OUT    LC3b_btb_tag
   );

-- Declarations

END BTB_PCSplitter ;

--
ARCHITECTURE untitled OF BTB_PCSplitter IS
BEGIN
  indexout <= wordin(5 DOWNTO 0);
  tagout <= wordin(15 DOWNTO 6);
END ARCHITECTURE untitled;

