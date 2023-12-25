`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2023 22:03:05
// Design Name: 
// Module Name: srusingt
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


module srusingt(
   input s,r,reset,clk,
    output q
);
wire w1,w2,w3;
and a1(w1,q,r);
and a2(w2,~q,s);
or a3(w3,w1,w2);
 t_ff dut(.clk(clk),.reset(reset),.t(w3),.q(q));
endmodule
