; Desired Register Values:
 ; PC - 0x0838
 ; icount - 3152
 ; R7 - 0x86
 ; R6 - 0x46
 ; R5 - 0x30
 ; R4 - 0x26
 ; R3 - 0x1f
 ; R2 - 0x1b
 ; R1 - 0x6
ORIGIN 0
 SEGMENT CodeSegment:
label0:
 			LEA R0, DataSegment0     ; 0x0
 			LDR R1, R0, 0 ; 0x2
 			ADD R1, R1, 1      ; 0x4
 			STR R1, R0, 0; 0x6
 			NOP               ; 0x8
 			NOP               ; 0xa
 			BRnzp label1      ; 0xc
 		SEGMENT DataSegment0:
 			DATA2 4x0 ; 0xe

label1:
 			LEA R0, DataSegment1     ; 0x10
 			LDR R2, R0, 0 ; 0x12
 			ADD R2, R2, 1      ; 0x14
 			STR R2, R0, 0; 0x16
 			NOP               ; 0x18
 			NOP               ; 0x1a
 			BRnzp label2      ; 0x1c
 		SEGMENT DataSegment1:
 			DATA2 4x1 ; 0x1e

label2:
 			LEA R0, DataSegment2     ; 0x20
 			LDR R3, R0, 0 ; 0x22
 			ADD R3, R3, 1      ; 0x24
 			STR R3, R0, 0; 0x26
 			NOP               ; 0x28
 			NOP               ; 0x2a
 			BRnzp label3      ; 0x2c
 		SEGMENT DataSegment2:
 			DATA2 4x2 ; 0x2e

label3:
 			LEA R0, DataSegment3     ; 0x30
 			LDR R4, R0, 0 ; 0x32
 			ADD R4, R4, 1      ; 0x34
 			STR R4, R0, 0; 0x36
 			NOP               ; 0x38
 			NOP               ; 0x3a
 			BRnzp label4      ; 0x3c
 		SEGMENT DataSegment3:
 			DATA2 4x3 ; 0x3e

label4:
 			LEA R0, DataSegment4     ; 0x40
 			LDR R5, R0, 0 ; 0x42
 			ADD R5, R5, 1      ; 0x44
 			STR R5, R0, 0; 0x46
 			NOP               ; 0x48
 			NOP               ; 0x4a
 			BRnzp label5      ; 0x4c
 		SEGMENT DataSegment4:
 			DATA2 4x4 ; 0x4e

label5:
 			LEA R0, DataSegment5     ; 0x50
 			LDR R6, R0, 0 ; 0x52
 			ADD R6, R6, 1      ; 0x54
 			STR R6, R0, 0; 0x56
 			NOP               ; 0x58
 			NOP               ; 0x5a
 			BRnzp label6      ; 0x5c
 		SEGMENT DataSegment5:
 			DATA2 4x5 ; 0x5e

label6:
 			LEA R0, DataSegment6     ; 0x60
 			LDR R7, R0, 0 ; 0x62
 			ADD R7, R7, 1      ; 0x64
 			STR R7, R0, 0; 0x66
 			NOP               ; 0x68
 			NOP               ; 0x6a
 			BRnzp label7      ; 0x6c
 		SEGMENT DataSegment6:
 			DATA2 4x6 ; 0x6e

label7:
 			LEA R0, DataSegment7     ; 0x70
 			LDR R1, R0, 0 ; 0x72
 			ADD R1, R1, 1      ; 0x74
 			STR R1, R0, 0; 0x76
 			NOP               ; 0x78
 			NOP               ; 0x7a
 			BRnzp label8      ; 0x7c
 		SEGMENT DataSegment7:
 			DATA2 4x7 ; 0x7e

label8:
 			LEA R0, DataSegment8     ; 0x80
 			LDR R2, R0, 0 ; 0x82
 			ADD R2, R2, 1      ; 0x84
 			STR R2, R0, 0; 0x86
 			NOP               ; 0x88
 			NOP               ; 0x8a
 			BRnzp label9      ; 0x8c
 		SEGMENT DataSegment8:
 			DATA2 4x8 ; 0x8e

label9:
 			LEA R0, DataSegment9     ; 0x90
 			LDR R3, R0, 0 ; 0x92
 			ADD R3, R3, 1      ; 0x94
 			STR R3, R0, 0; 0x96
 			NOP               ; 0x98
 			NOP               ; 0x9a
 			BRnzp label10      ; 0x9c
 		SEGMENT DataSegment9:
 			DATA2 4x9 ; 0x9e

label10:
 			LEA R0, DataSegment10     ; 0xa0
 			LDR R4, R0, 0 ; 0xa2
 			ADD R4, R4, 1      ; 0xa4
 			STR R4, R0, 0; 0xa6
 			NOP               ; 0xa8
 			NOP               ; 0xaa
 			BRnzp label11      ; 0xac
 		SEGMENT DataSegment10:
 			DATA2 4xa ; 0xae

label11:
 			LEA R0, DataSegment11     ; 0xb0
 			LDR R5, R0, 0 ; 0xb2
 			ADD R5, R5, 1      ; 0xb4
 			STR R5, R0, 0; 0xb6
 			NOP               ; 0xb8
 			NOP               ; 0xba
 			BRnzp label12      ; 0xbc
 		SEGMENT DataSegment11:
 			DATA2 4xb ; 0xbe

label12:
 			LEA R0, DataSegment12     ; 0xc0
 			LDR R6, R0, 0 ; 0xc2
 			ADD R6, R6, 1      ; 0xc4
 			STR R6, R0, 0; 0xc6
 			NOP               ; 0xc8
 			NOP               ; 0xca
 			BRnzp label13      ; 0xcc
 		SEGMENT DataSegment12:
 			DATA2 4xc ; 0xce

label13:
 			LEA R0, DataSegment13     ; 0xd0
 			LDR R7, R0, 0 ; 0xd2
 			ADD R7, R7, 1      ; 0xd4
 			STR R7, R0, 0; 0xd6
 			NOP               ; 0xd8
 			NOP               ; 0xda
 			BRnzp label14      ; 0xdc
 		SEGMENT DataSegment13:
 			DATA2 4xd ; 0xde

label14:
 			LEA R0, DataSegment14     ; 0xe0
 			LDR R1, R0, 0 ; 0xe2
 			ADD R1, R1, 1      ; 0xe4
 			STR R1, R0, 0; 0xe6
 			NOP               ; 0xe8
 			NOP               ; 0xea
 			BRnzp label15      ; 0xec
 		SEGMENT DataSegment14:
 			DATA2 4xe ; 0xee

label15:
 			LEA R0, DataSegment15     ; 0xf0
 			LDR R2, R0, 0 ; 0xf2
 			ADD R2, R2, 1      ; 0xf4
 			STR R2, R0, 0; 0xf6
 			NOP               ; 0xf8
 			NOP               ; 0xfa
 			BRnzp label16      ; 0xfc
 		SEGMENT DataSegment15:
 			DATA2 4xf ; 0xfe

