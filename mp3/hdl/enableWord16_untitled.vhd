--
-- VHDL Architecture ece411.enableWord16.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 15:01:22 10/31/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY enableWord16 IS
   PORT( 
      en      : IN     std_logic;
      wordin  : IN     LC3b_word;
      wordout : OUT    LC3b_word
   );

-- Declarations

END enableWord16 ;

--
ARCHITECTURE untitled OF enableWord16 IS
BEGIN
  Process(en, wordin)
    variable preout : LC3b_word;
  Begin
    if(en = '1') then
      preout := wordin;
    else
      preout := "1000000000000000";
    end if;
    wordout <= preout after delay_mux2;
  end Process;
  --wordout <= (wordin(15) AND en) & (wordin(14) AND en) & (wordin(13) AND en) & (wordin(12) AND en) & (wordin(11) AND en) & (wordin(10) AND en) & (wordin(9) AND en) & (wordin(8) AND en) & (wordin(7) AND en) & (wordin(6) AND en) & (wordin(5) AND en) & (wordin(4) AND en) & (wordin(3) AND en) & (wordin(2) AND en) & (wordin(1) AND en) & (wordin(0) AND en) AFTER DELAY_LOGIC2;
END ARCHITECTURE untitled;
