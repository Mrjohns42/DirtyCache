echo "--- Executing initialization force file for ../testcode/mp3/jmpmispredict.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/jmpmispredict.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"EC"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"80"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"41"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"04"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"EC"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"80"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"41"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"21"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"10"
change /mp3_cpu/DRAM/vhdl_memory/mem(12) X"C0"
change /mp3_cpu/DRAM/vhdl_memory/mem(13) X"C1"
change /mp3_cpu/DRAM/vhdl_memory/mem(14) X"61"
change /mp3_cpu/DRAM/vhdl_memory/mem(15) X"12"
change /mp3_cpu/DRAM/vhdl_memory/mem(16) X"C0"
change /mp3_cpu/DRAM/vhdl_memory/mem(17) X"C1"
change /mp3_cpu/DRAM/vhdl_memory/mem(18) X"0D"
change /mp3_cpu/DRAM/vhdl_memory/mem(19) X"60"
change /mp3_cpu/DRAM/vhdl_memory/mem(20) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(21) X"00"
run 5
echo "Done loading ../testcode/mp3/jmpmispredict.asm program code."
