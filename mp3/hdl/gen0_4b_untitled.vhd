--
-- VHDL Architecture ece411.gen0_4b.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:16:09 10/25/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY gen0_4b IS
   PORT( 
      zero : OUT    LC3b_opcode
   );

-- Declarations

END gen0_4b ;

--
ARCHITECTURE untitled OF gen0_4b IS
BEGIN
  zero <= "0000";
END ARCHITECTURE untitled;

