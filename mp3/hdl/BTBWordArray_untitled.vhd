--
-- VHDL Architecture ece411.BTBWordArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:55:24 11/29/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY BTB_WordArray IS
   PORT( 
      datain     : IN     LC3b_word;
      datawrite  : IN     std_logic;
      index      : IN     LC3b_btb_index;
      writeindex : IN     LC3b_btb_index;
      reset_l    : IN     std_logic;
      dataout    : OUT    LC3b_word
   );

-- Declarations

END BTB_WordArray ;

--
ARCHITECTURE untitled OF BTB_WordArray IS
  TYPE DataArray IS array (63 downto 0) of LC3b_word;
  SIGNAL Data : DataArray;
  BEGIN
    ----------------------------------------------
    ReadFromDataArray : PROCESS (Data, Index)
    ----------------------------------------------
    VARIABLE DataIndex : integer;
    BEGIN
      DataIndex := to_integer(unsigned(Index));
      DataOut <= Data(DataIndex) after DELAY_128B;
    END PROCESS ReadFromDataArray;
    ----------------------------------------------
    WriteToDataArray : PROCESS (RESET_L, WriteIndex, DataWrite, DataIn)
    ----------------------------------------------
    VARIABLE DataIndex : integer;
    BEGIN
      DataIndex := to_integer(unsigned(WriteIndex));
      IF RESET_L = '0' THEN
        Data <= (others => (others => '0'));
      END IF;
      IF (DataWrite = '1') THEN
        Data(DataIndex) <= DataIn;
      END IF;
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

