--
-- VHDL Architecture ece411.ShiftUnit.untitled
--
-- Created:
--          by - hcander2.ews (gelib-057-04.ews.illinois.edu)
--          at - 21:01:41 11/15/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ShiftUnit IS
   PORT( 
      Shiftop  : IN     LC3b_shiftop;
      input    : IN     LC3b_word;
      count    : IN     LC3b_word;
      ShiftOut : OUT    LC3b_word
   );

-- Declarations

END ShiftUnit ;

--
ARCHITECTURE untitled OF ShiftUnit IS
BEGIN
  ----------------------------------------
  VHDL_SHIFT : PROCESS (ShiftOp, input, count)
  ----------------------------------------
  VARIABLE TEMP_SHIFTOUT : LC3b_word;
  VARIABLE INT_COUNT : INTEGER;
  BEGIN
    -- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
    CASE Shiftop IS
    WHEN Shift_sra =>
      INT_COUNT := to_integer(unsigned(count(3 downto 0)));
      if (count(3 downto 0) = "0000") then
        TEMP_SHIFTOUT := (input);
      else
        TEMP_SHIFTOUT(15 - INT_COUNT downto 0) := (input(15 downto INT_COUNT));
        TEMP_SHIFTOUT(15 downto (15 - INT_COUNT + 1)) := (others => input(15));
      end if;
    WHEN Shift_srl =>
      TEMP_SHIFTOUT := (std_logic_vector("srl"(unsigned(input), to_integer(unsigned(count)))));
    WHEN Shift_sll =>
      TEMP_SHIFTOUT := (std_logic_vector("sll"(unsigned(input), to_integer(unsigned(count)))));
    WHEN OTHERS =>
    END CASE;
  --SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
  ShiftOut <= TEMP_SHIFTOUT AFTER DELAY_SHIFTER;
  END PROCESS VHDL_SHIFT;
END ARCHITECTURE untitled;

