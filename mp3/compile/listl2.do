onerror {resume}
add list -notrig /mp3_cpu/thel2cache/datain
add list -notrig /mp3_cpu/thel2cache/address
add list /mp3_cpu/thel2cache/mwrite_l
configure list -usestrobe 0
configure list -strobestart {0 ns} -strobeperiod {0 ns}
configure list -usesignaltrigger 1
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
