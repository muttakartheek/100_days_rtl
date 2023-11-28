`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 19:36:02
// Design Name: 
// Module Name: realization_mux_2x1_tb
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


module realization_mux_2x1_tb();
  reg a,b;
  wire output_and,output_or,output_not;
  //Instantiation of Top Design Block
relization_mux_2x1 dut(a,b,output_and,output_or,output_not);
  initial
    begin
   //2 input values = 4 possibilities
      a = 1'b0; b=1'b0;#10
      a = 1'b0; b=1'b1;#10
      a = 1'b1; b=1'b0;#10
      a = 1'b1; b=1'b1;#10
      $finish;
    //$finish=exits the simulation
    end
endmodule

