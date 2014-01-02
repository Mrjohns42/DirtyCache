--
-- VHDL Architecture ece411.L2_TagArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 22:21:11 12/06/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2_TagArray IS
   PORT( 
      reset_l : IN     std_logic;
      write   : IN     std_logic;
      index   : IN     LC3b_c_index;
      tagIn   : IN     LC3b_c_tag;
      tagOut  : OUT    LC3b_c_tag
   );

-- Declarations

END L2_TagArray ;

--
ARCHITECTURE untitled OF L2_TagArray IS
TYPE TagArray IS array (7 downto 0) of LC3b_c_tag;
SIGNAL Tag : TagArray;
BEGIN
  ----------------------------------------------
  ReadFromTagArray : PROCESS (Tag, index)
  ----------------------------------------------
  VARIABLE tagindex : integer;
  BEGIN
    tagindex := to_integer(unsigned(index));
    tagOut <= Tag(tagindex) after DELAY_1KB;
  END PROCESS ReadFromTagArray;
  ----------------------------------------------
  WriteToTagArray : PROCESS (reset_l, index, write, tagIn)
  ----------------------------------------------
  VARIABLE tagindex : integer;
  BEGIN
    tagindex := to_integer(unsigned(index));
    IF reset_l = '0' THEN
      Tag(0) <= (OTHERS => 'X');
      Tag(1) <= (OTHERS => 'X');
      Tag(2) <= (OTHERS => 'X');
      Tag(3) <= (OTHERS => 'X');
      Tag(4) <= (OTHERS => 'X');
      Tag(5) <= (OTHERS => 'X');
      Tag(6) <= (OTHERS => 'X');
      Tag(7) <= (OTHERS => 'X');
    END IF;
    IF (write = '1') THEN
      Tag(tagindex) <= tagIn;
    END IF;
  END PROCESS WriteToTagArray;
END ARCHITECTURE untitled;

