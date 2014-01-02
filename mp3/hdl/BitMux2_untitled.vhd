--
-- VHDL Architecture ece411.BitMux2.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:11:43 09/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BitMux2 IS
   PORT( 
      Sel : IN     std_logic;
      A   : IN     std_logic;
      B   : IN     std_logic;
      F   : OUT    std_logic
   );

-- Declarations

END BitMux2 ;

--
ARCHITECTURE untitled OF BitMux2 IS
BEGIN
  Process (A, B, Sel)
    variable state : std_logic;
  BEGIN
    case Sel is
      when '0' =>
        state := A;
      when '1' =>
        state := B;
      when others =>
        state := 'X';
    end case;
    F <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

