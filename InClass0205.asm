		;int		main(){
		;		simple();
		;		a = b + c;
		;}
		
		;void	simple(){
		;		return;
		;}
MAIN		BL		SIMPLE
		ADD		R4, R5, R6
		END ;Prevent infinite loop
		
SIMPLE	MOV		PC, LR
