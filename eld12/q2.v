`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:57 11/08/2016 
// Design Name: 
// Module Name:    q2 
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
module q2( clk, disp, anode
    );

input clk;         // 50 MHz oscillator 
output reg [6:0] disp; // selected display output
output reg [3:0] anode;
wire clk2;
q1 Q1(clk, clk2);
integer cnt=1;
//disp=7'b1111111;
always @ (posedge clk2)
begin
if(cnt==1)
begin
assign anode=4'b1110;
disp=7'b0111111;
cnt=cnt+1;
end
else if(cnt==2)
begin
assign anode=4'b1110;
disp=7'b1011111;
cnt=cnt+1;
end
else if(cnt==3)
begin
assign anode=4'b1110;
disp=7'b1101111;
cnt=cnt+1;
end
else if(cnt==4)
begin
assign anode=4'b1110;
disp=7'b1110111;
cnt=cnt+1;
end
else if(cnt==5)
begin
assign anode=4'b1110;
disp=7'b1111011;
cnt=cnt+1;
end
else if(cnt==6)
begin
assign anode=4'b1110;
disp=7'b1111101;
cnt=cnt+1;
cnt=1;
end
end
endmodule
