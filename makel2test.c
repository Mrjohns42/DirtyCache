#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	int numlabels = 64;
	if(argc <= 2)
	{
		printf("usage: ./makel2test [filename] [number of labels]\n");
		return 0;
	}
	numlabels = atoi(argv[2]);
	if(numlabels < 1)
	{
		printf("you must make at least one label\n");
		return 0;
	}

	FILE* fp;
	fp  = fopen(argv[1], "w+");
	if(fp == NULL)
	{
		return -1;
	}
	fprintf(fp, "; Desired Register Values:\n \
; R7 - 0x%x\n \
; R6 - 0x%x\n \
; R5 - 0x%x\n \
; R4 - 0x%x\n \
; R3 - 0x%x\n \
; R2 - 0x%x\n \
; R1 - 0x6\n", numlabels+6, numlabels/2+6, numlabels/3+6, numlabels/4+6, 
	numlabels/5+6, numlabels/6+6);
	fprintf(fp, "ORIGIN 0\n SEGMENT CodeSegment:\n");

	int i = 0;
	while(i < numlabels+1)
	{
		fprintf(fp, "label%d:\n \
			LEA R0, DataSegment%d     ; 0x%x\n \
			LDR R%d, R0, 0 ; 0x%x\n \
			ADD R%d, R%d, 1      ; 0x%x\n \
			STR R%d, R0, 0; 0x%x\n \
			NOP               ; 0x%x\n \
			NOP               ; 0x%x\n \
			BRnzp label%d      ; 0x%x\n \
		SEGMENT DataSegment%d:\n \
			DATA2 4x%x ; 0x%x\n\n",
			i, 
			i, 16*i, 
			i%7+1, 16*i+2, 
			i%7+1, i%7+1, 16*i+4,
			i%7+1, 16*i+6, 
			16*i+8,
			16*i+10, 
			i+1, 16*i+12,
			i,
			i,16*i+14);
		i++;
	}
	fprintf(fp, "label%d:\n \
		LEA R0, DataSegment%d\n \
		LDI R1, R0, spotcheck1$BASEREL\n \
		ADD R1, R1, -5\n \
		BRp finish\n \
		AND R0, R0, 0\n \
		AND R1, R1, 0\n \
		AND R2, R2, 0\n \
		AND R3, R3, 0\n \
		AND R4, R4, 0\n \
		AND R5, R5, 0\n \
		AND R6, R6, 0\n \
		AND R7, R7, 0\n \
		RET\n\n \
		finish:\n \
		LDI R1, R0, spotcheck1\n \
		LDI R2, R0, spotcheck2\n \
		LDI R3, R0, spotcheck3\n \
		LDI R4, R0, spotcheck4\n \
		LDI R5, R0, spotcheck5\n \
		LDI R6, R0, spotcheck6\n \
		LDI R7, R0, spotcheck7\n\n \
		halt:\n \
		BRNZP halt\n \
	SEGMENT DataSegment%d:\n \
	spotcheck1: DATA2 4xE\n \
	spotcheck2: DATA2 4x%xE\n \
	spotcheck3: DATA2 4x%xE\n \
	spotcheck4: DATA2 4x%xE\n \
	spotcheck5: DATA2 4x%xE\n \
	spotcheck6: DATA2 4x%xE\n \
	spotcheck7: DATA2 4x%xE\n", numlabels+1, numlabels+1, numlabels+1,
	numlabels/6, numlabels/5, numlabels/4, 
	numlabels/3, numlabels/2, numlabels);
	fclose(fp);
	return 0;
}
