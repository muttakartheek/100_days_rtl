`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 19:47:34
// Design Name: 
// Module Name: mux_2x1_tb
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
module mux_2x1_tb(

    );
    reg a,b,s;
    wire y;
    mux1_2x1 a1(a,b,s,y);
    initial
    begin
    a=0;b=1;s=0;
    #10 s=1;
    #10 a=1;b=0;s=0;
    #10 s=1;
    end
endmodule
