;//ECE312 Fall 2002
;//Competition Benchmark
;//(C) 2002 Ashley Wise
;
;Takes 70243 instructions to complete
;Final PC should be x54
;
;Final registers:
; R7 = x6D70
; R6 = x3A44
; R5 = x31F2
; R4 = x2923
; R3 = x619A
; R2 = x57C0
; R1 = x15FC
; R0 = x4F8E

ORIGIN 0
SEGMENT CodeSegment:

        lea R7, DataSegment;                                    ; 0x00
        ;//load DataVector from segment table
        ldr R5, R7,  DataVector;                                ; 0x02
        ;//load DataSize from segment table
        ldr R6, R7, DataSize;                                   ; 0x04
        lshf R6, R6, 2;                                         ; 0x06
        add R6, R5, R6;                                         ; 0x08
        add R6, R6, nFloatSize;                                 ; 0x0A
        ;//Point R6 to last data
        ;//R0 = HoldRand
        ldr R3, R7, PrimeNum;                                   ; 0x0C

        ;//Initialize the DataVector with random numbers
RandLoop:
                ;//Generate a random number for the mantissa in the range 0-0x7FFF
                lshf R1, R0, 2;                                 ; 0x0E
                add R1, R1, R0;                                 ; 0x10
                add R1, R1, R3;                                 ; 0x12
                rshfl R1, R1, 1;                                ; 0x14
                str R1, R5, Float.Mantissa;                     ; 0x16
                add R0, R1, 0;                                  ; 0x18

                ;//Generate a random number for the sign (0 or 1) and exponent (0-0xFF)
                add R1, R1, R5;                                 ; 0x1A
                add R1, R1, R0;                                 ; 0x1C
                add R1, R1, R3;                                 ; 0x1E
                rshfl R2, R1, 8;                                ; 0x20
                and R2, R2, 4x0001;                             ; 0x22
                stb R2, R5, Float.Sign;                         ; 0x24
                stb R1, R5, Float.Exponent;                     ; 0x26

                add R5, R5, FloatSize;                          ; 0x28
                ;//R4 = R6 - R5;
                not R4, R5;                                     ; 0x2A
                add R4, R4, 1;                                  ; 0x2C
                add R4, R4, R6;                                 ; 0x2E

                        ;//DataVectorEnd >= R5
                ;//if((signed short)R4 >= 0)    goto RandLoop;
                BRzp RandLoop                                   ; 0x30

        ldr R0, R7, DataVector; //p                             ; 0x32
        ldr R1, R7, DataSize;   //r                             ; 0x34
        lshf R1, R1, 2;                                         ; 0x36
        add R1, R0, R1;                                         ; 0x38
        add R1, R1, nFloatSize;                                 ; 0x3A
        add R6, R1, FloatSize;                                  ; 0x3C
        add R6, R6, nStackSize; //Stack pointer                 ; 0x3E
        jsr QuickSort;                                          ; 0x40

        ;//spot check 8 locations
        lea R7, SpotCheck;                                      ; 0x42
        ldi R0, R7, SpotCheck[0]$BASEREL;                       ; 0x44
        ldi R1, R7, SpotCheck[1]$BASEREL;                       ; 0x46
        ldi R2, R7, SpotCheck[2]$BASEREL;                       ; 0x48
        ldi R3, R7, SpotCheck[3]$BASEREL;                       ; 0x4A
        ldi R4, R7, SpotCheck[4]$BASEREL;                       ; 0x4C
        ldi R5, R7, SpotCheck[5]$BASEREL;                       ; 0x4E
        ldi R6, R7, SpotCheck[6]$BASEREL;                       ; 0x50
        ldi R7, R7, SpotCheck[7]$BASEREL;                       ; 0x52

Halt:
        brnzp Halt;                                             ; 0x54

;//p in R0
;//r in R1
;//q in R2
;//StackPointer in R6
;//return address in R7
QuickSort:
        add R6, R6, StackSize;                                  ; 0x56

        str R7, R6, QSStack.ReturnAddress;                      ; 0x58
        str R0, R6, QSStack.p;                                  ; 0x5A
        str R1, R6, QSStack.r;                                  ; 0x5C

        jsr Partition;  //R2 = q                                ; 0x5E

        str R2, R6, QSStack.q;                                  ; 0x60
        ldr R0, R6, QSStack.p;                                  ; 0x62

        add R1, R2, 0                                           ; 0x64
        ;//The first QS uses (p,q) for (p,r)    
        ;//R3 = R2 - R0;
        not R3, R0;                                             ; 0x66
        add R3, R3, R2;                                         ; 0x68
        add R3, R3, 1;                                          ; 0x6A

                ;//q > p, do first quicksort
        ;//if((signed short)R3 <= 0)    goto DontFirstQS;
        brnz DontFirstQS;                                       ; 0x6C
                jsr QuickSort;                                  ; 0x6E

