--
-- VHDL Architecture ece411.bitArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 19:59:11 09/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY bitArray IS
   PORT( 
      RESET_L  : IN     std_logic;
      bitWrite : IN     std_logic;
      Index    : IN     LC3b_c_index;
      bitIn    : IN     std_logic;
      bitOut   : OUT    std_logic
   );


-- Declarations

END bitArray ;

--
ARCHITECTURE untitled OF bitArray IS
TYPE bitArray IS array (7 downto 0) of std_logic;
SIGNAL bit : bitArray;
BEGIN
  ----------------------------------------------
  ReadFrombitArray : PROCESS (bit, Index)
  ----------------------------------------------
  VARIABLE bitIndex : integer;
  BEGIN
    bitIndex := to_integer(unsigned(Index));
    bitOut <= bit(bitIndex) after DELAY_256B;
  END PROCESS ReadFrombitArray;
  ----------------------------------------------
  WriteTobitArray : PROCESS (RESET_L, Index, bitWrite, bitIn)
  ----------------------------------------------
  VARIABLE bitIndex : integer;
  BEGIN
    bitIndex := to_integer(unsigned(Index));
    IF RESET_L = '0' THEN
      bit(0) <= '0';
      bit(1) <= '0';
      bit(2) <= '0';
      bit(3) <= '0';
      bit(4) <= '0';
      bit(5) <= '0';
      bit(6) <= '0';
      bit(7) <= '0';
    END IF;
    IF (bitWrite = '1') THEN
      bit(bitIndex) <= bitIn;
    END IF;
  END PROCESS WriteTobitArray;
END ARCHITECTURE untitled;

