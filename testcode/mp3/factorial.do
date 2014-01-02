echo "--- Executing initialization force file for ../testcode/mp3/factorial.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/factorial.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"62"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"05"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"6C"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"06"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"6E"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"03"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"0E"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"05"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"01"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(12) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(13) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(14) X"40"
change /mp3_cpu/DRAM/vhdl_memory/mem(15) X"14"
change /mp3_cpu/DRAM/vhdl_memory/mem(16) X"80"
change /mp3_cpu/DRAM/vhdl_memory/mem(17) X"17"
change /mp3_cpu/DRAM/vhdl_memory/mem(18) X"87"
change /mp3_cpu/DRAM/vhdl_memory/mem(19) X"14"
change /mp3_cpu/DRAM/vhdl_memory/mem(20) X"02"
change /mp3_cpu/DRAM/vhdl_memory/mem(21) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(22) X"83"
change /mp3_cpu/DRAM/vhdl_memory/mem(23) X"1D"
change /mp3_cpu/DRAM/vhdl_memory/mem(24) X"FC"
change /mp3_cpu/DRAM/vhdl_memory/mem(25) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(26) X"47"
change /mp3_cpu/DRAM/vhdl_memory/mem(27) X"12"
change /mp3_cpu/DRAM/vhdl_memory/mem(28) X"01"
change /mp3_cpu/DRAM/vhdl_memory/mem(29) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(30) X"F7"
change /mp3_cpu/DRAM/vhdl_memory/mem(31) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(32) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(33) X"0F"
run 5
echo "Done loading ../testcode/mp3/factorial.asm program code."
