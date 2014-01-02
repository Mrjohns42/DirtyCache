--
-- VHDL Architecture ece411.enL2Unit.untitled
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 11:26:41 12/08/12
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ieee.std_logic_arith.all;

ENTITY enL2Unit IS
   PORT( 
      en_L2       : IN     std_logic;
      --Arbiter
      mread_l     : IN     std_logic;
      mwrite_l    : IN     std_logic;
      address     : IN     LC3b_word;
      dataout     : IN     LC3b_Oword;
      datain      : OUT    LC3b_Oword;
      mresp_h     : OUT    std_logic;
      --Physical Memory
      pmread_l    : OUT    std_logic;
      pmwrite_l   : OUT    std_logic;
      pmaddress   : OUT    LC3b_word;
      pmdataout   : OUT    LC3b_Oword;
      pmdatain    : IN     LC3b_Oword;
      pmresp_h    : IN     std_logic;
      --L2 cache
      l2mread_l   : OUT    std_logic;
      l2mwrite_l  : OUT    std_logic;
      l2address   : OUT    LC3b_word;
      l2dataIn    : OUT    LC3b_Oword;
      l2dataOut   : IN     LC3b_Oword;
      l2resp_h    : IN     std_logic;
      l2pmread_l  : IN     std_logic;
      l2pmwrite_l : IN     std_logic;
      l2pmaddress : IN     LC3b_word;
      l2pmdataOut : IN     LC3b_Oword;
      l2pmdataIn  : OUT    LC3b_Oword;
      l2pmresp_h  : OUT    std_logic
   );

-- Declarations

END enL2Unit ;

--
ARCHITECTURE untitled OF enL2Unit IS
BEGIN
  Process (en_L2, mread_l, mwrite_l, address, dataout, pmdatain, pmresp_h, l2dataOut, l2resp_h, l2pmread_l, l2pmwrite_l, l2pmaddress, l2pmdataOut)
    --Arbiter
    variable pre_datain : LC3b_Oword;
    variable pre_mresp_h : std_logic;
    
    --Physical Memory
    variable pre_pmread_l : std_logic;
    variable pre_pmwrite_l : std_logic;
    variable pre_pmaddress : LC3b_word;
    variable pre_pmdataout : LC3b_Oword;
    
    --L2 cache
    variable pre_l2mread_l : std_logic;
    variable pre_l2mwrite_l : std_logic;
    variable pre_l2address : LC3b_word;
    variable pre_l2dataIn : LC3b_Oword;
    variable pre_l2pmdataIn : LC3b_Oword;
    variable pre_l2pmresp_h : std_logic;
  BEGIN
    case en_l2 is
      when '0' =>
        pre_datain := pmdatain;
        pre_mresp_h := pmresp_h;
        pre_pmread_l := mread_l;
        pre_pmwrite_l := mwrite_l;
        pre_pmaddress := address;
        pre_pmdataout := dataout;
        pre_l2mread_l := 'X';
        pre_l2mwrite_l := 'X';
        pre_l2address := (OTHERS => 'X');
        pre_l2dataIn := (OTHERS => 'X');
        pre_l2pmdataIn := (OTHERS => 'X');
        pre_l2pmresp_h := 'X';
      when '1' =>
        pre_datain := l2dataOut;
        pre_mresp_h := l2resp_h;
        pre_pmread_l := l2pmread_l;
        pre_pmwrite_l := l2pmwrite_l;
        pre_pmaddress := l2pmaddress;
        pre_pmdataout := l2pmdataOut;
        pre_l2mread_l := mread_l;
        pre_l2mwrite_l := mwrite_l;
        pre_l2address := address;
        pre_l2dataIn := dataout;
        pre_l2pmdataIn := pmdatain;
        pre_l2pmresp_h := pmresp_h;
      when others =>
        pre_datain := (OTHERS => 'X');
        pre_mresp_h := 'X';
        pre_pmread_l := 'X';
        pre_pmwrite_l := 'X';
        pre_pmaddress := (OTHERS => 'X');
        pre_pmdataout := (OTHERS => 'X');
        pre_l2mread_l := 'X';
        pre_l2mwrite_l := 'X';
        pre_l2address := (OTHERS => 'X');
        pre_l2dataIn := (OTHERS => 'X');
        pre_l2pmdataIn := (OTHERS => 'X');
        pre_l2pmresp_h := 'X';
    end case;
    datain <= pre_datain;
    mresp_h <= pre_mresp_h;
    pmread_l <= pre_pmread_l;
    pmwrite_l <= pre_pmwrite_l;
    pmaddress <= pre_pmaddress;
    pmdataout <= pre_pmdataout;
    l2mread_l <= pre_l2mread_l;
    l2mwrite_l <= pre_l2mwrite_l;
    l2address <= pre_l2address;
    l2dataIn <= pre_l2dataIn;
    l2pmdataIn <= pre_l2pmdataIn;
    l2pmresp_h <= pre_l2pmresp_h;
  END PROCESS;
END ARCHITECTURE untitled;

