# 32-bit Arithmetic Operations using MDA 8086 μp Kit
## Description
This project focuses on the study and implementation of 32-bit addition and subtraction using the MDA 8086 microprocessor kit and EMU-8086 software. The objective is to learn how to operate 32-bit arithmetic by coordinating lower and upper words to achieve accurate results within the 8086 architecture. The correctness of these operations is verified through both hardware (LEDs on the kit) and software (EMULATOR output display).
## Theory: How It Works
A microprocessor is a computer processor where data processing logic and control are integrated into a single circuit (IC). It contains the arithmetic, logic, and control circuitry necessary to execute program instructions.
#### 32-bit Arithmetic Logic
Because the 8086 is a 16-bit architecture, 32-bit operations are performed by splitting the data into lower and upper 16-bit words. The process relies on the management of the Carry and Borrow flags to ensure accurate calculation across these words.
1. 32-bit Addition

- The lower 16 bits of the numbers are added using the ADD instruction.

- If the addition of the lower bits generates a carry, the Carry Flag is set.

- The upper 16 bits are added using the ADC (Add with Carry) instruction. This instruction adds the two operands plus the status of the Carry Flag, ensuring the overflow from the lower bits is included in the final result.

2. 32-bit Subtraction

- The lower 16 bits are subtracted using the SUB instruction.
- If the lower bits require a borrow, the Borrow Flag is set.
- The upper 16 bits are processed using the SBB (Subtract with Borrow) instruction. This instruction subtracts the source operand and the Borrow Flag from the accumulator, properly accounting for the borrow requirement from the previous step.
