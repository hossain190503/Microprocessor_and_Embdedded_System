MOV CL, 00001001b ; Initialize CL to 09H (binary 00001001) [10]

; Clear bit 0
AND CL, 11111110b ; Bitwise AND to clear bit 0 (results in 0xFE mask logic) [10]

; Set bits 4, 5, and 6
OR CL, 01110000b  ; Bitwise OR to set bits 4, 5, and 6 (results in 0x70 mask) [10]

; Invert bit 2
XOR CL, 00000100b ; Bitwise XOR to invert bit 2 (results in 0x04 mask) [10]