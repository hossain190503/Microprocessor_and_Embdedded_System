mov AX, 1234H   ; Load lower word of first number
mov BX, 5678H   ; Load upper word of first number
mov CX, 6987H   ; Load lower word of second number
mov DX, 9785H   ; Load upper word of second number
ADD AX, CX      ; Add lower words
ADC BX, DX      ; Add upper words with carry