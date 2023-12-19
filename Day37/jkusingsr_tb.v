`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 20:40:14
// Design Name: 
// Module Name: jkusingsr_tb
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


module jkusingsr_tb();
reg j,k,clk,reset;
wire Q;
jkusingsr dut(.j(j),.k(k),.clk(clk),.Q(Q),.reset(reset));
initial
clk=0;
always #5 clk=~clk;
initial
begin
reset=0;
#10 reset=1;
 #10 j=0;k=0;
    
    #10 j=1;k=0;
    #10 j=1;k=1;
    #10 $finish;
    end
endmodule
