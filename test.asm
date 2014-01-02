; Desired Register Values:
 ; R7 - 0x69
 ; R6 - 0x37
 ; R5 - 0x26
 ; R4 - 0x1e
 ; R3 - 0x19
 ; R2 - 0x15
 ; R1 - 0x6
 ; R0 - 0x0
ORIGIN 0
 SEGMENT CodeSegment:
label0:
 			LDR R1, R0, data0 ; 0x0
 			ADD R1, R1, 1      ; 0x2
 			STR R1, R0, data0 ; 0x4
 			NOP               ; 0x6
 			NOP               ; 0x8
 			NOP               ; 0xa
 			BRnzp label1      ; 0xc
 		data0:
 			DATA2 4x0 ; 0xe

label1:
 			LDR R2, R0, data1 ; 0x10
 			ADD R2, R2, 1      ; 0x12
 			STR R2, R0, data1 ; 0x14
 			NOP               ; 0x16
 			NOP               ; 0x18
 			NOP               ; 0x1a
 			BRnzp label2      ; 0x1c
 		data1:
 			DATA2 4x1 ; 0x1e

label2:
 			LDR R3, R0, data2 ; 0x20
 			ADD R3, R3, 1      ; 0x22
 			STR R3, R0, data2 ; 0x24
 			NOP               ; 0x26
 			NOP               ; 0x28
 			NOP               ; 0x2a
 			BRnzp label3      ; 0x2c
 		data2:
 			DATA2 4x2 ; 0x2e

label3:
 			LDR R4, R0, data3 ; 0x30
 			ADD R4, R4, 1      ; 0x32
 			STR R4, R0, data3 ; 0x34
 			NOP               ; 0x36
 			NOP               ; 0x38
 			NOP               ; 0x3a
 			BRnzp label4      ; 0x3c
 		data3:
 			DATA2 4x3 ; 0x3e

label4:
 			LDR R5, R0, data4 ; 0x40
 			ADD R5, R5, 1      ; 0x42
 			STR R5, R0, data4 ; 0x44
 			NOP               ; 0x46
 			NOP               ; 0x48
 			NOP               ; 0x4a
 			BRnzp label5      ; 0x4c
 		data4:
 			DATA2 4x4 ; 0x4e

label5:
 			LDR R6, R0, data5 ; 0x50
 			ADD R6, R6, 1      ; 0x52
 			STR R6, R0, data5 ; 0x54
 			NOP               ; 0x56
 			NOP               ; 0x58
 			NOP               ; 0x5a
 			BRnzp label6      ; 0x5c
 		data5:
 			DATA2 4x5 ; 0x5e

label6:
 			LDR R7, R0, data6 ; 0x60
 			ADD R7, R7, 1      ; 0x62
 			STR R7, R0, data6 ; 0x64
 			NOP               ; 0x66
 			NOP               ; 0x68
 			NOP               ; 0x6a
 			BRnzp label7      ; 0x6c
 		data6:
 			DATA2 4x6 ; 0x6e

label7:
 			LDR R1, R0, data7 ; 0x70
 			ADD R1, R1, 1      ; 0x72
 			STR R1, R0, data7 ; 0x74
 			NOP               ; 0x76
 			NOP               ; 0x78
 			NOP               ; 0x7a
 			BRnzp label8      ; 0x7c
 		data7:
 			DATA2 4x7 ; 0x7e

label8:
 			LDR R2, R0, data8 ; 0x80
 			ADD R2, R2, 1      ; 0x82
 			STR R2, R0, data8 ; 0x84
 			NOP               ; 0x86
 			NOP               ; 0x88
 			NOP               ; 0x8a
 			BRnzp label9      ; 0x8c
 		data8:
 			DATA2 4x8 ; 0x8e

label9:
 			LDR R3, R0, data9 ; 0x90
 			ADD R3, R3, 1      ; 0x92
 			STR R3, R0, data9 ; 0x94
 			NOP               ; 0x96
 			NOP               ; 0x98
 			NOP               ; 0x9a
 			BRnzp label10      ; 0x9c
 		data9:
 			DATA2 4x9 ; 0x9e

label10:
 			LDR R4, R0, data10 ; 0xa0
 			ADD R4, R4, 1      ; 0xa2
 			STR R4, R0, data10 ; 0xa4
 			NOP               ; 0xa6
 			NOP               ; 0xa8
 			NOP               ; 0xaa
 			BRnzp label11      ; 0xac
 		dataa:
 			DATA2 4x10 ; 0xae

label11:
 			LDR R5, R0, data11 ; 0xb0
 			ADD R5, R5, 1      ; 0xb2
 			STR R5, R0, data11 ; 0xb4
 			NOP               ; 0xb6
 			NOP               ; 0xb8
 			NOP               ; 0xba
 			BRnzp label12      ; 0xbc
 		datab:
 			DATA2 4x11 ; 0xbe

