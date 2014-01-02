--
-- VHDL Architecture ece411.X16b.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:23:11 12/07/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY X16b IS
   PORT( 
      X16bout : OUT    LC3b_word
   );

-- Declarations

END X16b ;

--
ARCHITECTURE untitled OF X16b IS
BEGIN
  X16bout <= "XXXXXXXXXXXXXXXX";
END ARCHITECTURE untitled;

