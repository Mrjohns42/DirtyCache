--
-- VHDL Architecture ece411.NZP.untitled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 01:54:51 09/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZP IS
   PORT( 
      GenCCout : IN     LC3b_cc;
      LoadNZP  : IN     std_logic;
      clk      : IN     std_logic;
      n        : OUT    std_logic;
      p        : OUT    std_logic;
      z        : OUT    std_logic;
      RESET_L  : IN     std_logic
   );

-- Declarations

END NZP ;

--
ARCHITECTURE untitled OF NZP IS
BEGIN
  ------------------------------
  VHDL_NZP : PROCESS (clk, RESET_L, LoadNZP, GenCCout)
  ------------------------------
  VARIABLE PRE_NZP : LC3b_cc;
  BEGIN
    IF RESET_L = '0' THEN
      PRE_NZP := "010";
    END IF;
    IF (CLK'EVENT AND (clk = '1') AND (CLK'LAST_VALUE = '0')) THEN
      IF (LoadNZP = '1') THEN
        PRE_NZP := GenCCout;
      END IF;
    END IF;
    n <= PRE_NZP(2) AFTER DELAY_REG;
    z <= PRE_NZP(1) AFTER DELAY_REG;
    p <= PRE_NZP(0) AFTER DELAY_REG;
  END PROCESS VHDL_NZP;
END ARCHITECTURE untitled;