label12:
 			LDR R6, R0, data12 ; 0xc0
 			ADD R6, R6, 1      ; 0xc2
 			STR R6, R0, data12 ; 0xc4
 			NOP               ; 0xc6
 			NOP               ; 0xc8
 			NOP               ; 0xca
 			BRnzp label13      ; 0xcc
 		datac:
 			DATA2 4x12 ; 0xce

label13:
 			LDR R7, R0, data13 ; 0xd0
 			ADD R7, R7, 1      ; 0xd2
 			STR R7, R0, data13 ; 0xd4
 			NOP               ; 0xd6
 			NOP               ; 0xd8
 			NOP               ; 0xda
 			BRnzp label14      ; 0xdc
 		datad:
 			DATA2 4x13 ; 0xde

label14:
 			LDR R1, R0, data14 ; 0xe0
 			ADD R1, R1, 1      ; 0xe2
 			STR R1, R0, data14 ; 0xe4
 			NOP               ; 0xe6
 			NOP               ; 0xe8
 			NOP               ; 0xea
 			BRnzp label15      ; 0xec
 		datae:
 			DATA2 4x14 ; 0xee

label15:
 			LDR R2, R0, data15 ; 0xf0
 			ADD R2, R2, 1      ; 0xf2
 			STR R2, R0, data15 ; 0xf4
 			NOP               ; 0xf6
 			NOP               ; 0xf8
 			NOP               ; 0xfa
 			BRnzp label16      ; 0xfc
 		dataf:
 			DATA2 4x15 ; 0xfe

label16:
 			LDR R3, R0, data16 ; 0x100
 			ADD R3, R3, 1      ; 0x102
 			STR R3, R0, data16 ; 0x104
 			NOP               ; 0x106
 			NOP               ; 0x108
 			NOP               ; 0x10a
 			BRnzp label17      ; 0x10c
 		data10:
 			DATA2 4x16 ; 0x10e

label17:
 			LDR R4, R0, data17 ; 0x110
 			ADD R4, R4, 1      ; 0x112
 			STR R4, R0, data17 ; 0x114
 			NOP               ; 0x116
 			NOP               ; 0x118
 			NOP               ; 0x11a
 			BRnzp label18      ; 0x11c
 		data11:
 			DATA2 4x17 ; 0x11e

label18:
 			LDR R5, R0, data18 ; 0x120
 			ADD R5, R5, 1      ; 0x122
 			STR R5, R0, data18 ; 0x124
 			NOP               ; 0x126
 			NOP               ; 0x128
 			NOP               ; 0x12a
 			BRnzp label19      ; 0x12c
 		data12:
 			DATA2 4x18 ; 0x12e

label19:
 			LDR R6, R0, data19 ; 0x130
 			ADD R6, R6, 1      ; 0x132
 			STR R6, R0, data19 ; 0x134
 			NOP               ; 0x136
 			NOP               ; 0x138
 			NOP               ; 0x13a
 			BRnzp label20      ; 0x13c
 		data13:
 			DATA2 4x19 ; 0x13e

label20:
 			LDR R7, R0, data20 ; 0x140
 			ADD R7, R7, 1      ; 0x142
 			STR R7, R0, data20 ; 0x144
 			NOP               ; 0x146
 			NOP               ; 0x148
 			NOP               ; 0x14a
 			BRnzp label21      ; 0x14c
 		data14:
 			DATA2 4x20 ; 0x14e

label21:
 			LDR R1, R0, data21 ; 0x150
 			ADD R1, R1, 1      ; 0x152
 			STR R1, R0, data21 ; 0x154
 			NOP               ; 0x156
 			NOP               ; 0x158
 			NOP               ; 0x15a
 			BRnzp label22      ; 0x15c
 		data15:
 			DATA2 4x21 ; 0x15e

label22:
 			LDR R2, R0, data22 ; 0x160
 			ADD R2, R2, 1      ; 0x162
 			STR R2, R0, data22 ; 0x164
 			NOP               ; 0x166
 			NOP               ; 0x168
 			NOP               ; 0x16a
 			BRnzp label23      ; 0x16c
 		data16:
 			DATA2 4x22 ; 0x16e

label23:
 			LDR R3, R0, data23 ; 0x170
 			ADD R3, R3, 1      ; 0x172
 			STR R3, R0, data23 ; 0x174
 			NOP               ; 0x176
 			NOP               ; 0x178
 			NOP               ; 0x17a
 			BRnzp label24      ; 0x17c
 		data17:
 			DATA2 4x23 ; 0x17e

label24:
 			LDR R4, R0, data24 ; 0x180
 			ADD R4, R4, 1      ; 0x182
 			STR R4, R0, data24 ; 0x184
 			NOP               ; 0x186
 			NOP               ; 0x188
 			NOP               ; 0x18a
 			BRnzp label25      ; 0x18c
 		data18:
 			DATA2 4x24 ; 0x18e

label25:
 			LDR R5, R0, data25 ; 0x190
 			ADD R5, R5, 1      ; 0x192
 			STR R5, R0, data25 ; 0x194
 			NOP               ; 0x196
 			NOP               ; 0x198
 			NOP               ; 0x19a
 			BRnzp label26      ; 0x19c
 		data19:
 			DATA2 4x25 ; 0x19e

