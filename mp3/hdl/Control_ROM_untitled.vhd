--
-- VHDL Architecture ece411.Control_ROM.untitled
--
-- Created:
--          by - tischer1.ews (evrt-252-23.ews.illinois.edu)
--          at - 20:30:27 10/21/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Control_ROM IS
   PORT( 
      Opcode      : IN     LC3b_opcode;
      reset_l     : IN     std_logic;
      ControlWord : OUT    LC3b_ControlWord
   );

-- Declarations

END Control_ROM ;

--
ARCHITECTURE untitled OF Control_ROM IS
BEGIN
  Process(Opcode)
    variable state : LC3b_ControlWord;
  BEGIN
    --set default values
    state := NOP;
    --state.addnops := '1';
    case Opcode is
      when OP_ADD =>
        state.name := add_op;
        state.ALUop := ALU_ADD;
        state.hasSrcB := '1';
        state.ImmMuxSel := "10";
        state.LoadReg := '1';
        state.LoadNZP := '1';
      when OP_AND =>
        state.name := and_op;
        state.ALUOp := ALU_AND;
        state.hasSrcB := '1';
        state.ImmMuxSel := "10";
        state.LoadReg := '1';
        state.LoadNZP := '1';
      when OP_NOT =>
        state.name := not_op;
        state.ALUOp := ALU_NOT;
        state.LoadReg := '1';
        state.LoadNZP := '1';
      when OP_SHF =>
        state.name := shf_op;
        state.ImmMuxSel := "11";
        state.ExMuxSel := "01";
        state.LoadReg := '1';
        state.LoadNZP := '1';
      when OP_STB =>
        state.name := stb_op;
        state.ALUOp := ALU_ADD;
        state.ImmMuxSel := "01";
        state.StoreSR := '1';
        state.DataMuxSel := "10";
        state.ByteMuxSel := '1';
        state.isST := '1';
      when OP_STR =>
        state.name := str_op;
        state.ALUOp := ALU_ADD;
        state.StoreSR := '1';
        state.DataMuxSel := "01";
        state.MWrite_l := '0';
        state.isST := '1';
      when OP_STI =>
        state.name := sti_op;
        state.StoreSR := '1';
        state.AddrMuxSel := '1';
        state.DataMuxSel := "01";
        state.MWrite_l := '0';
        state.isST := '1';
        state.isInd := '1';
      when OP_LDB =>
        state.name := ldb_op;
        state.ALUop := ALU_ADD;
        state.ImmMuxSel := "01";
        state.LoadReg := '1';
        state.LoadNZP := '1';
        state.WBMuxSel := "10";
        state.MRead_l := '0';
        state.isLD := '1';
      when OP_LDR =>
        state.name := ldr_op;
        state.ALUOp := ALU_ADD;
        state.LoadReg := '1';
        state.LoadNZP := '1';
        state.WBMuxSel := "01";
        state.MRead_l := '0';
        state.isLD := '1';
      when OP_LDI =>
        state.name := ldi_op;
        state.LoadReg := '1';
        state.LoadNZP := '1';
        state.WBMuxSel := "01";
        state.AddrMuxSel := '1';
        state.MRead_l := '0';
        state.isLD := '1';
        state.isInd := '1';
      when OP_BR =>
        state.name := br_op;
        state.isBR := '1';
        state.noSrcA := '1';
        state.enBubble := '1';
      when OP_LEA =>
        state.name := lea_op;
        state.WBMuxSel := "00";
        state.LoadReg := '1';
        state.LoadNZP := '1';
        state.isLEA := '1';
        state.aluOP := ALU_PASS;
        state.noSrcA := '1';
      when OP_JSR =>
        state.name := jsr_op;
        state.extPCMuxSel := "01";
        state.loadPC := '1';
        state.PCAddMuxSel := '1';
        state.aluOP := ALU_PASS;
        state.RFInputMuxSel := '1';
        state.DestMuxSel := '1';
        state.loadReg := '1';
        state.isIndirect := '1';
        state.isUnconditional := '1';
        state.noSrcA := '0'; --Because if there is no SrcA, it doesn't use ALU; so no harm.
        state.enBubble := '1';
      when OP_JMP =>
        state.name := jmp_op;
        state.extPCMuxSel := "01";
        state.loadPC := '1'; 
        state.aluOP := ALU_PASS;
        state.isIndirect := '1';
        state.isUnconditional := '1';
        state.enBubble := '1';
      when OP_TRAP =>
        state.name := trap_op;
        state.ExMuxSel := "10";
        state.MRead_l := '0';
        state.extPCMuxSel := "10";
        state.loadPC := '1';
        state.RFInputMuxSel := '1';
        state.DestMuxSel := '1';
        state.loadReg := '1';
        state.isIndirect := '1';
        state.isUnconditional := '1';
        state.noSrcA := '1';
        state.enBubble := '1';
      when OP_TEST =>
        state := NOP;
      when others =>
        state.name := bad_op;
    end case;
    
    ControlWord <= state after DELAY_ROM;
  END PROCESS;
END ARCHITECTURE untitled;

