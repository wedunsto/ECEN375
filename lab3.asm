			;R4=A,R5=B,R6=C,R7=D,R8=E
MAIN
			;a		= diffofsums(2,3,4,5);
			MOV		R0, #2
			MOV		R1, #3
			MOV		R2, #4
			MOV		R3, #5
			SUB		SP, SP, #12 ;make space for LR on SP
			BL		DIFFOFSUMS
			MOV		R4,R0 ;stores a results in R4
			ADD		SP, SP, #12 ;deallocate SP
			;b		= diffofsums(3,4,5,2);
			MOV		R0, #3
			MOV		R1, #4
			MOV		R2, #5
			MOV		R3, #2
			SUB		SP, SP, #12 ;make space for LR on SP
			BL		DIFFOFSUMS
			MOV		R5,R0 ;stores b results in R5
			ADD		SP, SP, #12 ;deallocate SP
			;c		= diffofsums(4,5,2,3);
			MOV		R0, #4
			MOV		R1, #5
			MOV		R2, #2
			MOV		R3, #3
			SUB		SP, SP, #12 ;make space for LR on SP
			BL		DIFFOFSUMS
			MOV		R6,R0 ;stores c results in R6
			ADD		SP, SP, #12 ;deallocate SP
			;d		= diffofsums(5,2,3,4);
			MOV		R0, #5
			MOV		R1, #2
			MOV		R2, #3
			MOV		R3, #4
			SUB		SP, SP, #12 ;make space for LR on SP
			BL		DIFFOFSUMS
			MOV		R7,R0 ;stores d results in R7
			ADD		SP, SP, #12 ;deallocate SP
			;e		= diffofsums(a,b,c,d);
			MOV		R0, R4
			MOV		R1, R5
			MOV		R2, R6
			MOV		R3, R7
			SUB		SP, SP, #12 ;make space for LR on SP
			BL		DIFFOFSUMS
			MOV		R8,R0 ;stores e results in R8
			ADD		SP, SP, #12 ;deallocate SP
			END
DIFFOFSUMS
			STR		LR, [SP,#8] ;store the address of the next main instruction on the SP
			BL		DIFF
			LDR		LR, [SP,#8] ;stores the address of the next MAIN instructions back into LR
			MOV		PC, LR ;return result
DIFF
			STR		LR, [SP, #4] ;store the address of the next DIFFOFSUMS instruction on the SP
			BL		SUM
			SUB		R0, R0, R2 ;DIFF(int a, int b)
			LDR		LR, [SP, #4] ;stores the address of the next DIFFOFSUMS instructions back into LR
			MOV		PC, LR ;return result
			
SUM
			STR		LR, [SP] ;store the address of the next DIFF instruction on the SP
			ADD		R0, R0, R1 ;SUM(int a1, int b1)
			ADD		R2, R2, R3 ;SUM(int a2, int b2)
			LDR		LR, [SP] ;sthre the address of the next DIFF instruction on the LDR
			MOV		PC, LR ;return result

