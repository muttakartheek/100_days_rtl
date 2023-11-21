`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 17:36:18
// Design Name: 
// Module Name: ha_cum_hs_tb
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


module ha_cum_hs_tb(

    );reg a,b,cntrl;
    wire sum,carry,differnce,barrow;
    ha_cum_hs a1 (.a(a),.b(b),.sum(sum),.carry(carry),.cntrl(cntrl),.differnce(differnce),.barrow(barrow));
    initial
    begin
    a=0;b=0;cntrl=0; 
   #10; a=0;b=0;cntrl=0; 
   #10; a=0;b=1;cntrl=0; 
   #10; a=0;b=1;cntrl=0;
   #10; a=1;b=0;cntrl=0; 
   #10; a=1;b=0;cntrl=0; 
   #10; a=1;b=1;cntrl=0; 
   #10; a=1;b=1;cntrl=0;  
   #25;
    a=0;b=0;cntrl=1; 
   #10; a=0;b=0;cntrl=1; 
   #10; a=0;b=1;cntrl=1; 
   #10; a=0;b=1;cntrl=1;
   #10; a=1;b=0;cntrl=1; 
   #10; a=1;b=0;cntrl=1; 
   #10; a=1;b=1;cntrl=1; 
   #10; a=1;b=1;cntrl=1;  
   $finish; 
end
endmodule
