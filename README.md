# Intel 8086 Microprocessor: Comprehensive Study and Implementation

My work comprises a series of **projects** centered on the Intel 8086 microprocessor architecture, utilizing both the **MDA-8086 hardware kit** and the **EMU 8086 emulator** to master assembly language programming. The collective body of work progresses from fundamental arithmetic to complex logic, memory interaction, and user-interface control.

The following sections provide an overview of the key areas covered in my studies:

---

## 1. Advanced Arithmetic Operations
A significant portion of my work focuses on overcoming the 16-bit limitations of the 8086 to perform 32-bit arithmetic.

* **Word Coordination:** I implemented 32-bit addition and subtraction by splitting data into lower and upper words, utilizing Carry (`ADC`) and Borrow (`SBB`) flags to ensure accurate results across words.
* **Adjustment Instructions:** My projects explored specialized adjustments like `AAA` (ASCII Adjust for Addition) and `DAA` (Decimal Adjust after Addition), which ensure correct representation when working with ASCII digits or BCD (Binary Coded Decimal) formats.
* **Signed vs. Unsigned Logic:** I mastered the distinction between unsigned arithmetic (`MUL`, `DIV`) and signed arithmetic (`IMUL`, `IDIV`) to handle different data types effectively.
* **Practical Application:** These skills were applied to solve complex multi-step expressions and perform Fahrenheit to Celsius temperature conversions using the formula:
    $$Celsius = (Fahrenheit - 32) \times \frac{5}{9}$$

---

## 2. Logical Manipulation and Bit Control
My work demonstrates a deep understanding of bit-level operations and efficient mathematical scaling.

### Core Logic Table
| Instruction | Category | Practical Use Case |
| :--- | :--- | :--- |
| **AND** | Logical | Clearing specific bits / Masking |
| **OR** | Logical | Setting specific bits |
| **XOR** | Logical | Inverting/Toggling specific bits |
| **SHL / SHR** | Shift | Multiplying or dividing by powers of 2 |
| **SAR** | Shift | Arithmetic shift (preserving the sign bit) |

* **Shifts and Rotates:** I explored `SHL`, `SHR`, and `SAR` for bit shifting, including a practical example of multiplying a value by 10 using only shifts and addition, which is more efficient than standard multiplication.
* **Bit Rotation:** I implemented `ROL` and `RCR` to rotate bit patterns using the carry flag for advanced data manipulation.

---

## 3. Programming Structures and I/O Control
The latter projects transition into handling Input/Output (I/O) and data representation.

1.  **Segment Management:** I learned to initialize the **Data Segment (DS)** and use the **Load Effective Address (LEA)** instruction to point to strings stored in memory.
2.  **DOS Interrupts:** My work heavily utilizes `INT 21H` for various functions:
    * **Function 09H:** Displaying strings terminated by `$`.
    * **Function 01H:** Reading characters from the keyboard.
    * **Function 02H:** Displaying individual characters.
3.  **String and Line Control:** I implemented structures to handle text output, including the use of ASCII control characters like **Carriage Return (0DH)** and **Line Feed (0AH)** to start new lines.

---

## 4. Practical User Applications
Finally, I applied these concepts to create functional utility programs:

* **Case Conversion:** By manipulating ASCII values (e.g., subtracting `20H`), I developed a program to convert lowercase user input into uppercase.
* **Graphical Representation:** Using nested loops with the `CX` and `BH` registers, I created a matrix display program capable of generating character-based grids (e.g., a 5x5 matrix) on the console.

---

## Conclusion of My Work
My projects successfully bridge the gap between abstract microprocessor theory and practical implementation. By verifying my assembly code on both hardware kits and software emulators, I have gained a comprehensive understanding of how registers, flags, and memory segments coordinate to execute complex computing tasks.

Would you like me to compile all of these sections into a single, downloadable `.md` file for your repository?
