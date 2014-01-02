echo "--- Executing initialization force file for ../testcode/mp3/basic.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5

echo "Done initializing processor, loading ../testcode/mp3/basic.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"0D"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"60"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"52"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"3E"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"10"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"08"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"0C"
change /mp3_cpu/DRAM/vhdl_memory/mem(8) X"00"
change /mp3_cpu/DRAM/vhdl_memory/mem(9) X"54"
change /mp3_cpu/DRAM/vhdl_memory/mem(10) X"41"
change /mp3_cpu/DRAM/vhdl_memory/mem(11) X"56"
change /mp3_cpu/DRAM/vhdl_memory/mem(12) X"03"
change /mp3_cpu/DRAM/vhdl_memory/mem(13) X"0C"
change /mp3_cpu/DRAM/vhdl_memory/mem(14) X"43"
change /mp3_cpu/DRAM/vhdl_memory/mem(15) X"12"
change /mp3_cpu/DRAM/vhdl_memory/mem(16) X"BF"
change /mp3_cpu/DRAM/vhdl_memory/mem(17) X"14"
change /mp3_cpu/DRAM/vhdl_memory/mem(18) X"FD"
change /mp3_cpu/DRAM/vhdl_memory/mem(19) X"03"
change /mp3_cpu/DRAM/vhdl_memory/mem(20) X"3F"
change /mp3_cpu/DRAM/vhdl_memory/mem(21) X"10"
change /mp3_cpu/DRAM/vhdl_memory/mem(22) X"F8"
change /mp3_cpu/DRAM/vhdl_memory/mem(23) X"03"
change /mp3_cpu/DRAM/vhdl_memory/mem(24) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(25) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(26) X"07"
change /mp3_cpu/DRAM/vhdl_memory/mem(27) X"00"
run 5
echo "Done loading ../testcode/mp3/basic.asm program code."
