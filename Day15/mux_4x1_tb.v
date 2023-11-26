`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 19:48:12
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb(

    );
    reg a,b,c,d;
    reg [1:0]s;
    wire y;
    mux_4x1 a1(a,b,c,d,s,y);
    initial
    begin
    a=1;b=0;c=1;d=0;s=00;
    #10 s=01;
    #10 s=10;
    #10 s=11;
#10 a=0;b=0;c=1;d=1;s=00;
    #10 s=01;
    #10 s=10;
    #10 s=11;
    end
endmodule
