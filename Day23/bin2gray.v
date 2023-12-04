`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 20:15:35
// Design Name: 
// Module Name: bin2gray
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


module bin2gray(
    input [3:0] bin,
    output [3:0] gray
    );
    assign gray[0]=bin[0]^bin[1];
    assign gray[1]=bin[1]^bin[2];
    assign gray[2]=bin[2]^bin[3];
    assign gray[3]=bin[3];
endmodule
