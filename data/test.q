
# Q program illustrating Deutsch-Josza Algorithm.
# This algorithm, given a function f, checks if it is constant or balanced. (guaranteed to be either)
# If f is constant, it return either 0 or 1 for all inputs.
# If f is balanced, it returns 0 for half of all inputs and 1 for the other half. 

# It works as follows:
# 	1. Initialize superposition of inputs.
# 	2. Apply function to superposition and XOR the result with a qubit in the |-> state.
#	3. Apply HADAMARD Gate on superposition.
#	4. Measure superposition.
#	5. If resulting value is zero then f is constant.
#	6. Else f is balanced.

# this function takes in a superposition of inputs 
function deutsch_josza(super inputs) {
	# check if state is greater than 15
	# the Q compiler stores the result of this in a 1-qubit register, referenced as CMP0.
	if(inputs + 7 > 14) {
		# the mark function XOR's CMP0 with a qubit in the state |->
		mark(inputs,pi);
	}
}



# main function, i.e., body of program

function main() {
	# initialize superposition to 5 qubits
	# this should serve as the input for our function
	super test = 16;

	# apply deutsch-josza function
	# if the function is balanced, i.e, half of all inputs return 1 and the other half return 0,
	# then half of all functions will be marked with a phase of pi.

	deutsch_josza(test);

	# interference with HADAMARD Gate.
	# This should reduce the superposition to a single value to be measured.
	# if the value is non-zero, then the function is balanced.
	# Else function is constant
	H(test);

	# measure our result, i.e, store in a classical register
	measure test;	
}








function deutsch_josza(super inputs) {
	if(inputs + 7 > 14) {
		mark(inputs,pi);
	}
}


function main() {
	super test = 16;
	deutsch_josza(test);
	H(test);
	measure test;	
}













