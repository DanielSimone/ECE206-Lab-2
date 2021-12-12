//==============================================================================
// 8-bit Procedural Adder Module
//==============================================================================

module Adder8Procedural(
	input      [7:0] a,  // Operand A
	input      [7:0] b,  // Operand B
	input            ci, // Carry-In
	output reg [7:0] s,  // Sum
	output reg       co  // Carry-Out
);

	// Declare any internal regs you want to use here.
	// For this module, do not use wires.
	reg [8:0] sum;
	// Write your code here. Use the always @( * ) block
	// to create combinational logic. Also,
	// use the addition (+) operator to make your code shorter.

	always @( * ) begin
		// Combinational Logic Here
		sum = a + b + ci;
		s = sum[7:0];
		co = sum[8];
	end

endmodule
