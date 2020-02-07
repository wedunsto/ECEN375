		;Write	the value 0xFF0011BC into memory address 0x100
		MOV		R0, #0x100 ; Store desired memory location
		
		MOV		R1, #0xFF000000
		ORR		R1, R1, #0x00001100
		ORR		R1, R1, #0x000000BC ;Store desired value
		
		STR		R1, [R0] ;Store desired value in desired memory location
		
		;Write	the value 0x0000EE00 into memory address 0x10C
		MOV		R2,#0x10C ;Stored desired memory location
		
		MOV		R3,#0xEE00 ;Store desired value
		
		STR		R3, [R2] ;Store desired value in desired memory location
		
		;Read	value in memory location 0x100 and put the value in a new register
		LDR		R4, [R0]
		
		;Read	value in memory location 0x10C and put the value in a new register
		LDR		R5, [R2]
