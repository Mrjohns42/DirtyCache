--
-- VHDL Architecture ece411.Strip0.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 08:35:54 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Strip0 IS
   PORT( 
      input  : IN     LC3b_word;
      output : OUT    std_logic
   );

-- Declarations

END Strip0 ;

--
ARCHITECTURE untitled OF Strip0 IS
BEGIN
  output <= input(0);
END ARCHITECTURE untitled;

