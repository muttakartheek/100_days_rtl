`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2023 14:06:51
// Design Name: 
// Module Name: sr_using_jk_tb
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


module sr_using_jk_tb();
    reg s,r,clk,reset;
    wire Q,Q_bar;
    srusingjk dut(s,r,clk,reset,Q,Q_bar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    reset=1;
    #10 reset=0;s=0;r=0;
    #10 r=1;
    #10 s=1;r=0;
    #10 s=1;r=1;
    #10 $finish;
    end
    
endmodule
