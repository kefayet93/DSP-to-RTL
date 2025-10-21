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



