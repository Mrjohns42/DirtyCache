onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /mp3_cpu/clk
add wave -noupdate -format Literal -radix decimal /mp3_cpu/icount
add wave -noupdate -format Literal /mp3_cpu/thefetch/pc/output
add wave -noupdate -format Literal /mp3_cpu/theex_mem/pc/f
add wave -noupdate -format Literal /mp3_cpu/themem/cw
add wave -noupdate -format Literal -expand /mp3_cpu/thedecode/aregfile/ram
add wave -noupdate -format Literal /mp3_cpu/i_cache/datapath/way0/thedata/data
add wave -noupdate -format Literal /mp3_cpu/i_cache/datapath/way1/thedata/data
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/way0/thedata/data
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/way1/thedata/data
add wave -noupdate -format Literal /mp3_cpu/i_cache/controller/current_state
add wave -noupdate -format Literal /mp3_cpu/d_cache/controller/current_state
add wave -noupdate -format Literal /mp3_cpu/thearbiter/thecontroller/current_state
add wave -noupdate -format Literal /mp3_cpu/thel2cache/address
add wave -noupdate -format Logic /mp3_cpu/thel2cache/mread_l
add wave -noupdate -format Logic /mp3_cpu/thel2cache/mwrite_l
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thelru/hit
add wave -noupdate -format Logic /mp3_cpu/thel2cache/resp_h
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thecontroller/current_state
add wave -noupdate -format Logic /mp3_cpu/thel2cache/pmread_l
add wave -noupdate -format Logic /mp3_cpu/thel2cache/pmwrite_l
add wave -noupdate -format Logic /mp3_cpu/thel2cache/busy_h
add wave -noupdate -format Logic /mp3_cpu/thel2cache/pmresp_h
add wave -noupdate -format Literal /mp3_cpu/thel2cache/datareg/output
add wave -noupdate -format Literal /mp3_cpu/thel2cache/pmaddress
add wave -noupdate -format Literal /mp3_cpu/thel2cache/pmdatain
add wave -noupdate -format Literal /mp3_cpu/thel2cache/pmdataout
add wave -noupdate -format Logic /mp3_cpu/thel2cache/thelru/load
add wave -noupdate -format Logic /mp3_cpu/thel2cache/thelru/eq0
add wave -noupdate -format Logic /mp3_cpu/thel2cache/thelru/h0
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thelru/output7
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thelru/lru
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thelru/mru
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thelru/u0/line
add wave -noupdate -format Literal /mp3_cpu/thel2cache/thelru/u7/line
add wave -noupdate -format Literal /mp3_cpu/thel2cache/way0/dirtyarray/bit
add wave -noupdate -format Literal -expand /mp3_cpu/thel2cache/way0/dataarray/data
add wave -noupdate -format Literal -expand /mp3_cpu/thel2cache/way1/dataarray/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2527 ns} 0}
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
WaveRestoreZoom {2184 ns} {3096 ns}
