--
-- VHDL Architecture ece411.L2_bitArray.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 22:11:20 12/06/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2_bitArray IS
   PORT( 
      reset_l : IN     std_logic;
      write   : IN     std_logic;
      index   : IN     LC3b_c_index;
      bitIn   : IN     std_logic;
      bitOut  : OUT    std_logic
   );

-- Declarations

END L2_bitArray ;

--
ARCHITECTURE untitled OF L2_bitArray IS
TYPE bitArray IS array (7 downto 0) of std_logic;
SIGNAL bit : bitArray;
BEGIN
  ----------------------------------------------
  ReadFrombitArray : PROCESS (bit, index)
  ----------------------------------------------
  VARIABLE bitindex : integer;
  BEGIN
    bitindex := to_integer(unsigned(index));
    bitOut <= bit(bitindex) after DELAY_1KB;
  END PROCESS ReadFrombitArray;
  ----------------------------------------------
  WriteTobitArray : PROCESS (reset_l, index, write, bitIn)
  ----------------------------------------------
  VARIABLE bitindex : integer;
  BEGIN
    bitindex := to_integer(unsigned(index));
    IF reset_l = '0' THEN
      bit(0) <= '0';
      bit(1) <= '0';
      bit(2) <= '0';
      bit(3) <= '0';
      bit(4) <= '0';
      bit(5) <= '0';
      bit(6) <= '0';
      bit(7) <= '0';
    END IF;
    IF (write = '1') THEN
      bit(bitindex) <= bitIn;
    END IF;
  END PROCESS WriteTobitArray;
END ARCHITECTURE untitled;

