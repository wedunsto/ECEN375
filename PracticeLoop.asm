		;for(int	i=0;i<5;i++){cout<<i<<endl;}
		
		MOV		R0, #0x0
		MOV		R1, #0x5
FOR
		CMP		R0, R1
		ADDMI	R0, R0,#0x1
		B		FOR
