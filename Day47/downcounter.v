`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 16:49:40
// Design Name: 
// Module Name: downcounter
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


module downcounter(
 input clk,rst,
    output [3:0] q
    );
 
    
    jk_ff a1(.j(1),.k(1),.clk(clk),.reset(rst),.Q(q[0]));
    jk_ff a2(.j(1),.k(1),.clk(q[0]),.reset(rst),.Q(q[1]));
   jk_ff a3(.j(1),.k(1),.clk(q[1]),.reset(rst),.Q(q[2]));
     jk_ff a4(.j(1),.k(1),.clk(q[2]),.reset(rst),.Q(q[3]));
endmodule