label26:
 			LDR R6, R0, data26 ; 0x1a0
 			ADD R6, R6, 1      ; 0x1a2
 			STR R6, R0, data26 ; 0x1a4
 			NOP               ; 0x1a6
 			NOP               ; 0x1a8
 			NOP               ; 0x1aa
 			BRnzp label27      ; 0x1ac
 		data1a:
 			DATA2 4x26 ; 0x1ae

label27:
 			LDR R7, R0, data27 ; 0x1b0
 			ADD R7, R7, 1      ; 0x1b2
 			STR R7, R0, data27 ; 0x1b4
 			NOP               ; 0x1b6
 			NOP               ; 0x1b8
 			NOP               ; 0x1ba
 			BRnzp label28      ; 0x1bc
 		data1b:
 			DATA2 4x27 ; 0x1be

label28:
 			LDR R1, R0, data28 ; 0x1c0
 			ADD R1, R1, 1      ; 0x1c2
 			STR R1, R0, data28 ; 0x1c4
 			NOP               ; 0x1c6
 			NOP               ; 0x1c8
 			NOP               ; 0x1ca
 			BRnzp label29      ; 0x1cc
 		data1c:
 			DATA2 4x28 ; 0x1ce

label29:
 			LDR R2, R0, data29 ; 0x1d0
 			ADD R2, R2, 1      ; 0x1d2
 			STR R2, R0, data29 ; 0x1d4
 			NOP               ; 0x1d6
 			NOP               ; 0x1d8
 			NOP               ; 0x1da
 			BRnzp label30      ; 0x1dc
 		data1d:
 			DATA2 4x29 ; 0x1de

label30:
 			LDR R3, R0, data30 ; 0x1e0
 			ADD R3, R3, 1      ; 0x1e2
 			STR R3, R0, data30 ; 0x1e4
 			NOP               ; 0x1e6
 			NOP               ; 0x1e8
 			NOP               ; 0x1ea
 			BRnzp label31      ; 0x1ec
 		data1e:
 			DATA2 4x30 ; 0x1ee

label31:
 			LDR R4, R0, data31 ; 0x1f0
 			ADD R4, R4, 1      ; 0x1f2
 			STR R4, R0, data31 ; 0x1f4
 			NOP               ; 0x1f6
 			NOP               ; 0x1f8
 			NOP               ; 0x1fa
 			BRnzp label32      ; 0x1fc
 		data1f:
 			DATA2 4x31 ; 0x1fe

label32:
 			LDR R5, R0, data32 ; 0x200
 			ADD R5, R5, 1      ; 0x202
 			STR R5, R0, data32 ; 0x204
 			NOP               ; 0x206
 			NOP               ; 0x208
 			NOP               ; 0x20a
 			BRnzp label33      ; 0x20c
 		data20:
 			DATA2 4x32 ; 0x20e

label33:
 			LDR R6, R0, data33 ; 0x210
 			ADD R6, R6, 1      ; 0x212
 			STR R6, R0, data33 ; 0x214
 			NOP               ; 0x216
 			NOP               ; 0x218
 			NOP               ; 0x21a
 			BRnzp label34      ; 0x21c
 		data21:
 			DATA2 4x33 ; 0x21e

label34:
 			LDR R7, R0, data34 ; 0x220
 			ADD R7, R7, 1      ; 0x222
 			STR R7, R0, data34 ; 0x224
 			NOP               ; 0x226
 			NOP               ; 0x228
 			NOP               ; 0x22a
 			BRnzp label35      ; 0x22c
 		data22:
 			DATA2 4x34 ; 0x22e

label35:
 			LDR R1, R0, data35 ; 0x230
 			ADD R1, R1, 1      ; 0x232
 			STR R1, R0, data35 ; 0x234
 			NOP               ; 0x236
 			NOP               ; 0x238
 			NOP               ; 0x23a
 			BRnzp label36      ; 0x23c
 		data23:
 			DATA2 4x35 ; 0x23e

label36:
 			LDR R2, R0, data36 ; 0x240
 			ADD R2, R2, 1      ; 0x242
 			STR R2, R0, data36 ; 0x244
 			NOP               ; 0x246
 			NOP               ; 0x248
 			NOP               ; 0x24a
 			BRnzp label37      ; 0x24c
 		data24:
 			DATA2 4x36 ; 0x24e

label37:
 			LDR R3, R0, data37 ; 0x250
 			ADD R3, R3, 1      ; 0x252
 			STR R3, R0, data37 ; 0x254
 			NOP               ; 0x256
 			NOP               ; 0x258
 			NOP               ; 0x25a
 			BRnzp label38      ; 0x25c
 		data25:
 			DATA2 4x37 ; 0x25e

label38:
 			LDR R4, R0, data38 ; 0x260
 			ADD R4, R4, 1      ; 0x262
 			STR R4, R0, data38 ; 0x264
 			NOP               ; 0x266
 			NOP               ; 0x268
 			NOP               ; 0x26a
 			BRnzp label39      ; 0x26c
 		data26:
 			DATA2 4x38 ; 0x26e

