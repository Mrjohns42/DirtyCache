--
-- VHDL Architecture ece411.ALU.untitled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 01:34:13 09/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ALU IS
   PORT(
      ALUop     : IN     LC3b_aluop;
      ALUa      : IN     LC3b_word;
      ALUb      : IN     LC3b_word;
      ALUout    : OUT    LC3b_word
   );

-- Declarations

END ALU ;

--
ARCHITECTURE untitled OF ALU IS
BEGIN
  ----------------------------------------
  VHDL_ALU : PROCESS (ALUa, ALUb, ALUop)
  ----------------------------------------
  VARIABLE TEMP_ALUOUT : LC3b_word;
  VARIABLE COUNT : INTEGER;
  BEGIN
    -- CHECK FOR ALU OPERATION TYPE, AND EXECUTE
    CASE ALUop IS
    WHEN ALU_add =>
      TEMP_ALUOUT := STD_LOGIC_VECTOR(SIGNED(ALUa) + SIGNED(ALUb));
    WHEN ALU_and =>
      TEMP_ALUOUT := (ALUa AND ALUb);
    WHEN ALU_not =>
      TEMP_ALUOUT := (ALUa XOR "1111111111111111");
    WHEN ALU_pass =>
      TEMP_ALUOUT := (ALUa);
    WHEN OTHERS =>
    END CASE;
  --SET OUTPUT VALUE ALUOUT TO BE THE TEMPORARY VALUE CALCULATED WITHIN THE PROCESS AFTER A DELAY
  ALUout <= TEMP_ALUOUT AFTER DELAY_ALU;
  END PROCESS VHDL_ALU;
END ARCHITECTURE untitled;

