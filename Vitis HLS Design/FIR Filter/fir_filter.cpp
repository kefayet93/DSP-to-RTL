#include "fir_filter.h"
// Consider the design of FIR filter which performs the convolution between input and filter coefficient

#ifdef solution1
// Parallel FIR filter for symmetric as well as non-symmetric filter coefficients
// Filter coefficients are fixed as defined in header filter
// Filter order is also fixed

void FIR(hls::stream<axis_data> &fir_input, hls::stream<axis_data> &fir_output)
{
	// AXI Stream Interface
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE axis register both port=fir_input
    #pragma HLS INTERFACE axis register both port=fir_output

	FIR_Dtype local_fir_input[SAMPLES];
	FIR_Dtype local_fir_output[SAMPLES];
	axis_data local_data;

	int i, sample;
	// Receiving the input via stream interface
	Data_IN:for (sample=0; sample<SAMPLES; sample++)
	{
		local_data = fir_input.read();
		local_fir_input[sample] = local_data.data; // converted the received data over
		// stream interface to vectorized input of size=sample
	}

	// Shift Register in FIR filter to remember past inputs
	// Partitioning is done to perform MAC operation in parallel
	static int shift_reg[no_of_taps];
    #pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=1

	int acc;
	// FIR filter receives one input sample at a time
	// One output is produced for every input sample via multiple MAC operations
	// This "for loop" is pipelined so that all MAC and SHIFT operations are done in parallel

	DATA_SAMPLE:for(sample=0; sample<SAMPLES; sample++)
	{
        #pragma HLS PIPELINE
		acc = 0;
		Shidt_Accum_Loop;
		for (i=ntaps-1; i>=1; i--)
		{
			shift_reg[i] = shift_reg[i-1];
			acc += shift_reg[i] * fir_coef[i];
		}
		// New input sample is taken inside the Shift Register
		acc += local_fir_input[sample] * fir_coef[0];
		shift_reg[0] = local_fir_input[sample];
		// Produce the output sample for the given input sample
		local_fir_output[sample] = acc;

	}

	// stream output data back
	Data_out:for(sample=0; sample<SAMPLES; sample++)
	{
        #pragma HLS PIPELINE
		local_data.data = local_fir_output[sample];
		// generating the last signal and strobe signal
		if(sample==SAMPLES-1)
			local_data.last = 1;
		else
			local_data.last = 0;
		fir_output.write(local_data);

	}
}
#endif



