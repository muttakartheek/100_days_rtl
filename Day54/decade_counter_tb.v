module decade_counter_tb();
reg clk,rst;
wire [3:0]q;
decade_counter dut(clk,rst,q);
initial clk=0;
always #5 clk=~clk;
initial 
begin
rst=0;

#20 rst=1;
#140 $finish;
end
endmodule