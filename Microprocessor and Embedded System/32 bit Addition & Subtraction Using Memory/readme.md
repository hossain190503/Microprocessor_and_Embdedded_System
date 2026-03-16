# 32-Bit Arithmetic on the Intel 8086

This project explores the implementation of **32-bit addition and subtraction** using the Intel 8086 microprocessor within the **MDA 8086 μp kit** and **EMU 8086** software environment. The study involves manipulating 32-bit binary numbers through memory interaction and specialized assembly instructions, including `AAA` (ASCII Adjust for Addition) and `DAA` (Decimal Adjust after Addition). 

The goal is to verify the accuracy of arithmetic results and understand how the 16-bit architecture handles larger data sets through carry and borrow propagation.

---

## Theory: How It Works

### 1. 8086 Microprocessor Architecture
The Intel 8086 is a **16-bit microprocessor** that utilizes a segmented memory model. It processes data using a set of general-purpose registers and tracks the outcome of operations through various flags.



* **Registers:** AX, BX, CX, DX, SI, DI, BP, and SP.
* **Status Flags:** Carry (CF), Overflow (OF), Zero (ZF), Sign (SF), Parity (PF), and Auxiliary Carry (AF).

### 2. 32-bit Arithmetic Logic
Since the 8086 is natively a 16-bit processor, 32-bit operations require the manipulation of two 16-bit words.

* **32-bit Addition:** The process starts by adding the lower 16-bit words using the `ADD` instruction. Any carry generated from this initial addition is then incorporated into the addition of the upper 16-bit words using the `ADC` (Add with Carry) instruction.
* **32-bit Subtraction:** This follows a similar logic where the lower words are processed with the `SUB` instruction. If the operation requires a borrow, it is handled during the subtraction of the upper words using the `SBB` (Subtract with Borrow) instruction.

### 3. Specialized Adjustment Instructions
Beyond standard binary arithmetic, the 8086 provides instructions to handle specific data formats:

| Instruction | Full Name | Description |
| :--- | :--- | :--- |
| **AAA** | ASCII Adjust for Addition | Used when operands represent ASCII-coded decimal digits; adjusts the result to ensure it remains within the valid range for ASCII characters. |
| **DAA** | Decimal Adjust after Addition | Used when operands are in BCD format; ensures the final result represents a valid BCD value by correcting carry propagation issues. |

### 4. Memory Interaction
Data is accessed and stored in memory using **segment and offset addresses**. The 8086 uses different addressing modes to provide flexibility when manipulating data in memory locations during 32-bit operations:

* **Direct Addressing**
* **Indirect Addressing**
* **Indexed Addressing**

---


MOV AX, [HighWord1]
ADC AX, [HighWord2]  ; Add upper 16 bits + Carry
MOV [ResultHigh], AX
