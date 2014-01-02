LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst1 IS
   PORT( 
      init0 : OUT    LC3b_byte
   );

-- Declarations

END iconst1 ;

--
ARCHITECTURE untitled OF iconst1 IS
BEGIN
  init0 <= "00000001";
END ARCHITECTURE untitled;
