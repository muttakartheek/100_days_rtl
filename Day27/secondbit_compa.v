`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:47:16
// Design Name: 
// Module Name: secondbit_compa
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


module secondbit_compa(
    input [1:0] a,
    input [1:0] b,
    output equal,
    output gt,
    output lt
    );
    assign equal=~(a[1]^b[1]) & ~(a[0]^b[0]);
    assign gt=a[1]&~b[1] | ~(a[1]^b[1]) & a[0]&~b[0] ;
    assign lt=~a[1]&b[1] | ~(a[1]^b[1]) & ~a[0]&b[0];
endmodule
