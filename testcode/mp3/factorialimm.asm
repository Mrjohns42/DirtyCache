;; Test program designed to calculate 5! on the LC-3ba.
;; by Matt Tischer
SEGMENT CodeSegment:

;; R1 is designed to hold the "argument" whose factorial is being
;; calculated.
;; R2 is a temporary register used for multiplication, as is R3.
;; R6 holds the result of the multiplications (and the final
;; factorial, once it is calculated).
;; R7 contains the constant -1, for use in decrementing loop
;; counters.

;; Load registers with necessary constants.
    ADD R1, R0, 5
    ADD R6, R0, 1
    ADD R7, R0, -1
    BRnzp MAINLOOP

;; Data used in the program.
ARGUMENT:   DATA2 4x0005
ONE:        DATA2 4x0001
MINUSONE:   DATA2 4xFFFF

;; Our main strategy here is to multiply R6 by the current value
;; in R1, and decrement R1 once this multiplication is done.
;; This will iteratively calculate the factorial.

MAINLOOP:
;; Move the values that need to be multiplied into R2 and R3.
;; This is necessary because we're doing multiplication by repeated
;; addition, so we must use one register (R2) as a loop counter for
;; the addition and another register (R3) as the value to add (so we
;; don't just double the result each time we add it to itself). 
    ADD R2, R1, R0
    ADD R3, R6, R0

;; Multiply R6 by R1 by adding the value in R3 (= R6) R2-1 (= R1-1) times
;; to R6.
MULTIPLY:

;; Decrement R2 and jump if it's zero.
;; This prevents any addition when multiplication by 1 is supposed
;; to happen.
    ADD R2, R2, R7
    BRz MULTIPLY_END

;; Otherwise, add R3 to R6 and loop.
    ADD R6, R6, R3
    BRnzp MULTIPLY

MULTIPLY_END:
;; Decrement R1 and jump if we still need to multiply out some part of
;; the factorial.  If it is zero, we're done.
    ADD R1, R1, R7
    BRz HALT
    BRnzp MAINLOOP

;; Our final instruction: the infinite loop.
HALT:
    BRnzp HALT
