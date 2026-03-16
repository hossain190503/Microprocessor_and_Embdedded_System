; Part 1: Calculate 5 * AL
MOV AL, 10D      ; Load AL with 10 (decimal) [1]
MOV BL, 5D       ; Load BL with 5 (decimal) to multiply [1]
MUL BL           ; AX = AL * BL (Result is 50) [1]
MOV CX, AX       ; Store the result of (5 * AL) in CX for later [1]

; Part 2: Calculate 6 * BH
MOV AX, 0H       ; Clear AX [3]
MOV BH, 8D       ; Initialize BH with 8 (decimal) [3]
MOV AL, BH       ; Move BH to AL for multiplication [3]
MOV BL, 6H       ; Load 6 into BL [3]
MUL BL           ; AX = AL * 6 (Result of 6 * BH) [3]
SUB CX, AX       ; CX = (5 * AL) - (6 * BH) [3]

; Part 3: Calculate BH / 8
MOV AL, BH       ; Move BH back to AL for division [3]
MOV BL, 8H       ; Load 8 into BL [3]
DIV BL           ; AL = AX / 8 (Quotient of BH / 8) [3]
ADD CX, AX       ; Final Result: CX = (5 * AL - 6 * BH) + (BH / 8) [3]