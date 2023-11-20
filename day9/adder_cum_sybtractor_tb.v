`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 11:48:51
// Design Name: 
// Module Name: adder_cum_sybtractor_tb
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


module adder_cum_sybtractor_tb(

    );
    reg a,b,c,cntrl;
    wire sum,carry,diff,barrow;
    adder_cum_subtractor a1 (.a(a),.b(b),.c(c),.sum(sum),.carry(carry),.cntrl(cntrl),.diff(diff),.barrow(barrow));
    initial
    begin
    a=0;b=0;c=0;cntrl=0; 
   #10; a=0;b=0;c=1;cntrl=0; 
   #10; a=0;b=1;c=0;cntrl=0; 
   #10; a=0;b=1;c=1;cntrl=0;
   #10; a=1;b=0;c=0;cntrl=0; 
   #10; a=1;b=0;c=1;cntrl=0; 
   #10; a=1;b=1;c=0;cntrl=0; 
   #10; a=1;b=1;c=1;cntrl=0;  
   #25;
    a=0;b=0;c=0;cntrl=1; 
   #10; a=0;b=0;c=1;cntrl=1; 
   #10; a=0;b=1;c=0;cntrl=1; 
   #10; a=0;b=1;c=1;cntrl=1;
   #10; a=1;b=0;c=0;cntrl=1; 
   #10; a=1;b=0;c=1;cntrl=1; 
   #10; a=1;b=1;c=0;cntrl=1; 
   #10; a=1;b=1;c=1;cntrl=1;  
   $finish; 
end
endmodule
