`timescale 1ns / 1ps


module T_FF(d,q, clk, reset);

output q;
reg q;
input clk, reset;
//wire d;
input d;
wire m;
//always @ (posedge clk)
//begin
D_FF dff0(d,clk,reset,m);
//not n1(d,q);
//end
always @ (posedge clk)
begin
	if(reset)
		q <=1'b0;
	else
		q <=~m;
end

endmodule
