`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:49 10/27/2016 
// Design Name: 
// Module Name:    priority8 
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
module priority8(
output [2:0]q, 
input [7:0]a
 );
 
 reg [2:0]q;
	 
	 always @(a)
	 begin
	 if(a[7]==1)
	 begin
	 q = 3'b111;//if msb is 1 output is 11
	 end
	 else if(a[6]==1)
	 begin
	 q = 3'b110;//if second msb is 1 output is 10
	 end
	 else if(a[5]==1)//if third msb is 1 output is 01
	 begin
	 q = 3'b101;
	 end
	 else if(a[4]==1)
	 begin
	 q = 3'b100;
	 end
	 else if(a[3]==1)
	 begin
	 q = 3'b011;
	 end
	 else if(a[2]==1)
	 begin
	 q = 3'b010;
	 end
	 else if(a[1]==1)
	 begin
	 q = 3'b001;
	 end
	 else if(a[0]==1)
	 begin
	 q = 3'b000;
	 end
	 else
	 begin
	 q = 3'b000;
	 end
	 end


endmodule
