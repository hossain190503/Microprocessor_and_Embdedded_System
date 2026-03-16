MOV AL, 50H      ; Load AL with 50H (representing BCD) [2, 5]
MOV BL, 29H      ; Load BL with 29H (representing BCD) [2, 5]
ADD AL, BL       ; Perform binary addition [2, 5]
DAA              ; Adjust the result to be a valid BCD value [2, 5]