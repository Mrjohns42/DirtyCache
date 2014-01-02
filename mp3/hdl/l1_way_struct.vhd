-- VHDL Entity ece411.L1_Way.symbol
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 02:23:55 12/09/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1_Way IS
   PORT( 
      active   : IN     std_logic;
      dataIn   : IN     LC3b_oword;
      dirtyIn  : IN     std_logic;
      index    : IN     LC3b_c_index;
      reset_l  : IN     std_logic;
      tag      : IN     LC3b_c_tag;
      validIn  : IN     std_logic;
      write    : IN     std_logic;
      writeV   : IN     std_logic;
      dataOut  : OUT    LC3b_Oword;
      dirtyOut : OUT    std_logic;
      hit      : OUT    std_logic;
      tagOut   : OUT    LC3b_c_tag
   );

-- Declarations

END L1_Way ;

--
-- VHDL Architecture ece411.L1_Way.struct
--
-- Created:
--          by - ece411.ece411 (localhost)
--          at - 02:23:55 12/09/12
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY ece411;

ARCHITECTURE struct OF L1_Way IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL dirtypre : std_logic;
   SIGNAL tagMatch : std_logic;
   SIGNAL validOut : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL tagOut_internal : LC3b_c_tag;


   -- Component Declarations
   COMPONENT BitAND2
   PORT (
      I0 : IN     std_logic ;
      I1 : IN     std_logic ;
      O  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT BitAND3
   PORT (
      I0 : IN     std_logic ;
      I1 : IN     std_logic ;
      I2 : IN     std_logic ;
      O  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Comp9
   PORT (
      In1 : IN     LC3b_c_tag ;
      In2 : IN     LC3b_c_tag ;
      eq  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT DataArray
   PORT (
      RESET_L   : IN     std_logic ;
      DataWrite : IN     std_logic ;
      Index     : IN     LC3b_c_index ;
      DataIn    : IN     LC3b_Oword ;
      DataOut   : OUT    LC3b_Oword 
   );
   END COMPONENT;
   COMPONENT TagArray
   PORT (
      RESET_L  : IN     std_logic ;
      TagWrite : IN     std_logic ;
      Index    : IN     LC3b_c_index ;
      TagIn    : IN     LC3b_c_tag ;
      TagOut   : OUT    LC3b_c_tag 
   );
   END COMPONENT;
   COMPONENT bitArray
   PORT (
      RESET_L  : IN     std_logic ;
      bitWrite : IN     std_logic ;
      Index    : IN     LC3b_c_index ;
      bitIn    : IN     std_logic ;
      bitOut   : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : BitAND2 USE ENTITY ece411.BitAND2;
   FOR ALL : BitAND3 USE ENTITY ece411.BitAND3;
   FOR ALL : Comp9 USE ENTITY ece411.Comp9;
   FOR ALL : DataArray USE ENTITY ece411.DataArray;
   FOR ALL : TagArray USE ENTITY ece411.TagArray;
   FOR ALL : bitArray USE ENTITY ece411.bitArray;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   dirtyAND : BitAND2
      PORT MAP (
         I0 => validOut,
         I1 => dirtypre,
         O  => dirtyOut
      );
   hitAND : BitAND3
      PORT MAP (
         I0 => validOut,
         I1 => active,
         I2 => tagMatch,
         O  => hit
      );
   compTag : Comp9
      PORT MAP (
         In1 => tagOut_internal,
         In2 => tag,
         eq  => tagMatch
      );
   theData : DataArray
      PORT MAP (
         RESET_L   => reset_l,
         DataWrite => write,
         Index     => index,
         DataIn    => dataIn,
         DataOut   => dataOut
      );
   theTag : TagArray
      PORT MAP (
         RESET_L  => reset_l,
         TagWrite => write,
         Index    => index,
         TagIn    => tag,
         TagOut   => tagOut_internal
      );
   theDirty : bitArray
      PORT MAP (
         RESET_L  => reset_l,
         bitWrite => write,
         Index    => index,
         bitIn    => dirtyIn,
         bitOut   => dirtypre
      );
   theValid : bitArray
      PORT MAP (
         RESET_L  => reset_l,
         bitWrite => writeV,
         Index    => index,
         bitIn    => validIn,
         bitOut   => validOut
      );

   -- Implicit buffered output assignments
   tagOut <= tagOut_internal;

END struct;
