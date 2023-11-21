`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 16:43:23
// Design Name: 
// Module Name: ha_cum_hs
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


module ha_cum_hs(
    input a,b,
    input cntrl,
    output reg sum,carry,barrow,differnce
    );
    always @(*)
 begin
   if(cntrl==1)
     begin 
       differnce=(a^b);
       barrow= ~a&b;carry=0;sum=0;
     end 
else
   begin
      sum=(a^b);
      carry=a&b;barrow=0;differnce=0;
   end
end
endmodule
