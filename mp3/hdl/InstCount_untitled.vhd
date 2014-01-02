library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY InstCount IS
   PORT( 
      reset_l : IN     std_logic;
      PC      : IN     LC3b_word;
      MP      : IN     std_logic;
      --    count     : OUT std_logic_vector(WIDTH-1 downto 0)
      count   : OUT    std_logic_vector (31 DOWNTO 0)
   );

-- Declarations

END InstCount ;
 
architecture untitled of INSTCOUNT is
  signal CNT : unsigned(31 downto 0);
begin
  process(reset_l, PC, MP) is
  begin
    if reset_l = '0' then
      CNT <= (others => '0');
    else
      if PC'event then
        CNT <= CNT + 1;
      end if;
      if MP'event and MP = '1' then
        CNT <= CNT - 4;
      end if;
    end if;
  end process;
 
  count <= std_logic_vector(CNT);
end architecture untitled;
