; Hans C. Anderson
; hcander2
; ECE 411
; MP1- 5!

; This program calculates x! (hard set to 5 for MP1)

; Psudocode:
; num = x;
; tot = num;
; num = num - 2;
; while(num > 0) {
;   tmp = num;
;   sub = tot;
;   while(tmp > 0) {
;       tot = tot + sub;
;       tmp = tmp + -1;
;   }
;   num = num + -1;
; }

; Registers:
; R0 - num
; R1 - tot
; R2 - tmp
; R3 - sub
; R4 - (-1)
; R5 - (-2)
; R7 - (0)

SEGMENT  CodeSegment:

    LDR R0, R0, NUM
    LDR R4, R4, NEG_ONE
    LDR R5, R5, NEG_TWO
    AND R1, R0, R0
    ADD R0, R0, R5
    BRnz END_WHILE1
WHILE1:
    AND R2, R0, R0
    AND R3, R1, R1
    BRnz END_WHILE2
WHILE2:
    ADD R1, R1, R3
    ADD R2, R2, R4
    BRp WHILE2
END_WHILE2:
    ADD R0, R0, R4
    BRp WHILE1
END_WHILE1:
    STR R1, R7, RESULT

HALT:
    BRnzp HALT

NEG_ONE:    DATA2 4XFFFF
NEG_TWO:    DATA2 4XFFFE
RESULT:     DATA2 4x0000

; Change this for x!
NUM:        DATA2 4x0005

