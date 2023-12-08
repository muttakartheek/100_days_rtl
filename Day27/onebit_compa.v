`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 21:31:18
// Design Name: 
// Module Name: onebit_compa
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


module onebit_compa ( a ,b ,equal ,greater ,lower );
output equal ;
output greater ;
output lower ;
input a ;
input b ;
assign equal = a ~^ b;
assign lower = (~a) & b;
assign greater = a & (~b);
endmodule

