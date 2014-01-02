LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY iconst4 IS
   PORT( 
      init2 : OUT    LC3b_BYTE
   );

-- Declarations

END iconst4 ;

--
ARCHITECTURE untitled OF iconst4 IS
BEGIN
  init2 <= "00000100";
END ARCHITECTURE untitled;

