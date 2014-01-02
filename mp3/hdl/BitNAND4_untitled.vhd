--
-- VHDL Architecture ece411.BitNAND4.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 03:17:58 09/28/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitNAND4 IS
   PORT( 
      I0 : IN     std_logic;
      I1 : IN     std_logic;
      I2 : IN     std_logic;
      I3 : IN     std_logic;
      O  : OUT    std_logic
   );

-- Declarations

END BitNAND4 ;

--
ARCHITECTURE untitled OF BitNAND4 IS
BEGIN
  O <= NOT(I0 AND I1 AND I2 AND I3) after delay_logic4;
END ARCHITECTURE untitled;

