onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 15 /mp3_cpu/clk
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/thefetch/pc/output
add wave -noupdate -format Logic -height 15 -radix hexadecimal /mp3_cpu/dram/i_mread_l
add wave -noupdate -format Logic -height 15 -radix hexadecimal /mp3_cpu/dram/i_mresp_h
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/dram/i_address
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/dram/i_datain
add wave -noupdate -format Literal -height 15 /mp3_cpu/if_iw
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/the_rom/opcode
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/the_rom/controlword
add wave -noupdate -format Literal -height 15 -radix hexadecimal -expand /mp3_cpu/thedecode/aregfile/ram
add wave -noupdate -format Logic -height 15 /mp3_cpu/wb_branchdetected
add wave -noupdate -format Logic -height 15 /mp3_cpu/brbubble
add wave -noupdate -format Logic -height 15 /mp3_cpu/if_loadpc
add wave -noupdate -format Literal -height 15 /mp3_cpu/id_pcplus2
add wave -noupdate -format Literal -height 15 /mp3_cpu/id_pc
add wave -noupdate -format Literal -height 15 /mp3_cpu/id_iw
add wave -noupdate -format Literal -height 15 /mp3_cpu/id_cw
add wave -noupdate -format Logic -height 15 /mp3_cpu/id_isbr
add wave -noupdate -format Logic -height 15 /mp3_cpu/ex_isbr
add wave -noupdate -format Logic -height 15 /mp3_cpu/mem_isbr
add wave -noupdate -format Logic -height 15 /mp3_cpu/wb_isbr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 317
configure wave -valuecolwidth 55
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
WaveRestoreZoom {0 ns} {7687535732 ns}
