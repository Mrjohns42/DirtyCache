--
-- VHDL Architecture ece411.enableWord1.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-15.ews.illinois.edu)
--          at - 18:52:16 11/30/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY enableWord1 IS
   PORT( 
      bitin  : IN     std_logic;
      en     : IN     std_logic;
      bitout : OUT    std_logic
   );

-- Declarations

END enableWord1 ;

--
ARCHITECTURE untitled OF enableWord1 IS
BEGIN
   Process(en, bitin)
   variable preout : std_logic;
   Begin
   if(en = '1') then
   preout := bitin;
   else
   preout := '0';
   end if;
   bitout <= preout after DELAY_MUX2;
   end Process;
END ARCHITECTURE untitled;

