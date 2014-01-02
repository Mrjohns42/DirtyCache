; Hans C. Anderson
; hcander2
; ECE 411
; MP2- fact! with imm add

; This program calculates x! (hard set, see below)

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
    AND R1, R0, R0
    ADD R0, R0, -2
    BRnz END_WHILE1
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
END_WHILE1:
    STR R1, R7, RESULT

HALT:
    BRnzp HALT

RESULT:     DATA2 4x0000

; Change this for x!
NUM:        DATA2 4x0007

