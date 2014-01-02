--
-- VHDL Architecture ece411.Delay6.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 05:17:35 09/28/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Delay6 IS
   PORT( 
      I : IN     std_logic;
      O : OUT    std_logic
   );

-- Declarations

END Delay6 ;

--
ARCHITECTURE untitled OF Delay6 IS
BEGIN
  O <= I after 6ns;
END ARCHITECTURE untitled;