label16:
 			LEA R0, DataSegment16     ; 0x100
 			LDR R3, R0, 0 ; 0x102
 			ADD R3, R3, 1      ; 0x104
 			STR R3, R0, 0; 0x106
 			NOP               ; 0x108
 			NOP               ; 0x10a
 			BRnzp label17      ; 0x10c
 		SEGMENT DataSegment16:
 			DATA2 4x10 ; 0x10e

label17:
 			LEA R0, DataSegment17     ; 0x110
 			LDR R4, R0, 0 ; 0x112
 			ADD R4, R4, 1      ; 0x114
 			STR R4, R0, 0; 0x116
 			NOP               ; 0x118
 			NOP               ; 0x11a
 			BRnzp label18      ; 0x11c
 		SEGMENT DataSegment17:
 			DATA2 4x11 ; 0x11e

label18:
 			LEA R0, DataSegment18     ; 0x120
 			LDR R5, R0, 0 ; 0x122
 			ADD R5, R5, 1      ; 0x124
 			STR R5, R0, 0; 0x126
 			NOP               ; 0x128
 			NOP               ; 0x12a
 			BRnzp label19      ; 0x12c
 		SEGMENT DataSegment18:
 			DATA2 4x12 ; 0x12e

label19:
 			LEA R0, DataSegment19     ; 0x130
 			LDR R6, R0, 0 ; 0x132
 			ADD R6, R6, 1      ; 0x134
 			STR R6, R0, 0; 0x136
 			NOP               ; 0x138
 			NOP               ; 0x13a
 			BRnzp label20      ; 0x13c
 		SEGMENT DataSegment19:
 			DATA2 4x13 ; 0x13e

label20:
 			LEA R0, DataSegment20     ; 0x140
 			LDR R7, R0, 0 ; 0x142
 			ADD R7, R7, 1      ; 0x144
 			STR R7, R0, 0; 0x146
 			NOP               ; 0x148
 			NOP               ; 0x14a
 			BRnzp label21      ; 0x14c
 		SEGMENT DataSegment20:
 			DATA2 4x14 ; 0x14e

label21:
 			LEA R0, DataSegment21     ; 0x150
 			LDR R1, R0, 0 ; 0x152
 			ADD R1, R1, 1      ; 0x154
 			STR R1, R0, 0; 0x156
 			NOP               ; 0x158
 			NOP               ; 0x15a
 			BRnzp label22      ; 0x15c
 		SEGMENT DataSegment21:
 			DATA2 4x15 ; 0x15e

label22:
 			LEA R0, DataSegment22     ; 0x160
 			LDR R2, R0, 0 ; 0x162
 			ADD R2, R2, 1      ; 0x164
 			STR R2, R0, 0; 0x166
 			NOP               ; 0x168
 			NOP               ; 0x16a
 			BRnzp label23      ; 0x16c
 		SEGMENT DataSegment22:
 			DATA2 4x16 ; 0x16e

label23:
 			LEA R0, DataSegment23     ; 0x170
 			LDR R3, R0, 0 ; 0x172
 			ADD R3, R3, 1      ; 0x174
 			STR R3, R0, 0; 0x176
 			NOP               ; 0x178
 			NOP               ; 0x17a
 			BRnzp label24      ; 0x17c
 		SEGMENT DataSegment23:
 			DATA2 4x17 ; 0x17e

label24:
 			LEA R0, DataSegment24     ; 0x180
 			LDR R4, R0, 0 ; 0x182
 			ADD R4, R4, 1      ; 0x184
 			STR R4, R0, 0; 0x186
 			NOP               ; 0x188
 			NOP               ; 0x18a
 			BRnzp label25      ; 0x18c
 		SEGMENT DataSegment24:
 			DATA2 4x18 ; 0x18e

label25:
 			LEA R0, DataSegment25     ; 0x190
 			LDR R5, R0, 0 ; 0x192
 			ADD R5, R5, 1      ; 0x194
 			STR R5, R0, 0; 0x196
 			NOP               ; 0x198
 			NOP               ; 0x19a
 			BRnzp label26      ; 0x19c
 		SEGMENT DataSegment25:
 			DATA2 4x19 ; 0x19e

label26:
 			LEA R0, DataSegment26     ; 0x1a0
 			LDR R6, R0, 0 ; 0x1a2
 			ADD R6, R6, 1      ; 0x1a4
 			STR R6, R0, 0; 0x1a6
 			NOP               ; 0x1a8
 			NOP               ; 0x1aa
 			BRnzp label27      ; 0x1ac
 		SEGMENT DataSegment26:
 			DATA2 4x1a ; 0x1ae

label27:
 			LEA R0, DataSegment27     ; 0x1b0
 			LDR R7, R0, 0 ; 0x1b2
 			ADD R7, R7, 1      ; 0x1b4
 			STR R7, R0, 0; 0x1b6
 			NOP               ; 0x1b8
 			NOP               ; 0x1ba
 			BRnzp label28      ; 0x1bc
 		SEGMENT DataSegment27:
 			DATA2 4x1b ; 0x1be

label28:
 			LEA R0, DataSegment28     ; 0x1c0
 			LDR R1, R0, 0 ; 0x1c2
 			ADD R1, R1, 1      ; 0x1c4
 			STR R1, R0, 0; 0x1c6
 			NOP               ; 0x1c8
 			NOP               ; 0x1ca
 			BRnzp label29      ; 0x1cc
 		SEGMENT DataSegment28:
 			DATA2 4x1c ; 0x1ce

label29:
 			LEA R0, DataSegment29     ; 0x1d0
 			LDR R2, R0, 0 ; 0x1d2
 			ADD R2, R2, 1      ; 0x1d4
 			STR R2, R0, 0; 0x1d6
 			NOP               ; 0x1d8
 			NOP               ; 0x1da
 			BRnzp label30      ; 0x1dc
 		SEGMENT DataSegment29:
 			DATA2 4x1d ; 0x1de

label30:
 			LEA R0, DataSegment30     ; 0x1e0
 			LDR R3, R0, 0 ; 0x1e2
 			ADD R3, R3, 1      ; 0x1e4
 			STR R3, R0, 0; 0x1e6
 			NOP               ; 0x1e8
 			NOP               ; 0x1ea
 			BRnzp label31      ; 0x1ec
 		SEGMENT DataSegment30:
 			DATA2 4x1e ; 0x1ee

label31:
 			LEA R0, DataSegment31     ; 0x1f0
 			LDR R4, R0, 0 ; 0x1f2
 			ADD R4, R4, 1      ; 0x1f4
 			STR R4, R0, 0; 0x1f6
 			NOP               ; 0x1f8
 			NOP               ; 0x1fa
 			BRnzp label32      ; 0x1fc
 		SEGMENT DataSegment31:
 			DATA2 4x1f ; 0x1fe

label32:
 			LEA R0, DataSegment32     ; 0x200
 			LDR R5, R0, 0 ; 0x202
 			ADD R5, R5, 1      ; 0x204
 			STR R5, R0, 0; 0x206
 			NOP               ; 0x208
 			NOP               ; 0x20a
 			BRnzp label33      ; 0x20c
 		SEGMENT DataSegment32:
 			DATA2 4x20 ; 0x20e

