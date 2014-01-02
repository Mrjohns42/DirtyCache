LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst8 IS
   PORT( 
      init3 : OUT    LC3b_BYTE
   );

-- Declarations

END iconst8 ;

--
ARCHITECTURE untitled OF iconst8 IS
BEGIN
  init3 <= "00001000";
END ARCHITECTURE untitled;

