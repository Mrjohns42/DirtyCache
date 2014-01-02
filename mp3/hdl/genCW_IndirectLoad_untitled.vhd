--
-- VHDL Architecture ece411.genCW_IndirectLoad.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 20:17:18 11/25/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY genCW_IndirectLoad IS
   PORT( 
      CW_ILD : OUT    LC3b_ControlWord
   );

-- Declarations

END genCW_IndirectLoad ;

--
ARCHITECTURE untitled OF genCW_IndirectLoad IS
BEGIN
  CW_ILD.name <= ind_op;
  
  CW_ILD.LoadPC <= '0';
  CW_ILD.LoadReg <= '0';
  CW_ILD.LoadNZP <= '0';
  CW_ILD.PCWB <= '0';
  
  CW_ILD.PCMuxSel <= '0';
  CW_ILD.PCAddMuxSel <= '0';
  CW_ILD.ExtPCMuxSel <= "00";
  CW_ILD.DestMuxSel <= '0';
  CW_ILD.RFInputMuxSel <= '0';
  CW_ILD.StoreSR <= '0';
  CW_ILD.ImmMuxSel <= "00";
  CW_ILD.ExMuxSel <= "00";
  CW_ILD.AddrMuxSel <= '0';
  CW_ILD.DataMuxSel <= "00";
  CW_ILD.ByteMuxSel <= '0';
  CW_ILD.WBMuxSel <= "00";
  
  CW_ILD.ALUOp <= ALU_ADD;
  
  CW_ILD.MRead_l <= '0';
  CW_ILD.MWrite_l <= '1';
  
  CW_ILD.isBR <= '0';
  CW_ILD.isLD <= '0';
  CW_ILD.isST <= '0';
  CW_ILD.isIndLoad <= '1';
  CW_ILD.isInd <= '0';
  
  CW_ILD.isUnconditional <= '0';
  CW_ILD.isIndirect <= '0';
  CW_ILD.isNormalBR <= '0';
  CW_ILD.isLEA <= '0';
  CW_ILD.noSrcA <= '0';
  CW_ILD.hasSrcB <= '0';
  CW_ILD.enBubble <= '0';
  CW_ILD.addnops <= '0';
END ARCHITECTURE untitled;

