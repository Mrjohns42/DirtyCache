-- VHDL Entity ece411.IF_ID.symbol
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

ENTITY IF_ID IS
   PORT( 
      bubble       : IN     std_logic;
      clk          : IN     std_logic;
      i_BTBPC      : IN     LC3b_word;
      i_BTBhit     : IN     std_logic;
      i_BTBpredict : IN     std_logic;
      i_IW         : IN     LC3b_word;
      i_PC         : IN     LC3b_word;
      i_PCPlus2    : IN     LC3b_word;
      load         : IN     std_logic;
      reset_l      : IN     std_logic;
      o_BTBPC      : OUT    LC3b_word;
      o_BTBhit     : OUT    STD_LOGIC;
      o_BTBpredict : OUT    STD_LOGIC;
      o_IW         : OUT    LC3b_word;
      o_PC         : OUT    LC3b_word;
      o_PCPlus2    : OUT    LC3b_word
   );

-- Declarations

END IF_ID ;

--
-- VHDL Architecture ece411.IF_ID.struct
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
LIBRARY mp3lib;

ARCHITECTURE struct OF IF_ID IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL l_BTBPC      : LC3b_word;
   SIGNAL l_IW         : LC3b_word;
   SIGNAL l_PC         : LC3b_word;
   SIGNAL l_PCPlus2    : LC3b_word;
   SIGNAL l_btbhit     : std_logic;
   SIGNAL l_btbpredict : std_logic;


   -- Component Declarations
   COMPONENT enableWord1
   PORT (
      bitin  : IN     std_logic ;
      en     : IN     std_logic ;
      bitout : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT enableWord16
   PORT (
      en      : IN     std_logic ;
      wordin  : IN     LC3b_word ;
      wordout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT REG1
   PORT (
      RESET_L : IN     STD_LOGIC ;
      A       : IN     STD_LOGIC ;
      EN      : IN     STD_LOGIC ;
      CLK     : IN     STD_LOGIC ;
      F       : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT REG16
   PORT (
      RESET_L : IN     STD_LOGIC ;
      A       : IN     LC3b_word ;
      EN      : IN     STD_LOGIC ;
      CLK     : IN     STD_LOGIC ;
      F       : OUT    LC3b_word 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : REG1 USE ENTITY mp3lib.REG1;
   FOR ALL : REG16 USE ENTITY mp3lib.REG16;
   FOR ALL : enableWord1 USE ENTITY ece411.enableWord1;
   FOR ALL : enableWord16 USE ENTITY ece411.enableWord16;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   hitBubble : enableWord1
      PORT MAP (
         bitin  => i_BTBhit,
         en     => bubble,
         bitout => l_btbhit
      );
   hitBubble1 : enableWord1
      PORT MAP (
         bitin  => i_BTBpredict,
         en     => bubble,
         bitout => l_btbpredict
      );
   BTBPCBubble : enableWord16
      PORT MAP (
         en      => bubble,
         wordin  => i_BTBPC,
         wordout => l_BTBPC
      );
   IWBubble : enableWord16
      PORT MAP (
         en      => bubble,
         wordin  => i_IW,
         wordout => l_IW
      );
   PCBubble : enableWord16
      PORT MAP (
         en      => bubble,
         wordin  => i_PC,
         wordout => l_PC
      );
   PCPlus2Bubble : enableWord16
      PORT MAP (
         en      => bubble,
         wordin  => i_PCPlus2,
         wordout => l_PCPlus2
      );
   U_1 : REG1
      PORT MAP (
         RESET_L => reset_l,
         A       => l_btbhit,
         EN      => load,
         CLK     => clk,
         F       => o_BTBhit
      );
   U_2 : REG1
      PORT MAP (
         RESET_L => reset_l,
         A       => l_btbpredict,
         EN      => load,
         CLK     => clk,
         F       => o_BTBpredict
      );
   IW : REG16
      PORT MAP (
         RESET_L => reset_l,
         A       => l_IW,
         EN      => load,
         CLK     => clk,
         F       => o_IW
      );
   PC : REG16
      PORT MAP (
         RESET_L => reset_l,
         A       => l_PC,
         EN      => load,
         CLK     => clk,
         F       => o_PC
      );
   PC1 : REG16
      PORT MAP (
         RESET_L => reset_l,
         A       => l_PCPlus2,
         EN      => load,
         CLK     => clk,
         F       => o_PCPlus2
      );
   U_0 : REG16
      PORT MAP (
         RESET_L => reset_l,
         A       => l_BTBPC,
         EN      => load,
         CLK     => clk,
         F       => o_BTBPC
      );

END struct;
