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
add wave -noupdate -format Literal /mp3_cpu/thewb/iw
add wave -noupdate -format Literal /mp3_cpu/thefetch/catpcmuxsel
add wave -noupdate -format Literal /mp3_cpu/thefetch/extpc
add wave -noupdate -format Literal /mp3_cpu/thefetch/thebtb/ifpcindex
add wave -noupdate -format Literal /mp3_cpu/thefetch/thebtb/pctargetout
add wave -noupdate -format Literal /mp3_cpu/thefetch/thebtb/wbpcindex
add wave -noupdate -format Literal /mp3_cpu/thefetch/thebtb/pctargetin
add wave -noupdate -format Logic /mp3_cpu/thefetch/thebtb/isunconditionalin
add wave -noupdate -format Logic /mp3_cpu/thefetch/thebtb/predictionin
add wave -noupdate -format Logic /mp3_cpu/thefetch/thebtb/loadbtb
add wave -noupdate -format Logic /mp3_cpu/thefetch/thebtb/isunconditionalout
add wave -noupdate -format Logic /mp3_cpu/thefetch/thebtb/predictionout
add wave -noupdate -format Logic /mp3_cpu/thefetch/thebtb/hit
add wave -noupdate -format Literal /mp3_cpu/thefetch/thebtb/targetdata/data
add wave -noupdate -format Logic /mp3_cpu/thewb/btbmiss
add wave -noupdate -format Logic /mp3_cpu/thewb/isbr
add wave -noupdate -format Logic /mp3_cpu/thewb/branchdetectedout
add wave -noupdate -format Logic /mp3_cpu/thewb/mispredict_h
add wave -noupdate -format Logic /mp3_cpu/thewb/pre_loadbtb
add wave -noupdate -format Logic /mp3_cpu/thewb/ccinbr
add wave -noupdate -format Logic /mp3_cpu/thewb/notccinbr
add wave -noupdate -format Logic /mp3_cpu/thewb/iscompilednop_l
add wave -noupdate -format Logic /mp3_cpu/indload
add wave -noupdate -format Logic /mp3_cpu/forwardbtbload
add wave -noupdate -format Logic /mp3_cpu/forwardload
add wave -noupdate -format Logic /mp3_cpu/stallload
add wave -noupdate -format Logic /mp3_cpu/theif_id/bubble
add wave -noupdate -format Literal /mp3_cpu/theif_id/i_iw
add wave -noupdate -format Literal /mp3_cpu/theif_id/o_iw
add wave -noupdate -format Literal /mp3_cpu/thewb/pcaddout
add wave -noupdate -format Literal /mp3_cpu/thewb/jsrpc
add wave -noupdate -format Literal /mp3_cpu/thewb/mem
add wave -noupdate -format Literal /mp3_cpu/thewb/extpcmuxsel
add wave -noupdate -format Literal /mp3_cpu/thewb/pre_extpc
add wave -noupdate -format Logic /mp3_cpu/thewb/incorrectlytakenbr
add wave -noupdate -format Literal /mp3_cpu/thewb/extpc
add wave -noupdate -format Logic /mp3_cpu/thewb/btbpredict
add wave -noupdate -format Logic /mp3_cpu/thewb/notbranchdetectedout
add wave -noupdate -format Logic /mp3_cpu/thewb/incorrectpredicttaken
add wave -noupdate -format Logic /mp3_cpu/thewb/incorrectlytakenbr
add wave -noupdate -format Logic /mp3_cpu/thewb/branchdetected
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {113003 ns} 0}
configure wave -namecolwidth 309
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
WaveRestoreZoom {112568 ns} {114472 ns}
