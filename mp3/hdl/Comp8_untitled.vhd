LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Comp8 IS
   PORT( 
      In1 : IN     LC3b_byte;
      In2 : IN     LC3b_byte;
      eq  : OUT    std_logic
   );

-- Declarations

END Comp8 ;

--
ARCHITECTURE untitled OF Comp8 IS
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

