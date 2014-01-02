--
-- VHDL Architecture ece411.BitAND3.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 00:18:44 09/22/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitAND3 IS
   PORT( 
      I0 : IN     std_logic;
      I1 : IN     std_logic;
      I2 : IN     std_logic;
      O  : OUT    std_logic
   );

-- Declarations

END BitAND3 ;

--
ARCHITECTURE untitled OF BitAND3 IS
BEGIN
  O <= (I0 AND I1 AND I2) after delay_logic3;
END ARCHITECTURE untitled;

