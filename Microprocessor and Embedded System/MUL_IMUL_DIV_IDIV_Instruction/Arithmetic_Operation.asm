; Example using Problem 1: AL=85H, BL=35H
MOV AL, 85H      ; Load 85H into the lower byte of the accumulator
MOV BL, 35H      ; Load 35H into the BL register

; To perform Unsigned Multiplication
MUL BL           ; AX = AL * BL (Unsigned)

; To perform Signed Multiplication
IMUL BL          ; AX = AL * BL (Signed)

; To perform Unsigned Division
DIV BL           ; AL = AX / BL (Quotient), AH = Remainder

; To perform Signed Division
IDIV BL          ; AL = AX / BL (Signed Quotient)