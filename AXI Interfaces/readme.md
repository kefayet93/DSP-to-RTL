# AXI Architecture #
AXI is referred to as Adbanced eXtensible Interface and is an interface protocol. This is defined by ARM as part of the AMBA (Advanced Microntroller Bus Architecture) standard

**AXI Interface**
AXI data transfer protocol is burst-based. A burst is nothing but a sequence of data that is going to be transferred at a time at the edge of the clock. That means you can transfer multiple data sequences or stream at a particular clock edge. Every transaction has address and control information on the address channel that describes the nature of the data to be transferred.

The data transfer between the master and slave is established with a WRITE DATA channel to the SLAVE or a READ DATA channel to the MASTER. In a WRITE transaction, the data is transferred from the master to the slave. An additional WRITE RESPONSE channel allows the slave to send a response to the master that the WRITE transaction to the slave has been completed.

In AXI, for the ADDRESS, we have two separate channels, one isthe  READ ADDRESS channel and the other is the WRITE ADDRESS channel. Whereas the AHB/APB protocol does not have separate WRITE/READ ADDRESS channels. This is one of the reasons of high-speed data transfer capability of AXI protocol. 

<img width="50%" height="945" alt="image" src="https://github.com/user-attachments/assets/71791bbc-593b-47ac-8d10-597427d83032" />

In the READ operation, the master wants to read some data from the slave. It cannot simply ask to read the data from the slave. The master will send an ADDRESS and Control instruction through a READ ADDRESS channel from which address location to read the data. The Control signal determines whether it's a WRITE operation or a READ operation. In this READ operation case, WRTIE = 0.  Now, after receiving the Address and control signal from the master, the slave, in response, will send the data to the master. The slave will do so with a separate dedicated channel, the READ Data channel. 

