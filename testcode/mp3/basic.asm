; Hans C. Anderson
; hcander2
; ECE 411

; This does basic non-store calculation of x!
; Result is in R1
; (x07)! = x13B0

SEGMENT  CodeSegment:

    LDR R0, R0, NUM ; R0 <= x07
    AND R1, R0, R0  ; R1 <= x07
    ADD R0, R0, -2  ; R0 <= x05
    BRnz HALT       ; Not taken
WHILE1:
    AND R2, R0, R0  ; R2 <= x05, x04
    AND R3, R1, R1  ; R3 <= x07, x2A
    BRnz END_WHILE2 ; Not taken, NT
WHILE2:
    ADD R1, R1, R3  ; R1 <= x0E, x15, x1C, x23, x2A
    ADD R2, R2, -1  ; R2 <= x04, x03, x02, x01, x00
    BRp WHILE2      ; Br taken , T  , T  , T  , NT
END_WHILE2:
    ADD R0, R0, -1  ; R0 <= x04
    BRp WHILE1      ; Branch to WHILE1

HALT:
    BRnzp HALT

; Change this for x!
NUM:        DATA2 4x0007

