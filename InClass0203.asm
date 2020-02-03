		;Example	1
		;int		array[5]
		;array[0]	= array[0] * 8
		;array[1]	= array[1] * 8
		
		;R0		= array base address
		MOV		R0, #0x60000000
		LDR		R1, [R0] ;r1 = arrray[0]
		;LDR		R1,[R0, #0]
		LSL		R1, R1, #3 ;R1 = R1*8
		STR		R1, [R0] ;array[0] = R1
		
		LDR		R1, [R0, #4] ;R1 = array[1]
		LSL		R1, R1, #3 ; R1 = R1 * 8
		STR		R1, [R0, #4] ;array[1] = R1

		;int array[200]
		;int i
		;for (i=199, i>=0, i--)
			;array[i] = array[i]*8