`timescale 1ns / 1ps
module rippleCounter(q,clk,reset,d);
output [7:0] q;
input clk, reset,d;

T_FF tff0(d,q[0],clk,reset);
T_FF tff1(d,q[1],q[0],reset);
T_FF tff2(d,q[2],q[1],reset);
T_FF tff3(d,q[3],q[2],reset);
T_FF tff4(d,q[4],q[3],reset);
T_FF tff5(d,q[5],q[4],reset);
T_FF tff6(d,q[6],q[5],reset);
T_FF tff7(d,q[7],q[6],reset);


endmodule
