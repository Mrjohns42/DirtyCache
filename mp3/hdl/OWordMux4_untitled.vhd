--
-- VHDL Architecture ece411.OWordMux4.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 23:13:30 09/20/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordMux4 IS
   PORT( 
      I0  : IN     LC3b_Oword;
      I1  : IN     LC3b_Oword;
      I2  : IN     LC3b_Oword;
      I3  : IN     LC3b_Oword;
      Sel : IN     LC3b_4mux_sel;
      O   : OUT    LC3b_Oword
   );

-- Declarations

END OWordMux4 ;

--
ARCHITECTURE untitled OF OWordMux4 IS
BEGIN
  Process (I0, I1, I2, I3, Sel)
    variable state : LC3b_Oword;
  BEGIN
    case Sel is
      when "00" =>
        state := I0;
      when "01" =>
        state := I1;
      when "10" =>
        state := I2;
      when "11" =>
        state := I3;
      when others =>
        state := (OTHERS => 'X');
    end case;
    O <= state after delay_MUX4;
  END PROCESS;
END ARCHITECTURE untitled;

