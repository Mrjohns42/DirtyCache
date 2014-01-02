	;; Refer to the LC-3b manual for the operation of each
	;; instruction.  (LD, ADD, NOT, 
SEGMENT  CodeSegment:
	;; R0 is assumed to contain zero, because of the construction
	;;  of the register file.  (After reset, all registers contain
	;;  zero.)
	
	;; Note that the comments in this file should not be taken as
	;;an example of good commenting style!!  They are merely provided
	;;in an effort to help you understand the assembly style.

   ADD R0, R0, R0
   BRnzp HERE
   DATA2 4x0001
   DATA2 4x0002
HERE:
   LDR  R1, R0, 2		; R1 <= 1
	;; Note that the "ONE" above is a data label.  It is defined near
	;;  the bottom of the file.
   LDR  R2, R0, 3		; R2 <= 2
        
   ADD R3, R1, R2		; R4 <= R3 + R2
                        
HALT:				; Infinite loop to keep the processor
    BRnzp HALT			; from trying to execute the data below.
				; Your own programs should also make use
				; of an infinite loop at the end.
ONE:	DATA2 4x0001
TWO:	DATA2 4x0002
THREE:	DATA2 4x0003
EIGHT:	DATA2 4x0008
RESULT:	DATA2 4x0000
GOOD:	DATA2 4x600D



