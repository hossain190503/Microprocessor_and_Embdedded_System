# Mathematical Expressions and Conversions in 8086 Assembly

This project involves the study and implementation of assembly language programs using **EMU 8086** to solve specific mathematical expressions and practical conversion problems. The project focuses on two primary tasks:
1. Performing a complex arithmetic operation: $(5 \times AL) - (6 \times BH) + (8 / BH)$.
2. Converting temperature from **Fahrenheit to Celsius** using standard mathematical formulas.

---

## Theory: How It Works
The programs utilize the basic arithmetic instruction set of the Intel 8086 microprocessor to process multi-step equations.



### 1. Mathematical Expression Logic
To solve the expression $(5 \times AL) - (6 \times BH) + (8 / BH)$, the program breaks the calculation into three distinct phases:

* **Multiplication:** The `MUL` instruction is used to calculate $5 \times AL$ and $6 \times BH$. Note that the result of an 8-bit multiplication is automatically stored in the 16-bit accumulator (`AX`).
* **Division:** The `DIV` instruction handles the $8 / BH$ component. For 8-bit division, the dividend must be in `AX`, and the quotient is stored in `AL`.
* **Result Accumulation:** The program utilizes temporary registers (such as `CX`) to store intermediate results, applying `SUB` and `ADD` instructions to reach the final value.

### 2. Temperature Conversion Logic
The conversion from Fahrenheit to Celsius follows the standard mathematical formula:
$$Celsius = (Fahrenheit - 32) \times \frac{5}{9}$$

The assembly implementation follows these sequential steps:
1.  **Subtraction:** Subtracts 32 from the Fahrenheit value stored in `AX`.
2.  **Multiplication:** Multiplies this difference by 5 using the `MUL` instruction.
3.  **Division:** Divides the resulting product by 9 to obtain the final Celsius value in `AL`.

---

## Instruction Summary

| Instruction | Usage in Project | Description |
| :--- | :--- | :--- |
| **MOV** | Data Transfer | Loading constants into registers (e.g., 32, 5, 9). |
| **SUB** | Arithmetic | Subtracting 32 for temperature or intermediate expression terms. |
| **MUL** | Arithmetic | Scaling values by constants (5 and 6). |
| **DIV** | Arithmetic | Performing division ($8/BH$ or $/9$). |
| **ADD** | Arithmetic | Summing the final components of the expression. |

---

## Software Requirements
* **EMU 8086**: Microprocessor Emulator for writing, compiling, and stepping through the assembly code.

## Source code and Output

![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Fahrenheit%20to%20Degree%20Celsius/img/5_1.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Fahrenheit%20to%20Degree%20Celsius/img/5_2.png?raw=true)
