.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV DL, '?'      ; Load character '?' into DL
    MOV AH, 2        ; Function 2: Display character
    INT 21H          ; Output '?'
    
    MOV AH, 1        ; Function 1: Read a character from input
    INT 21H          ; Character is stored in AL
    MOV BL, AL       ; Move input character to BL for safekeeping
    
    MOV DL, 8        ; ASCII for Backspace
    MOV AH, 2
    INT 21H
    
    MOV DL, 0AH      ; ASCII for Line Feed (Next Line) [3]
    MOV AH, 2
    INT 21H
    
    MOV DL, 0DH      ; ASCII for Carriage Return (Start of Line) [3]
    MOV AH, 2
    INT 21H
    
    MOV DL, BL       ; Move the saved character back to DL
    MOV AH, 2        ; Display the character on the new line
    INT 21H
MAIN ENDP
END MAIN