label33:
 			LEA R0, DataSegment33     ; 0x210
 			LDR R6, R0, 0 ; 0x212
 			ADD R6, R6, 1      ; 0x214
 			STR R6, R0, 0; 0x216
 			NOP               ; 0x218
 			NOP               ; 0x21a
 			BRnzp label34      ; 0x21c
 		SEGMENT DataSegment33:
 			DATA2 4x21 ; 0x21e

label34:
 			LEA R0, DataSegment34     ; 0x220
 			LDR R7, R0, 0 ; 0x222
 			ADD R7, R7, 1      ; 0x224
 			STR R7, R0, 0; 0x226
 			NOP               ; 0x228
 			NOP               ; 0x22a
 			BRnzp label35      ; 0x22c
 		SEGMENT DataSegment34:
 			DATA2 4x22 ; 0x22e

label35:
 			LEA R0, DataSegment35     ; 0x230
 			LDR R1, R0, 0 ; 0x232
 			ADD R1, R1, 1      ; 0x234
 			STR R1, R0, 0; 0x236
 			NOP               ; 0x238
 			NOP               ; 0x23a
 			BRnzp label36      ; 0x23c
 		SEGMENT DataSegment35:
 			DATA2 4x23 ; 0x23e

label36:
 			LEA R0, DataSegment36     ; 0x240
 			LDR R2, R0, 0 ; 0x242
 			ADD R2, R2, 1      ; 0x244
 			STR R2, R0, 0; 0x246
 			NOP               ; 0x248
 			NOP               ; 0x24a
 			BRnzp label37      ; 0x24c
 		SEGMENT DataSegment36:
 			DATA2 4x24 ; 0x24e

label37:
 			LEA R0, DataSegment37     ; 0x250
 			LDR R3, R0, 0 ; 0x252
 			ADD R3, R3, 1      ; 0x254
 			STR R3, R0, 0; 0x256
 			NOP               ; 0x258
 			NOP               ; 0x25a
 			BRnzp label38      ; 0x25c
 		SEGMENT DataSegment37:
 			DATA2 4x25 ; 0x25e

label38:
 			LEA R0, DataSegment38     ; 0x260
 			LDR R4, R0, 0 ; 0x262
 			ADD R4, R4, 1      ; 0x264
 			STR R4, R0, 0; 0x266
 			NOP               ; 0x268
 			NOP               ; 0x26a
 			BRnzp label39      ; 0x26c
 		SEGMENT DataSegment38:
 			DATA2 4x26 ; 0x26e

label39:
 			LEA R0, DataSegment39     ; 0x270
 			LDR R5, R0, 0 ; 0x272
 			ADD R5, R5, 1      ; 0x274
 			STR R5, R0, 0; 0x276
 			NOP               ; 0x278
 			NOP               ; 0x27a
 			BRnzp label40      ; 0x27c
 		SEGMENT DataSegment39:
 			DATA2 4x27 ; 0x27e

label40:
 			LEA R0, DataSegment40     ; 0x280
 			LDR R6, R0, 0 ; 0x282
 			ADD R6, R6, 1      ; 0x284
 			STR R6, R0, 0; 0x286
 			NOP               ; 0x288
 			NOP               ; 0x28a
 			BRnzp label41      ; 0x28c
 		SEGMENT DataSegment40:
 			DATA2 4x28 ; 0x28e

label41:
 			LEA R0, DataSegment41     ; 0x290
 			LDR R7, R0, 0 ; 0x292
 			ADD R7, R7, 1      ; 0x294
 			STR R7, R0, 0; 0x296
 			NOP               ; 0x298
 			NOP               ; 0x29a
 			BRnzp label42      ; 0x29c
 		SEGMENT DataSegment41:
 			DATA2 4x29 ; 0x29e

label42:
 			LEA R0, DataSegment42     ; 0x2a0
 			LDR R1, R0, 0 ; 0x2a2
 			ADD R1, R1, 1      ; 0x2a4
 			STR R1, R0, 0; 0x2a6
 			NOP               ; 0x2a8
 			NOP               ; 0x2aa
 			BRnzp label43      ; 0x2ac
 		SEGMENT DataSegment42:
 			DATA2 4x2a ; 0x2ae

label43:
 			LEA R0, DataSegment43     ; 0x2b0
 			LDR R2, R0, 0 ; 0x2b2
 			ADD R2, R2, 1      ; 0x2b4
 			STR R2, R0, 0; 0x2b6
 			NOP               ; 0x2b8
 			NOP               ; 0x2ba
 			BRnzp label44      ; 0x2bc
 		SEGMENT DataSegment43:
 			DATA2 4x2b ; 0x2be

label44:
 			LEA R0, DataSegment44     ; 0x2c0
 			LDR R3, R0, 0 ; 0x2c2
 			ADD R3, R3, 1      ; 0x2c4
 			STR R3, R0, 0; 0x2c6
 			NOP               ; 0x2c8
 			NOP               ; 0x2ca
 			BRnzp label45      ; 0x2cc
 		SEGMENT DataSegment44:
 			DATA2 4x2c ; 0x2ce

label45:
 			LEA R0, DataSegment45     ; 0x2d0
 			LDR R4, R0, 0 ; 0x2d2
 			ADD R4, R4, 1      ; 0x2d4
 			STR R4, R0, 0; 0x2d6
 			NOP               ; 0x2d8
 			NOP               ; 0x2da
 			BRnzp label46      ; 0x2dc
 		SEGMENT DataSegment45:
 			DATA2 4x2d ; 0x2de

label46:
 			LEA R0, DataSegment46     ; 0x2e0
 			LDR R5, R0, 0 ; 0x2e2
 			ADD R5, R5, 1      ; 0x2e4
 			STR R5, R0, 0; 0x2e6
 			NOP               ; 0x2e8
 			NOP               ; 0x2ea
 			BRnzp label47      ; 0x2ec
 		SEGMENT DataSegment46:
 			DATA2 4x2e ; 0x2ee

label47:
 			LEA R0, DataSegment47     ; 0x2f0
 			LDR R6, R0, 0 ; 0x2f2
 			ADD R6, R6, 1      ; 0x2f4
 			STR R6, R0, 0; 0x2f6
 			NOP               ; 0x2f8
 			NOP               ; 0x2fa
 			BRnzp label48      ; 0x2fc
 		SEGMENT DataSegment47:
 			DATA2 4x2f ; 0x2fe

label48:
 			LEA R0, DataSegment48     ; 0x300
 			LDR R7, R0, 0 ; 0x302
 			ADD R7, R7, 1      ; 0x304
 			STR R7, R0, 0; 0x306
 			NOP               ; 0x308
 			NOP               ; 0x30a
 			BRnzp label49      ; 0x30c
 		SEGMENT DataSegment48:
 			DATA2 4x30 ; 0x30e

