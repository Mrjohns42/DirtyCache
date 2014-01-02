;Test code for LDI/STI, LDB/STB, SHFT

SEGMENT CodeSegment:
    LDI R1, R0, PTR1 ; R1 <- BADD
    ADD R0, R0, 1 ; R0 <- 1
    LDB R2, R0, MESSAGE2 ; R2 <- 00A5
    AND R0, R0, 0 ; R0 <- 0
    LDB R3, R0, MESSAGE2 ; R3 <- 0055
    LSHF R2, R2, 8 ; R2 <- A500
    ADD R2, R2, R3 ; R2 <- A555
    STI R1, R0, PTR2 ; STORAGE1 <- BADD
    LEA R3, PTR3 ; R2 <- ADDR(PTR3)
    LDR R3, R3, 0 ; R3 <- PTR3
    STB R2, R3, 0 ; STORAGE2 <- 55
    RSHFL R2, R2, 8; R2 <- 00A5
    STB R2, R3, 1 ; STORAGE2 <- A5(55)
    LDR R0, R3, 0 ; R0 <- A555

HALT:
    BRnzp HALT


MESSAGE2: DATA2 4xA555
PTR1: DATA2 MESSAGE1
MESSAGE1: DATA2 4xBADD
PADDING: DATA2 4x8888
PTR2: DATA2 STORAGE1
PTR3: DATA2 STORAGE2
STORAGE1: DATA2 ?
STORAGE2: DATA2 ?
