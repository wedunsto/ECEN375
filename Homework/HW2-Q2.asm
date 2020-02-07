		;Homework	2: Question 6.22 b.i.)
		
		;MOV		R0, #0 ;int i=0
		;MOV		R1, #0x6000000 ;R1 = vals[200]
		
		;FOR
		;		CMP		R0, #200 ;i<200
		;		BEQ		DONE
		;
		;		LDR		R2, [R1, R0] ; R2 = vals[i]
		;		ADD		R2, R0, #0 ; vals[i] = i
		;		STR		R2, [R1, R0] ;vals[i] = i
		;		ADD		R0,R0,#4 ;i++
		;		B		FOR
		;
		;DONE
		
		;Homework	2: Question 6.22 b.i)
		
		MOV		R0, #200 ;int i=0
		MOV		R1, #0x60000000 ;R1 = vals[200]
		
FOR
		CMP		R0, #0 ;i>=0
		LDR		R2, [R1, R0] ; R2 = vals[i]
		ADD		R2, R0, #0 ; vals[i] = i
		STR		R2, [R1, R0] ;vals[i] = i
		SUB		R0,R0,#4 ;i--
		BNE		FOR
