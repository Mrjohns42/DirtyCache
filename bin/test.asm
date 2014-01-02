; Desired Register Values:
 ; R7 - 0x1a
 ; R6 - 0x10
 ; R5 - 0xc
 ; R4 - 0xb
 ; R3 - 0xa
 ; R2 - 0x9
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
 		LEA R0, DataSegment21
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
 	SEGMENT DataSegment21:
 	spotcheck1: DATA2 4xE
 	spotcheck2: DATA2 4x3E
 	spotcheck3: DATA2 4x4E
 	spotcheck4: DATA2 4x5E
 	spotcheck5: DATA2 4x6E
 	spotcheck6: DATA2 4xaE
 	spotcheck7: DATA2 4x14E
