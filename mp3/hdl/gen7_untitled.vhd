--
-- VHDL Architecture ece411.gen7.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 04:03:35 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY gen7 IS
   PORT( 
      reg7 : OUT    LC3b_reg
   );

-- Declarations

END gen7 ;

--
ARCHITECTURE untitled OF gen7 IS
BEGIN
  reg7 <= "111";
END ARCHITECTURE untitled;

