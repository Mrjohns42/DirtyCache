-- VHDL Entity ece411.STAGE_EXE.symbol
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

ENTITY STAGE_EXE IS
   PORT( 
      ALUa          : IN     LC3b_word;
      ALUb          : IN     LC3b_word;
      CW            : IN     LC3b_ControlWord;
      DR            : IN     LC3b_reg;
      FWD_MEM       : IN     LC3b_word;
      FWD_SR1MuxSel : IN     LC3b_4mux_sel;
      FWD_SR2MuxSel : IN     LC3b_4mux_sel;
      FWD_WB        : IN     LC3b_word;
      IW            : IN     LC3b_word;
      RFBin         : IN     LC3b_word;
      SR1           : IN     LC3b_reg;
      SR2           : IN     LC3b_reg;
      EX_addNOPs    : OUT    std_logic;
      EX_isInd      : OUT    std_logic;
      Exout         : OUT    LC3b_word;
      RFBout        : OUT    LC3b_word;
      enBubble      : OUT    std_logic;
      isBR          : OUT    std_logic;
      isLD          : OUT    std_logic
   );

-- Declarations

END STAGE_EXE ;

--
-- VHDL Architecture ece411.STAGE_EXE.struct
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

LIBRARY ece411;

ARCHITECTURE struct OF STAGE_EXE IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ADJ8out  : LC3b_word;
   SIGNAL ALUain   : LC3b_word;
   SIGNAL ALUbin   : LC3b_word;
   SIGNAL ALUop    : LC3b_aluop;
   SIGNAL ALUout   : LC3b_WORD;
   SIGNAL ExMuxSel : LC3b_4mux_sel;
   SIGNAL FWD1     : LC3b_WORD;
   SIGNAL FWD1ST   : LC3b_word;
   SIGNAL FWD2     : LC3b_WORD;
   SIGNAL FWD2ST   : LC3b_word;
   SIGNAL ShiftOp  : LC3b_shiftop;
   SIGNAL ShiftOut : LC3b_word;
   SIGNAL isST     : std_logic;
   SIGNAL vect8    : LC3b_trapvect8;


   -- Component Declarations
   COMPONENT ADJ8
   PORT (
      input : IN     LC3b_trapvect8 ;
      ADJ8  : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ALU
   PORT (
      ALUop  : IN     LC3b_aluop ;
      ALUa   : IN     LC3b_word ;
      ALUb   : IN     LC3b_word ;
      ALUout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT CWSplit
   PORT (
      CW              : IN     LC3b_ControlWord ;
      LoadPC          : OUT    std_logic ;
      LoadReg         : OUT    std_logic ;
      LoadNZP         : OUT    std_logic ;
      PCWriteback     : OUT    std_logic ;
      PCMuxSel        : OUT    std_logic ;
      PCAddMuxSel     : OUT    std_logic ;
      ExtPCMuxSel     : OUT    LC3b_4mux_sel ;
      DestMuxSel      : OUT    std_logic ;
      RFInputMuxSel   : OUT    std_logic ;
      StoreSR         : OUT    std_logic ;
      ImmMuxSel       : OUT    LC3b_4mux_sel ;
      ExMuxSel        : OUT    LC3b_4mux_sel ;
      AddrMuxSel      : OUT    std_logic ;
      DataMuxSel      : OUT    LC3b_4mux_sel ;
      ByteMuxSel      : OUT    std_logic ;
      WBMuxSel        : OUT    LC3b_4mux_sel ;
      ALUOp           : OUT    LC3b_ALUop ;
      MRead_l         : OUT    std_logic ;
      MWrite_l        : OUT    std_logic ;
      isBR            : OUT    std_logic ;
      isLD            : OUT    std_logic ;
      isST            : OUT    std_logic ;
      isInd           : OUT    std_logic ;
      isUnconditional : OUT    std_logic ;
      isIndirect      : OUT    std_logic ;
      isNormalBR      : OUT    std_logic ;
      isLEA           : OUT    std_logic ;
      noSrcA          : OUT    std_logic ;
      hasSrcB         : OUT    std_logic ;
      enBubble        : OUT    std_logic ;
      isIndLoad       : OUT    std_logic ;
      addNOPs         : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT IWSplit
   PORT (
      IW       : IN     LC3b_word ;
      index6   : OUT    LC3b_index6 ;
      vect8    : OUT    LC3b_trapvect8 ;
      offset9  : OUT    LC3b_offset9 ;
      offset11 : OUT    LC3b_offset11 ;
      SrcA     : OUT    LC3b_reg ;
      SrcB     : OUT    LC3b_reg ;
      Opcode   : OUT    LC3b_opcode ;
      imm4     : OUT    LC3b_imm4 ;
      IR5      : OUT    std_logic ;
      IR11     : OUT    std_logic ;
      Shiftop  : OUT    LC3b_shiftop ;
      Dest     : OUT    LC3b_reg ;
      imm5     : OUT    LC3b_imm5 
   );
   END COMPONENT;
   COMPONENT ShiftUnit
   PORT (
      ShiftOp  : IN     LC3b_shiftop ;
      input    : IN     LC3b_word ;
      count    : IN     LC3b_word ;
      ShiftOut : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT WordMux2
   PORT (
      A   : IN     LC3b_word ;
      B   : IN     LC3b_word ;
      Sel : IN     std_logic ;
      F   : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT WordMux4
   PORT (
      A   : IN     LC3b_word ;
      B   : IN     LC3b_word ;
      C   : IN     LC3b_word ;
      D   : IN     LC3b_word ;
      Sel : IN     LC3b_4mux_sel ;
      F   : OUT    LC3b_word 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ADJ8 USE ENTITY ece411.ADJ8;
   FOR ALL : ALU USE ENTITY ece411.ALU;
   FOR ALL : CWSplit USE ENTITY ece411.CWSplit;
   FOR ALL : IWSplit USE ENTITY ece411.IWSplit;
   FOR ALL : ShiftUnit USE ENTITY ece411.ShiftUnit;
   FOR ALL : WordMux2 USE ENTITY ece411.WordMux2;
   FOR ALL : WordMux4 USE ENTITY ece411.WordMux4;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   aADJ8 : ADJ8
      PORT MAP (
         input => vect8,
         ADJ8  => ADJ8out
      );
   aALU : ALU
      PORT MAP (
         ALUop  => ALUop,
         ALUa   => ALUain,
         ALUb   => ALUbin,
         ALUout => ALUout
      );
   EX_CWSplit : CWSplit
      PORT MAP (
         CW              => CW,
         LoadPC          => OPEN,
         LoadReg         => OPEN,
         LoadNZP         => OPEN,
         PCWriteback     => OPEN,
         PCMuxSel        => OPEN,
         PCAddMuxSel     => OPEN,
         ExtPCMuxSel     => OPEN,
         DestMuxSel      => OPEN,
         RFInputMuxSel   => OPEN,
         StoreSR         => OPEN,
         ImmMuxSel       => OPEN,
         ExMuxSel        => ExMuxSel,
         AddrMuxSel      => OPEN,
         DataMuxSel      => OPEN,
         ByteMuxSel      => OPEN,
         WBMuxSel        => OPEN,
         ALUOp           => ALUop,
         MRead_l         => OPEN,
         MWrite_l        => OPEN,
         isBR            => isBR,
         isLD            => isLD,
         isST            => isST,
         isInd           => EX_isInd,
         isUnconditional => OPEN,
         isIndirect      => OPEN,
         isNormalBR      => OPEN,
         isLEA           => OPEN,
         noSrcA          => OPEN,
         hasSrcB         => OPEN,
         enBubble        => enBubble,
         isIndLoad       => OPEN,
         addNOPs         => EX_addNOPs
      );
   U_0 : IWSplit
      PORT MAP (
         IW       => IW,
         index6   => OPEN,
         vect8    => vect8,
         offset9  => OPEN,
         offset11 => OPEN,
         SrcA     => OPEN,
         SrcB     => OPEN,
         Opcode   => OPEN,
         imm4     => OPEN,
         IR5      => OPEN,
         IR11     => OPEN,
         Shiftop  => ShiftOp,
         Dest     => OPEN,
         imm5     => OPEN
      );
   aShiftUnit : ShiftUnit
      PORT MAP (
         ShiftOp  => ShiftOp,
         input    => ALUain,
         count    => ALUbin,
         ShiftOut => ShiftOut
      );
   ALUaSTMux : WordMux2
      PORT MAP (
         A   => FWD1,
         B   => FWD2ST,
         Sel => isST,
         F   => ALUain
      );
   ALUbSTMux : WordMux2
      PORT MAP (
         A   => FWD2,
         B   => ALUb,
         Sel => isST,
         F   => ALUbin
      );
   RFbSTMux : WordMux2
      PORT MAP (
         A   => RFBin,
         B   => FWD1ST,
         Sel => isST,
         F   => RFBout
      );
   ExMux : WordMux4
      PORT MAP (
         A   => ALUout,
         B   => ShiftOut,
         C   => ADJ8out,
         D   => ADJ8out,
         Sel => ExMuxSel,
         F   => Exout
      );
   FWDaMux : WordMux4
      PORT MAP (
         A   => ALUa,
         B   => FWD_WB,
         C   => FWD_MEM,
         D   => FWD_MEM,
         Sel => FWD_SR1MuxSel,
         F   => FWD1
      );
   FWDaMuxST : WordMux4
      PORT MAP (
         A   => RFBin,
         B   => FWD_WB,
         C   => FWD_MEM,
         D   => FWD_MEM,
         Sel => FWD_SR1MuxSel,
         F   => FWD1ST
      );
   FWDbMux : WordMux4
      PORT MAP (
         A   => ALUb,
         B   => FWD_WB,
         C   => FWD_MEM,
         D   => FWD_MEM,
         Sel => FWD_SR2MuxSel,
         F   => FWD2
      );
   FWDbMuxST : WordMux4
      PORT MAP (
         A   => ALUa,
         B   => FWD_WB,
         C   => FWD_MEM,
         D   => FWD_MEM,
         Sel => FWD_SR2MuxSel,
         F   => FWD2ST
      );

END struct;
