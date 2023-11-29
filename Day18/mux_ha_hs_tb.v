`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 21:15:41
// Design Name: 
// Module Name: mux_ha_hs_tb
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
module mux_ha_hs_tb(

    );
    reg a,b;
    wire s,c,bo;
    mux_ha_hs dut(a,b,s,c,diff,bo);
    initial 
    begin
    a=1'b0;b=1'b0;
    #10 a=1'b0;b=1'b1;
    #10 a=1'b1;b=1'b0;
    #10 a=1'b1;b=1'b1;
    
    end
endmodule
