; Hans C. Anderson
; hcander2
; ECE 411

; This does basic non-store calculation of x!

SEGMENT  CodeSegment:

    LDR R0, R0, NUM
    AND R1, R0, R0
    ADD R0, R0, -2
    BRnz HALT
WHILE1:
    AND R2, R0, R0
    AND R3, R1, R1
    BRnz END_WHILE2
WHILE2:
    ADD R1, R1, R3
    ADD R2, R2, -1
    BRp WHILE2
END_WHILE2:
    ADD R0, R0, -1
    BRp WHILE1

HALT:
    BRnzp HALT

; Change this for x!
NUM:        DATA2 4x0007

