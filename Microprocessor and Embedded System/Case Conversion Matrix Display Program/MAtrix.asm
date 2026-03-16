.MODEL SMALL
.DATA
    MSG DB 'ENTER THE MATRIX VALUE:$'

.CODE
    ; Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Display input prompt
    LEA DX, MSG
    MOV AH, 9
    INT 21H

    ; Read the character to be used in the matrix
    MOV AH, 1
    INT 21H
    MOV BL, AL        ; Store character in BL

    ; Start a new line
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; Initialize loop counters for a 5x5 matrix
    MOV CL, 5         ; Row counter
    MOV BH, 5         ; Column counter

A:  ; Inner Loop: Display characters in a row
    MOV AH, 2
    MOV DL, BL        ; Move character to DL
    INT 21H           ; Display character
    DEC BH            ; Decrement column counter
    JNZ A             ; If BH is not zero, continue row

B:  ; Outer Loop: Handle New Line and Row count
    MOV AH, 2
    MOV DL, 0DH       ; Carriage Return
    INT 21H
    MOV DL, 0AH       ; Line Feed
    INT 21H
    
    MOV BH, 5         ; Reset column counter for the next row
    DEC CL            ; Decrement row counter
    JNZ A             ; If CL is not zero, start a new row