label49:
 			LEA R0, DataSegment49     ; 0x310
 			LDR R1, R0, 0 ; 0x312
 			ADD R1, R1, 1      ; 0x314
 			STR R1, R0, 0; 0x316
 			NOP               ; 0x318
 			NOP               ; 0x31a
 			BRnzp label50      ; 0x31c
 		SEGMENT DataSegment49:
 			DATA2 4x31 ; 0x31e

label50:
 			LEA R0, DataSegment50     ; 0x320
 			LDR R2, R0, 0 ; 0x322
 			ADD R2, R2, 1      ; 0x324
 			STR R2, R0, 0; 0x326
 			NOP               ; 0x328
 			NOP               ; 0x32a
 			BRnzp label51      ; 0x32c
 		SEGMENT DataSegment50:
 			DATA2 4x32 ; 0x32e

label51:
 			LEA R0, DataSegment51     ; 0x330
 			LDR R3, R0, 0 ; 0x332
 			ADD R3, R3, 1      ; 0x334
 			STR R3, R0, 0; 0x336
 			NOP               ; 0x338
 			NOP               ; 0x33a
 			BRnzp label52      ; 0x33c
 		SEGMENT DataSegment51:
 			DATA2 4x33 ; 0x33e

label52:
 			LEA R0, DataSegment52     ; 0x340
 			LDR R4, R0, 0 ; 0x342
 			ADD R4, R4, 1      ; 0x344
 			STR R4, R0, 0; 0x346
 			NOP               ; 0x348
 			NOP               ; 0x34a
 			BRnzp label53      ; 0x34c
 		SEGMENT DataSegment52:
 			DATA2 4x34 ; 0x34e

label53:
 			LEA R0, DataSegment53     ; 0x350
 			LDR R5, R0, 0 ; 0x352
 			ADD R5, R5, 1      ; 0x354
 			STR R5, R0, 0; 0x356
 			NOP               ; 0x358
 			NOP               ; 0x35a
 			BRnzp label54      ; 0x35c
 		SEGMENT DataSegment53:
 			DATA2 4x35 ; 0x35e

label54:
 			LEA R0, DataSegment54     ; 0x360
 			LDR R6, R0, 0 ; 0x362
 			ADD R6, R6, 1      ; 0x364
 			STR R6, R0, 0; 0x366
 			NOP               ; 0x368
 			NOP               ; 0x36a
 			BRnzp label55      ; 0x36c
 		SEGMENT DataSegment54:
 			DATA2 4x36 ; 0x36e

label55:
 			LEA R0, DataSegment55     ; 0x370
 			LDR R7, R0, 0 ; 0x372
 			ADD R7, R7, 1      ; 0x374
 			STR R7, R0, 0; 0x376
 			NOP               ; 0x378
 			NOP               ; 0x37a
 			BRnzp label56      ; 0x37c
 		SEGMENT DataSegment55:
 			DATA2 4x37 ; 0x37e

label56:
 			LEA R0, DataSegment56     ; 0x380
 			LDR R1, R0, 0 ; 0x382
 			ADD R1, R1, 1      ; 0x384
 			STR R1, R0, 0; 0x386
 			NOP               ; 0x388
 			NOP               ; 0x38a
 			BRnzp label57      ; 0x38c
 		SEGMENT DataSegment56:
 			DATA2 4x38 ; 0x38e

label57:
 			LEA R0, DataSegment57     ; 0x390
 			LDR R2, R0, 0 ; 0x392
 			ADD R2, R2, 1      ; 0x394
 			STR R2, R0, 0; 0x396
 			NOP               ; 0x398
 			NOP               ; 0x39a
 			BRnzp label58      ; 0x39c
 		SEGMENT DataSegment57:
 			DATA2 4x39 ; 0x39e

label58:
 			LEA R0, DataSegment58     ; 0x3a0
 			LDR R3, R0, 0 ; 0x3a2
 			ADD R3, R3, 1      ; 0x3a4
 			STR R3, R0, 0; 0x3a6
 			NOP               ; 0x3a8
 			NOP               ; 0x3aa
 			BRnzp label59      ; 0x3ac
 		SEGMENT DataSegment58:
 			DATA2 4x3a ; 0x3ae

label59:
 			LEA R0, DataSegment59     ; 0x3b0
 			LDR R4, R0, 0 ; 0x3b2
 			ADD R4, R4, 1      ; 0x3b4
 			STR R4, R0, 0; 0x3b6
 			NOP               ; 0x3b8
 			NOP               ; 0x3ba
 			BRnzp label60      ; 0x3bc
 		SEGMENT DataSegment59:
 			DATA2 4x3b ; 0x3be

label60:
 			LEA R0, DataSegment60     ; 0x3c0
 			LDR R5, R0, 0 ; 0x3c2
 			ADD R5, R5, 1      ; 0x3c4
 			STR R5, R0, 0; 0x3c6
 			NOP               ; 0x3c8
 			NOP               ; 0x3ca
 			BRnzp label61      ; 0x3cc
 		SEGMENT DataSegment60:
 			DATA2 4x3c ; 0x3ce

label61:
 			LEA R0, DataSegment61     ; 0x3d0
 			LDR R6, R0, 0 ; 0x3d2
 			ADD R6, R6, 1      ; 0x3d4
 			STR R6, R0, 0; 0x3d6
 			NOP               ; 0x3d8
 			NOP               ; 0x3da
 			BRnzp label62      ; 0x3dc
 		SEGMENT DataSegment61:
 			DATA2 4x3d ; 0x3de

label62:
 			LEA R0, DataSegment62     ; 0x3e0
 			LDR R7, R0, 0 ; 0x3e2
 			ADD R7, R7, 1      ; 0x3e4
 			STR R7, R0, 0; 0x3e6
 			NOP               ; 0x3e8
 			NOP               ; 0x3ea
 			BRnzp label63      ; 0x3ec
 		SEGMENT DataSegment62:
 			DATA2 4x3e ; 0x3ee

label63:
 			LEA R0, DataSegment63     ; 0x3f0
 			LDR R1, R0, 0 ; 0x3f2
 			ADD R1, R1, 1      ; 0x3f4
 			STR R1, R0, 0; 0x3f6
 			NOP               ; 0x3f8
 			NOP               ; 0x3fa
 			BRnzp label64      ; 0x3fc
 		SEGMENT DataSegment63:
 			DATA2 4x3f ; 0x3fe

label64:
 			LEA R0, DataSegment64     ; 0x400
 			LDR R2, R0, 0 ; 0x402
 			ADD R2, R2, 1      ; 0x404
 			STR R2, R0, 0; 0x406
 			NOP               ; 0x408
 			NOP               ; 0x40a
 			BRnzp label65      ; 0x40c
 		SEGMENT DataSegment64:
 			DATA2 4x40 ; 0x40e

label65:
 			LEA R0, DataSegment65     ; 0x410
 			LDR R3, R0, 0 ; 0x412
 			ADD R3, R3, 1      ; 0x414
 			STR R3, R0, 0; 0x416
 			NOP               ; 0x418
 			NOP               ; 0x41a
 			BRnzp label66      ; 0x41c
 		SEGMENT DataSegment65:
 			DATA2 4x41 ; 0x41e

