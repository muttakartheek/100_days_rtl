`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2023 11:53:21
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb();
reg clk,reset,upordown; wire [3:0] Count;
up_down_counter dut(.clk(clk),.reset(reset),.Count(Count),.upOrDown(upordown));
initial clk=0; always #2 clk=~clk;
initial begin
reset=1 ; #10; 
reset=0; upordown=0; #50;
upordown=1; #160; $finish();
end
endmodule
