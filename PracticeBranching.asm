		;Practice:	For loop
		;02.03.2020
		
		;int		R0 = 5;
		;int		R1 = 4;
		;int		R2 = 0;
		;if(R0	> R1){
		;		R2 = R0 + R1;
		;}
		;else{
		;		R2 = R0 - R1;
		;}
		
		MOV		R0, #0x5
		MOV		R1, #0x4
		CMP		R0, R1
		BCS		ADD_IT
		BMI		SUB_IT
		
ADD_IT
		ADD		R2, R0, R1
		
SUB_IT
		SUB		R2, R0, R1
