`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 19:33:22
// Design Name: 
// Module Name: relization_mux_2x1
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


module relization_mux_2x1(a,b,output_and,output_or,output_not);
   input a,b;
   output output_and,output_or,output_not;
   //we use reg to store the output values
   reg output_and,output_or,output_not;
always @(a,b)
     begin
     //we will use a as the select line.
     //Use if-else: as we have only two possibiles either 0 or 1
       if(a==1'b0)
         begin
           output_and = 1'b0;
           output_or = b;
           output_not = 1'b1;
         end
     //else block will be executed when a=1'b1 i.e., 1.
       else
         begin
            output_and = b;
            output_or = 1'b1;
            output_not = 1'b0;
         end
  end
endmodule

