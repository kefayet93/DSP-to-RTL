# DSP-to-RTL
Modern System-on-Chip (SoC) and wireless system design rely on bridging the gap between digital signal processing (DSP) algorithms and real silicon implementation. This repository contains a collection of DSP projects, taking all the way from Matlab/Python models to synthesizable RTL on real silicon. It includes DSP building blocks, such as an FIR filter with fixed-point conversion, bit-true verification, and FPGA timing/power results, showing the full path from algorithm to hardware.

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

C is used for Bit-True Fixed-Point modeling. Before implementing in RTL, the high-level algorithm (in Matlab/Python) has to be translated into a C fixed-point model to verify the effects of quantization, saturation, and overflow. This ensures RTL matches the expected precision and word length. 

C connects hardware to software. In System-on-Chip (SoC) design, RTL interfaces such as AXI, SPI, DMA are controlled by firmware written in C. 
Learning C enables writing register-level drivers for the IPs, debugging interactions between RTL and embedded processors, and driving collaboration with firmware and verification teams.

| Aspect | C Programming| RTL Design | Combined Benefits |
| :------ | :---------: | :------ | :---------: |
| Abstraction | Algorithmic | Clock-Level | Full-system visibility |
| Memory | Addressing, Caching | Register banks, Buses | Better architecture partitioning |
| Optimization | Data Reuse, locality | Pipelining, Resource Sharing | End-to-end performance testing |
| Verification | Reference Model | DUT Implementation | Bit-true comparison|
| Toolchain | Compiler | Synthesis | Software-hardware co-optimization |

Learning C is essential for RTL Design Engineers because:
1. It trains one to think in terms of data movement and memory, exactly what happens in hardware
2. It enables bit-true modeling, hardware-software co-simulation, and HLS-based design
3. It bridges algorithms, Hardware (RTL), Verification, and Firmware (Software)

**Hardware-Algorithm Correlation**
1. Bit-true verification:
   - Implement bit-true models in C to validate RTL output accuracy
   - Verify RTL arithmetic matches algorithmic behavior within 1 LSB (least significant bit) precision across fixed-point formats
   - Ensures functional equivalence between floating-point simulation and real hardware implementation.

**Deliverables**
1. Design a pipelined fused multiply-add (FMA) block for a GPU ALU
2. Optimize a floating-point divider to meet 1 GHz timing at minimal area
3. Debug a rounding error causing a mismatch between RTL and the C reference model
4. Create a parameterized FP datapath supporting FP16/FP32/FP64 precision
5. Integrate FP unit into the core execution cluster; analyze power/timing trade-offs

<img width="1369" height="346" alt="image" src="https://github.com/user-attachments/assets/6e30f753-cf63-4527-bac4-38a4480aacee" />