DontFirstQS:
        ldr R1, R6, QSStack.r;                                  ; 0x70
        ldr R2, R6, QSStack.q;                                  ; 0x72

        add R0, R2, FloatSize                                   ; 0x74
        ;//The second QS uses (q+1,r) for (p,r)
        ;//R3 = R1 - R2;
        not R3, R0;                                             ; 0x76
        add R3, R3, R1;                                         ; 0x78
        add R3, R3, 1;                                          ; 0x7A

                ;//r > q+1, do the second quicksort
        ;//if((signed short)R3 <= 0)    goto DontSecondQS;
        brnz DontSecondQS                                       ; 0x7C
                jsr QuickSort;                                  ; 0x7E

DontSecondQS:
        ldr R7, R6, QSStack.ReturnAddress;                      ; 0x80
        add R6, R6, nStackSize;                                 ; 0x82
        ret;                                                    ; 0x84

;//p/i in R0
;//r/j in R1
;//q is returned in R2
;//DataSegment in r5 -> X and Temp
;//R2, R3, R4 store values X.Sign, X.Exponent, and X.Mantissa
;//R5 stores values from Data
;//StackPointer in R6
;//return address in R7
Partition:

        lea R5, DataSegment                                     ; 0x86
        ;//X = Data[R0 - DataVector];
        ldb R2, R0, Float.Sign;                                 ; 0x88
        ldb R3, R0, Float.Exponent;                             ; 0x8A
        ldr R4, R0, Float.Mantissa;                             ; 0x8C
        stb R2, R5, X.Sign;                                     ; 0x8E
        stb R3, R5, X.Exponent;                                 ; 0x90
        str R4, R5, X.Mantissa;                                 ; 0x92

        add R0, R0, nFloatSize;                                 ; 0x94
        add R1, R1, FloatSize;                                  ; 0x96

PartitionLoop:
        ;//R5 already holds &DataSegment from either path
        ldb R2, R5, X.Sign;                                     ; 0x98
        ldb R3, R5, X.Exponent;                                 ; 0x9A
        ldr R4, R5, X.Mantissa;                                 ; 0x9C
        ;//Not them for later subtraction
        not R2, R2;                                             ; 0x9E
        not R3, R3;                                             ; 0xA0
        not R4, R4;                                             ; 0xA2

Start_i_Loop:   ;//Loop until we find a Data[i] that is >= X
                add R0, R0, FloatSize;                          ; 0xA4

                ;//*** Start by checking sign

                ldb R5, R0, Float.Sign;                         ; 0xA6
                ;//R5 = R5 - R2;
                add R5, R5, R2;                                 ; 0xA8
                add R5, R5, 1;                                  ; 0xAA

                        ;//Data[i].Sign > X.Sign
                ;//if((signed short)R5 > 0)     goto Start_i_Loop;      //Data[i] is negative, X is positive, continue
                brp Start_i_Loop;                               ; 0xAC

                        ;//Data[i].Sign < X.Sign
                ;//if((signed short)R5 < 0)     goto End_i_Loop;        //Data[i] is positive, X is negative, break
                brn End_m_i_Loop                                ; 0xAE

                add R5, R2, 1;                                  ; 0xB0

                        ;//Data[i].Sign == 0
                ;//if(R5 != 0)  goto i_Loop_Else;       //both are negative
                brnp i_Loop_Else                                ; 0xB2

                        ;//Both are positive

                        ;//*** Then check exponent

                        ldb R5, R0, Float.Exponent;             ; 0xB4
                        ;//R5 = R5 - R3;                        
                        add R5, R5, R3;                         ; 0xB6
                        add R5, R5, 1;                          ; 0xB8

                                ;//Data[i].Exponent > X.Exponent
                        ;//if((signed short)R5 > 0)     goto End_i_Loop;        //Data[i] is bigger,    break
                        brp End_m_i_Loop                        ; 0xBA

                                ;//Data[i].Exponent < X.Exponent
                        ;//if((signed short)R5 < 0)     goto Start_i_Loop;      //Data[i] is smaller,   continue
                        brn Start_i_Loop                        ; 0xBC

                                ;//*** Then Check Mantissa

                                ldr R5, R0, Float.Mantissa;     ; 0xBE
                                ;//R5 = R5 - R4;                
                                add R5, R5, R4;                 ; 0xC0
                                add R5, R5, 1;                  ; 0xC2

                                        ;//Data[i].Mantissa < X.Mantissa
                                ;//if((signed short)R5 < 0)     goto Start_i_Loop;      //Data[i] is smaller,   continue
                                brn Start_i_Loop;               ; 0xC4

                                ;//if((signed short)R5 >= 0)    goto End_i_Loop;        //Data[i] is bigger or same,    break;
                                brnzp End_m_i_Loop;             ; 0xC6

