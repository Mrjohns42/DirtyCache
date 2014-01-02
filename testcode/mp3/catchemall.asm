ORIGIN 0
SEGMENT CodeSegment:

ADD R5, R0, 4
loop:
TRAP PKMN
LDR R6, R0, PKMN
ADD R6, R6, 4
STR R6, R0, PKMN
ADD R5, R5, -1
BRp loop

halt:
BRnzp halt

PKMN: DATA2 pikachu

pikachu:
ADD R4, R0, 1
RET

charmander:
ADD R3, R0, 1
RET

squirtle:
ADD R2, R0, 1
RET

bulbasaur:
ADD R1, R0, 1
RET
