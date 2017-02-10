`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:31:34 11/11/2016
// Design Name:   fsm
// Module Name:   C:/Users/Saumya/Desktop/eld/lab12/fsm_tff.v
// Project Name:  lab12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_tff;

	// Inputs
	reg clk;
	reg reset;
	reg btn3;
	reg btn2;

	// Outputs
	wire freq;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.clk(clk), 
		.reset(reset), 
		.btn3(btn3), 
		.btn2(btn2), 
		.freq(freq)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		btn3 = 0;
		btn2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always
		always #10 clk=~clk;
		always #10 reset = ~reset;
		always #10 btn3=~btn3;
		always #10 btn2=~btn2;
endmodule

