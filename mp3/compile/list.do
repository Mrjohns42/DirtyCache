onerror {resume}
add list -notrig -width 20 /mp3_cpu/d_address
add list -notrig /mp3_cpu/d_dataout
add list /mp3_cpu/d_mwriteh_l
add list /mp3_cpu/d_mwritel_l
configure list -usestrobe 0
configure list -strobestart {0 ns} -strobeperiod {0 ns}
configure list -usesignaltrigger 1
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
