-- VHDL Entity ece411.L1_Controller.symbol
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

ENTITY L1_Controller IS
   PORT( 
      LRU_Dirty    : IN     std_logic;
      MISS_H       : IN     std_logic;
      clk          : IN     std_logic;
      pmresp_h     : IN     std_logic;
      reset_l      : IN     std_logic;
      DataMuxSel   : OUT    std_logic;
      Dirty        : OUT    std_logic;
      Resp_en      : OUT    std_logic;
      Valid        : OUT    std_logic;
      WBAddrMuxSel : OUT    std_logic;
      WriteLine_h  : OUT    std_logic;
      WriteValid_h : OUT    std_logic;
      pmread_l     : OUT    std_logic;
      pmwrite_l    : OUT    std_logic
   );

-- Declarations

END L1_Controller ;

--
-- VHDL Architecture ece411.L1_Controller.fsm
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
 
ARCHITECTURE fsm OF L1_Controller IS

   TYPE STATE_TYPE IS (
      Hit,
      LoadLine,
      WriteBack
   );
 
   -- State vector declaration
   ATTRIBUTE state_vector : string;
   ATTRIBUTE state_vector OF fsm : ARCHITECTURE IS "current_state";

   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk,
      RESET_L
   )
   -----------------------------------------------------------------
   BEGIN
      IF (RESET_L = '0') THEN
         current_state <= Hit;
      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      LRU_Dirty,
      MISS_H,
      current_state,
      pmresp_h
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN Hit => 
            IF ((MISS_H = '1') AND
                (LRU_Dirty = '1')) THEN 
               next_state <= WriteBack;
            ELSIF (MISS_H = '1') THEN 
               next_state <= LoadLine;
            ELSE
               next_state <= Hit;
            END IF;
         WHEN LoadLine => 
            IF (pmresp_h = '1') THEN 
               next_state <= Hit;
            ELSE
               next_state <= LoadLine;
            END IF;
         WHEN WriteBack => 
            IF (pmresp_h = '1') THEN 
               next_state <= Hit;
            ELSE
               next_state <= WriteBack;
            END IF;
         WHEN OTHERS =>
            next_state <= Hit;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment
      DataMuxSel <= '0';
      Dirty <= '1';
      Resp_en <= '0';
      Valid <= '1';
      WBAddrMuxSel <= '0';
      WriteLine_h <= '0';
      WriteValid_h <= '0';
      pmread_l <= '1';
      pmwrite_l <= '1';

      -- Combined Actions
      CASE current_state IS
         WHEN Hit => 
            Resp_en <= '1';
         WHEN LoadLine => 
            pmread_l <= '0' after 6ns;
            DataMuxSel <= '1';
            Dirty <= '0';
            WriteLine_h <= '1';
            WriteValid_h <= '1';
         WHEN WriteBack => 
            WBAddrMuxSel <= '1';
            pmwrite_l <= '0' after 6ns;
            Valid <= '0';
            WriteValid_h <= '1';
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
END fsm;
