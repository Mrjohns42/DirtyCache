--
-- VHDL Architecture ece411.const1.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:06:13 12/07/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY const1 IS
   PORT( 
      one : OUT    std_logic
   );

-- Declarations

END const1 ;

--
ARCHITECTURE untitled OF const1 IS
BEGIN
  one <= '1';
END ARCHITECTURE untitled;

