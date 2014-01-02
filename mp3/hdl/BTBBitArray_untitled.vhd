--
-- VHDL Architecture ece411.BTBBitArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 21:01:11 11/29/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY BTB_BitArray IS
   PORT( 
      bitin      : IN     std_logic;
      bitwrite   : IN     std_logic;
      index      : IN     LC3b_btb_index;
      writeindex : IN     LC3b_btb_index;
      reset_l    : IN     std_logic;
      bitout     : OUT    std_logic
   );

-- Declarations

END BTB_BitArray ;

--
ARCHITECTURE untitled OF BTB_BitArray IS
  TYPE DataArray IS array (63 downto 0) of std_logic;
  SIGNAL Data : DataArray;
  BEGIN
    ----------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    ----------------------------------------------
    VARIABLE DataIndex : integer;
    BEGIN
      DataIndex := to_integer(unsigned(Index));
      BitOut <= Data(DataIndex) after DELAY_128B;
    END PROCESS ReadFromDataArray;
    ----------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, WriteIndex, BitWrite, BitIn)
    ----------------------------------------------
    VARIABLE DataIndex : integer;
    BEGIN
      DataIndex := to_integer(unsigned(WriteIndex));
      IF RESET_L = '0' THEN
        Data <= (others => '0');
      END IF;
      IF (BitWrite = '1') THEN
        Data(DataIndex) <= BitIn;
      END IF;
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

