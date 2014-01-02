echo "--- Executing initialization force file for ../testcode/leatest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/leatest.asm program code."
run 5
change /mp3_cpu/DRAM/vhdl_memory/mem(0) X"02"
change /mp3_cpu/DRAM/vhdl_memory/mem(1) X"EE"
change /mp3_cpu/DRAM/vhdl_memory/mem(2) X"C0"
change /mp3_cpu/DRAM/vhdl_memory/mem(3) X"6D"
change /mp3_cpu/DRAM/vhdl_memory/mem(4) X"FF"
change /mp3_cpu/DRAM/vhdl_memory/mem(5) X"0F"
change /mp3_cpu/DRAM/vhdl_memory/mem(6) X"0D"
change /mp3_cpu/DRAM/vhdl_memory/mem(7) X"60"
run 5
echo "Done loading ../testcode/leatest.asm program code."
