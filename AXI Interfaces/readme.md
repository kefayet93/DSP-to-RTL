# AXI Architecture #
AXI is referred to as Adbanced eXtensible Interface and is an interface protocol. This is defined by ARM as part of the AMBA (Advanced Microntroller Bus Architecture) standard

**AXI Interface**
. AXI data transfer protocol is burst-based. Burst is nothing but a sequence of data which are going to be transferred at a time at the edge of the clock. That means you con transfer multiple data sequence or stream at a particular clock edge. Every transaction has address and control information on the address channel that describes the nature of the data to be transferred.

The data transfer between the master and slave is established with a WRITE DATA channel to the SLAVE or a READ DATA channel to the MASTER.



In AXI, for the ADDRESS, we have two separate channel, one is READ ADDRESS channel and the other is WRITE ADRESS channel. Whereas the AHB/APB protocol does not have separate WRITE/READ ADDRESS channels. This is one of the reasons of high-speed data transfer capability of AXI protocol. 

