--
-- VHDL Architecture ece411.Cat2b.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 23:19:59 09/20/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY cat2b IS
   PORT( 
      b1  : IN     std_logic;
      b0  : IN     std_logic;
      c2b : OUT    LC3b_4mux_sel
   );

-- Declarations

END cat2b ;

--
ARCHITECTURE untitled OF cat2b IS
BEGIN
  c2b <= b1 & b0;
END ARCHITECTURE untitled;

