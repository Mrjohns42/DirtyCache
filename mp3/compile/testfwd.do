onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 15 /mp3_cpu/clk
add wave -noupdate -format Literal -height 15 -radix hexadecimal /mp3_cpu/thefetch/pc/output
add wave -noupdate -format Literal -height 15 -radix hexadecimal -expand /mp3_cpu/thedecode/aregfile/ram
add wave -noupdate -format Logic /mp3_cpu/thewb/n
add wave -noupdate -format Logic /mp3_cpu/thewb/z
add wave -noupdate -format Logic /mp3_cpu/thewb/p
add wave -noupdate -format Literal /mp3_cpu/theex/fwd_sr1muxsel
add wave -noupdate -format Literal /mp3_cpu/theex/fwd_sr2muxsel
add wave -noupdate -format Logic /mp3_cpu/ld_use_l
add wave -noupdate -format Literal /mp3_cpu/theex/alua
add wave -noupdate -format Literal /mp3_cpu/theex/alub
add wave -noupdate -format Literal /mp3_cpu/theex/fwd_mem
add wave -noupdate -format Literal /mp3_cpu/theex/fwd_wb
add wave -noupdate -format Literal /mp3_cpu/theex/cw
add wave -noupdate -format Literal /mp3_cpu/id_sr1
add wave -noupdate -format Literal /mp3_cpu/id_sr2
add wave -noupdate -format Literal /mp3_cpu/id_dr
add wave -noupdate -format Literal /mp3_cpu/ex_sr1
add wave -noupdate -format Literal /mp3_cpu/ex_sr2
add wave -noupdate -format Literal /mp3_cpu/ex_dr
add wave -noupdate -format Literal /mp3_cpu/mem_sr1
add wave -noupdate -format Literal /mp3_cpu/mem_sr2
add wave -noupdate -format Literal /mp3_cpu/mem_dr
add wave -noupdate -format Literal /mp3_cpu/wb_sr1
add wave -noupdate -format Literal /mp3_cpu/wb_sr2
add wave -noupdate -format Literal /mp3_cpu/wb_dr
add wave -noupdate -format Logic /mp3_cpu/d_mread_l
add wave -noupdate -format Logic /mp3_cpu/d_mresp_h
add wave -noupdate -format Logic /mp3_cpu/d_mwriteh_l
add wave -noupdate -format Logic /mp3_cpu/d_mwritel_l
add wave -noupdate -format Logic /mp3_cpu/d_pmread_l
add wave -noupdate -format Logic /mp3_cpu/d_pmresp_h
add wave -noupdate -format Logic /mp3_cpu/d_pmwrite_l
add wave -noupdate -format Literal /mp3_cpu/i_datain
add wave -noupdate -format Logic /mp3_cpu/i_mread_l
add wave -noupdate -format Logic /mp3_cpu/i_mresp_h
add wave -noupdate -format Logic /mp3_cpu/i_pmread_l
add wave -noupdate -format Logic /mp3_cpu/i_pmresp_h
add wave -noupdate -format Literal /mp3_cpu/d_cache/address
add wave -noupdate -format Literal /mp3_cpu/d_cache/datain
add wave -noupdate -format Literal /mp3_cpu/d_cache/dataout
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/data_w0/data
add wave -noupdate -format Literal /mp3_cpu/d_cache/datapath/data_w1/data
add wave -noupdate -format Literal /mp3_cpu/theex/fwd1
add wave -noupdate -format Literal /mp3_cpu/theex/fwd2
add wave -noupdate -format Literal /mp3_cpu/theex/alua
add wave -noupdate -format Literal /mp3_cpu/theex/alub
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
WaveRestoreZoom {0 ns} {4173351099479849 ns}
