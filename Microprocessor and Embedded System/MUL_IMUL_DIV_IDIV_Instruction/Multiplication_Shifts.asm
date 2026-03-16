MOV AX, 500d     ; Initialize AX to 500 decimal [3]
MOV BX, AX       ; Copy AX to BX for temporary storage [3]

SHL AX, 3        ; Shift AX left by 3 positions (AX = AX * 8) [3]
SHL BX, 1        ; Shift BX left by 1 position (BX = BX * 2) [3]

ADD AX, BX       ; AX = (AX * 8) + (AX * 2) = AX * 10 [3]