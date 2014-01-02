



LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst128 IS
   PORT( 
      init7 : OUT    LC3b_BYTE
   );

-- Declarations

END iconst128 ;

--
ARCHITECTURE untitled OF iconst128 IS
BEGIN
  init7 <= "10000000";
END ARCHITECTURE untitled;

