ORIGIN 0
SEGMENT CODE:
	JSR FIRST
	LEA R6, SECOND
	JSRR R6

LOOP:
	BRnzp LOOP	; If we get here, control flow works.

SECOND:
	LDR R2, R0, GOOD
	RET

FIRST:
	LDR R1, R0, GOOD
	RET

	; Desired output registers:
	; R1-2 should contain 0x600D.
	
GOOD: DATA2 4x600D
