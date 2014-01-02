ORIGIN 0
SEGMENT CODE:
	ADD R1, R1, 6		;R1 has 0x0006
	LSHF R1, R1, 12		;R1 has 0x6000
	ADD R1, R1, 13		;R1 has 0x600D
	ADD R2, R2, -1		;R2 has 0xFFFF
	AND R2, R2, 13		;R2 has 0x000D
	LDR R7, R0, VAL0	;R7 has 0x6000
	ADD R2, R2, R7		;R2 has 0x600D
	AND R7, R7, R0		;Clear R7.
	AND R3, R1, R2		;R3 has 0x600D
	ADD R4, R4, -1		;R4 has 0xFFFF
	RSHFA R4, R4, 12	;R4 should be unchanged.
	AND R4, R4, R3		;R4 has 0x600D
	ADD R5, R5, -1		;R5 has 0xFFFF
	RSHFL R5, R5, 12	;R5 has 0x000F

LOOP:
	BRnzp LOOP

	; Desired output registers: R0 should be
	; 0, R1-R4 should contain 0x600D, and R5
	; should contain 0x000F.
	
	VAL0:	DATA2 4x6000
