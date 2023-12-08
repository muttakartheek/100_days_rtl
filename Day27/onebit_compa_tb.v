`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:33:14
// Design Name: 
// Module Name: onebit_compa_tb
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


module onebit_compa_tb();
reg a,b;wire equal,greater,lower; 
onebit_compa dut(.a(a),.b(b),.equal(equal),.greater(greater),.lower(lower));
initial
begin
a=1'b0; b=1'b0; #10;
a=1'b0; b=1'b1; #10;
a=1'b1; b=1'b0; #10;
a=1'b1; b=1'b1; #10;
$finish();
end
endmodule
