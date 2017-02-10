`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:33 11/08/2016 
// Design Name: 
// Module Name:    q1 
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
module q1(clk,clk2);
//reg clk;
input clk;
output reg clk2;
integer cnt=0;
initial clk2 = 0;
always @(posedge clk)
begin
if(cnt==8333333)
begin
clk2<=~clk2;
cnt=0;
end
cnt=cnt+1;
end
endmodule
