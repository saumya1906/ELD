`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:52 10/27/2016 
// Design Name: 
// Module Name:    priority_df 
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
module priority_df ( a, b ,c ,d ,e
    );
input a,b,c;
output d,e;
//wire q1,q2;
assign d = a||b;//a+b
//assign q1=~b;//~b
//assign q2 = q1&&c;//~b.c
assign e = a||((~b)&&c);//a+~b.c

endmodule

