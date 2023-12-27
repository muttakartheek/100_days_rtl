`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 22:14:55
// Design Name: 
// Module Name: dusingt
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


module dusingt(
input d,clk,reset,
output q

    );
    wire w1;
    xor a1(w1,d,q);
d_flipflop dut(w1,clk,reset,q);
endmodule
