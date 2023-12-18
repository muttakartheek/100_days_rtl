`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 14:31:27
// Design Name: 
// Module Name: dusingjk_tb
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


module dusingjk_tb();
    reg d,clk,rst;
    wire q,qbar;
    dusingjk dut(d,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0;d=0;
    #10 d=1;
    #20 d=0;
    #10 $finish;
    end
endmodule
