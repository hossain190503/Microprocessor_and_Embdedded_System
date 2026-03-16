mov AX, 1234H   ; Load values
mov BX, 5678H
mov CX, 6987H
mov DX, 9785H
SUB CX, AX      ; Subtract lower words
SBB DX, CX      ; Subtract upper words with borrow