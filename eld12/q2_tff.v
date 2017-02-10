`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:29:24 11/11/2016
// Design Name:   q2
// Module Name:   C:/Users/Saumya/Desktop/eld/lab12/q2_tff.v
// Project Name:  lab12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q2_tff;

	// Inputs
	reg clk;

	// Outputs
	wire [6:0] disp;
	wire [3:0] anode;

	// Instantiate the Unit Under Test (UUT)
	q2 uut (
		.clk(clk), 
		.disp(disp), 
		.anode(anode)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always
#10 clk=~clk;
endmodule

