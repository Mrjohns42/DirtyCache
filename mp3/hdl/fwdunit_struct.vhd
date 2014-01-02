-- VHDL Entity ece411.fwdUnit.symbol
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 02:23:57 12/09/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY fwdUnit IS
   PORT( 
      EX_DR        : IN     LC3b_reg;
      EX_SR1       : IN     LC3b_reg;
      EX_SR2       : IN     LC3b_reg;
      EX_isLD      : IN     std_logic;
      ID_SR1       : IN     LC3b_reg;
      ID_SR2       : IN     LC3b_reg;
      MEM_DR       : IN     LC3b_reg;
      MEM_WriteReg : IN     std_logic;
      WB_DR        : IN     LC3b_reg;
      WB_WriteReg  : IN     std_logic;
      EX_SR1_SEL   : OUT    LC3b_4MUX_SEL;
      EX_SR2_SEL   : OUT    LC3B_4MUX_SEL;
      LD_USE_L     : OUT    std_logic
   );

-- Declarations

END fwdUnit ;

--
-- VHDL Architecture ece411.fwdUnit.struct
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 02:23:58 12/09/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY ece411;

ARCHITECTURE struct OF fwdUnit IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL EQ_EX_ID_SR1  : std_logic;
   SIGNAL EQ_EX_ID_SR2  : std_logic;
   SIGNAL EQ_EX_MEM_SR1 : std_logic;
   SIGNAL EQ_EX_MEM_SR2 : std_logic;
   SIGNAL EQ_EX_WB_SR1  : std_logic;
   SIGNAL EQ_EX_WB_SR2  : std_logic;
   SIGNAL EX_SR1_SEL0   : std_logic;
   SIGNAL EX_SR1_SEL1   : std_logic;
   SIGNAL EX_SR2_SEL0   : std_logic;
   SIGNAL EX_SR2_SEL1   : std_logic;
   SIGNAL LD_USE_SR1    : std_logic;
   SIGNAL LD_USE_SR2    : std_logic;


   -- Component Declarations
   COMPONENT BitAND2
   PORT (
      I0 : IN     std_logic ;
      I1 : IN     std_logic ;
      O  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT BitNOR2
   PORT (
      I0 : IN     std_logic ;
      I1 : IN     std_logic ;
      O  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Comp3
   PORT (
      In1 : IN     LC3b_reg ;
      In2 : IN     LC3b_reg ;
      Eq  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT cat2b
   PORT (
      b1  : IN     std_logic ;
      b0  : IN     std_logic ;
      c2b : OUT    LC3b_4mux_sel 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : BitAND2 USE ENTITY ece411.BitAND2;
   FOR ALL : BitNOR2 USE ENTITY ece411.BitNOR2;
   FOR ALL : Comp3 USE ENTITY ece411.Comp3;
   FOR ALL : cat2b USE ENTITY ece411.cat2b;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   EX_MEM_SR1_AND : BitAND2
      PORT MAP (
         I0 => MEM_WriteReg,
         I1 => EQ_EX_MEM_SR1,
         O  => EX_SR1_SEL1
      );
   EX_MEM_SR2_AND : BitAND2
      PORT MAP (
         I0 => MEM_WriteReg,
         I1 => EQ_EX_MEM_SR2,
         O  => EX_SR2_SEL1
      );
   EX_WB_SR1_AND : BitAND2
      PORT MAP (
         I0 => WB_WriteReg,
         I1 => EQ_EX_WB_SR1,
         O  => EX_SR1_SEL0
      );
   EX_WB_SR2_AND : BitAND2
      PORT MAP (
         I0 => WB_WriteReg,
         I1 => EQ_EX_WB_SR2,
         O  => EX_SR2_SEL0
      );
   MEM_WB_SR1_AND : BitAND2
      PORT MAP (
         I0 => EX_isLD,
         I1 => EQ_EX_ID_SR1,
         O  => LD_USE_SR1
      );
   MEM_WB_SR2_AND : BitAND2
      PORT MAP (
         I0 => EX_isLD,
         I1 => EQ_EX_ID_SR2,
         O  => LD_USE_SR2
      );
   LD_USE_NOR : BitNOR2
      PORT MAP (
         I0 => LD_USE_SR1,
         I1 => LD_USE_SR2,
         O  => LD_USE_L
      );
   EX_ID_SR1 : Comp3
      PORT MAP (
         In1 => EX_DR,
         In2 => ID_SR1,
         Eq  => EQ_EX_ID_SR1
      );
   EX_ID_SR2 : Comp3
      PORT MAP (
         In1 => EX_DR,
         In2 => ID_SR2,
         Eq  => EQ_EX_ID_SR2
      );
   EX_MEM_SR1 : Comp3
      PORT MAP (
         In1 => MEM_DR,
         In2 => EX_SR1,
         Eq  => EQ_EX_MEM_SR1
      );
   EX_MEM_SR2 : Comp3
      PORT MAP (
         In1 => MEM_DR,
         In2 => EX_SR2,
         Eq  => EQ_EX_MEM_SR2
      );
   EX_WB_SR1 : Comp3
      PORT MAP (
         In1 => WB_DR,
         In2 => EX_SR1,
         Eq  => EQ_EX_WB_SR1
      );
   EX_WB_SR2 : Comp3
      PORT MAP (
         In1 => WB_DR,
         In2 => EX_SR2,
         Eq  => EQ_EX_WB_SR2
      );
   EX_SR1_cat : cat2b
      PORT MAP (
         b1  => EX_SR1_SEL1,
         b0  => EX_SR1_SEL0,
         c2b => EX_SR1_SEL
      );
   EX_SR2_cat : cat2b
      PORT MAP (
         b1  => EX_SR2_SEL1,
         b0  => EX_SR2_SEL0,
         c2b => EX_SR2_SEL
      );

END struct;