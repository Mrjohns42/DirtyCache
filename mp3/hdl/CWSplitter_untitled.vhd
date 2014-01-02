--
-- VHDL Architecture ece411.CWSplitter.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 23:32:35 10/24/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY CWSplit IS
   PORT( 
      CW              : IN     LC3b_ControlWord;
      LoadPC          : OUT    std_logic;
      LoadReg         : OUT    std_logic;
      LoadNZP         : OUT    std_logic;
      PCWriteback     : OUT    std_logic;
      PCMuxSel        : OUT    std_logic;
      PCAddMuxSel     : OUT    std_logic;
      ExtPCMuxSel     : OUT    LC3b_4mux_sel;
      DestMuxSel      : OUT    std_logic;
      RFInputMuxSel   : OUT    std_logic;
      StoreSR         : OUT    std_logic;
      ImmMuxSel       : OUT    LC3b_4mux_sel;
      ExMuxSel        : OUT    LC3b_4mux_sel;
      AddrMuxSel      : OUT    std_logic;
      DataMuxSel      : OUT    LC3b_4mux_sel;
      ByteMuxSel      : OUT    std_logic;
      WBMuxSel        : OUT    LC3b_4mux_sel;
      ALUOp           : OUT    LC3b_ALUop;
      MRead_l         : OUT    std_logic;
      MWrite_l        : OUT    std_logic;
      isBR            : OUT    std_logic;
      isLD            : OUT    std_logic;
      isST            : OUT    std_logic;
      isInd           : OUT    std_logic;
      isUnconditional : OUT    std_logic;
      isIndirect      : OUT    std_logic;
      isNormalBR      : OUT    std_logic;
      isLEA           : OUT    std_logic;
      noSrcA          : OUT    std_logic;
      hasSrcB         : OUT    std_logic;
      enBubble        : OUT    std_logic;
      isIndLoad       : OUT    std_logic;
      addNOPs         : OUT    std_logic
   );

-- Declarations

END CWSplit ;

--
ARCHITECTURE untitled OF CWSplit IS
BEGIN
  LoadPC <= CW.LoadPC;
  LoadReg <= CW.LoadReg;
  LoadNZP <= CW.LoadNZP;
  PCWriteback <= CW.PCWB;

  PCMuxSel <= CW.PCMuxSel;
  PCAddMuxSel <= CW.PCAddMuxSel;
  ExtPCMuxSel <= CW.ExtPCMuxSel;
  DestMuxSel <= CW.DestMuxSel;
  RFInputMuxSel <= CW.RFInputMuxSel;
  StoreSR <= CW.StoreSR;
  ImmMuxSel <= CW.ImmMuxSel;
  ExMuxSel <= CW.ExMuxSel;
  AddrMuxSel <= CW.AddrMuxSel;
  DataMuxSel <= CW.DataMuxSel;
  ByteMuxSel <= CW.ByteMuxSel;
  WBMuxSel <= CW.WBMuxSel;
  
  ALUOP <= CW.ALUOp;
  
  MRead_l <= CW.MRead_l;
  MWrite_l <= CW.MWrite_l;
  
  isBR <= CW.isBR;
  isLD <= CW.isLD;
  isST <= CW.isST;
  isIndLoad <= CW.isIndLoad;
  isInd <= CW.isInd;
  
  isUnconditional <= CW.isUnconditional;
  isIndirect <= CW.isIndirect;
  isNormalBR <= CW.isNormalBR;
  
  isLEA <= CW.isLEA;
  noSrcA <= CW.noSrcA;
  hasSrcB <= CW.hasSrcB;
  enBubble <= CW.enBubble;
  addNOPs <= CW.addNOPs;
END ARCHITECTURE untitled;

