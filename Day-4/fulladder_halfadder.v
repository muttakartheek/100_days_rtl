`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 19:50:56
// Design Name: 
// Module Name: fulladder_halfadder
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


module fulladder_halfadder(
    input a,b,c,
    output sum,carry
    );
    wire w1_sum1,w2_carry1,w3,w4;
    half_adder a1(a,b,w1_sum1,w2_carry1);
    half_adder a2(w1_sum1,c,sum,w3 );
    half_adder a3(w2_carry1,w3,carry,w4);
endmodule

module half_adder(
    input a,b,
    output s,ca
    );
    xor x1(s,a,b);
    and a1(ca,a,b);
endmodule

