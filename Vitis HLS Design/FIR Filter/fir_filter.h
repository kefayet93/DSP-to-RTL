#include "ap_int.h"
#include <hls_stream.h>

const int SAMPLES = 512; // size of input data to be filtered
typedef int FIR_Dtype; // Type of filter input and output
const int RANGE = 15; // Range of input data

// Structure for Stream Interface with data and last signal
struct axis_data{
	FIR_Dtype data;
	ap_uint<1> last;
};

const int ntaps = 51;
// Fixed Symmetric Integer Filter coefficients
// We can have filter coefficients as inputs as well if needed
const int fir_coeff[ntaps] = {5,7,4,12,2,8,9,3,20,7,14,12,3,20,7,14,12,3,7,14,12,3,6,1,10,5,8,2,8,3,1,3,8};

// Three solutions: Serial FIR, Conventional FIR, Symmetric FIR

void FIR(hls::stream<axis_data> &fir_input, hls::stream<axis_data> &fir_output);
void FIR_Symm(hls::stream<axis_data> &fir_input, hls::stream<axis_data> &fir_output);
void FIR_Serial(hls::stream<axis_data> &fir_input, hls::stream<axis_data> &fir_output);

