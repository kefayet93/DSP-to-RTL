# DSP-to-RTL
This repository contains a collection of wireless digital signal processing (DSP) projects, taking all the way from Matlab/Python models to working RTL on an FPGA. It includes DSP building blocks, such as an FIR filter with fixed-point conversion, bit-true verification, and FPGA timing/power results, showing the full path from algorithm to hardware.

**Algorithm-to-Fixed-point-RTL** 
- Projects focused on wireless communication algorithms
- MATLAB/Python-based signal processing algorithms, both in floating-point and fixed-point models
- Synthesizable Register-Transfer Level (RTL) Verilog coding for hardware implementation on an FPGA
- Timing, power, and resource usage reports and analysis using synthesis tools like Vivado
- Clear microarchitecture diagrams and short descriptions

**C for RTL Design** 
- C teaches how hardware really moves data
- C exposes memory addressing, pointers, and data locality
- That's exactly what RTL design engineers deal with - registers, buses, caches, FIFOs 

| C Concept | RTL Equivalent |
| :------ | :---------: |
| Array | Memory or Register file |
| Pointer | Address Bus|
| Variable | Register/Wire |
| Function Call | Hardware Module |
| Loop | FSM or pipelined datapath |

C is used for Bit-True Fixed-Point modeling. Before implementing in RTL, the high-level algorithm (in Matlab/Python) has to be translated into a C fixed-point model to verify the effects of quantization, saturation, and overgflow. This ensures RTL matches the expected precision and word length. 

C connects hardware to software. In System-on-Chip (SoC) design, RTL interfaces such as AXI, SPI, DMA are controlled by firmware written in C. 
Learning C enables writing register-level drivers for the IPs, debugging interactions between RTL and embedded processors, and driving collaboration with firmware and verification teams.

| Aspect | C Programming| RTL Design | Combined Benefits |
| :------ | :---------: | :------ | :---------: |
| Abstraction | Algorithmic | Clock-Level | Full-system visibility |
| Memory | Addressing, Caching | Register banks, Buses | Better architecture partitioning |
| Optimization | Data Reuse, locality | Pipelining, Resource Sharing | End-to-end performance testing |
| Verification | Reference Model | DUT Implementation | Bit-true comparison|
| Toolchain | Compiler | Synthesis | Software-hardware co-optimization |



# 3-Month C Programming & Data Structures (with RTL Hardware Insights)
Prepared by Kefayet Ullah  
GitHub: https://github.com/kefayet93/DSP-to-RTL  
Focus: Bit-True DSP-to-RTL Design for Wireless SoC Systems  

---

## Month 1 – C Fundamentals
🕒 ~1 hour per day  

### Week 1 – Getting Started with C
🎯 Goal: Learn syntax, data types & program structure.  

