--
-- VHDL Architecture ece411.TagMux8.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 16:32:12 12/08/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagMux8 IS
   PORT( 
      Sel : IN     LC3b_8mux_sel;
      I0  : IN     LC3b_c_tag;
      I1  : IN     LC3b_c_tag;
      I2  : IN     LC3b_c_tag;
      I3  : IN     LC3b_c_tag;
      I4  : IN     LC3b_c_tag;
      I5  : IN     LC3b_c_tag;
      I6  : IN     LC3b_c_tag;
      I7  : IN     LC3b_c_tag;
      O   : OUT    LC3b_c_tag
   );

-- Declarations

END TagMux8 ;

--
ARCHITECTURE untitled OF TagMux8 IS
BEGIN
  Process (I0, I1, I2, I3, I4, I5, I6, I7, Sel)
    variable state : LC3b_c_tag;
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

