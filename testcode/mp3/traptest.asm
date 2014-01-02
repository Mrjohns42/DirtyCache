ORIGIN 0
SEGMENT CODE:
	TRAP cagey;

loop:
	BRNZP loop	; If we get here, then TRAP and RET work.

weasel:
	LDR R6, R0, gooddata
	RET

	; Desired output register: R6 should contain 0x600D.
	
cagey: 		DATA2 weasel
gooddata:	DATA2 4x600D
