; ======================================================
; ===== 99sevseg.asm ===================================
; ===== Seven Segment Displays Port 02 =================
Start:
	MOV	AL,8A	; 1000 1010
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,B	; 0000 1011
	OUT	02	; Send the data in AL to Port 02


	
	END
; ======================================================