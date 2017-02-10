`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:27:15 10/28/2016
// Design Name:   priorityb
// Module Name:   C:/Users/Saumya/Desktop/eld/ELD/prioritybtf.v
// Project Name:  ELD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priorityb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prioritybtf;

	// Inputs
	reg [2:0] a;

	// Outputs
	wire [1:0] q;

	// Instantiate the Unit Under Test (UUT)
	priorityb uut (
		.q(q), 
		.a(a)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#10;
		a[0]=0;
		  a[1]=0;
		  a[2]=1;
		 #10;
			a[0]=0;
		  a[1]=1;
		  a[2]=1;
		 #10;
		 a[0]=1;
		  a[1]=0;
		  a[2]=0;
        
		// Add stimulus here

	end
      
endmodule

