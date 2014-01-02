--
-- VHDL Architecture ece411.BTBTagArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:58:06 11/29/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY BTB_TagArray IS
   PORT( 
      RESET_L    : IN     std_logic;
      index      : IN     LC3b_btb_index;
      writeindex : IN     LC3b_btb_index;
      tagin      : IN     LC3b_btb_tag;
      tagwrite   : IN     std_logic;
      tagout     : OUT    LC3b_btb_tag
   );

-- Declarations

END BTB_TagArray ;

--
ARCHITECTURE untitled OF BTB_TagArray IS
  TYPE DataArray IS array (63 downto 0) of LC3b_btb_tag;
  SIGNAL Data : DataArray;
  BEGIN
    ----------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    ----------------------------------------------
    VARIABLE DataIndex : integer;
    BEGIN
      DataIndex := to_integer(unsigned(Index));
      TagOut <= Data(DataIndex) after DELAY_128B;
    END PROCESS ReadFromDataArray;
    ----------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, WriteIndex, TagWrite, TagIn)
    ----------------------------------------------
    VARIABLE DataIndex : integer;
    BEGIN
      DataIndex := to_integer(unsigned(WriteIndex));
      IF RESET_L = '0' THEN
        Data <= (others => (others => '0'));
      END IF;
      IF (TagWrite = '1') THEN
        Data(DataIndex) <= TagIn;
      END IF;
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

