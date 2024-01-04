`timescale 1ns / 1ps



module synch_down_tb();
    reg clk,rst;
    wire [3:0]q;
    sych_down dut(clk,rst,q);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0;
    #200 $finish;
    end
endmodule

