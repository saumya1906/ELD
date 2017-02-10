`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:09 10/21/2016
// Design Name:   D_FF
// Module Name:   C:/Users/sony/Desktop/Anubhav/rippleCarryCounter/D_FF_TestBench.v
// Project Name:  rippleCarryCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_TestBench;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		reset = 0;
		//#100;
		//#1500 $stop;
		// Wait 100 ns for global reset to finish
	
	end
		//initial begin
	//initial begin
		//clk =0;
		always  
			#20 clk=~clk;
	//end
	//initial begin
		//d=0;
		always  
			#17 d=~d;
	//end
	//initial begin
		//reset =0;
		always  
			#102 reset=~reset;
	//end
	initial begin
		#1001 $finish;
	end	
		// Add stimulus here

	//end
      
endmodule

