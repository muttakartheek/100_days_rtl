`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 22:51:17
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit(
    input [3:0] a,
    input [3:0] b,
    output equal,
    output gt,
    output lt
    );
    assign equal=~(a[3]^b[3]) & ~(a[2]^b[2]) &~(a[1]^b[1]) & ~(a[0]^b[0]);
assign gt=(a[3]&~b[3]) | ~(a[3]^b[3]) & (a[2]&~b[2]) | ~(a[3]^b[3]) & ~(a[2]^b[2]) & (a[1]&~b[1]) | ~(a[3]^b[3]) & ~(a[2]^b[2]) &~(a[1]^b[1]) & (a[0]&~b[0]);
assign lt=(~a[3]&b[3]) | ~(a[3]^b[3]) & (~a[2]&b[2]) | ~(a[3]^b[3]) & ~(a[2]^b[2]) & (~a[1]&b[1]) | ~(a[3]^b[3]) & ~(a[2]^b[2]) &~(a[1]^b[1]) & (~a[0]&b[0]); 
endmodule
