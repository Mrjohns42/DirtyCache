--
-- VHDL Architecture ece411.cat8b.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 16:27:19 12/08/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY cat8b IS
  PORT( 
     b1  : IN     std_logic;
     b0  : IN     std_logic;
     b2  : IN     std_logic;
     b3  : IN     std_logic;
     b4  : IN     std_logic;
     b5  : IN     std_logic;
     b6  : IN     std_logic;
     b7  : IN     std_logic;
     c8b : OUT    LC3b_byte
  );
-- Declarations

END cat8b ;

--
ARCHITECTURE untitled OF cat8b IS
BEGIN
  c8b <= b7 & b6 & b5 & b4 & b3 & b2 & b1 & b0;
END ARCHITECTURE untitled;

