LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Reg8 IS
   PORT( 
      RESET  : IN     std_logic;
      clk    : IN     std_logic;
      input  : IN     LC3b_byte;
      load   : IN     std_logic;
      init   : IN     LC3b_byte;
      output : OUT    LC3b_byte
   );

-- Declarations

END Reg8 ;

--
ARCHITECTURE untitled OF Reg8 IS
  signal pre_out : LC3b_byte;
BEGIN
  PROCESS (clk, RESET, input, init)
  BEGIN
    if RESET = '0' then
      pre_out <= init;
    elsif clk'event and clk = '1' then
      if (load = '1') then
        pre_out <= input;
      end if;
    end if;
  end process;
  
  output <= pre_out after DELAY_REG;
END ARCHITECTURE untitled;


