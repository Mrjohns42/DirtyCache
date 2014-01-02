--
-- VHDL Architecture ece411.bitAND5.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-20.ews.illinois.edu)
--          at - 19:45:44 11/13/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY bitAND5 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      E : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END bitAND5 ;

--
ARCHITECTURE untitled OF bitAND5 IS
BEGIN
  F <= (A AND B AND C AND D AND E) after 3ns;
END ARCHITECTURE untitled;
