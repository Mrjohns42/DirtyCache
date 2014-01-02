--
-- VHDL Architecture ece411.cat3b.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 16:19:59 12/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY cat3b IS
   PORT( 
      b1  : IN     std_logic;
      b0  : IN     std_logic;
      b2  : IN     std_logic;
      c3b : OUT    LC3b_8mux_sel
   );

-- Declarations

END cat3b ;

--
ARCHITECTURE untitled OF cat3b IS
BEGIN
  c3b <= b2 & b1 & b0;
END ARCHITECTURE untitled;