i_Loop_Else:    ;//both are negative

                        ;//*** Then check exponent

                        ldb R5, R0, Float.Exponent;             ; 0xC8
                        ;//R5 = R5 - R3;                        
                        add R5, R5, R3;                         ; 0xCA
                        add R5, R5, 1;                          ; 0xCC

                                ;//Data[i].Exponent > X.Exponent
                        ;//if((signed short)R5 > 0)     goto Start_i_Loop;      //Data[i] is smaller,   continue
                        brp Start_i_Loop;                       ; 0xCE

                                ;//Data[i].Exponent < X.Exponent
                        ;//if((signed short)R5 < 0)     goto End_i_Loop;        //Data[i] is bigger,    break
                        brn End_m_i_Loop;                       ; 0xD0

                                ;//*** Then Check Mantissa

                                ldr R5, R0, Float.Mantissa;     ; 0xD2
                                ;//R5 = R5 - R4;
                                add R5, R5, R4;                 ; 0xD4
                                add R5, R5, 1;                  ; 0xD6

                                        ;//Data[i].Mantissa > X.Mantissa
                                ;//if((signed short)R5 > 0)     goto Start_i_Loop;      //Data[i] is smaller,   continue
                                brp Start_i_Loop;               ; 0xD8

                                ;//if((signed short)R5 <= 0)    goto End_i_Loop;        //Data[i] is bigger or same,    break;

End_m_i_Loop:
Start_j_Loop:   ;//Loop until we find an Data[j] that is <= X
                add R1, R1, nFloatSize;                         ; 0xDA

                ;//*** Start by checking sign

                ldb R5, R1, Float.Sign;                         ; 0xDC
                ;//R5 = R5 - R2;
                add R5, R5, R2;                                 ; 0xDE
                add R5, R5, 1;                                  ; 0xE0

                        ;//Data[j].Sign > X.Sign
                ;//if((signed short)R5 > 0)     goto End_j_Loop;        //Data[j] is negative, X is positive, break
                brp End_m_j_Loop;                               ; 0xE2

                        ;//Data[j].Sign < X.Sign
                ;//if((signed short)R5 < 0)     goto Start_j_Loop;      //Data[j] is positive, X is negative, continue
                brn Start_j_Loop;                               ; 0xE4

                add R5, R2, 1;                                  ; 0xE6

                        ;//Data[j].Sign == 0
                ;//if(R5 != 0)  goto j_Loop_Else;       //both are negative
                brnp j_Loop_Else                                ; 0xE8

                        ;//Both are positive

                        ;//*** Then check exponent

                        ldb R5, R1, Float.Exponent;             ; 0xEA
                        ;//R5 = R5 - R3;
                        add R5, R5, R3;                         ; 0xEC
                        add R5, R5, 1;                          ; 0xEE

                                ;//Data[j].Exponent > X.Exponent
                        ;//if((signed short)R5 > 0)     goto Start_j_Loop;      //Data[j] is bigger,    continue
                        brp Start_j_Loop;                       ; 0xF0

                                ;//Data[j].Exponent < X.Exponent
                        ;//if((signed short)R5 < 0)     goto End_j_Loop;        //Data[j] is smaller,   break
                        brn End_m_j_Loop;                       ; 0xF2

                                ;//*** Then Check Mantissa

                                ldr R5, R1, Float.Mantissa;     ; 0xF4
                                ;//R5 = R5 - R4;                
                                add R5, R5, R4;                 ; 0xF6
                                add R5, R5, 1;                  ; 0xF8

                                        ;//Data[j].Mantissa > X.Mantissa
                                ;//if((signed short)R5 > 0)     goto Start_j_Loop;      //Data[j] is bigger,    continue
                                brp Start_j_Loop;               ; 0xFA

                                ;//if((signed short)R5 <= 0)    goto End_j_Loop;        //Data[j] is smaller or same,   break;
                                brnzp End_m_j_Loop;             ; 0xFC

