--
-- VHDL Architecture ece411.enableWord3.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:41:14 11/23/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;
USE ieee.NUMERIC_STD.all;

ENTITY enableWord3 IS
   PORT( 
      en      : IN     std_logic;
      wordin  : IN     LC3b_reg;
      wordout : OUT    LC3b_reg
   );

-- Declarations

END enableWord3 ;

--
ARCHITECTURE untitled OF enableWord3 IS
BEGIN
    Process(en, wordin)
      variable preout : LC3b_reg;
    Begin
      if(en = '1') then
        preout := wordin;
      else
        preout := "000";
      end if;
      wordout <= preout after DELAY_MUX2;
    end Process;
END ARCHITECTURE untitled;
