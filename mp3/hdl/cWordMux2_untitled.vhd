--
-- VHDL Architecture ece411.cWordMux2.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-14.ews.illinois.edu)
--          at - 13:21:21 11/16/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY cWordMux2 IS
   PORT( 
      A   : IN     LC3b_controlword;
      B   : IN     LC3b_controlword;
      sel : IN     std_logic;
      F   : OUT    LC3b_controlword
   );

-- Declarations

END cWordMux2 ;

--
ARCHITECTURE untitled OF cWordMux2 IS
  BEGIN
    Process (A, B, Sel)
      variable state : LC3b_controlword;
    BEGIN
      case Sel is
        when '0' =>
          state := A;
        when '1' =>
          state := B;
        when others =>
          state := NOP;
      end case;
      F <= state after delay_MUX2;
    END PROCESS;
END ARCHITECTURE untitled;

