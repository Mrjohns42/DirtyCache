LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst2 IS
   PORT( 
      init1 : OUT    LC3b_byte
   );

-- Declarations

END iconst2 ;

--
ARCHITECTURE untitled OF iconst2 IS
BEGIN
  init1 <= "00000010";
END ARCHITECTURE untitled;