j_Loop_Else:    ;//both are negative

                        ;//*** Then check exponent

                        ldb R5, R1, Float.Exponent;             ; 0xFE
                        ;//R5 = R5 - R3;
                        add R5, R5, R3;                         ; 0x100
                        add R5, R5, 1;                          ; 0x102

                                ;//Data[j].Exponent > X.Exponent
                        ;//if((signed short)R5 > 0)     goto End_j_Loop;        //Data[j] is smaller,   break
                        brp End_m_j_Loop;                       ; 0x104

                                ;//Data[j].Exponent < X.Exponent
                        ;//if((signed short)R5 < 0)     goto Start_j_Loop;      //Data[j] is bigger,    continue
                        brn Start_j_Loop;                       ; 0x106

                                ;//*** Then Check Mantissa

                                ldr R5, R1, Float.Mantissa;     ; 0x108
                                ;//R5 = R5 - R4;                
                                add R5, R5, R4;                 ; 0x10A
                                add R5, R5, 1;                  ; 0x10C

                                        ;//Data[j].Mantissa < X.Mantissa
                                ;//if((signed short)R5 < 0)     goto Start_j_Loop;      //Data[j] is bigger,    continue
                                brn Start_j_Loop;               ; 0x10E

                                ;//if((signed short)R5 >= 0)    goto End_j_Loop;        //Data[j] is smaller or same,   break;

End_m_j_Loop:
        ;//R2 = R1 - R0;
        not R2, R0;                                             ; 0x110
        add R2, R2, R1                                          ; 0x112
        add R2, R2, 1;                                          ; 0x114

                ;//j > i
        ;//if((signed short)R2 <= 0)    goto DonePartition;
        brnz DonePartition;                                     ; 0x116

                ;//Swap Data[i] and Data[j]
                lea R5, DataSegment;                            ; 0x118

                ;//Temp = Data[R0 - DataVector];
                ldb R2, R0, Float.Sign;                         ; 0x11A
                ldb R3, R0, Float.Exponent;                     ; 0x11C
                ldr R4, R0, Float.Mantissa;                     ; 0x11E
                stb R2, R5, Temp.Sign;                          ; 0x120
                stb R3, R5, Temp.Exponent;                      ; 0x122
                str R4, R5, Temp.Mantissa;                      ; 0x124

                ;//Data[R0 - DataVector] = Data[R1 - DataVector];
                ldb R2, R1, Float.Sign;                         ; 0x126
                ldb R3, R1, Float.Exponent;                     ; 0x128
                ldr R4, R1, Float.Mantissa;                     ; 0x12A
                stb R2, R0, Float.Sign;                         ; 0x12C
                stb R3, R0, Float.Exponent;                     ; 0x12E
                str R4, R0, Float.Mantissa;                     ; 0x130

                ;//Data[R1 - DataVector] = Temp;
                ldb R2, R5, Temp.Sign;                          ; 0x132
                ldb R3, R5, Temp.Exponent;                      ; 0x134
                ldr R4, R5, Temp.Mantissa;                      ; 0x136
                stb R2, R1, Float.Sign;                         ; 0x138
                stb R3, R1, Float.Exponent;                     ; 0x13A
                str R4, R1, Float.Mantissa;                     ; 0x13C

                brnzp PartitionLoop;                            ; 0x13E

DonePartition:
        add R2, R1, 0;  //return q                              ; 0x140
        ret;                                                    ; 0x142

SEGMENT DataSegment:
DataVector: DATA2 4x0400
DataSize: DATA2 256
PrimeNum: DATA2 4x9EC3
X: STRUCT Float ?
Temp: STRUCT Float ?
;//For 8-255
;SpotCheck:   Data2[] 4x0402, 4x0406, 4x040A, 4x041E, 4x0412, 4x0416, 4x041A, 4x041E
;//For 256-511
SpotCheck:      Data2[] 4x0402, 4x0486, 4x050A, 4x0582, 4x060E, 4x0686, 4x070A, 4x07FE
;//For 512-1023
;//SpotCheck:   Data2[] 4x0402, 4x0606, 4x070A, 4x0802, 4x090E, 4x0A06, 4x0B0A, 4x0BFE
;//For 1024+
;//SpotCheck:   Data2[] 4x0402, 4x0706, 4x0A0A, 4x0C02, 4x0E0E, 4x1006, 4x120A, 4x13FE

;//The structure of the float type
STRUCTDEF Float
        Sign:   DATA1 ?
        Exponent:       DATA1 ?
        Mantissa:       DATA2 ?
END
DEFINE  FloatSize 4
DEFINE  nFloatSize -4

;//The structure of the QS stack type
STRUCTDEF QSStack
        ReturnAddress:  DATA2 ?
        p:      DATA2 ?
        r:      DATA2 ?
        q:      DATA2 ?
END
DEFINE  StackSize 8
DEFINE  nStackSize -8

