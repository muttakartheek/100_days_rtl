`timescale 1ns / 1ps
  module multiplier_tb;       
  
   reg [3:0]inp1;
   reg [3:0]inp2;       
   wire [7:0]product;  
        
   multiplier dut(.inp1(inp1),.inp2(inp2),.product(product));

   initial
   begin 
     inp1=10;
     inp2=12;
     #30 ;

     inp1=13;
     inp2=12;
     #30 ;
   
     inp1=10;
     inp2=22;
     #30 ;
   
     inp1=11;
     inp2=22;
     #30 ;
   
     inp1=12;
     inp2=15;
     #30 ;
   
     $finish;
   end 
endmodule