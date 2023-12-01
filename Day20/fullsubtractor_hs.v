`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 14:21:01
// Design Name: 
// Module Name: fullsubtractor_hs
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


module fullsubtractor_hs(
    input a,b,c,
    output diff,barrow
    );
    wire w1,w2,w3,w4;
    half_subtractor h1(a,b,w1,w2);
    half_subtractor h2(w1,c,diff,w3);
    half_subtractor h3(w2,w3,barrow,w4);
    
endmodule

module half_subtractor(
    input a,b,
    output d,ba
    );
    xor a1(d,a,b);
    and a2(ba,~a,b);
endmodule