			;		R4 = y
MAIN
			;...
			MOV		R0, #2
			MOV		R1, #3
			MOV		R2, #4
			MOV		R3, #5
			BL		DIFFOFSUMS
			MOV		R4, R0
			end ;Prevents infinite
			;...
			;		R4 = result
DIFFOFSUMS
			ADD		R8, R0, R1
			ADD		R9, R2, R3
			SUB		R4, R8, R9
			MOV		R0, R4
			MOV		PC, LR
			;
			;
			;
			;
			;
			;		argument 0 = 2
			;argument	1 = 3
			;argument	2 = 4
			;argument	3 = 5
			;call	function
			;y		= returned value
			;;
			;;
			;;
			;;
			;;		R8 = f + g
			;R9		= h + i
			;result	= (f + g) - (h + i)
			;put		return value in R0
			;;return	to caller
