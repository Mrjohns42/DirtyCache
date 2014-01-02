--
-- VHDL Architecture ece411.Splitoffset.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 15:23:17 09/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Splitoffset IS
   PORT( 
      input : IN     LC3b_c_offset;
      split : OUT    LC3b_8mux_sel
   );

-- Declarations

END Splitoffset ;

--
ARCHITECTURE untitled OF Splitoffset IS
BEGIN
  split <= input(3 downto 1);
END ARCHITECTURE untitled;

