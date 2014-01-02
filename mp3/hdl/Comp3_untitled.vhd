--
-- VHDL Architecture ece411.Comp3.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-22.ews.illinois.edu)
--          at - 20:16:12 11/14/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Comp3 IS
   PORT( 
      In1 : IN     LC3b_reg;
      In2 : IN     LC3b_reg;
      Eq  : OUT    std_logic
   );

-- Declarations

END Comp3 ;

--
ARCHITECTURE untitled OF Comp3 IS
BEGIN
  Process(In1, In2)
    variable output : std_logic;
  BEGIN
    if(In1 = In2) then
      output := '1';
    else
      output := '0';
    end if;
    eq <= output after delay_COMPARE8;
  END PROCESS;
END ARCHITECTURE untitled;

