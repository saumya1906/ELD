`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:25:11 11/04/2016 
// Design Name: 
// Module Name:    main 
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
module main( prod , mcd, multi , clk , start , busy
    );
	output reg[7:0]prod;
	output reg busy;
	input [3:0]mcd;
	input [3:0]multi;
	input clk, start;
	reg [3:0]u;
	reg [3:0]v;
	//reg [3:0]temp;
	reg q;
	reg [3:0]x;
	reg [3:0]y;
	reg cnt;
	//busy <= 1'b0;
	always @(posedge clk)
		begin
		busy <= 1'b0;
		cnt = 0;
		if(start)
		begin
		u <= 4'b0000;
		v <= 4'b0000;
		q <= 1'b0;
		x <= multi;
		y <= mcd;
		end
		else
		begin
		busy <= 1'b1;
		if(x[0]==0 && q==1'b1)
		begin
		v <= (v>>1);
		v[3] <= u[0];
		//addition A0(temp, u, y);
		u <= u + y;// addition
		//u<=temp;
		//u <= addition(u,y);
		//rightshift(u);
		//rsa A1(u,temp);
		u[0] <= u[0];
		u[1] <= u[0];
		u[2] <= u[1];
		u[3] <= u[2];
		//u <= temp;
		q <= x[0];
		x[0] <= x[3];
		x[1] <= x[0];
		x[2] <= x[1];
		x[3] <= x[2];
		//rsc A2(x,temp);
		//x <= temp;
		//rotate(x);
		cnt=cnt+1;
		end
		else if(x[0]==1 && q==1'b0)
		begin
		v = v>>1;
		v[3] <= u[0];
		//subtraction A0(temp, u, y);
		u <= u + ~y + 1'b1;//subtraction
		//u<=temp;
		//rsa A1(u,temp);
		u[0] <= u[0];//RSA logic
		u[1] <= u[0];
		u[2] <= u[1];
		u[3] <= u[2];
		//u <= temp;
		q <= x[0];
		//rsc A2(x,temp);
		x[0] <= x[3];// RSC logic
		x[1] <= x[0];
		x[2] <= x[1];
		x[3] <= x[2];
		//x <= temp;
		cnt=cnt+1;
		end
		else 
		begin
		v = v>>1;
		v[3] <= u[0];
		//rsa A1(u,temp);
		u[0] <= u[0];
		u[1] <= u[0];
		u[2] <= u[1];
		u[3] <= u[2];
		//u <= temp;
		q <= x[0];
		//rsc A2(x,temp);
		x[0] <= x[3];
		x[1] <= x[0];
		x[2] <= x[1];
		x[3] <= x[2];
		//x <= temp;
		cnt=cnt+1;
		end
		end
		if(cnt==4)
		begin
		prod[0]=v[0];
		prod[1]=v[1];
		prod[2]=v[2];
		prod[3]=v[3];
		prod[4]=u[0];
		prod[5]=u[1];
		prod[6]=u[2];
		prod[7]=u[3];

		//assign prod = {u, v};
	//	prod=join u&v;
		end
	end
	
endmodule