label39:
 			LDR R5, R0, data39 ; 0x270
 			ADD R5, R5, 1      ; 0x272
 			STR R5, R0, data39 ; 0x274
 			NOP               ; 0x276
 			NOP               ; 0x278
 			NOP               ; 0x27a
 			BRnzp label40      ; 0x27c
 		data27:
 			DATA2 4x39 ; 0x27e

label40:
 			LDR R6, R0, data40 ; 0x280
 			ADD R6, R6, 1      ; 0x282
 			STR R6, R0, data40 ; 0x284
 			NOP               ; 0x286
 			NOP               ; 0x288
 			NOP               ; 0x28a
 			BRnzp label41      ; 0x28c
 		data28:
 			DATA2 4x40 ; 0x28e

label41:
 			LDR R7, R0, data41 ; 0x290
 			ADD R7, R7, 1      ; 0x292
 			STR R7, R0, data41 ; 0x294
 			NOP               ; 0x296
 			NOP               ; 0x298
 			NOP               ; 0x29a
 			BRnzp label42      ; 0x29c
 		data29:
 			DATA2 4x41 ; 0x29e

label42:
 			LDR R1, R0, data42 ; 0x2a0
 			ADD R1, R1, 1      ; 0x2a2
 			STR R1, R0, data42 ; 0x2a4
 			NOP               ; 0x2a6
 			NOP               ; 0x2a8
 			NOP               ; 0x2aa
 			BRnzp label43      ; 0x2ac
 		data2a:
 			DATA2 4x42 ; 0x2ae

label43:
 			LDR R2, R0, data43 ; 0x2b0
 			ADD R2, R2, 1      ; 0x2b2
 			STR R2, R0, data43 ; 0x2b4
 			NOP               ; 0x2b6
 			NOP               ; 0x2b8
 			NOP               ; 0x2ba
 			BRnzp label44      ; 0x2bc
 		data2b:
 			DATA2 4x43 ; 0x2be

label44:
 			LDR R3, R0, data44 ; 0x2c0
 			ADD R3, R3, 1      ; 0x2c2
 			STR R3, R0, data44 ; 0x2c4
 			NOP               ; 0x2c6
 			NOP               ; 0x2c8
 			NOP               ; 0x2ca
 			BRnzp label45      ; 0x2cc
 		data2c:
 			DATA2 4x44 ; 0x2ce

label45:
 			LDR R4, R0, data45 ; 0x2d0
 			ADD R4, R4, 1      ; 0x2d2
 			STR R4, R0, data45 ; 0x2d4
 			NOP               ; 0x2d6
 			NOP               ; 0x2d8
 			NOP               ; 0x2da
 			BRnzp label46      ; 0x2dc
 		data2d:
 			DATA2 4x45 ; 0x2de

label46:
 			LDR R5, R0, data46 ; 0x2e0
 			ADD R5, R5, 1      ; 0x2e2
 			STR R5, R0, data46 ; 0x2e4
 			NOP               ; 0x2e6
 			NOP               ; 0x2e8
 			NOP               ; 0x2ea
 			BRnzp label47      ; 0x2ec
 		data2e:
 			DATA2 4x46 ; 0x2ee

label47:
 			LDR R6, R0, data47 ; 0x2f0
 			ADD R6, R6, 1      ; 0x2f2
 			STR R6, R0, data47 ; 0x2f4
 			NOP               ; 0x2f6
 			NOP               ; 0x2f8
 			NOP               ; 0x2fa
 			BRnzp label48      ; 0x2fc
 		data2f:
 			DATA2 4x47 ; 0x2fe

label48:
 			LDR R7, R0, data48 ; 0x300
 			ADD R7, R7, 1      ; 0x302
 			STR R7, R0, data48 ; 0x304
 			NOP               ; 0x306
 			NOP               ; 0x308
 			NOP               ; 0x30a
 			BRnzp label49      ; 0x30c
 		data30:
 			DATA2 4x48 ; 0x30e

label49:
 			LDR R1, R0, data49 ; 0x310
 			ADD R1, R1, 1      ; 0x312
 			STR R1, R0, data49 ; 0x314
 			NOP               ; 0x316
 			NOP               ; 0x318
 			NOP               ; 0x31a
 			BRnzp label50      ; 0x31c
 		data31:
 			DATA2 4x49 ; 0x31e

label50:
 			LDR R2, R0, data50 ; 0x320
 			ADD R2, R2, 1      ; 0x322
 			STR R2, R0, data50 ; 0x324
 			NOP               ; 0x326
 			NOP               ; 0x328
 			NOP               ; 0x32a
 			BRnzp label51      ; 0x32c
 		data32:
 			DATA2 4x50 ; 0x32e

label51:
 			LDR R3, R0, data51 ; 0x330
 			ADD R3, R3, 1      ; 0x332
 			STR R3, R0, data51 ; 0x334
 			NOP               ; 0x336
 			NOP               ; 0x338
 			NOP               ; 0x33a
 			BRnzp label52      ; 0x33c
 		data33:
 			DATA2 4x51 ; 0x33e

