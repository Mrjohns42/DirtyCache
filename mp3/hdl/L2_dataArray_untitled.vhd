--
-- VHDL Architecture ece411.L2_dataArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 22:35:57 12/06/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2_dataArray IS
   PORT( 
      reset_l : IN     std_logic;
      write   : IN     std_logic;
      index   : IN     LC3b_c_index;
      dataIn  : IN     LC3b_Oword;
      dataOut : OUT    LC3b_Oword
   );

-- Declarations

END L2_dataArray ;

--
ARCHITECTURE untitled OF L2_dataArray IS
TYPE DataArray IS array (7 downto 0) of LC3b_Oword;
  SIGNAL Data : DataArray;
  BEGIN
    ----------------------------------------------
    ReadFromDataArray : PROCESS (Data, index)
    ----------------------------------------------
    VARIABLE dataindex : integer;
    BEGIN
      dataindex := to_integer(unsigned(index));
      dataOut <= Data(dataindex) after DELAY_1KB;
    END PROCESS ReadFromDataArray;
    ----------------------------------------------
    WriteToDataArray : PROCESS (reset_l, index, write, dataIn)
    ----------------------------------------------
    VARIABLE dataindex : integer;
    BEGIN
      dataindex := to_integer(unsigned(index));
      IF reset_l = '0' THEN
        Data(0) <= (OTHERS => 'X');
        Data(1) <= (OTHERS => 'X');
        Data(2) <= (OTHERS => 'X');
        Data(3) <= (OTHERS => 'X');
        Data(4) <= (OTHERS => 'X');
        Data(5) <= (OTHERS => 'X');
        Data(6) <= (OTHERS => 'X');
        Data(7) <= (OTHERS => 'X');
      END IF;
      IF (write = '1') THEN
        Data(dataindex) <= dataIn;
      END IF;
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;

