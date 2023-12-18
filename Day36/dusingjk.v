`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 14:30:02
// Design Name: 
// Module Name: dusingjk
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


module dusingjk(
    input d,clk,rst,
    output q,qbar
    );
    jk_ff a1(d,~d,clk,rst,q,qbar);
endmodule

