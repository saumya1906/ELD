`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:43:27 10/21/2016
// Design Name:   T_FF
// Module Name:   C:/Users/sony/Desktop/Anubhav/lab9/tb_tff.v
// Project Name:  lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_tff;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.d(d), 
		.q(q), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		reset = 0;

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

	//end
    
endmodule

