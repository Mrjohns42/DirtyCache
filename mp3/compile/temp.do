onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 15 /mp3_cpu/clk
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/thefetch/pc/output
add wave -noupdate -format Logic -height 15 -radix hexadecimal /mp3_cpu/dram/i_mread_l
add wave -noupdate -format Logic -height 15 -radix hexadecimal /mp3_cpu/dram/i_mresp_h
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/dram/i_address
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/dram/i_datain
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/the_rom/opcode
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/the_rom/controlword
add wave -noupdate -format Literal -height 15 -radix hexadecimal -expand /mp3_cpu/thedecode/aregfile/ram
add wave -noupdate -format Literal /mp3_cpu/d_address
add wave -noupdate -format Literal /mp3_cpu/d_datain
add wave -noupdate -format Literal /mp3_cpu/d_dataout
add wave -noupdate -format Logic /mp3_cpu/d_mread_l
add wave -noupdate -format Logic /mp3_cpu/d_mwriteh_l
add wave -noupdate -format Logic /mp3_cpu/d_mwritel_l
add wave -noupdate -format Literal /mp3_cpu/thewb/aluout
add wave -noupdate -format Literal /mp3_cpu/thewb/mem
add wave -noupdate -format Literal /mp3_cpu/thewb/wbmuxout
add wave -noupdate -format Literal /mp3_cpu/thewb/wbmuxsel
add wave -noupdate -format Literal /mp3_cpu/thedecode/wbmuxout
add wave -noupdate -format Logic /mp3_cpu/thedecode/rfinputmuxsel
add wave -noupdate -format Literal /mp3_cpu/thedecode/rfinmuxout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 236
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ns} {46097535 ns}
