--
-- VHDL Architecture ece411.IWSplit.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 23:20:07 10/24/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IWSplit IS
   PORT( 
      IW       : IN     LC3b_word;
      index6   : OUT    LC3b_index6;
      vect8    : OUT    LC3b_trapvect8;
      offset9  : OUT    LC3b_offset9;
      offset11 : OUT    LC3b_offset11;
      SrcA     : OUT    LC3b_reg;
      SrcB     : OUT    LC3b_reg;
      Opcode   : OUT    LC3b_opcode;
      imm4     : OUT    LC3b_imm4;
      IR5      : OUT    std_logic;
      IR11     : OUT    std_logic;
      Shiftop  : OUT    LC3b_shiftop;
      Dest     : OUT    LC3b_reg;
      imm5     : OUT    LC3b_imm5
   );

-- Declarations

END IWSplit ;

--
ARCHITECTURE untitled OF IWSplit IS
BEGIN
  Opcode <= IW(15 DOWNTO 12);
  Shiftop <= IW(5 DOWNTO 4);
  IR5 <= IW(5);
  IR11 <= IW(11);
  imm4 <= IW(3 DOWNTO 0);
  imm5 <= IW(4 DOWNTO 0);
  index6 <= IW(5 DOWNTO 0);
  vect8 <= IW(7 DOWNTO 0);
  offset9 <= IW(8 DOWNTO 0);
  offset11 <= IW(10 DOWNTO 0);
  SrcA <= IW(8 DOWNTO 6);
  SrcB <= IW(2 DOWNTO 0);
  Dest <= IW(11 DOWNTO 9);
END ARCHITECTURE untitled;

