//==============================================================================
// One-Bit Full Adder Module
//==============================================================================

module FullAdder(
	input  a,  // Operand A
	input  b,  // Operand B
	input  ci, // Carry-In
	output s,  // Sum
	output co  // Carry-Out
);
	// Declare any internal wires you want to use here.
	wire and1, and2, and3, or1, xor1;
	// Write your code here. Use only continuous assignment
	// and bitwise operators.
	assign and1 = a && b;
	assign and2 = b && ci;
	assign and3 = a && ci;
	assign or1 = and1 || and2 || and3;
	assign xor1 = a ^ b ^ ci;

	assign s = xor1;
	assign co = or1;

endmodule
