--
-- VHDL Architecture ece411.BitOR4.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 16:15:11 12/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitOR4 IS
   PORT( 
      I0 : IN     std_logic;
      I1 : IN     std_logic;
      I2 : IN     std_logic;
      I3 : IN     std_logic;
      O  : OUT    std_logic
   );

-- Declarations

END BitOR4 ;

--
ARCHITECTURE untitled OF BitOR4 IS
BEGIN
  O <= (I0 OR I1 OR I2 OR I3) after delay_logic4;
END ARCHITECTURE untitled;

