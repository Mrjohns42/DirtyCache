--
-- VHDL Architecture ece411.Reg16.untitled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 00:32:39 09/04/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Reg16 IS
   PORT( 
      reset_l : IN     STD_LOGIC;
      clk     : IN     STD_LOGIC;
      en      : IN     STD_LOGIC;
      input   : IN     LC3b_word;
      output  : OUT    LC3b_word
   );

-- Declarations

END Reg16 ;

--
ARCHITECTURE untitled OF Reg16 IS
BEGIN
	REG16: PROCESS(clk,reset_l,input,en)
	VARIABLE state : LC3b_word;
	BEGIN
		IF(reset_l = '0') THEN
			state := "0000000000000000";  -- DEFAULT VALUE
		ELSIF(clk = '1' AND clk'event AND en = '1') THEN -- HIGH ENABLE
			state := input;
		ELSIF(en /= '0' AND en /= '1' AND clk = '1' AND clk'event) THEN
			state := (OTHERS => 'X');
		END IF;
		output <= state AFTER DELAY_REG;
	END PROCESS REG16;  
END ARCHITECTURE untitled;

