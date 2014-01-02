--
-- VHDL Architecture ece411.BitNOR2.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 00:11:52 09/26/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitNOR2 IS
   PORT( 
      I0 : IN     std_logic;
      I1 : IN     std_logic;
      O  : OUT    std_logic
   );

-- Declarations

END BitNOR2 ;

--
ARCHITECTURE untitled OF BitNOR2 IS
BEGIN
  O <= NOT(I0 OR I1) after delay_logic2;
END ARCHITECTURE untitled;

