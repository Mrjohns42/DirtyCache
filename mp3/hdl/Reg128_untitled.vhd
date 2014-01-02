--
-- VHDL Architecture ece411.Reg128.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 03:39:50 12/07/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Reg128 IS
   PORT( 
      reset_l : IN     STD_LOGIC;
      clk     : IN     STD_LOGIC;
      en      : IN     STD_LOGIC;
      input   : IN     LC3b_Oword;
      output  : OUT    LC3b_Oword
   );

-- Declarations

END Reg128 ;

--
ARCHITECTURE untitled OF Reg128 IS
BEGIN
	REG128: PROCESS(clk,reset_l,input,en)
	VARIABLE state : LC3b_Oword;
	BEGIN
		IF(reset_l = '0') THEN
			state := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";  -- DEFAULT VALUE
		ELSIF(clk = '1' AND clk'event AND en = '1') THEN -- HIGH ENABLE
			state := input;
		ELSIF(en /= '0' AND en /= '1' AND clk = '1' AND clk'event) THEN
			state := (OTHERS => 'X');
		END IF;
		output <= state AFTER DELAY_REG;
	END PROCESS REG128;  
END ARCHITECTURE untitled;

