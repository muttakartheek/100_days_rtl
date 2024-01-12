`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2024 20:32:33
// Design Name: 
// Module Name: JHONSON_COUNTER_TB
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


module JHONSON_COUNTER_TB( );
reg clk,rst;
wire [3:0]q;
JHONSON_COUNTER dut(clk,rst,q);
initial clk=0;
always #5 clk=~clk;
initial 
begin
rst=1;
#20 rst=0;
#70 $finish;
end
endmodule
