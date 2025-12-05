# Algorithms to Architectures
With the evolution of Very Large Scale Integration (VLSI) technology, the cost of implementing complex hardware systems has significantly decreased. This advancement enables designers to build high-performance, computation-heavy applications in compact silicon footprints. As modern fabrication processes allow more logic gates per chip, the design focus has shifted from conserving space to maximizing system throughput and processing speed. In this context, pipelining and parallelism have become essential techniques in hardware architecture to meet the growing demand for high-speed and real-time digital signal processing (DSP). 

One such DSP application is multichannel filtering in digital beamforming systems, MIMO systems, and wideband channelizers, where parallelism and pipelining are critical hardware strategies. These techniques allow simultaneous processing of multiple input data streams or filter phases, making real-time processing of wideband signals feasible. VLSI and FPGA technologies (e.g., AMD Xilinx RFSoC FPGA) make it possible to implement such architectures efficiently using optimized building blocks like polyphase decomposition, SRL-based MACs, and dedicated DSP slices, unlocking performance levels required for modern communications and radar systems.

# Multichannel Filtering
A multichannel FIR filter is a series of FIR filters operating simultaneously on different data streams. Each stream has its own data, but often shares the same filter coefficients (e.g., matched filters, anti-aliasing filters, or reconstruction filters).

**Tutorial-1** 
- Introduction to the finite impulse response (FIR) filter and its working principle
- Implementation of an FIR filter in VIVADO IDE
- Comparison between software and hardware executions
- Comparison of software and hardware execution times
- Practical application of an FIR filter in a digital downconverter (DDC)

<img width="1369" height="346" alt="image" src="https://github.com/user-attachments/assets/4d60cb56-db62-49f7-8966-553ee48056a2" />

