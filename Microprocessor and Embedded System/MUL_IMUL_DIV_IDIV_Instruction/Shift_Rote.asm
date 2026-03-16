MOV CL, 0B6H     ; Load CL with 0B6H [3]

SAR CL, 1        ; Shift CL right one position arithmetically (preserves sign) [3]
SHR CL, 1        ; Shift CL right one position logically (fills with zero) [3]
ROL CL, 1        ; Rotate CL left one position (fills with carry flag) [3]
RCR CL, 1        ; Rotate CL right one position (fills with carry flag) [3]