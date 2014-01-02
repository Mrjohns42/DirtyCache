--
-- VHDL Architecture ece411.Delay21.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 18:03:49 10/04/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Delay21 IS
   PORT( 
      input  : IN     std_logic;
      output : OUT    std_logic
   );

-- Declarations

END Delay21 ;

--
ARCHITECTURE untitled OF Delay21 IS
BEGIN
  output <= input after 21ns;
END ARCHITECTURE untitled;

