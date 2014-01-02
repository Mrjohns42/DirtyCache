--
-- VHDL Architecture ece411.IWRegBitSplitter.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-20.ews.illinois.edu)
--          at - 18:44:10 11/13/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IWRegBitSplitter IS
   PORT( 
      IW       : IN     LC3b_word;
      bit11    : OUT    std_logic;
      bit12    : OUT    std_logic;
      bit13    : OUT    std_logic;
      bit14    : OUT    std_logic;
      bit15    : OUT    std_logic;
      bit5     : OUT    std_logic
   );

-- Declarations

END IWRegBitSplitter ;

--
ARCHITECTURE untitled OF IWRegBitSplitter IS
BEGIN
  bit11    <= IW(11);
  bit12    <= IW(12);
  bit13    <= IW(13);
  bit14    <= IW(14);
  bit15    <= IW(15);
  bit5     <= IW(5);
END ARCHITECTURE untitled;

