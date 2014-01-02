--
-- VHDL Architecture ece411.OWordMux2.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 21:36:41 09/19/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordMux2 IS
   PORT( 
      I0  : IN     LC3b_Oword;
      I1  : IN     LC3b_Oword;
      Sel : IN     std_logic;
      O   : OUT    LC3b_Oword
   );

-- Declarations

END OWordMux2 ;

--
ARCHITECTURE untitled OF OWordMux2 IS
BEGIN
  Process (I0, I1, Sel)
    variable state : LC3b_Oword;
  BEGIN
    case Sel is
      when '0' =>
        state := I0;
      when '1' =>
        state := I1;
      when others =>
        state := (OTHERS => 'X');
    end case;
    O <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

