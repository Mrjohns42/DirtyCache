--
-- VHDL Architecture ece411.WordMux8.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 11:53:31 09/17/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux8 IS
   PORT( 
      I0  : IN     LC3b_word;
      I1  : IN     LC3b_word;
      I2  : IN     LC3b_word;
      I3  : IN     LC3b_word;
      I4  : IN     LC3b_word;
      I5  : IN     LC3b_word;
      I6  : IN     LC3b_word;
      I7  : IN     LC3b_word;
      Sel : IN     LC3b_8mux_sel;
      O   : OUT    LC3b_word
   );

-- Declarations

END WordMux8 ;

--
ARCHITECTURE untitled OF WordMux8 IS
BEGIN
Process (I0, I1, I2, I3, I4, I5, I6, I7, Sel)
    variable state : LC3b_word;
  BEGIN
    case Sel is
      when "000" =>
        state := I0;
      when "001" =>
        state := I1;
      when "010" =>
        state := I2;
      when "011" =>
        state := I3;
      when "100" =>
        state := I4;
      when "101" =>
        state := I5;
      when "110" =>
        state := I6;
      when "111" =>
        state := I7;
      when others =>
        state := (OTHERS => 'X');
    end case;
    O <= state after delay_MUX8;
  END PROCESS;
END ARCHITECTURE untitled;

