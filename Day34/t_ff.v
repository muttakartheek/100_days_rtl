`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2023 21:48:05
// Design Name: 
// Module Name: t_ff
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


module t_ff( input clk, input reset, input t, output reg q);  
  
  always @ (posedge clk) begin  
    if (!reset)  
      q <= 0;  
    else  
        if (t)  
            q <= ~q;  
        else  
            q <= q;  
  end  
endmodule