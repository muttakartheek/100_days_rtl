`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 12:18:55
// Design Name: 
// Module Name: mod_counter_tb
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


module mod_counter_tb();
reg rst,clk; wire [2:0] count;
mod_counter dut(.rst(rst),.clk(clk),.count(count));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; rst=1; #150; $finish();
end
endmodule
