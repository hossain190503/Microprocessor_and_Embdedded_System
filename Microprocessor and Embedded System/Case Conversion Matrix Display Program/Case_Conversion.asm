.MODEL SMALL
.DATA
    MSG1 DB 'ENTER A LOWERCASE LETTER:$' ; Define first message
    MSG2 DB 'IN UPPERCASE IT IS:$'        ; Define second message

.CODE
    ; Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Display MSG1
    LEA DX, MSG1
    MOV AH, 9
    INT 21H

    ; Read a lowercase character from the user
    MOV AH, 1
    INT 21H
    MOV BL, AL        ; Save the input character in BL

    ; Move to a new line for the output
    MOV AH, 2
    MOV DL, 0DH       ; Carriage Return
    INT 21H
    MOV DL, 0AH       ; Line Feed
    INT 21H

    ; Re-initialize Data Segment for MSG2
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, MSG2
    MOV AH, 9
    INT 21H

    ; Convert lowercase to uppercase
    SUB BL, 20H       ; Subtract 20H from ASCII value
    MOV DL, BL        ; Move converted character to DL for display
    MOV AH, 2
    INT 21H           ; Display the uppercase letter