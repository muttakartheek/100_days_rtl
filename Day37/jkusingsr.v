`timescale 1ns / 1ps
////////////////////////////////////////////


module jkusingsr(j,clk,k,reset,Q);
input j,clk,k,reset;
output Q;
wire w1,w2;
and a1(w1,j,~Q);
and a2(w2,k,Q);

sr_ff s1(w1,w2,reset,clk,Q);
endmodule
