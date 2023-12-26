`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2023 21:26:27
// Design Name: 
// Module Name: jkusingt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jkusingt(
input j,k,clk,reset,
output q
);
wire w1,w2,w3;
and a1(w1,q,k);
and a2(w2,j,~q);
or a3(w3,w1,w2);
t_ff dut(.clk(clk),.reset(reset),.q(q),.t(w3));
endmodule