label66:
 			LEA R0, DataSegment66     ; 0x420
 			LDR R4, R0, 0 ; 0x422
 			ADD R4, R4, 1      ; 0x424
 			STR R4, R0, 0; 0x426
 			NOP               ; 0x428
 			NOP               ; 0x42a
 			BRnzp label67      ; 0x42c
 		SEGMENT DataSegment66:
 			DATA2 4x42 ; 0x42e

label67:
 			LEA R0, DataSegment67     ; 0x430
 			LDR R5, R0, 0 ; 0x432
 			ADD R5, R5, 1      ; 0x434
 			STR R5, R0, 0; 0x436
 			NOP               ; 0x438
 			NOP               ; 0x43a
 			BRnzp label68      ; 0x43c
 		SEGMENT DataSegment67:
 			DATA2 4x43 ; 0x43e

label68:
 			LEA R0, DataSegment68     ; 0x440
 			LDR R6, R0, 0 ; 0x442
 			ADD R6, R6, 1      ; 0x444
 			STR R6, R0, 0; 0x446
 			NOP               ; 0x448
 			NOP               ; 0x44a
 			BRnzp label69      ; 0x44c
 		SEGMENT DataSegment68:
 			DATA2 4x44 ; 0x44e

label69:
 			LEA R0, DataSegment69     ; 0x450
 			LDR R7, R0, 0 ; 0x452
 			ADD R7, R7, 1      ; 0x454
 			STR R7, R0, 0; 0x456
 			NOP               ; 0x458
 			NOP               ; 0x45a
 			BRnzp label70      ; 0x45c
 		SEGMENT DataSegment69:
 			DATA2 4x45 ; 0x45e

label70:
 			LEA R0, DataSegment70     ; 0x460
 			LDR R1, R0, 0 ; 0x462
 			ADD R1, R1, 1      ; 0x464
 			STR R1, R0, 0; 0x466
 			NOP               ; 0x468
 			NOP               ; 0x46a
 			BRnzp label71      ; 0x46c
 		SEGMENT DataSegment70:
 			DATA2 4x46 ; 0x46e

label71:
 			LEA R0, DataSegment71     ; 0x470
 			LDR R2, R0, 0 ; 0x472
 			ADD R2, R2, 1      ; 0x474
 			STR R2, R0, 0; 0x476
 			NOP               ; 0x478
 			NOP               ; 0x47a
 			BRnzp label72      ; 0x47c
 		SEGMENT DataSegment71:
 			DATA2 4x47 ; 0x47e

label72:
 			LEA R0, DataSegment72     ; 0x480
 			LDR R3, R0, 0 ; 0x482
 			ADD R3, R3, 1      ; 0x484
 			STR R3, R0, 0; 0x486
 			NOP               ; 0x488
 			NOP               ; 0x48a
 			BRnzp label73      ; 0x48c
 		SEGMENT DataSegment72:
 			DATA2 4x48 ; 0x48e

label73:
 			LEA R0, DataSegment73     ; 0x490
 			LDR R4, R0, 0 ; 0x492
 			ADD R4, R4, 1      ; 0x494
 			STR R4, R0, 0; 0x496
 			NOP               ; 0x498
 			NOP               ; 0x49a
 			BRnzp label74      ; 0x49c
 		SEGMENT DataSegment73:
 			DATA2 4x49 ; 0x49e

label74:
 			LEA R0, DataSegment74     ; 0x4a0
 			LDR R5, R0, 0 ; 0x4a2
 			ADD R5, R5, 1      ; 0x4a4
 			STR R5, R0, 0; 0x4a6
 			NOP               ; 0x4a8
 			NOP               ; 0x4aa
 			BRnzp label75      ; 0x4ac
 		SEGMENT DataSegment74:
 			DATA2 4x4a ; 0x4ae

label75:
 			LEA R0, DataSegment75     ; 0x4b0
 			LDR R6, R0, 0 ; 0x4b2
 			ADD R6, R6, 1      ; 0x4b4
 			STR R6, R0, 0; 0x4b6
 			NOP               ; 0x4b8
 			NOP               ; 0x4ba
 			BRnzp label76      ; 0x4bc
 		SEGMENT DataSegment75:
 			DATA2 4x4b ; 0x4be

label76:
 			LEA R0, DataSegment76     ; 0x4c0
 			LDR R7, R0, 0 ; 0x4c2
 			ADD R7, R7, 1      ; 0x4c4
 			STR R7, R0, 0; 0x4c6
 			NOP               ; 0x4c8
 			NOP               ; 0x4ca
 			BRnzp label77      ; 0x4cc
 		SEGMENT DataSegment76:
 			DATA2 4x4c ; 0x4ce

label77:
 			LEA R0, DataSegment77     ; 0x4d0
 			LDR R1, R0, 0 ; 0x4d2
 			ADD R1, R1, 1      ; 0x4d4
 			STR R1, R0, 0; 0x4d6
 			NOP               ; 0x4d8
 			NOP               ; 0x4da
 			BRnzp label78      ; 0x4dc
 		SEGMENT DataSegment77:
 			DATA2 4x4d ; 0x4de

label78:
 			LEA R0, DataSegment78     ; 0x4e0
 			LDR R2, R0, 0 ; 0x4e2
 			ADD R2, R2, 1      ; 0x4e4
 			STR R2, R0, 0; 0x4e6
 			NOP               ; 0x4e8
 			NOP               ; 0x4ea
 			BRnzp label79      ; 0x4ec
 		SEGMENT DataSegment78:
 			DATA2 4x4e ; 0x4ee

label79:
 			LEA R0, DataSegment79     ; 0x4f0
 			LDR R3, R0, 0 ; 0x4f2
 			ADD R3, R3, 1      ; 0x4f4
 			STR R3, R0, 0; 0x4f6
 			NOP               ; 0x4f8
 			NOP               ; 0x4fa
 			BRnzp label80      ; 0x4fc
 		SEGMENT DataSegment79:
 			DATA2 4x4f ; 0x4fe

label80:
 			LEA R0, DataSegment80     ; 0x500
 			LDR R4, R0, 0 ; 0x502
 			ADD R4, R4, 1      ; 0x504
 			STR R4, R0, 0; 0x506
 			NOP               ; 0x508
 			NOP               ; 0x50a
 			BRnzp label81      ; 0x50c
 		SEGMENT DataSegment80:
 			DATA2 4x50 ; 0x50e

label81:
 			LEA R0, DataSegment81     ; 0x510
 			LDR R5, R0, 0 ; 0x512
 			ADD R5, R5, 1      ; 0x514
 			STR R5, R0, 0; 0x516
 			NOP               ; 0x518
 			NOP               ; 0x51a
 			BRnzp label82      ; 0x51c
 		SEGMENT DataSegment81:
 			DATA2 4x51 ; 0x51e

