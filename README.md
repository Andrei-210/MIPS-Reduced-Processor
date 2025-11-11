#  MIPS Reduced Processor (Xilinx ISE)

A simple 32-bit reduced MIPS processor implemented in **VHDL** using **Xilinx ISE**.  
The processor executes a small but functional subset of MIPS instructions and includes a 32x32-bit ROM memory for program storage.

---

##  General Specifications

- **Architecture:** Reduced 32-bit MIPS CPU  
- **Language:** VHDL  
- **Tool:** Xilinx ISE  
- **Instruction Memory:** 32x32-bit ROM  
- **Data Memory:** Basic RAM for `lw` / `sw` operations  
- **Supported Instructions:**
  - `lw` — Load Word  
  - `sw` — Store Word  
  - `add` — Addition  
  - `sub` — Subtraction  
  - `and` — Bitwise AND  
  - `or` — Bitwise OR  
  - `beq` — Branch on Equal  

---

##  Example Program

```asm
rep:
  lw $2, 0x40($0)   # INW0 = 0xAAAA_AAAB
  lw $3, 0x44($0)   # INW1 = 0x5555_5555
  add $4, $2, $3
  sub $5, $2, $3
  and $6, $2, $3
  or  $7, $2, $3
  sw  $2, 0x48($0)
  sw  $3, 0x48($0)
  sw  $4, 0x48($0)
  sw  $5, 0x48($0)
  sw  $6, 0x48($0)
  sw  $7, 0x48($0)
  beq $2, $3, rep   # no branch (values differ)
  beq $0, $0, rep   # branch to rep (infinite loop)
```
## Project Structure
```
Mips/
├── asm/                # Assembly files and related data
├── templates/          # Xilinx templates and configs
├── work/               # Simulation and synthesis workspace
├── xst/                # Synthesis and netlist files
├── ALU.vhd             # Arithmetic and Logic Unit
├── ctrl.vhd            # Control Unit
├── File_Regs.vhd       # Register File (32 registers)
├── DataMem.vhd         # Data Memory
├── ROM32x32.vhd        # 32-word Instruction ROM
├── PC_Update.vhd       # Program Counter logic
├── tb_mips.tbw         # Testbench for simulation
├── MIPS.ise            # Main Xilinx ISE project file
└── results/            # Simulation results and waveforms
```
## Simulation
You can run the simulation in Xilinx ISE using the testbench:
tb_mips.tbw
The waveform visualization shows:
  - Instruction fetch from ROM
  - ALU arithmetic and logic execution
  - Memory access operations (lw, sw)
  - Branching behavior for beq

## Architecture Overview
```
+-------------------+
|     Control       |
| (Instruction Dec) |
+---------+---------+
          |
          v
+---------+---------+
|        ALU        | <--- Register File ---+
+---------+---------+                       |
          |                                 |
          v                                 |
+---------+---------+                       |
|     Data Memory   |                       |
+-------------------+                       |
                                            |
+-------------------+                       |
|      ROM 32x32    |-----------------------+
+-------------------+
```
## Possible Improvements
Add a 5-stage pipeline (IF, ID, EX, MEM, WB)
Implement additional instructions (addi, bne, slt, j, jal)
Add hazard detection and forwarding logic
Interface with peripherals (LEDs, UART, etc.)
Migrate to Vivado with updated IP cores

## Author
- Nicoli Andrei - Claudiu
- Third-year student at University of Craiova, Faculty of Automatics, Computer Science and Engineering