label52:
 			LDR R4, R0, data52 ; 0x340
 			ADD R4, R4, 1      ; 0x342
 			STR R4, R0, data52 ; 0x344
 			NOP               ; 0x346
 			NOP               ; 0x348
 			NOP               ; 0x34a
 			BRnzp label53      ; 0x34c
 		data34:
 			DATA2 4x52 ; 0x34e

label53:
 			LDR R5, R0, data53 ; 0x350
 			ADD R5, R5, 1      ; 0x352
 			STR R5, R0, data53 ; 0x354
 			NOP               ; 0x356
 			NOP               ; 0x358
 			NOP               ; 0x35a
 			BRnzp label54      ; 0x35c
 		data35:
 			DATA2 4x53 ; 0x35e

label54:
 			LDR R6, R0, data54 ; 0x360
 			ADD R6, R6, 1      ; 0x362
 			STR R6, R0, data54 ; 0x364
 			NOP               ; 0x366
 			NOP               ; 0x368
 			NOP               ; 0x36a
 			BRnzp label55      ; 0x36c
 		data36:
 			DATA2 4x54 ; 0x36e

label55:
 			LDR R7, R0, data55 ; 0x370
 			ADD R7, R7, 1      ; 0x372
 			STR R7, R0, data55 ; 0x374
 			NOP               ; 0x376
 			NOP               ; 0x378
 			NOP               ; 0x37a
 			BRnzp label56      ; 0x37c
 		data37:
 			DATA2 4x55 ; 0x37e

label56:
 			LDR R1, R0, data56 ; 0x380
 			ADD R1, R1, 1      ; 0x382
 			STR R1, R0, data56 ; 0x384
 			NOP               ; 0x386
 			NOP               ; 0x388
 			NOP               ; 0x38a
 			BRnzp label57      ; 0x38c
 		data38:
 			DATA2 4x56 ; 0x38e

label57:
 			LDR R2, R0, data57 ; 0x390
 			ADD R2, R2, 1      ; 0x392
 			STR R2, R0, data57 ; 0x394
 			NOP               ; 0x396
 			NOP               ; 0x398
 			NOP               ; 0x39a
 			BRnzp label58      ; 0x39c
 		data39:
 			DATA2 4x57 ; 0x39e

label58:
 			LDR R3, R0, data58 ; 0x3a0
 			ADD R3, R3, 1      ; 0x3a2
 			STR R3, R0, data58 ; 0x3a4
 			NOP               ; 0x3a6
 			NOP               ; 0x3a8
 			NOP               ; 0x3aa
 			BRnzp label59      ; 0x3ac
 		data3a:
 			DATA2 4x58 ; 0x3ae

label59:
 			LDR R4, R0, data59 ; 0x3b0
 			ADD R4, R4, 1      ; 0x3b2
 			STR R4, R0, data59 ; 0x3b4
 			NOP               ; 0x3b6
 			NOP               ; 0x3b8
 			NOP               ; 0x3ba
 			BRnzp label60      ; 0x3bc
 		data3b:
 			DATA2 4x59 ; 0x3be

label60:
 			LDR R5, R0, data60 ; 0x3c0
 			ADD R5, R5, 1      ; 0x3c2
 			STR R5, R0, data60 ; 0x3c4
 			NOP               ; 0x3c6
 			NOP               ; 0x3c8
 			NOP               ; 0x3ca
 			BRnzp label61      ; 0x3cc
 		data3c:
 			DATA2 4x60 ; 0x3ce

label61:
 			LDR R6, R0, data61 ; 0x3d0
 			ADD R6, R6, 1      ; 0x3d2
 			STR R6, R0, data61 ; 0x3d4
 			NOP               ; 0x3d6
 			NOP               ; 0x3d8
 			NOP               ; 0x3da
 			BRnzp label62      ; 0x3dc
 		data3d:
 			DATA2 4x61 ; 0x3de

label62:
 			LDR R7, R0, data62 ; 0x3e0
 			ADD R7, R7, 1      ; 0x3e2
 			STR R7, R0, data62 ; 0x3e4
 			NOP               ; 0x3e6
 			NOP               ; 0x3e8
 			NOP               ; 0x3ea
 			BRnzp label63      ; 0x3ec
 		data3e:
 			DATA2 4x62 ; 0x3ee

label63:
 			LDR R1, R0, data63 ; 0x3f0
 			ADD R1, R1, 1      ; 0x3f2
 			STR R1, R0, data63 ; 0x3f4
 			NOP               ; 0x3f6
 			NOP               ; 0x3f8
 			NOP               ; 0x3fa
 			BRnzp label64      ; 0x3fc
 		data3f:
 			DATA2 4x63 ; 0x3fe

label64:
 			LDR R2, R0, data64 ; 0x400
 			ADD R2, R2, 1      ; 0x402
 			STR R2, R0, data64 ; 0x404
 			NOP               ; 0x406
 			NOP               ; 0x408
 			NOP               ; 0x40a
 			BRnzp label65      ; 0x40c
 		data40:
 			DATA2 4x64 ; 0x40e

