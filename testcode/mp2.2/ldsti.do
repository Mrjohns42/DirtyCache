echo "--- Executing initialization force file for ../testcode/mp2.2/ldsti.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2.2/ldsti.asm program code."
run 5
change /mp2_cpu/dram/pdram/vhdl_memory/mem(0) X"10"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(1) X"A2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(2) X"21"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(3) X"10"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(4) X"1E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(5) X"24"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(6) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(7) X"50"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(8) X"1E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(9) X"26"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(10) X"A8"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(11) X"D4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(12) X"83"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(13) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(14) X"13"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(15) X"B2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(16) X"0B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(17) X"E6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(18) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(19) X"66"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(20) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(21) X"34"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(22) X"98"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(23) X"D4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(24) X"C1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(25) X"34"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(26) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(27) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(28) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(29) X"0F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(30) X"55"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(31) X"A5"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(32) X"22"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(33) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(34) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(35) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(36) X"88"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(37) X"88"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(38) X"2A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(39) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(40) X"2C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(41) X"00"
run 5
echo "Done loading ../testcode/mp2.2/ldsti.asm program code."
