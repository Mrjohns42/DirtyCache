--
-- VHDL Architecture ece411.BTBTagCompare.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 14:56:18 11/30/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY BTB_TagCompare IS
   PORT( 
      tag0 : IN     LC3b_btb_tag;
      tag1 : IN     LC3b_btb_tag;
      eq   : OUT    std_logic
   );

-- Declarations

END BTB_TagCompare ;

--
ARCHITECTURE untitled OF BTB_TagCompare IS
BEGIN
    Process(tag0, tag1)
      variable output : std_logic;
    BEGIN
      if(tag0 = tag1) then
        output := '1';
      else
        output := '0';
      end if;
      eq <= output after delay_COMPARE16;
    END PROCESS;
END ARCHITECTURE untitled;