label65:
 			LDR R3, R0, data65 ; 0x410
 			ADD R3, R3, 1      ; 0x412
 			STR R3, R0, data65 ; 0x414
 			NOP               ; 0x416
 			NOP               ; 0x418
 			NOP               ; 0x41a
 			BRnzp label66      ; 0x41c
 		data41:
 			DATA2 4x65 ; 0x41e

label66:
 			LDR R4, R0, data66 ; 0x420
 			ADD R4, R4, 1      ; 0x422
 			STR R4, R0, data66 ; 0x424
 			NOP               ; 0x426
 			NOP               ; 0x428
 			NOP               ; 0x42a
 			BRnzp label67      ; 0x42c
 		data42:
 			DATA2 4x66 ; 0x42e

label67:
 			LDR R5, R0, data67 ; 0x430
 			ADD R5, R5, 1      ; 0x432
 			STR R5, R0, data67 ; 0x434
 			NOP               ; 0x436
 			NOP               ; 0x438
 			NOP               ; 0x43a
 			BRnzp label68      ; 0x43c
 		data43:
 			DATA2 4x67 ; 0x43e

label68:
 			LDR R6, R0, data68 ; 0x440
 			ADD R6, R6, 1      ; 0x442
 			STR R6, R0, data68 ; 0x444
 			NOP               ; 0x446
 			NOP               ; 0x448
 			NOP               ; 0x44a
 			BRnzp label69      ; 0x44c
 		data44:
 			DATA2 4x68 ; 0x44e

label69:
 			LDR R7, R0, data69 ; 0x450
 			ADD R7, R7, 1      ; 0x452
 			STR R7, R0, data69 ; 0x454
 			NOP               ; 0x456
 			NOP               ; 0x458
 			NOP               ; 0x45a
 			BRnzp label70      ; 0x45c
 		data45:
 			DATA2 4x69 ; 0x45e

label70:
 			LDR R1, R0, data70 ; 0x460
 			ADD R1, R1, 1      ; 0x462
 			STR R1, R0, data70 ; 0x464
 			NOP               ; 0x466
 			NOP               ; 0x468
 			NOP               ; 0x46a
 			BRnzp label71      ; 0x46c
 		data46:
 			DATA2 4x70 ; 0x46e

label71:
 			LDR R2, R0, data71 ; 0x470
 			ADD R2, R2, 1      ; 0x472
 			STR R2, R0, data71 ; 0x474
 			NOP               ; 0x476
 			NOP               ; 0x478
 			NOP               ; 0x47a
 			BRnzp label72      ; 0x47c
 		data47:
 			DATA2 4x71 ; 0x47e

label72:
 			LDR R3, R0, data72 ; 0x480
 			ADD R3, R3, 1      ; 0x482
 			STR R3, R0, data72 ; 0x484
 			NOP               ; 0x486
 			NOP               ; 0x488
 			NOP               ; 0x48a
 			BRnzp label73      ; 0x48c
 		data48:
 			DATA2 4x72 ; 0x48e

label73:
 			LDR R4, R0, data73 ; 0x490
 			ADD R4, R4, 1      ; 0x492
 			STR R4, R0, data73 ; 0x494
 			NOP               ; 0x496
 			NOP               ; 0x498
 			NOP               ; 0x49a
 			BRnzp label74      ; 0x49c
 		data49:
 			DATA2 4x73 ; 0x49e

label74:
 			LDR R5, R0, data74 ; 0x4a0
 			ADD R5, R5, 1      ; 0x4a2
 			STR R5, R0, data74 ; 0x4a4
 			NOP               ; 0x4a6
 			NOP               ; 0x4a8
 			NOP               ; 0x4aa
 			BRnzp label75      ; 0x4ac
 		data4a:
 			DATA2 4x74 ; 0x4ae

label75:
 			LDR R6, R0, data75 ; 0x4b0
 			ADD R6, R6, 1      ; 0x4b2
 			STR R6, R0, data75 ; 0x4b4
 			NOP               ; 0x4b6
 			NOP               ; 0x4b8
 			NOP               ; 0x4ba
 			BRnzp label76      ; 0x4bc
 		data4b:
 			DATA2 4x75 ; 0x4be

label76:
 			LDR R7, R0, data76 ; 0x4c0
 			ADD R7, R7, 1      ; 0x4c2
 			STR R7, R0, data76 ; 0x4c4
 			NOP               ; 0x4c6
 			NOP               ; 0x4c8
 			NOP               ; 0x4ca
 			BRnzp label77      ; 0x4cc
 		data4c:
 			DATA2 4x76 ; 0x4ce

label77:
 			LDR R1, R0, data77 ; 0x4d0
 			ADD R1, R1, 1      ; 0x4d2
 			STR R1, R0, data77 ; 0x4d4
 			NOP               ; 0x4d6
 			NOP               ; 0x4d8
 			NOP               ; 0x4da
 			BRnzp label78      ; 0x4dc
 		data4d:
 			DATA2 4x77 ; 0x4de