label82:
 			LEA R0, DataSegment82     ; 0x520
 			LDR R6, R0, 0 ; 0x522
 			ADD R6, R6, 1      ; 0x524
 			STR R6, R0, 0; 0x526
 			NOP               ; 0x528
 			NOP               ; 0x52a
 			BRnzp label83      ; 0x52c
 		SEGMENT DataSegment82:
 			DATA2 4x52 ; 0x52e

label83:
 			LEA R0, DataSegment83     ; 0x530
 			LDR R7, R0, 0 ; 0x532
 			ADD R7, R7, 1      ; 0x534
 			STR R7, R0, 0; 0x536
 			NOP               ; 0x538
 			NOP               ; 0x53a
 			BRnzp label84      ; 0x53c
 		SEGMENT DataSegment83:
 			DATA2 4x53 ; 0x53e

label84:
 			LEA R0, DataSegment84     ; 0x540
 			LDR R1, R0, 0 ; 0x542
 			ADD R1, R1, 1      ; 0x544
 			STR R1, R0, 0; 0x546
 			NOP               ; 0x548
 			NOP               ; 0x54a
 			BRnzp label85      ; 0x54c
 		SEGMENT DataSegment84:
 			DATA2 4x54 ; 0x54e

label85:
 			LEA R0, DataSegment85     ; 0x550
 			LDR R2, R0, 0 ; 0x552
 			ADD R2, R2, 1      ; 0x554
 			STR R2, R0, 0; 0x556
 			NOP               ; 0x558
 			NOP               ; 0x55a
 			BRnzp label86      ; 0x55c
 		SEGMENT DataSegment85:
 			DATA2 4x55 ; 0x55e

label86:
 			LEA R0, DataSegment86     ; 0x560
 			LDR R3, R0, 0 ; 0x562
 			ADD R3, R3, 1      ; 0x564
 			STR R3, R0, 0; 0x566
 			NOP               ; 0x568
 			NOP               ; 0x56a
 			BRnzp label87      ; 0x56c
 		SEGMENT DataSegment86:
 			DATA2 4x56 ; 0x56e

label87:
 			LEA R0, DataSegment87     ; 0x570
 			LDR R4, R0, 0 ; 0x572
 			ADD R4, R4, 1      ; 0x574
 			STR R4, R0, 0; 0x576
 			NOP               ; 0x578
 			NOP               ; 0x57a
 			BRnzp label88      ; 0x57c
 		SEGMENT DataSegment87:
 			DATA2 4x57 ; 0x57e

label88:
 			LEA R0, DataSegment88     ; 0x580
 			LDR R5, R0, 0 ; 0x582
 			ADD R5, R5, 1      ; 0x584
 			STR R5, R0, 0; 0x586
 			NOP               ; 0x588
 			NOP               ; 0x58a
 			BRnzp label89      ; 0x58c
 		SEGMENT DataSegment88:
 			DATA2 4x58 ; 0x58e

label89:
 			LEA R0, DataSegment89     ; 0x590
 			LDR R6, R0, 0 ; 0x592
 			ADD R6, R6, 1      ; 0x594
 			STR R6, R0, 0; 0x596
 			NOP               ; 0x598
 			NOP               ; 0x59a
 			BRnzp label90      ; 0x59c
 		SEGMENT DataSegment89:
 			DATA2 4x59 ; 0x59e

label90:
 			LEA R0, DataSegment90     ; 0x5a0
 			LDR R7, R0, 0 ; 0x5a2
 			ADD R7, R7, 1      ; 0x5a4
 			STR R7, R0, 0; 0x5a6
 			NOP               ; 0x5a8
 			NOP               ; 0x5aa
 			BRnzp label91      ; 0x5ac
 		SEGMENT DataSegment90:
 			DATA2 4x5a ; 0x5ae

label91:
 			LEA R0, DataSegment91     ; 0x5b0
 			LDR R1, R0, 0 ; 0x5b2
 			ADD R1, R1, 1      ; 0x5b4
 			STR R1, R0, 0; 0x5b6
 			NOP               ; 0x5b8
 			NOP               ; 0x5ba
 			BRnzp label92      ; 0x5bc
 		SEGMENT DataSegment91:
 			DATA2 4x5b ; 0x5be

label92:
 			LEA R0, DataSegment92     ; 0x5c0
 			LDR R2, R0, 0 ; 0x5c2
 			ADD R2, R2, 1      ; 0x5c4
 			STR R2, R0, 0; 0x5c6
 			NOP               ; 0x5c8
 			NOP               ; 0x5ca
 			BRnzp label93      ; 0x5cc
 		SEGMENT DataSegment92:
 			DATA2 4x5c ; 0x5ce

label93:
 			LEA R0, DataSegment93     ; 0x5d0
 			LDR R3, R0, 0 ; 0x5d2
 			ADD R3, R3, 1      ; 0x5d4
 			STR R3, R0, 0; 0x5d6
 			NOP               ; 0x5d8
 			NOP               ; 0x5da
 			BRnzp label94      ; 0x5dc
 		SEGMENT DataSegment93:
 			DATA2 4x5d ; 0x5de

label94:
 			LEA R0, DataSegment94     ; 0x5e0
 			LDR R4, R0, 0 ; 0x5e2
 			ADD R4, R4, 1      ; 0x5e4
 			STR R4, R0, 0; 0x5e6
 			NOP               ; 0x5e8
 			NOP               ; 0x5ea
 			BRnzp label95      ; 0x5ec
 		SEGMENT DataSegment94:
 			DATA2 4x5e ; 0x5ee

label95:
 			LEA R0, DataSegment95     ; 0x5f0
 			LDR R5, R0, 0 ; 0x5f2
 			ADD R5, R5, 1      ; 0x5f4
 			STR R5, R0, 0; 0x5f6
 			NOP               ; 0x5f8
 			NOP               ; 0x5fa
 			BRnzp label96      ; 0x5fc
 		SEGMENT DataSegment95:
 			DATA2 4x5f ; 0x5fe

label96:
 			LEA R0, DataSegment96     ; 0x600
 			LDR R6, R0, 0 ; 0x602
 			ADD R6, R6, 1      ; 0x604
 			STR R6, R0, 0; 0x606
 			NOP               ; 0x608
 			NOP               ; 0x60a
 			BRnzp label97      ; 0x60c
 		SEGMENT DataSegment96:
 			DATA2 4x60 ; 0x60e

label97:
 			LEA R0, DataSegment97     ; 0x610
 			LDR R7, R0, 0 ; 0x612
 			ADD R7, R7, 1      ; 0x614
 			STR R7, R0, 0; 0x616
 			NOP               ; 0x618
 			NOP               ; 0x61a
 			BRnzp label98      ; 0x61c
 		SEGMENT DataSegment97:
 			DATA2 4x61 ; 0x61e

label98:
 			LEA R0, DataSegment98     ; 0x620
 			LDR R1, R0, 0 ; 0x622
 			ADD R1, R1, 1      ; 0x624
 			STR R1, R0, 0; 0x626
 			NOP               ; 0x628
 			NOP               ; 0x62a
 			BRnzp label99      ; 0x62c
 		SEGMENT DataSegment98:
 			DATA2 4x62 ; 0x62e

