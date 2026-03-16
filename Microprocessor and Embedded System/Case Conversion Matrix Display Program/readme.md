# Case Conversion and Matrix Display in 8086 Assembly

This project focuses on the implementation of two specific programming tasks using **EMU 8086**: **Case Conversion** and **Matrix Display**. The first task involves converting a lowercase letter provided by the user into its uppercase equivalent. The second task demonstrates the use of nested loops to display a character in a 5x5 matrix format on the console.

---

## Theory: How It Works

### 1. Assembly Language and Emulator
Assembly language is a low-level programming language where instructions are represented by mnemonic codes closely related to the machine language of a specific computer architecture. **emu8086** is a software emulator used to develop, debug, and run these programs for the Intel 8086 microprocessor.

### 2. Case Conversion Logic
Case conversion is the process of changing a character from one case to another by manipulating the character's **ASCII value**.



* To convert a lowercase letter to uppercase, the program subtracts `20H` (decimal 32) from the ASCII value stored in the register.
* For example, the character 'a' has an ASCII value of `61H`. Subtracting `20H` results in `41H`, which is the ASCII value for 'A'.
* This logic is fundamental for text processing applications, such as title casing or string sanitization.

### 3. Matrix Display Logic
Matrix display involves showing a grid of characters on a screen, which is a precursor to character-based menus or simple graphics.



* **Nested Loops:** The program uses a loop-within-a-loop structure to control rows and columns.
* **Registers:** The `CL` register is typically used to track the number of rows (outer loop), while another register like `CH` or `BH` tracks the number of characters per row (inner loop).
* **Line Control:** After printing a full row (5 characters), the program must output ASCII control characters `0DH` (Carriage Return) and `0AH` (Line Feed) to move the cursor to the beginning of the next line before starting the next row.

---

## Technical Summary

| Task | Core Instruction / Logic | Data Used |
| :--- | :--- | :--- |
| **Input** | `INT 21H, AH=01H` | Keyboard Character |
| **Conversion** | `SUB AL, 20H` | ASCII Hex Offset |
| **Output** | `INT 21H, AH=02H` | Display Character in `DL` |
| **Matrix Flow** | `LOOP` instruction | `CX` register for iterations |
| **Line Break** | `0DH` and `0AH` | Cursor Positioning |

---

## Software Requirements
* **EMU 8086**: Microprocessor Emulator.

## Source code and Output

![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Case%20Conversion%20Matrix%20Display%20Program/img/7_1.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Case%20Conversion%20Matrix%20Display%20Program/img/7_2.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Case%20Conversion%20Matrix%20Display%20Program/img/7_3.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Case%20Conversion%20Matrix%20Display%20Program/img/7_8.png?raw=true)


