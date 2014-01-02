echo "--- Executing initialization force file for ../testcode/mp3/mp22-test.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/mp22-test.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"E5"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"16"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"0C"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"6C"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(12) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(13) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(14) X"0D"
change /mp3_cpu/DRAM/vhdl_memory/mem(15) X"AA"
change /mp3_cpu/DRAM/vhdl_memory/mem(16) X"46"
change /mp3_cpu/DRAM/vhdl_memory/mem(17) X"1D"
change /mp3_cpu/DRAM/vhdl_memory/mem(18) X"10"
change /mp3_cpu/DRAM/vhdl_memory/mem(19) X"BC"
change /mp3_cpu/DRAM/vhdl_memory/mem(20) X"E0"
change /mp3_cpu/DRAM/vhdl_memory/mem(21) X"56"
change /mp3_cpu/DRAM/vhdl_memory/mem(22) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(23) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(24) X"78"
change /mp3_cpu/DRAM/vhdl_memory/mem(25) X"EA"
change /mp3_cpu/DRAM/vhdl_memory/mem(26) X"1C"
change /mp3_cpu/DRAM/vhdl_memory/mem(27) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(28) X"DD"
change /mp3_cpu/DRAM/vhdl_memory/mem(29) X"BA"
change /mp3_cpu/DRAM/vhdl_memory/mem(30) X"88"
change /mp3_cpu/DRAM/vhdl_memory/mem(31) X"88"
change /mp3_cpu/DRAM/vhdl_memory/mem(32) X"24"
change /mp3_cpu/DRAM/vhdl_memory/mem(33) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(34) X"26"
change /mp3_cpu/DRAM/vhdl_memory/mem(35) X"00"
run 5
echo "Done loading ../testcode/mp3/mp22-test.asm program code."
