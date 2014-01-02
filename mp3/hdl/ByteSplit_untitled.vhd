LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ByteSplit IS
   PORT( 
      Input  : IN     LC3b_byte;
      Out0 : OUT      std_logic;
      Out1 : OUT      std_logic;
      Out2 : OUT      std_logic;
      Out3 : OUT      std_logic;
      Out4 : OUT      std_logic;
      Out5 : OUT      std_logic;
      Out6 : OUT      std_logic;
      Out7 : OUT      std_logic
   );

-- Declarations

END ByteSplit ;

--
ARCHITECTURE untitled OF ByteSplit IS
BEGIN
  Out0 <= Input(0);
  Out1 <= Input(1);
  Out2 <= Input(2);
  Out3 <= Input(3);
  Out4 <= Input(4);
  Out5 <= Input(5);
  Out6 <= Input(6);
  Out7 <= Input(7);  
END ARCHITECTURE untitled;

