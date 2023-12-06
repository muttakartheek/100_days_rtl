`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 22:18:29
// Design Name: 
// Module Name: bcd_ex3
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


module bcd_ex3(
    input a,
    input b,
    input c,
    input d,
    output w,
    output x,
    output y,
    output z
    );
              assign w = (a | (b & c) | (b & d));
              assign x = (((~b) & c) | ((~b) & d) | (b & (~c) & (~d)));
              assign y = ((c & d) | ((~c) & (~d)));
              assign z = ~d;
endmodule
