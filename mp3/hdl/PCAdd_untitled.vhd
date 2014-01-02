--
-- VHDL Architecture ece411.PCadd.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 09:36:32 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY PCAdd IS
   PORT( 
      In1 : IN     LC3b_word;
      In2 : IN     LC3b_word;
      O   : OUT    LC3b_word
   );

-- Declarations

END PCAdd ;

--
ARCHITECTURE untitled OF PCadd IS
BEGIN
  VHDL_BRADD : PROCESS (IN1, IN2)
  BEGIN  -- PROCESS
    O <= STD_LOGIC_VECTOR(SIGNED(IN1) + SIGNED(IN2) ) AFTER DELAY_ADDER;
  END PROCESS;
END ARCHITECTURE untitled;
