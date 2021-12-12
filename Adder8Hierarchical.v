//==============================================================================
// 8-bit Hierarchical Adder Module
//==============================================================================

`include "FullAdder.v"

module Adder8Hierarchical(
	input  [7:0] a,  // Operand A
	input  [7:0] b,  // Operand B
	input        ci, // Carry-In
	output [7:0] s,  // Sum
	output       co  // Carry-Out
);
	// Declare any internal wires you want to use here.
	wire ci1, ci2, ci3, ci4, ci5, ci6, ci7;
	// Write your code here. Instantiate eight FullAdder modules
	// and connect them to the inputs and outputs appropriately.
	FullAdder fulladder1(
		.a(a[0]),
		.b(b[0]),
		.ci(ci),
		.s(s[0]),
		.co(ci1)
	);
	FullAdder fulladder2(
		.a(a[1]),
		.b(b[1]),
		.ci(ci1),
		.s(s[1]),
		.co(ci2)
	);
	FullAdder fulladder3(
		.a(a[2]),
		.b(b[2]),
		.ci(ci2),
		.s(s[2]),
		.co(ci3)
	);
	FullAdder fulladder4(
		.a(a[3]),
		.b(b[3]),
		.ci(ci3),
		.s(s[3]),
		.co(ci4)
	);
	FullAdder fulladder5(
		.a(a[4]),
		.b(b[4]),
		.ci(ci4),
		.s(s[4]),
		.co(ci5)
	);
	FullAdder fulladder6(
		.a(a[5]),
		.b(b[5]),
		.ci(ci5),
		.s(s[5]),
		.co(ci6)
	);
	FullAdder fulladder7(
		.a(a[6]),
		.b(b[6]),
		.ci(ci6),
		.s(s[6]),
		.co(ci7)
	);
	FullAdder fulladder8(
		.a(a[7]),
		.b(b[7]),
		.ci(ci7),
		.s(s[7]),
		.co(co)
	);

endmodule
