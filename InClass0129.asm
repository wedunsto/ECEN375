		;Example	1: Subtractions
		mov		r5, #10
		sub		r3, r5, r6
		;Example	2: Conditional execution
		mov		r5, #5
		mov		r1, #2
		cmp		r1, r2
		subne	r3, r5, r8
		subeq	r3, r5, r1
		moveq	r7, #4
;Example 3: COnditional execution