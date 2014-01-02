--
-- VHDL Architecture ece411.comp16.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-15.ews.illinois.edu)
--          at - 20:45:11 11/30/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY comp16 IS
   PORT( 
      In1 : IN     LC3b_word;
      In2 : IN     LC3b_word;
      eq  : OUT    std_logic
   );

-- Declarations

END comp16 ;

--
ARCHITECTURE untitled OF comp16 IS
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