label99:
 			LEA R0, DataSegment99     ; 0x630
 			LDR R2, R0, 0 ; 0x632
 			ADD R2, R2, 1      ; 0x634
 			STR R2, R0, 0; 0x636
 			NOP               ; 0x638
 			NOP               ; 0x63a
 			BRnzp label100      ; 0x63c
 		SEGMENT DataSegment99:
 			DATA2 4x63 ; 0x63e

label100:
 			LEA R0, DataSegment100     ; 0x640
 			LDR R3, R0, 0 ; 0x642
 			ADD R3, R3, 1      ; 0x644
 			STR R3, R0, 0; 0x646
 			NOP               ; 0x648
 			NOP               ; 0x64a
 			BRnzp label101      ; 0x64c
 		SEGMENT DataSegment100:
 			DATA2 4x64 ; 0x64e

label101:
 			LEA R0, DataSegment101     ; 0x650
 			LDR R4, R0, 0 ; 0x652
 			ADD R4, R4, 1      ; 0x654
 			STR R4, R0, 0; 0x656
 			NOP               ; 0x658
 			NOP               ; 0x65a
 			BRnzp label102      ; 0x65c
 		SEGMENT DataSegment101:
 			DATA2 4x65 ; 0x65e

label102:
 			LEA R0, DataSegment102     ; 0x660
 			LDR R5, R0, 0 ; 0x662
 			ADD R5, R5, 1      ; 0x664
 			STR R5, R0, 0; 0x666
 			NOP               ; 0x668
 			NOP               ; 0x66a
 			BRnzp label103      ; 0x66c
 		SEGMENT DataSegment102:
 			DATA2 4x66 ; 0x66e

label103:
 			LEA R0, DataSegment103     ; 0x670
 			LDR R6, R0, 0 ; 0x672
 			ADD R6, R6, 1      ; 0x674
 			STR R6, R0, 0; 0x676
 			NOP               ; 0x678
 			NOP               ; 0x67a
 			BRnzp label104      ; 0x67c
 		SEGMENT DataSegment103:
 			DATA2 4x67 ; 0x67e

label104:
 			LEA R0, DataSegment104     ; 0x680
 			LDR R7, R0, 0 ; 0x682
 			ADD R7, R7, 1      ; 0x684
 			STR R7, R0, 0; 0x686
 			NOP               ; 0x688
 			NOP               ; 0x68a
 			BRnzp label105      ; 0x68c
 		SEGMENT DataSegment104:
 			DATA2 4x68 ; 0x68e

label105:
 			LEA R0, DataSegment105     ; 0x690
 			LDR R1, R0, 0 ; 0x692
 			ADD R1, R1, 1      ; 0x694
 			STR R1, R0, 0; 0x696
 			NOP               ; 0x698
 			NOP               ; 0x69a
 			BRnzp label106      ; 0x69c
 		SEGMENT DataSegment105:
 			DATA2 4x69 ; 0x69e

label106:
 			LEA R0, DataSegment106     ; 0x6a0
 			LDR R2, R0, 0 ; 0x6a2
 			ADD R2, R2, 1      ; 0x6a4
 			STR R2, R0, 0; 0x6a6
 			NOP               ; 0x6a8
 			NOP               ; 0x6aa
 			BRnzp label107      ; 0x6ac
 		SEGMENT DataSegment106:
 			DATA2 4x6a ; 0x6ae

label107:
 			LEA R0, DataSegment107     ; 0x6b0
 			LDR R3, R0, 0 ; 0x6b2
 			ADD R3, R3, 1      ; 0x6b4
 			STR R3, R0, 0; 0x6b6
 			NOP               ; 0x6b8
 			NOP               ; 0x6ba
 			BRnzp label108      ; 0x6bc
 		SEGMENT DataSegment107:
 			DATA2 4x6b ; 0x6be

label108:
 			LEA R0, DataSegment108     ; 0x6c0
 			LDR R4, R0, 0 ; 0x6c2
 			ADD R4, R4, 1      ; 0x6c4
 			STR R4, R0, 0; 0x6c6
 			NOP               ; 0x6c8
 			NOP               ; 0x6ca
 			BRnzp label109      ; 0x6cc
 		SEGMENT DataSegment108:
 			DATA2 4x6c ; 0x6ce

label109:
 			LEA R0, DataSegment109     ; 0x6d0
 			LDR R5, R0, 0 ; 0x6d2
 			ADD R5, R5, 1      ; 0x6d4
 			STR R5, R0, 0; 0x6d6
 			NOP               ; 0x6d8
 			NOP               ; 0x6da
 			BRnzp label110      ; 0x6dc
 		SEGMENT DataSegment109:
 			DATA2 4x6d ; 0x6de

label110:
 			LEA R0, DataSegment110     ; 0x6e0
 			LDR R6, R0, 0 ; 0x6e2
 			ADD R6, R6, 1      ; 0x6e4
 			STR R6, R0, 0; 0x6e6
 			NOP               ; 0x6e8
 			NOP               ; 0x6ea
 			BRnzp label111      ; 0x6ec
 		SEGMENT DataSegment110:
 			DATA2 4x6e ; 0x6ee

label111:
 			LEA R0, DataSegment111     ; 0x6f0
 			LDR R7, R0, 0 ; 0x6f2
 			ADD R7, R7, 1      ; 0x6f4
 			STR R7, R0, 0; 0x6f6
 			NOP               ; 0x6f8
 			NOP               ; 0x6fa
 			BRnzp label112      ; 0x6fc
 		SEGMENT DataSegment111:
 			DATA2 4x6f ; 0x6fe

label112:
 			LEA R0, DataSegment112     ; 0x700
 			LDR R1, R0, 0 ; 0x702
 			ADD R1, R1, 1      ; 0x704
 			STR R1, R0, 0; 0x706
 			NOP               ; 0x708
 			NOP               ; 0x70a
 			BRnzp label113      ; 0x70c
 		SEGMENT DataSegment112:
 			DATA2 4x70 ; 0x70e

label113:
 			LEA R0, DataSegment113     ; 0x710
 			LDR R2, R0, 0 ; 0x712
 			ADD R2, R2, 1      ; 0x714
 			STR R2, R0, 0; 0x716
 			NOP               ; 0x718
 			NOP               ; 0x71a
 			BRnzp label114      ; 0x71c
 		SEGMENT DataSegment113:
 			DATA2 4x71 ; 0x71e

label114:
 			LEA R0, DataSegment114     ; 0x720
 			LDR R3, R0, 0 ; 0x722
 			ADD R3, R3, 1      ; 0x724
 			STR R3, R0, 0; 0x726
 			NOP               ; 0x728
 			NOP               ; 0x72a
 			BRnzp label115      ; 0x72c
 		SEGMENT DataSegment114:
 			DATA2 4x72 ; 0x72e

