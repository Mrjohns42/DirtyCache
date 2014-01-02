onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /mp3_cpu/clk
add wave -noupdate -format Literal /mp3_cpu/thefetch/pc/output
add wave -noupdate -format Literal /mp3_cpu/theif_id/iw/f
add wave -noupdate -format Literal /mp3_cpu/theid_ex/cw/f
add wave -noupdate -format Literal /mp3_cpu/theex_mem/cw/f
add wave -noupdate -format Literal /mp3_cpu/themem_wb/cw/f
add wave -noupdate -format Literal -expand /mp3_cpu/thedecode/aregfile/ram
add wave -noupdate -format Literal /mp3_cpu/i_cache/datapath/way0/thedata/data
add wave -noupdate -format Literal /mp3_cpu/i_cache/datapath/way1/thedata/data
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/way0/thedata/data
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/way1/thedata/data
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/datamuxout
add wave -noupdate -format Logic /mp3_cpu/d_cache/datapath/mresp_h
add wave -noupdate -format Logic /mp3_cpu/d_cache/datapath/miss_h
add wave -noupdate -format Logic /mp3_cpu/d_cache/datapath/write_w0
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/datain
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 291
configure wave -valuecolwidth 238
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 50
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ns} {697 ns}
