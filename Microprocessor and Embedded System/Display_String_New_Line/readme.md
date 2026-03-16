# Displaying Strings and Line Control in 8086 Assembly

This project focuses on the experimental study of programming structures required to display strings and perform line control (starting a new line) using the **8086 microprocessor**. The implementation is performed using the **EMU 8086** software, demonstrating how the microprocessor interacts with memory segments and DOS interrupts to handle text output.

---

## Theory: How It Works
The 8086 microprocessor architecture utilizes a **segmented memory model**, primarily consisting of the **Code Segment** (containing executable instructions) and the **Data Segment** (containing variables and strings).



### 1. String Display Logic
To display a string, the program must coordinate several registers and follow a specific initialization sequence:

* **Segment Initialization:** The address of the data segment must first be loaded into the `AX` register and then moved into the `DS` (Data Segment) register. This step tells the microprocessor where to locate the string data in memory.
* **Address Loading:** The `LEA` (Load Effective Address) instruction is used to point the `DX` register to the specific offset memory location of the string.
* **Interrupt Execution:** The program sets the `AH` register to `09H` (the DOS function for string output) and triggers `INT 21H`. 
    > **Note:** The string must be terminated with a `$` character (ASCII 24H) for the microprocessor to identify the end of the string.

### 2. New Line and Character Control
Starting a new line involves sending specific ASCII control characters to the output:

* **Line Feed (0AH):** Moves the cursor to the next line.
* **Carriage Return (0DH):** Moves the cursor to the beginning of the current line.
* **Character Input/Output:** * Using `AH=01H` with `INT 21H` allows for reading a character from the keyboard into the `AL` register.
    * Using `AH=02H` with `INT 21H` is used to display a single character currently stored in the `DL` register.

---

## Core DOS Interrupt Summary (INT 21H)

| AH Value | Function | Input Register | Description |
| :--- | :--- | :--- | :--- |
| **01H** | Character Input | N/A | Reads a char into `AL` with echo. |
| **02H** | Character Output | `DL` | Displays the character in `DL`. |
| **09H** | String Output | `DX` | Displays string at `DS:DX` until `$`. |
| **4CH** | Terminate | N/A | Returns control to the operating system. |



---

## Software Requirements
* **EMU 8086**: Microprocessor Emulator.

## Source code and Output

![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Display_String_New_Line/img/6_1.png?raw=true)
![](https://github.com/hossain190503/Microprocessor_and_Embdedded_System/blob/main/Microprocessor%20and%20Embedded%20System/Display_String_New_Line/img/6_2.png?raw=true)
