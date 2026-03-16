MOV AL, 23H      ; Load AL with starting value 23H [1]
MOV BL, 77H      ; Load BL with starting value 77H [2]
MOV DI, 200H     ; Set Destination Index to 200H [1]
MOV SI, 100H     ; Set Source Index to 100H [1]
MOV CX, 6        ; Set loop counter to 6 [1]

LOOP: 
MOV [SI], AL     ; Move AL value to memory at [SI] [2]
MOV [DI], BL     ; Move BL value to memory at [DI] [2]
INC SI           ; Increment SI [2]
INC DI           ; Increment DI [2]
SUB AL, 09H      ; Subtract 09H from AL [2]
SUB BL, 06H      ; Subtract 06H from BL [2]
DEC CX           ; Decrement counter [2]
JNZ LOOP         ; Jump to LOOP if CX is not zero [2]

; Performing 32-bit subtraction using words from memory
MOV AX, [SI]     ; Load lower word from [SI] into AX [2]
SUB AX, [DI]     ; Subtract lower word at [DI] from AX [2]
MOV [DI], AX     ; Store the result in [DI] [2]

MOV AX, [SI+2]   ; Load next word from [SI+2] into AX [2]
SBB AX, [DI+2]   ; Subtract with Borrow (SBB) word at [DI+2] from AX [2]
MOV [DI+2], AX   ; Store the result in [DI+2] [2]

CLC              ; Clear Carry (Borrow) Flag [2]

MOV AX, [SI+4]   ; Load word from [SI+4] into AX [2]
SBB AX, [DI+4]   ; Subtract with Borrow word at [DI+4] from AX [2]
MOV [DI+4], AX   ; Store result in [DI+4] [2]

MOV AX, [SI+6]   ; Load word from [SI+6] into AX [2]
SBB AX, [DI+6]   ; Subtract with Borrow word at [DI+6] from AX [2]
MOV [DI+6], AX   ; Store final result in [DI+6] [2]