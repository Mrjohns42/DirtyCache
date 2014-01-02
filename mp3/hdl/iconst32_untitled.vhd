

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst32 IS
   PORT( 
      init5 : OUT    LC3b_BYTE
   );

-- Declarations

END iconst32 ;

--
ARCHITECTURE untitled OF iconst32 IS
BEGIN
  init5 <= "00100000";
END ARCHITECTURE untitled;

