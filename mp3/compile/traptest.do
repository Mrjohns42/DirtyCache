echo "--- Executing initialization force file for ../testcode/mp3/traptest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/traptest.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"F0"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"05"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"6C"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"C0"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"C1"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"0D"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"60"
run 5
echo "Done loading ../testcode/mp3/traptest.asm program code."
