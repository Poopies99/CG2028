 	.syntax unified
 	.cpu cortex-m3
 	.thumb
 	.align 2
 	.global	classification
 	.thumb_func

@ CG2028 Assignment, Sem 2, AY 2021/21
@ (c) CG2028 Teaching Team, ECE NUS, 2021

@ student 1: Name: Chew Yi Jie , Matriculation No.: A0217596R
@ student 2: Name: Christopher Nge, Matriculation No.: A0218109J

@Register map
@R0 - points pointer, returns class
@R1 - centroids pointer
@R2 - class pointer (unused)
@R3 - datapoint counter
@R4 - point1 x/y
@R5 - centroid x/y
@R6 - euclidean distance from centroid 1
@R7 - euclidean distance from centroid 2
@R8 - class 0 counter
@R9 - class 1 counter

classification:
@ PUSH / save (only those) registers which are modified by your function
		PUSH {R1-R9,R14}
@ parameter registers need not be saved.

@ write asm function body here
		MOV R8, #0 						@0x03A08000
		MOV R9, #0 						@0x03A09000
		MOV R3, #8						@0X03A03008
		L1:	LDR R4, [R0], #4 			@0x05904004
			LDR R5, [R1], #4 			@0x05915004
			SUB R4, R5 					@0x00444005
			MUL R6, R4, R4 				@0x00006414

			LDR R4, [R0], #-4 			@0x05104004
			LDR R5, [R1], #4			@0x05915004
			SUB R4, R5 					@0x00444005
			MLA R6, R4, R4, R6 			@0x00266414

			LDR R4, [R0], #4 			@0x05904004
			LDR R5, [R1], #4 			@0x05915004
			SUB R4, R5 					@0x00444005
			MUL R7, R4, R4 				@0x00007414

			LDR R4, [R0], #4 			@0x05904004
			LDR R5, [R1], #-12 			@0x0511500C
			SUB R4, R5 					@0x00444005
			MLA R7, R4, R4, R7 			@0x00277414

			CMP R6, R7 					@0x01560007
			ITE MI
			ADDMI R8, #1  				@0x02888001
			ADDPL R9, #1 				@0x02899001
			SUBS R3, #1 				@0x02533001
			BNE L1 						@0x1800005C

			CMP R8, R9 					@0x01580009
			ITE MI
			MOVMI R0, #1				@0x03A00001
			MOVPL R0, #0				@0x03A00000
			POP {R1-R9,R14}
			BX LR

@label: .word value

@.lcomm label num_bytes
