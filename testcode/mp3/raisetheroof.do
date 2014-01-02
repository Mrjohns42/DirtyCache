echo "--- Executing initialization force file for ../testcode/mp3/raisetheroof.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/raisetheroof.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"26"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"1C"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"05"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"EA"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"01"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"E8"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"40"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"C1"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"01"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"08"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"FD"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(12) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(13) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(14) X"BF"
change /mp3_cpu/DRAM/vhdl_memory/mem(15) X"1D"
change /mp3_cpu/DRAM/vhdl_memory/mem(16) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(17) X"C1"
run 5
echo "Done loading ../testcode/mp3/raisetheroof.asm program code."
