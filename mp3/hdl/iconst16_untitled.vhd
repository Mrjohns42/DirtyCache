
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst16 IS
   PORT( 
      init4 : OUT    LC3b_BYTE
   );

-- Declarations

END iconst16 ;

--
ARCHITECTURE untitled OF iconst16 IS
BEGIN
  init4 <= "00010000";
END ARCHITECTURE untitled;

