# Experimental Study of Arithmetic and Logical Instructions in 8086 Assembly

This project focuses on the experimental study and implementation of essential assembly language instructions using the **EMU 8086** software. The core objective is to master the operation of arithmetic (multiplication and division), logical (bit manipulation), and shift/rotate instructions. 

By utilizing these instructions, programs can perform complex tasks such as calculating products and quotients, as well as clearing, setting, or inverting specific bits within a register.

---

## Theory: How It Works
The instructions used in this study are fundamental for performing operations in 8086 assembly language. They interact with the **accumulator (AX)** and other general-purpose registers to process data.



### 1. Arithmetic Instructions
These instructions handle both signed and unsigned data processing:

* **MUL**: Multiplies two operands, storing the result in the accumulator (`AX`) or across two registers (`DX:AX`).
* **IMUL**: Performs multiplication similar to `MUL` but treats operands as signed values.
* **DIV**: Divides the contents of the accumulator by a single operand, storing the result in `AX` (quotient) or `DX:AX` (remainder).
* **IDIV**: Performs signed division of the accumulator contents.

### 2. Logical Instructions
Logical instructions are used to manipulate individual bits within a data byte or word:

* **AND**: Used to clear specific bits (Bitmasking).
* **OR**: Used to set specific bits.
* **XOR**: Used to invert specific bits (Toggling).
* **NOT**: Inverts all bits of the operand (1's complement).

### 3. Shift and Rotate Instructions
These instructions move the bit patterns within a register to the left or right:



* **SHL (Shift Left)**: Shifts bits to the left, filling vacated positions with zeros.
* **SHR (Shift Right)**: Shifts bits to the right, filling vacated positions with zeros.
* **SAR (Shift Arithmetic Right)**: Shifts bits to the right while filling vacated positions with the sign bit to preserve the number's sign.
* **ROL (Rotate Left)**: Rotates bits to the left, where the MSB wraps around to the LSB.
* **RCR (Rotate Right through Carry)**: Rotates bits to the right, using the Carry Flag as part of the rotation loop.

---

## Core Instruction Summary

| Instruction | Category | Functionality |
| :--- | :--- | :--- |
| **MUL / IMUL** | Arithmetic | Unsigned / Signed Multiplication |
| **DIV / IDIV** | Arithmetic | Unsigned / Signed Division |
| **AND / OR / XOR** | Logical | Clear / Set / Invert bits |
| **SHL / SHR** | Shift | Logical Shift (fills with zeros) |
| **SAR** | Shift | Arithmetic Right Shift (fills with sign bit) |
| **ROL / RCR** | Rotate | Bit rotation using the Carry Flag |

---

## Software Requirements
* **EMU 8086**: Microprocessor Emulator.

## Source code and Output

![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_1.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_2.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_3.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_4.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4-5.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_6.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_7.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/MUL_IMUL_DIV_IDIV_Instruction/img/4_8.png?raw=true)

