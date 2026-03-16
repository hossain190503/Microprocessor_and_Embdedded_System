.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'MY NAME IS NIMUL HASAN $' ; Define string with termination character '$' [2]

.CODE
MAIN PROC
    MOV AX, @DATA    ; Load the address of the data segment into AX [2]
    MOV DS, AX       ; Initialize DS with the value of AX [2]
    
    LEA DX, MSG      ; Load the effective address of the string into DX [2]
    MOV AH, 9        ; Set AH to 9 for string display function [3]
    INT 21H          ; Execute DOS interrupt to display the string [3]
    
    MOV AH, 4CH      ; Set AH to 4CH to return control to the system [3]
    INT 21H          ; Execute DOS interrupt [3]
MAIN ENDP
END MAIN