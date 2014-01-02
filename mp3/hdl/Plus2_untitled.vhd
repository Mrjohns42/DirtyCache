--
-- VHDL Architecture ece411.Plus2.untitled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 01:57:50 09/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Plus2 IS
   PORT( 
      Input : IN     LC3b_word;
      Plus2 : OUT    LC3b_word
   );

-- Declarations

END Plus2 ;

--
ARCHITECTURE untitled OF Plus2 IS
BEGIN
  VHDL_ADD_2 : PROCESS (Input)
  BEGIN  -- PROCESS
    Plus2 <= STD_LOGIC_VECTOR(UNSIGNED(Input) + 2 ) AFTER DELAY_ADDER;
  END PROCESS;
END ARCHITECTURE untitled;
