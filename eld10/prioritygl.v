`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:01 10/27/2016 
// Design Name: 
// Module Name:    prioritygl 
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
module prioritygl ( a, b ,c ,d ,e
    );
input a,b,c;
output d,e;
wire q1,q2;
or a1(d,a,b);//a+b
not a2(q1,b);//~b
and a3(q2,q1,c);//~b.c
or a4(e,a,q2);//a+~b.c


endmodule
