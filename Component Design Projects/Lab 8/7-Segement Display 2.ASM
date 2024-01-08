; ======================================================
; ===== 99sevseg.asm ===================================
; ===== Seven Segment Displays Port 02 =================
MOV AL,1		;initializing AL with 1
MOV BL,1		;intializing BL with 1
MOV CL,5		;initializing counter
Start:
	MUL AL, BL    	;Multiply AL with BL and store the final product in AL
    	INC BL	      	;Increment BL by one
    	DEC CL        	; Decrement the counter
    	CMP CL, 0     	; Compare the counter with 5 (end condition)
    	JNZ Start     	; Jump to Start if not equal
	
	;Here we got 120 as the answer. Its hexadecimal value is 78

	MOV	AL,8A	; 1000 1010
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,FF	; 1111 1111
	OUT	02	; Send the data in AL to Port 02

	

END
; ======================================================