label78:
 			LDR R2, R0, data78 ; 0x4e0
 			ADD R2, R2, 1      ; 0x4e2
 			STR R2, R0, data78 ; 0x4e4
 			NOP               ; 0x4e6
 			NOP               ; 0x4e8
 			NOP               ; 0x4ea
 			BRnzp label79      ; 0x4ec
 		data4e:
 			DATA2 4x78 ; 0x4ee

label79:
 			LDR R3, R0, data79 ; 0x4f0
 			ADD R3, R3, 1      ; 0x4f2
 			STR R3, R0, data79 ; 0x4f4
 			NOP               ; 0x4f6
 			NOP               ; 0x4f8
 			NOP               ; 0x4fa
 			BRnzp label80      ; 0x4fc
 		data4f:
 			DATA2 4x79 ; 0x4fe

label80:
 			LDR R4, R0, data80 ; 0x500
 			ADD R4, R4, 1      ; 0x502
 			STR R4, R0, data80 ; 0x504
 			NOP               ; 0x506
 			NOP               ; 0x508
 			NOP               ; 0x50a
 			BRnzp label81      ; 0x50c
 		data50:
 			DATA2 4x80 ; 0x50e

label81:
 			LDR R5, R0, data81 ; 0x510
 			ADD R5, R5, 1      ; 0x512
 			STR R5, R0, data81 ; 0x514
 			NOP               ; 0x516
 			NOP               ; 0x518
 			NOP               ; 0x51a
 			BRnzp label82      ; 0x51c
 		data51:
 			DATA2 4x81 ; 0x51e

label82:
 			LDR R6, R0, data82 ; 0x520
 			ADD R6, R6, 1      ; 0x522
 			STR R6, R0, data82 ; 0x524
 			NOP               ; 0x526
 			NOP               ; 0x528
 			NOP               ; 0x52a
 			BRnzp label83      ; 0x52c
 		data52:
 			DATA2 4x82 ; 0x52e

label83:
 			LDR R7, R0, data83 ; 0x530
 			ADD R7, R7, 1      ; 0x532
 			STR R7, R0, data83 ; 0x534
 			NOP               ; 0x536
 			NOP               ; 0x538
 			NOP               ; 0x53a
 			BRnzp label84      ; 0x53c
 		data53:
 			DATA2 4x83 ; 0x53e

label84:
 			LDR R1, R0, data84 ; 0x540
 			ADD R1, R1, 1      ; 0x542
 			STR R1, R0, data84 ; 0x544
 			NOP               ; 0x546
 			NOP               ; 0x548
 			NOP               ; 0x54a
 			BRnzp label85      ; 0x54c
 		data54:
 			DATA2 4x84 ; 0x54e

label85:
 			LDR R2, R0, data85 ; 0x550
 			ADD R2, R2, 1      ; 0x552
 			STR R2, R0, data85 ; 0x554
 			NOP               ; 0x556
 			NOP               ; 0x558
 			NOP               ; 0x55a
 			BRnzp label86      ; 0x55c
 		data55:
 			DATA2 4x85 ; 0x55e

label86:
 			LDR R3, R0, data86 ; 0x560
 			ADD R3, R3, 1      ; 0x562
 			STR R3, R0, data86 ; 0x564
 			NOP               ; 0x566
 			NOP               ; 0x568
 			NOP               ; 0x56a
 			BRnzp label87      ; 0x56c
 		data56:
 			DATA2 4x86 ; 0x56e

label87:
 			LDR R4, R0, data87 ; 0x570
 			ADD R4, R4, 1      ; 0x572
 			STR R4, R0, data87 ; 0x574
 			NOP               ; 0x576
 			NOP               ; 0x578
 			NOP               ; 0x57a
 			BRnzp label88      ; 0x57c
 		data57:
 			DATA2 4x87 ; 0x57e

label88:
 			LDR R5, R0, data88 ; 0x580
 			ADD R5, R5, 1      ; 0x582
 			STR R5, R0, data88 ; 0x584
 			NOP               ; 0x586
 			NOP               ; 0x588
 			NOP               ; 0x58a
 			BRnzp label89      ; 0x58c
 		data58:
 			DATA2 4x88 ; 0x58e

label89:
 			LDR R6, R0, data89 ; 0x590
 			ADD R6, R6, 1      ; 0x592
 			STR R6, R0, data89 ; 0x594
 			NOP               ; 0x596
 			NOP               ; 0x598
 			NOP               ; 0x59a
 			BRnzp label90      ; 0x59c
 		data59:
 			DATA2 4x89 ; 0x59e

label90:
 			LDR R7, R0, data90 ; 0x5a0
 			ADD R7, R7, 1      ; 0x5a2
 			STR R7, R0, data90 ; 0x5a4
 			NOP               ; 0x5a6
 			NOP               ; 0x5a8
 			NOP               ; 0x5aa
 			BRnzp label91      ; 0x5ac
 		data5a:
 			DATA2 4x90 ; 0x5ae

