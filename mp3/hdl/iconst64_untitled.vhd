


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst64 IS
   PORT( 
      init6 : OUT    LC3b_BYTE
   );

-- Declarations

END iconst64 ;

--
ARCHITECTURE untitled OF iconst64 IS
BEGIN
  init6 <= "01000000";
END ARCHITECTURE untitled;