label115:
 			LEA R0, DataSegment115     ; 0x730
 			LDR R4, R0, 0 ; 0x732
 			ADD R4, R4, 1      ; 0x734
 			STR R4, R0, 0; 0x736
 			NOP               ; 0x738
 			NOP               ; 0x73a
 			BRnzp label116      ; 0x73c
 		SEGMENT DataSegment115:
 			DATA2 4x73 ; 0x73e

label116:
 			LEA R0, DataSegment116     ; 0x740
 			LDR R5, R0, 0 ; 0x742
 			ADD R5, R5, 1      ; 0x744
 			STR R5, R0, 0; 0x746
 			NOP               ; 0x748
 			NOP               ; 0x74a
 			BRnzp label117      ; 0x74c
 		SEGMENT DataSegment116:
 			DATA2 4x74 ; 0x74e

label117:
 			LEA R0, DataSegment117     ; 0x750
 			LDR R6, R0, 0 ; 0x752
 			ADD R6, R6, 1      ; 0x754
 			STR R6, R0, 0; 0x756
 			NOP               ; 0x758
 			NOP               ; 0x75a
 			BRnzp label118      ; 0x75c
 		SEGMENT DataSegment117:
 			DATA2 4x75 ; 0x75e

label118:
 			LEA R0, DataSegment118     ; 0x760
 			LDR R7, R0, 0 ; 0x762
 			ADD R7, R7, 1      ; 0x764
 			STR R7, R0, 0; 0x766
 			NOP               ; 0x768
 			NOP               ; 0x76a
 			BRnzp label119      ; 0x76c
 		SEGMENT DataSegment118:
 			DATA2 4x76 ; 0x76e

label119:
 			LEA R0, DataSegment119     ; 0x770
 			LDR R1, R0, 0 ; 0x772
 			ADD R1, R1, 1      ; 0x774
 			STR R1, R0, 0; 0x776
 			NOP               ; 0x778
 			NOP               ; 0x77a
 			BRnzp label120      ; 0x77c
 		SEGMENT DataSegment119:
 			DATA2 4x77 ; 0x77e

label120:
 			LEA R0, DataSegment120     ; 0x780
 			LDR R2, R0, 0 ; 0x782
 			ADD R2, R2, 1      ; 0x784
 			STR R2, R0, 0; 0x786
 			NOP               ; 0x788
 			NOP               ; 0x78a
 			BRnzp label121      ; 0x78c
 		SEGMENT DataSegment120:
 			DATA2 4x78 ; 0x78e

label121:
 			LEA R0, DataSegment121     ; 0x790
 			LDR R3, R0, 0 ; 0x792
 			ADD R3, R3, 1      ; 0x794
 			STR R3, R0, 0; 0x796
 			NOP               ; 0x798
 			NOP               ; 0x79a
 			BRnzp label122      ; 0x79c
 		SEGMENT DataSegment121:
 			DATA2 4x79 ; 0x79e

label122:
 			LEA R0, DataSegment122     ; 0x7a0
 			LDR R4, R0, 0 ; 0x7a2
 			ADD R4, R4, 1      ; 0x7a4
 			STR R4, R0, 0; 0x7a6
 			NOP               ; 0x7a8
 			NOP               ; 0x7aa
 			BRnzp label123      ; 0x7ac
 		SEGMENT DataSegment122:
 			DATA2 4x7a ; 0x7ae

label123:
 			LEA R0, DataSegment123     ; 0x7b0
 			LDR R5, R0, 0 ; 0x7b2
 			ADD R5, R5, 1      ; 0x7b4
 			STR R5, R0, 0; 0x7b6
 			NOP               ; 0x7b8
 			NOP               ; 0x7ba
 			BRnzp label124      ; 0x7bc
 		SEGMENT DataSegment123:
 			DATA2 4x7b ; 0x7be

label124:
 			LEA R0, DataSegment124     ; 0x7c0
 			LDR R6, R0, 0 ; 0x7c2
 			ADD R6, R6, 1      ; 0x7c4
 			STR R6, R0, 0; 0x7c6
 			NOP               ; 0x7c8
 			NOP               ; 0x7ca
 			BRnzp label125      ; 0x7cc
 		SEGMENT DataSegment124:
 			DATA2 4x7c ; 0x7ce

label125:
 			LEA R0, DataSegment125     ; 0x7d0
 			LDR R7, R0, 0 ; 0x7d2
 			ADD R7, R7, 1      ; 0x7d4
 			STR R7, R0, 0; 0x7d6
 			NOP               ; 0x7d8
 			NOP               ; 0x7da
 			BRnzp label126      ; 0x7dc
 		SEGMENT DataSegment125:
 			DATA2 4x7d ; 0x7de

label126:
 			LEA R0, DataSegment126     ; 0x7e0
 			LDR R1, R0, 0 ; 0x7e2
 			ADD R1, R1, 1      ; 0x7e4
 			STR R1, R0, 0; 0x7e6
 			NOP               ; 0x7e8
 			NOP               ; 0x7ea
 			BRnzp label127      ; 0x7ec
 		SEGMENT DataSegment126:
 			DATA2 4x7e ; 0x7ee

label127:
 			LEA R0, DataSegment127     ; 0x7f0
 			LDR R2, R0, 0 ; 0x7f2
 			ADD R2, R2, 1      ; 0x7f4
 			STR R2, R0, 0; 0x7f6
 			NOP               ; 0x7f8
 			NOP               ; 0x7fa
 			BRnzp label128      ; 0x7fc
 		SEGMENT DataSegment127:
 			DATA2 4x7f ; 0x7fe

label128:
 			LEA R0, DataSegment128     ; 0x800
 			LDR R3, R0, 0 ; 0x802
 			ADD R3, R3, 1      ; 0x804
 			STR R3, R0, 0; 0x806
 			NOP               ; 0x808
 			NOP               ; 0x80a
 			BRnzp label129      ; 0x80c
 		SEGMENT DataSegment128:
 			DATA2 4x80 ; 0x80e

label129:
 		LEA R0, DataSegment129
 		LDI R1, R0, spotcheck1$BASEREL
 		ADD R1, R1, -5
 		BRp finish
 		AND R0, R0, 0
 		AND R1, R1, 0
 		AND R2, R2, 0
 		AND R3, R3, 0
 		AND R4, R4, 0
 		AND R5, R5, 0
 		AND R6, R6, 0
 		AND R7, R7, 0
 		RET

 		finish:
 		LDI R1, R0, spotcheck1
 		LDI R2, R0, spotcheck2
 		LDI R3, R0, spotcheck3
 		LDI R4, R0, spotcheck4
 		LDI R5, R0, spotcheck5
 		LDI R6, R0, spotcheck6
 		LDI R7, R0, spotcheck7

 		halt:
 		BRNZP halt
 	SEGMENT DataSegment129:
 	spotcheck1: DATA2 4xE
 	spotcheck2: DATA2 4x15E
 	spotcheck3: DATA2 4x19E
 	spotcheck4: DATA2 4x20E
 	spotcheck5: DATA2 4x2aE
 	spotcheck6: DATA2 4x40E
 	spotcheck7: DATA2 4x80E
