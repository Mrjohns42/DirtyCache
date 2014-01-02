--
-- VHDL Architecture ece411.Reg1.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 03:34:42 12/07/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Reg1 IS
   PORT( 
      reset_l : IN     std_logic;
      clk     : IN     std_logic;
      en      : IN     std_logic;
      input   : IN     std_logic;
      output  : OUT    std_logic
   );

-- Declarations

END Reg1 ;

--
ARCHITECTURE untitled OF Reg1 IS
BEGIN
	REG1: PROCESS(clk,reset_l,input,en)
	VARIABLE state : STD_LOGIC;
	BEGIN
		IF(reset_l = '0') THEN
			state := '0';  -- DEFAULT VALUE
		ELSIF(clk = '1' AND clk'event AND en = '1') THEN -- HIGH ENABLE
			state := input;
		ELSIF(en /= '0' AND en /= '1' AND clk = '1' AND clk'event) THEN
			state := 'X';
		END IF;
		output <= state AFTER DELAY_REG;
	END PROCESS REG1;
END ARCHITECTURE untitled;

