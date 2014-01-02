ORIGIN 0
SEGMENT CodeSegment:

ADD R6, R0, 6
LEA R5, jump
LEA R4, down
loop:
JMP R5
down:
BRn halt
BRnzp loop

halt:
BRnzp halt

jump:
ADD R6, R6, -1
JMP R4
