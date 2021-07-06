### this is a comment

### Below is an oracle


oracle some_oracle(super var) { ### takes a superposition as an input
	if(var * 4 < 4) {
	### apply a phase of pi to var if var *  4 < 4. Corresponds to "marking" the term that fits this condition
		mark(var,pi); 
	}
}


### main function is program entry point

function main() {
	#declare a uniform superposition of 3 qubits, e.g. |0>+|1>+|2>...|7> / sqrt(8)
	super variable = 8;
	
	### "filter" function is Grover's algorithm  - e.g. Quantum search
	### oracles are not first class objects
	### when they're passed as inputs it is their memory address
	### that is passed in. This is similar to function pointers in C.
	
	### "filter" increases probability of measuring a value that fits the condition specified in the oracle
	filter(some_oracle(variable));

	### measurement
	### we should expect to measure the value "0" with high probability since it is the only state that fits the constraint x*4 < 4.
	measure variable;
}

