`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:37 11/10/2016 
// Design Name: 
// Module Name:    fsm 
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
module fsm( clk, reset, btn3, btn2, freq
    );
	input clk, reset, btn3,btn2;
	output reg [6:0] disp; // selected display output
	output reg [3:0] anode;
	output reg freq;
	wire f0, f1, f2;
	q1 F0(clk, f0);
	q1_2 F1(clk, f1);
	q1_4 F2(clk, f2);
	reg f10;
	reg f11;
	reg f12;
	always @ (posedge btn3 or posedge reset)
	begin
	if(reset)
	begin
	assign freq = f0;
	assign f10 = f0;
	assign f11= f1;
	assign f12 = f2;
	end
	else
	begin
	assign f10 = f11;
	assign f11 = f12;
	assign freq = f10;
	end
	integer cnt=1;
//disp=7'b1111111;
always @ (posedge freq)
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
	//end
	always @ (posedge btn2 or posedge reset)
	begin
	if(reset)
	begin
	assign freq = f0;
	assign f10 = f0;
	assign f11= f1;
	assign f12 = f2;
	end
	else
	begin
	//assign f10 = f11;
	assign f12 = f11;
	assign f11 = f10;
	assign freq = f10;
	end
always @ (posedge freq)
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
	end

endmodule
