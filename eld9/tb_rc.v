`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:43 10/21/2016
// Design Name:   rippleCounter
// Module Name:   C:/Users/sony/Desktop/Anubhav/lab9/tb_rc.v
// Project Name:  lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rippleCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rc;

	// Inputs
	reg clk;
	reg reset;
	reg d;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	rippleCounter uut (
		.q(q), 
		.clk(clk), 
		.reset(reset), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

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

      
endmodule

