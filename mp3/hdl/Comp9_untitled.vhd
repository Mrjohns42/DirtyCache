--
-- VHDL Architecture ece411.Comp9.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 22:37:35 09/19/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Comp9 IS
   PORT( 
      In1 : IN     LC3b_c_tag;
      In2 : IN     LC3b_c_tag;
      eq  : OUT    std_logic
   );

-- Declarations

END Comp9 ;

--
ARCHITECTURE untitled OF Comp9 IS
BEGIN
  Process(In1, In2)
    variable output : std_logic;
  BEGIN
    if(In1 = In2) then
      output := '1';
    else
      output := '0';
    end if;
    eq <= output after delay_COMPARE16;
  END PROCESS;
END ARCHITECTURE untitled;

