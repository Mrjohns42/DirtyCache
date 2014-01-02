ORIGIN 0
	LEA R6, routine1
	JSRR R6
	LEA R6, routine2
	JSRR R6

halt:
	BRnzp halt

routine1:
	ADD R0, R0, 1
	RET
routine2:
	ADD R1, R1, 1
	RET

good: DATA2 4x600D
buffer: DATA2 4x0000
