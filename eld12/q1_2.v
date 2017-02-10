`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:40 11/10/2016 
// Design Name: 
// Module Name:    q1_2 
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
module q1_2( clk, clk2
    );
input clk;
output reg clk2;
integer cnt=0;
always @(posedge clk)
begin
cnt=cnt+1;
if(cnt==16666666)
begin
assign clk2=~clk2;
cnt=0;
end
end
endmodule
