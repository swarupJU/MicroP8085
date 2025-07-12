# Verilog 8085 Microprocessor Implementation

This project is a complete Verilog HDL implementation of the Intel 8085 8-bit microprocessor. It is designed for educational purposes and supports a range of instructions covering data transfer, arithmetic, logic, and branching operations.

Built to simulate instruction-level execution, this design is modular and can be tested using Verilog simulation tools.

---

## Features Implemented

- Instruction fetch, decode, and execute stages
- Arithmetic and Logic Unit (ALU)
- General-purpose register file (registers A, B, C, D, E, H, L)
- Memory read/write support
- Branching and jump control logic
- Instruction decoder with support for register, immediate, and memory addressing
- Halt (HLT) instruction for stopping execution

---

## Supported Instructions 

Category: Data Transfer  
- MOV, MVI, LDA, STA

Category: Arithmetic  
- ADD, ADC, SUB, SBB, INR, DCR

Category: Logical  
- ANA, XRA, ORA, CMP

Category: Branching  
- JMP, JZ, JNZ, JC, JNC, JP, JM, JPE, JPO

Category: Miscellaneous  
- HLT

---
## File Structure
├── src/

│ ├── IDecoder.v - Instruction decoder module

│ ├── ALU.v - Arithmetic and Logic Unit

│ ├── RegisterFile.v - General-purpose registers

│ ├── ControlUnit.v - Instruction control logic (FSM)

│ ├── MP85.v - Top-level processor module

│ └── Memory.v - Program and data memory

├── testbenches/

│ └── tb_MP85.v - Testbench for top-level processor

## License

This project is licensed under the Apache License 2.0. See the LICENSE file for details.

---

## Contributing

Contributions are welcome. You can extend instruction support, refactor modules, or port this design to an FPGA platform.

---

## Author

Developed by:Swarup Saha Roy

Contact: swarupsaharoy2004@gmail.com 

Institution:Jadavpur University








