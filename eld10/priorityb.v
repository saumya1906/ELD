`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:35 10/27/2016 
// Design Name: 
// Module Name:    priorityb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module priorityb ( output [1:0]q,
input [2:0]a
    );
	 
	 reg [1:0]q;
	 
	 always @(a)
	 begin
	 if(a[2]==1)
	 begin
	 q = 2'b11;//if msb is 1 output is 11
	 end
	 else if(a[1]==1)
	 begin
	 q = 2'b10;//if second msb is 1 output is 10
	 end
	 else if(a[0]==1)//if third msb is 1 output is 01
	 begin
	 q = 2'b01;
	 end
	 else
	 begin
	 q = 2'b00;
	 end
	 end

endmodule