label91:
 			LDR R1, R0, data91 ; 0x5b0
 			ADD R1, R1, 1      ; 0x5b2
 			STR R1, R0, data91 ; 0x5b4
 			NOP               ; 0x5b6
 			NOP               ; 0x5b8
 			NOP               ; 0x5ba
 			BRnzp label92      ; 0x5bc
 		data5b:
 			DATA2 4x91 ; 0x5be

label92:
 			LDR R2, R0, data92 ; 0x5c0
 			ADD R2, R2, 1      ; 0x5c2
 			STR R2, R0, data92 ; 0x5c4
 			NOP               ; 0x5c6
 			NOP               ; 0x5c8
 			NOP               ; 0x5ca
 			BRnzp label93      ; 0x5cc
 		data5c:
 			DATA2 4x92 ; 0x5ce

label93:
 			LDR R3, R0, data93 ; 0x5d0
 			ADD R3, R3, 1      ; 0x5d2
 			STR R3, R0, data93 ; 0x5d4
 			NOP               ; 0x5d6
 			NOP               ; 0x5d8
 			NOP               ; 0x5da
 			BRnzp label94      ; 0x5dc
 		data5d:
 			DATA2 4x93 ; 0x5de

label94:
 			LDR R4, R0, data94 ; 0x5e0
 			ADD R4, R4, 1      ; 0x5e2
 			STR R4, R0, data94 ; 0x5e4
 			NOP               ; 0x5e6
 			NOP               ; 0x5e8
 			NOP               ; 0x5ea
 			BRnzp label95      ; 0x5ec
 		data5e:
 			DATA2 4x94 ; 0x5ee

label95:
 			LDR R5, R0, data95 ; 0x5f0
 			ADD R5, R5, 1      ; 0x5f2
 			STR R5, R0, data95 ; 0x5f4
 			NOP               ; 0x5f6
 			NOP               ; 0x5f8
 			NOP               ; 0x5fa
 			BRnzp label96      ; 0x5fc
 		data5f:
 			DATA2 4x95 ; 0x5fe

label96:
 			LDR R6, R0, data96 ; 0x600
 			ADD R6, R6, 1      ; 0x602
 			STR R6, R0, data96 ; 0x604
 			NOP               ; 0x606
 			NOP               ; 0x608
 			NOP               ; 0x60a
 			BRnzp label97      ; 0x60c
 		data60:
 			DATA2 4x96 ; 0x60e

label97:
 			LDR R7, R0, data97 ; 0x610
 			ADD R7, R7, 1      ; 0x612
 			STR R7, R0, data97 ; 0x614
 			NOP               ; 0x616
 			NOP               ; 0x618
 			NOP               ; 0x61a
 			BRnzp label98      ; 0x61c
 		data61:
 			DATA2 4x97 ; 0x61e

label98:
 			LDR R1, R0, data98 ; 0x620
 			ADD R1, R1, 1      ; 0x622
 			STR R1, R0, data98 ; 0x624
 			NOP               ; 0x626
 			NOP               ; 0x628
 			NOP               ; 0x62a
 			BRnzp label99      ; 0x62c
 		data62:
 			DATA2 4x98 ; 0x62e

label99:
 			LDR R2, R0, data99 ; 0x630
 			ADD R2, R2, 1      ; 0x632
 			STR R2, R0, data99 ; 0x634
 			NOP               ; 0x636
 			NOP               ; 0x638
 			NOP               ; 0x63a
 			BRnzp label100      ; 0x63c
 		data63:
 			DATA2 4x99 ; 0x63e

label100:
 			LDR R3, R0, data100 ; 0x640
 			ADD R3, R3, 1      ; 0x642
 			STR R3, R0, data100 ; 0x644
 			NOP               ; 0x646
 			NOP               ; 0x648
 			NOP               ; 0x64a
 			BRnzp label101      ; 0x64c
 		data64:
 			DATA2 4x100 ; 0x64e

label101:
 		LDI R1, R0, spotcheck1$BASEREL
 		ADD R1, R1, -5
 		BRp finish
 		AND R1, R1, 0
 		AND R2, R2, 0
 		AND R3, R3, 0
 		AND R4, R4, 0
 		AND R5, R5, 0
 		AND R6, R6, 0
 		AND R7, R7, 0
 		RET

 		finish:
 		LDI R1, R0, spotcheck1$BASEREL
 		LDI R2, R0, spotcheck2$BASEREL
 		LDI R3, R0, spotcheck3$BASEREL
 		LDI R4, R0, spotcheck4$BASEREL
 		LDI R5, R0, spotcheck5$BASEREL
 		LDI R6, R0, spotcheck6$BASEREL
 		LDI R7, R0, spotcheck7$BASEREL

 		halt:
 		BRNZP halt
 	spotcheck1: DATA2 0xE
 	spotcheck2: DATA2 0x10E
 	spotcheck3: DATA2 0x14E
 	spotcheck4: DATA2 0x19E
 	spotcheck5: DATA2 0x21E
 	spotcheck6: DATA2 0x32E
 	spotcheck7: DATA2 0x64E