Day 1 – [ ] [Introduction to Programming & Features of C](https://www.youtube.com/watch?v=4OGMB4Fhh50)  
Day 2 – [ ] [Structure of a C Program & Tokens in C](https://www.youtube.com/watch?v=rLf3jnHxSmU)  
Day 3 – [ ] [Data Types and Operators](https://www.youtube.com/watch?v=EJpZ-OyDq2Q)  
Day 4 – [ ] Mini-Project → Basic Calculator Program  

**Hardware Mapping Insight:**  
Variables → Registers; Operators → Combinational logic; Program flow → RTL process flow.  

---

### Week 2 – Control Flow in C
🎯 Goal: Master branching and looping.  

Day 5 – [ ] [If/Else and Switch Statements](https://www.youtube.com/watch?v=7AiMZ0Z0rj8)  
Day 6 – [ ] [Loops in C](https://www.youtube.com/watch?v=fGPPfZIvtCw)  
Day 7 – [ ] [Nested Loops](https://www.youtube.com/watch?v=dW5DMxRbzZI)  
Day 8 – [ ] Mini-Project → Bitwise Even/Odd Counter  

**Hardware Mapping Insight:**  
Loops → FSM states; Switch → Multiplexers; Branches → Control signals.  

---

### Week 3 – Arrays & Strings
🎯 Goal: Understand arrays and data manipulation.  

Day 9 – [ ] Arrays & Initialization  
Day 10 – [ ] 2D Arrays (Matrix Operations)  
Day 11 – [ ] String Handling (`strlen`, `strcmp`, `strcpy`)  
Day 12 – [ ] Mini-Project → Matrix Adder & String Reverser  

**Hardware Mapping Insight:**  
Arrays → Memory banks; Strings → Sequential buffers; Indexing → Address logic.  

---

### Week 4 – Functions & Modular Coding
🎯 Goal: Learn modular design and recursion.  

Day 13 – [ ] Functions & Argument Passing  
Day 14 – [ ] Call by Value vs Reference  
Day 15 – [ ] Recursion (Factorial, Fibonacci)  
Day 16 – [ ] Mini-Project → Menu-Driven Math Library  

**Hardware Mapping Insight:**  
Functions → Modules; Function calls → Hierarchy instantiation.  

---

## Month 2 – Pointers, Structures & Memory
🕒 ~1 hour per day  

### Week 5 – Pointers & Memory Access
🎯 Goal: Master pointers and indirect addressing.  

Day 17 – [ ] [Pointers Introduction](https://www.youtube.com/watch?v=I37kGX-nZEI)  
Day 18 – [ ] [Pointer Arithmetic and Arrays](https://www.youtube.com/watch?v=R9PTBwOzceo)  
Day 19 – [ ] [Function Pointers](https://www.youtube.com/watch?v=16P51olKuzk)  
Day 20 – [ ] Mini-Project → Array Reversal using Pointers  

**Hardware Mapping Insight:**  
Pointers → Bus address logic; Dereferencing → Read/Write enables.  

---

### Week 6 – Structures & Dynamic Memory
🎯 Goal: Organize complex data and allocate memory.  

Day 21 – [ ] [Structures and Unions](https://www.youtube.com/watch?v=16P51olKuzk)  
Day 22 – [ ] [Dynamic Memory Allocation](https://www.youtube.com/watch?v=0lP6zSxKj1I)  
Day 23 – [ ] Mini-Project → Struct-Based Register Map  

**Hardware Mapping Insight:**  
Structs → Grouped registers; Dynamic memory → BRAM/SRAM management.  

---

### Week 7 – Memory Management
🎯 Goal: Deep dive into `malloc`, `calloc`, linked lists.  

Day 24 – [ ] Dynamic Arrays with `malloc` & `calloc`  
Day 25 – [ ] Linked List Basics  
Day 26 – [ ] Mini-Project → Heap Memory Simulator  

**Hardware Mapping Insight:**  
Linked lists → Pointer chaining; Heaps → Dynamic buffers in RTL.  

---

### Week 8 – Bitwise Ops & File I/O
🎯 Goal: Bit manipulation and data I/O.  

Day 27 – [ ] [Bitwise Operators](https://www.youtube.com/watch?v=EJpZ-OyDq2Q)  
Day 28 – [ ] [File Handling in C](https://www.youtube.com/watch?v=lAo9r_asiew)  
Day 29 – [ ] Mini-Project → FIR I/O File Simulation  

**Hardware Mapping Insight:**  
Bitwise → Masking / Shifting; File I/O → Testbench stimulus.  

---

## Month 3 – Data Structures & Algorithmic Thinking
🕒 ~1 hour per day  

### Week 9 – Stacks & Queues
🎯 Goal: Sequential data structures & buffering.  

Day 30 – [ ] [Stacks](https://www.youtube.com/watch?v=I37kGX-nZEI)  
Day 31 – [ ] [Queues](https://www.youtube.com/watch?v=T9DSBhBR_I4)  
Day 32 – [ ] [Circular Queues](https://www.youtube.com/watch?v=xLetJpcjHS0)  
Day 33 – [ ] Mini-Project → FIFO Buffer Simulation  

**Hardware Mapping Insight:**  
Stack → LIFO memory; Queue → FIFO hardware buffers.  

---

### Week 10 – Linked Lists
🎯 Goal: Dynamic data structures.  

Day 34 – [ ] [Linked Lists](https://www.youtube.com/watch?v=R9PTBwOzceo)  
Day 35 – [ ] Doubly Linked Lists  
Day 36 – [ ] Mini-Project → Linked-List-Based Buffer  

**Hardware Mapping Insight:**  
Linked lists → Sequential memory with address pointers.  

---

### Week 11 – Trees & Searching
🎯 Goal: Hierarchical structures and search algorithms.  

Day 37 – [ ] [Trees and Binary Search Trees](https://www.youtube.com/watch?v=lAo9r_asiew)  
Day 38 – [ ] [Tree Traversals and Search](https://www.youtube.com/watch?v=8de0iwrsuO0)  
Day 39 – [ ] Mini-Project → Binary Tree Search Demo  

**Hardware Mapping Insight:**  
Trees → Routing networks / decision logic.  

---

### Week 12 – Sorting & Integration
🎯 Goal: Combine knowledge into algorithmic coding.  

Day 40 – [ ] [Sorting Algorithms](https://www.youtube.com/watch?v=EJpZ-OyDq2Q)  
Day 41 – [ ] Mini-Project → C Testbench for RTL Filter  
Day 42 – [ ] Final Review & GitHub Upload  

**Hardware Mapping Insight:**  
Sorting → Pipelined compare-swap logic; Final Project → Algorithm-to-RTL workflow.  

---

### GitHub Folder Template


