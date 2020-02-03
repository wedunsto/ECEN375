		;William	DUnston
		;01.29.2020
		;Lab		1
		MOV		R1, #0x46000000
		ORR		R1, R1, #0x00A10000
		ORR		R1, R1, #0x0000F100
		ORR		R1, R1, #0x000000B7 ;Store 0x46A1F1B7 into R1
		
		MOV		R2, #0xFF000000
		ORR		R2,R2,#0x00FF0000 ;Store 0xFFFF0000 into R2
		
		ADD		R3, R1, R2 ;Adds 0x46A1F1B7 + 0xFFFF0000
		SUB		R4, R1, R2 ;Subs 0x46A1F1B7 - 0xFFFF0000
		
		AND		R3, R1, R2 ;0x46A1F1B7 & 0xFFFF0000
		ORR		R4, R1, R2 ;0x46A1F1B7 || 0xFFFF0000
		EOR		R5, R1, R2 ;(0x46A1F1B7 || 0xFFFF0000) & ~(0x46A1F1B7 & 0xFFFF0000)
		BIC		R6, R1, R2 ;0x46A1F1B7 & ~0xFFFF0000
		MVN		R7, R2 ; ~R2
		
		MOV		R5, #0xFF000000
		ORR		R5, R5, #0x001C0000
		ORR		R5, R5, #0x00001000
		ORR		R5, R5, #0x000000E7 ;Store 0xFF1C10E7
		
		LSL		R0, R5, #7 ;Left shift R5 7 times
		LSR		R1, R5, #17 ;Right shift R5 17 times
		ASR		R2, R5, #3 ;Arithmetic shift right R5 3 times
		ROR		R3, R5, #21 ;Rotate right R5 21 times
