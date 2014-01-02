; This test is designed to debug an error in the arbitor/cache for mp22-final.asm
; This code is similar to mp22-test.asm but with LDI/STI replaced
ORIGIN 0
SEGMENT CodeSegment:

Start:
    ADD R3, R3, 5
    LDR R6, R0, MESSAGE2 ; R6 = xEA78
    NOP
    NOP
    NOP
    NOP
    NOP
    LDR R2, R0, PTR1     ; R2 = &(MESSAGE1)
    LDR R5, R2, 0        ; R5 = xBADD
    ADD R6, R5, R6       ; R6 = xA555
    LDR R3, R0, PTR2     ; R3 = &(STORAGE1)
    STR R6, R3, 0        ; (STORAGE1) = xA555 
    AND R3, R3, 0
Halt:
    BRnzp Halt

MESSAGE2: DATA2 4xEA78
PTR1: DATA2 MESSAGE1
MESSAGE1: DATA2 4xBADD
PADDING: DATA2 4x8888
PTR2: DATA2 STORAGE1
PTR3: DATA2 STORAGE2
STORAGE1: DATA2 ?
STORAGE2: DATA2 ?

; Code from mp22-final.asm that chokes
;   ADD R6, R5, R6
;   LDI R5, R0, G40
;   ADD R6, R5, R6
;   STI R6, R0, G42
;   AND R3, R3, 0