`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 19:13:30
// Design Name: 
// Module Name: fullsubtractor
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


module fullsubtractor(
    input a,b,c,
    output diff,barrow
    );
    assign diff=(a^b)^c;
    assign barrow=(~a&b)|(b&c)|(c&~a);
endmodule
