onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 15 /mp3_cpu/clk
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/thefetch/pc/output
add wave -noupdate -format Literal -height 15 -radix hexadecimal -expand /mp3_cpu/thedecode/aregfile/ram
add wave -noupdate -format Logic /mp3_cpu/thewb/n
add wave -noupdate -format Logic /mp3_cpu/thewb/z
add wave -noupdate -format Logic /mp3_cpu/thewb/p
add wave -noupdate -format Literal /mp3_cpu/thedecode/cw
add wave -noupdate -format Literal /mp3_cpu/theex/cw
add wave -noupdate -format Literal /mp3_cpu/themem/cw
add wave -noupdate -format Literal /mp3_cpu/thewb/cw
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 120
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
WaveRestoreZoom {0 ns} {46037225 ns}
