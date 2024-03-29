echo "--- Executing initialization force file for ../testcode/mp3/mathtest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/mathtest.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"66"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"12"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"6C"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"D2"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"6D"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"12"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"BF"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"14"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"AD"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"54"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"6E"
change /mp3_cpu/DRAM/vhdl_memory/mem(12) X"87"
change /mp3_cpu/DRAM/vhdl_memory/mem(13) X"14"
change /mp3_cpu/DRAM/vhdl_memory/mem(14) X"C0"
change /mp3_cpu/DRAM/vhdl_memory/mem(15) X"5F"
change /mp3_cpu/DRAM/vhdl_memory/mem(16) X"42"
change /mp3_cpu/DRAM/vhdl_memory/mem(17) X"56"
change /mp3_cpu/DRAM/vhdl_memory/mem(18) X"3F"
change /mp3_cpu/DRAM/vhdl_memory/mem(19) X"19"
change /mp3_cpu/DRAM/vhdl_memory/mem(20) X"3C"
change /mp3_cpu/DRAM/vhdl_memory/mem(21) X"D9"
change /mp3_cpu/DRAM/vhdl_memory/mem(22) X"03"
change /mp3_cpu/DRAM/vhdl_memory/mem(23) X"59"
change /mp3_cpu/DRAM/vhdl_memory/mem(24) X"7F"
change /mp3_cpu/DRAM/vhdl_memory/mem(25) X"1B"
change /mp3_cpu/DRAM/vhdl_memory/mem(26) X"5C"
change /mp3_cpu/DRAM/vhdl_memory/mem(27) X"DB"
change /mp3_cpu/DRAM/vhdl_memory/mem(28) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(29) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(30) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(31) X"60"
run 5
echo "Done loading ../testcode/mp3/mathtest.asm program code."
