echo "--- Executing initialization force file for ../testcode/mp2.2/mp2.1.2.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2.2/mp2.1.2.asm program code."
run 5
change /mp2_cpu/dram/pdram/vhdl_memory/mem(0) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(1) X"E0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(2) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(3) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(4) X"01"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(5) X"64"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(6) X"02"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(7) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(8) X"87"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(9) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(10) X"7C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(11) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(12) X"43"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(13) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(14) X"41"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(15) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(16) X"0F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(17) X"72"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(18) X"03"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(19) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(20) X"04"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(21) X"64"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(22) X"42"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(23) X"5C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(24) X"AA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(25) X"5B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(26) X"10"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(27) X"7A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(28) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(29) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(30) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(31) X"9F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(32) X"11"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(33) X"7E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(34) X"09"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(35) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(36) X"64"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(37) X"D4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(38) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(39) X"D6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(40) X"A1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(41) X"D4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(42) X"D1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(43) X"D6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(44) X"83"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(45) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(46) X"A1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(47) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(48) X"73"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(49) X"D8"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(50) X"0A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(51) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(52) X"76"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(53) X"DA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(54) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(55) X"74"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(56) X"13"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(57) X"78"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(58) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(59) X"7A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(60) X"61"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(61) X"E2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(62) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(63) X"72"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(64) X"6D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(65) X"1B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(66) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(67) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(68) X"07"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(69) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(70) X"06"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(71) X"64"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(72) X"E0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(73) X"56"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(74) X"A5"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(75) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(76) X"7F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(77) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(78) X"FD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(79) X"03"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(80) X"67"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(81) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(82) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(83) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(84) X"FD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(85) X"03"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(86) X"F9"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(87) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(88) X"01"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(89) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(90) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(91) X"64"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(92) X"81"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(93) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(94) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(95) X"74"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(96) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(97) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(98) X"32"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(99) X"48"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(100) X"17"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(101) X"7C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(102) X"6D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(103) X"5B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(104) X"02"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(105) X"E6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(106) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(107) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(108) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(109) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(110) X"18"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(111) X"7A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(112) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(113) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(114) X"8D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(115) X"F0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(116) X"19"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(117) X"7A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(118) X"2F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(119) X"E2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(120) X"61"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(121) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(122) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(123) X"24"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(124) X"56"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(125) X"26"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(126) X"C2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(127) X"18"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(128) X"1A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(129) X"78"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(130) X"AB"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(131) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(132) X"FE"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(133) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(134) X"46"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(135) X"E2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(136) X"79"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(137) X"34"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(138) X"78"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(139) X"36"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(140) X"1B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(141) X"68"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(142) X"1A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(143) X"78"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(144) X"30"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(145) X"E6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(146) X"1D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(147) X"76"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(148) X"1D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(149) X"A6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(150) X"1C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(151) X"76"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(152) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(153) X"E9"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(154) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(155) X"65"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(156) X"A3"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(157) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(158) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(159) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(160) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(161) X"75"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(162) X"69"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(163) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(164) X"1E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(165) X"72"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(166) X"21"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(167) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(168) X"4B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(169) X"66"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(170) X"34"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(171) X"EC"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(172) X"80"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(173) X"77"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(174) X"0B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(175) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(176) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(177) X"06"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(178) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(179) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(180) X"36"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(181) X"E4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(182) X"80"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(183) X"40"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(184) X"81"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(185) X"73"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(186) X"22"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(187) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(188) X"A1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(189) X"ED"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(190) X"01"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(191) X"04"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(192) X"41"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(193) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(194) X"28"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(195) X"EC"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(196) X"82"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(197) X"73"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(198) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(199) X"0F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(200) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(201) X"9D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(202) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(203) X"C1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(204) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(205) X"62"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(206) X"06"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(207) X"22"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(208) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(209) X"24"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(210) X"06"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(211) X"66"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(212) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(213) X"68"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(214) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(215) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(216) X"70"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(217) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(218) X"0A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(219) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(220) X"0F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(221) X"27"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(222) X"2A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(223) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(224) X"C8"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(225) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(226) X"07"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(227) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(228) X"03"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(229) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(230) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(231) X"0B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(232) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(233) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(234) X"84"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(235) X"98"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(236) X"85"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(237) X"AE"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(238) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(239) X"54"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(240) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(241) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(242) X"46"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(243) X"06"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(244) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(245) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(246) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(247) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(248) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(249) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(250) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(251) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(252) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(253) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(254) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(255) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(256) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(257) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(258) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(259) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(260) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(261) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(262) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(263) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(264) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(265) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(266) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(267) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(268) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(269) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(270) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(271) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(272) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(273) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(274) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(275) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(276) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(277) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(278) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(279) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(280) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(281) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(282) X"1C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(283) X"01"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(284) X"0B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(285) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(286) X"7F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(287) X"9B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(288) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(289) X"C1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(290) X"0C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(291) X"66"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(292) X"43"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(293) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(294) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(295) X"C1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(296) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(297) X"00"
run 5
echo "Done loading ../testcode/mp2.2/mp2.1.2.asm program code."
