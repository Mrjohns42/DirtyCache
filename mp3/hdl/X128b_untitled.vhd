--
-- VHDL Architecture ece411.X128b.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 18:07:38 09/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY X128b IS
   PORT( 
      X128bout : OUT    LC3b_Oword
   );

-- Declarations

END X128b ;

--
ARCHITECTURE untitled OF X128b IS
BEGIN
  X128bout <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
END ARCHITECTURE untitled;

