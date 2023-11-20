`timescale 1ns / 1ps
module adder_cum_subtractor(
    input a,b,c,
    input cntrl,
    output  reg barrow,diff,sum,carry
    
    );
    //assign  c=cntrl;
always @(*)
 begin
   if(cntrl==1)
     begin 
       diff=(a^b)^c;
       barrow=~(a^b)&c | ~a&b;carry=0;sum=0;
     end 
else
   begin
      sum=(a^b)^c;
      carry=(a^b)&c | a&b;barrow=0;diff=0;
   end
end
endmodule

