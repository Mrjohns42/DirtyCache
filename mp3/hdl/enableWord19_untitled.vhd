--
-- VHDL Architecture ece411.enableWord19.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-19.ews.illinois.edu)
--          at - 19:14:23 10/31/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY enableCWord IS
   PORT( 
      en      : IN     std_logic;
      wordin  : IN     LC3b_ControlWord;
      wordout : OUT    LC3b_ControlWord
   );

-- Declarations

END enableCWord ;

--
ARCHITECTURE untitled OF enableCWord IS
BEGIN
  Process (en, wordin)
    variable preout : LC3b_ControlWord;
  Begin
    if(en = '1') THEN
      preout := wordin;
    else
      preout := NOP;
    end if;
    wordout <= preout after DELAY_MUX2;
  end Process;
END ARCHITECTURE untitled;

