`timescale 1ns / 1ps
module D_FF(d,clk,reset,q);

output q;
reg q;
input d ;
input clk ;
input reset ; 

always @ (posedge clk)
begin
 if (reset)
  q <= 1'b0;
 else
  q <= d;
end

endmodule
