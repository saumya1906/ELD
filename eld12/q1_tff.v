`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:42 11/11/2016
// Design Name:   q1
// Module Name:   C:/Users/Saumya/Desktop/eld/lab12/q1_tff.v
// Project Name:  lab12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q1_tff;

	// Inputs
	reg clk;

	// Outputs
	wire clk2;

	// Instantiate the Unit Under Test (UUT)
	q1 uut (
		.clk(clk), 
		.clk2(clk2)
	);

	initial begin
		// Initialize Inputs
		clk =0;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
	always 
	#33333333 clk=~clk;
    
endmodule

