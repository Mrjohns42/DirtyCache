LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ByteArray IS
   PORT( 
      RESET_L  : IN     std_logic;
      clk      : IN     std_logic;
      Load     : IN     std_logic;
      Index    : IN     LC3b_c_index;
      Init     : IN     LC3b_byte;
      Input    : IN     LC3b_byte;
      Output   : OUT    LC3b_byte
   );


-- Declarations

END ByteArray ;

--
ARCHITECTURE untitled OF ByteArray IS
TYPE ByteArray IS array (7 downto 0) of LC3b_byte;
SIGNAL line : ByteArray;
BEGIN
  ----------------------------------------------
  ReadFromArray : PROCESS (line, Index)
  ----------------------------------------------
  VARIABLE lineIndex : integer;
  BEGIN
    lineIndex := to_integer(unsigned(Index));
    Output <= line(lineIndex) after DELAY_1KB;
  END PROCESS ReadFromArray;
  ----------------------------------------------
  WriteToArray : PROCESS (RESET_L, Index, Load, Input, Init, clk)
  ----------------------------------------------
  VARIABLE lineIndex : integer;
  BEGIN
    lineIndex := to_integer(unsigned(Index));
    IF RESET_L = '0' THEN
      line(0) <= Init;
      line(1) <= Init;
      line(2) <= Init;
      line(3) <= Init;
      line(4) <= Init;
      line(5) <= Init;
      line(6) <= Init;
      line(7) <= Init;
    ELSIF clk'event and clk = '1' THEN
      IF (Load = '1') THEN
        line(lineIndex) <= Input;
      END IF;
    END IF;
  END PROCESS WriteToArray;
END ARCHITECTURE untitled;


