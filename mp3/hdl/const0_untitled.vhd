--
-- VHDL Architecture ece411.const0.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:08:12 12/07/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY const0 IS
   PORT( 
      zero : OUT    std_logic
   );

-- Declarations

END const0 ;

--
ARCHITECTURE untitled OF const0 IS
BEGIN
  zero <= '0';
END ARCHITECTURE untitled;

