# MIPS_PROCESSOR

This project describes Verilog code for a 32-bit pipelined MIPS processor.

It is a combination of gate-level, dataflow and behavioural modelling.

Features:

  1. Instruction Memory for 32-bit MIPS instructions.
  
  2. 32 32-bit Data Memory locations.
  
  3. Instruction Memory consisting of arithmetic, logical, branch, jump, and memory-access instructions. Immediate arguments and argument registers are hard-coded.
  
  4. 5-stage pipelining; stages are:
    Instruction Fetch (IF),
    Instruction Decode (ID),
    Execute (EX),
    Memory Access (MEM),
    Writeback (WB).
    
  5. Data Forwarding Unit to partially resolve hazards in R-type instructions.
  
  6. Hazard Detection Unit to insert stalls (nop cycles) wherever required.
