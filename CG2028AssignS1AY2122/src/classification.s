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
@R4-7 - general purpose
@R8 - class 0 counter
@R9 - class 1 counter

classification:
@ PUSH / save (only those) registers which are modified by your function
		PUSH {R1-R9,R14}
@ parameter registers need not be saved.

@ write asm function body here
		MOV R8, #0 						@E0A08000
		MOV R9, #0 						@E0A09000
		L1:	LDR R4, [R0] 				@0x05904000
			ADD R0, #4 					@0x02800004
			LDR R5, [R1] 				@0x05915000
			ADD R1, #4 					@0x02811004
			SUB R4, R5 					@0x00444005
			MUL R4, R4 					@0x00004414
			LDR R6, [R0] 				@0x05906000
			SUB R0, #4 					@0x02400004
			LDR R5, [R1]				@0x05915000
			ADD R1, #4 					@0x02811004
			SUB R6, R5 					@0x00466005
			MLA R6, R6, R6, R4 			@0x00246616

			LDR R4, [R0] 				@0x05904000
			ADD R0, #4 					@0x02800004
			LDR R5, [R1] 				@0x05915000
			ADD R1, #4 					@0x02811004
			SUB R4, R5 					@0x00444005
			MUL R4, R4 					@0x00004414
			LDR R5, [R0] 				@0x05905000
			ADD R0, #4 					@0x02800004
			LDR R7, [R1] 				@0x05917000
			SUB R5, R7 					@0x00455007
			MLA R5, R5, R5, R4 			@0x00245515

			CMP R6, R5 					@0x01560005
			BMI CLASS_0 				@0x48800008
			ADD R9, #1 					@0x02899001
			B SKIPCLASS_0 				@0xE8800004
		CLASS_0: ADD R8, #1 ADD R9, #1 	@0x02888001
		SKIPCLASS_0: CMP R3, #0 		@0x03530000
			BEQ EXITL1 					@0x08800008
			SUB R3, #1 					@0x02433001
			B L1 						@0xE8000084
		EXITL1: CMP R8, R9 				@0x01580009
			BMI RETURN_0 				@0x48800008
			MOVW R0, #0					
			B RETURN 					@0xE8800004
		RETURN_0: MOVW R0, #1
		RETURN: POP {R1-R9,R14}
		BX LR

@label: .word value

@.lcomm label num_bytes
