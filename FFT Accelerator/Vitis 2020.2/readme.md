**FFT Accelerator**
This repository contains the C-code to design the FFT on the ARM processor using Vitis 2020.2 from Vivado. 

**Step 1: Configuring the Hardware** 
Enable or disable different units, such as the I/O peripherals provided by ZYNQ SoC. This will be done in the Vivado software.

**Step 2: Exporting data**
We will be exporting the hardware design from Vivado to Vitis. 

**Step 3: Creating Board Support Package (BSP)**
BSP contains all the drivers and simple functions that enable communication between different units in the hardware. 

**Step 4: Writing Application**
Write the desired application that will eventually be executed on the ARM processor. 
