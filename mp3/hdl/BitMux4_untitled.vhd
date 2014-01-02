--
-- VHDL Architecture ece411.BitMux4.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 06:51:21 09/26/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitMux4 IS
   PORT( 
      I0  : IN     std_logic;
      I1  : IN     std_logic;
      I2  : IN     std_logic;
      I3  : IN     std_logic;
      Sel : IN     LC3b_4mux_sel;
      O   : OUT    std_logic
   );

-- Declarations

END BitMux4 ;

--
ARCHITECTURE untitled OF BitMux4 IS
BEGIN
  Process (I0, I1, I2, I3, Sel)
    variable state : std_logic;
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
        state := 'X';
    end case;
    O <= state after delay_MUX4;
  END PROCESS;
END ARCHITECTURE untitled;

