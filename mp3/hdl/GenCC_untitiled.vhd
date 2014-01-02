--
-- VHDL Architecture ece411.GenCC.untitiled
--
-- Created:
--          by - hcander2.ews (linux7.ews.illinois.edu)
--          at - 01:41:35 09/05/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY GenCC IS
   PORT( 
      GenCCin  : IN     LC3b_word;
      GenCCout : OUT    LC3b_cc
   );

-- Declarations

END GenCC ;

--
ARCHITECTURE untitiled OF GenCC IS
BEGIN
  VHDL_GENCC : PROCESS (GenCCin)
  BEGIN    
    IF (GenCCin = "0000000000000000") THEN
      GenCCout <= "010" AFTER DELAY_GENCC;
    ELSIF (GenCCin(15) = '1') THEN
      GenCCout <= "100" AFTER DELAY_GENCC;
    ELSE
      GenCCout <= "001" AFTER DELAY_GENCC;
    END IF;
  END PROCESS VHDL_GENCC;
END ARCHITECTURE untitiled;

