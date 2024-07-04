`timescale 1ns/10ps
module tb();
reg clk, rst, in1, in2, sel;
wire out;
initial begin     
     $dumpfile("iclab.fsdb");
     $dumpvars;   	 
     clk=1'b0;
     rst=1'b1;
     in1=1'b0;
     in2=1'b0;
     sel=1'b0;
     #1 rst=1'b0;
     #5 rst=1'b1;
     #4 in1=1'b1; in2=1'b0;
     #10 sel=1'b1;
     #10 sel=1'b0; in1=1'b0;in2=1'b1;
     #10 sel=1'b1;
     #10 sel=1'b0; in1=1'b1;in2=1'b0;
     #10 sel=1'b1;
     #10 sel=1'b0;in1=1'b0;in2=1'b0;
     #10 sel=1'b1;
     #10 $finish;
end

always begin
  #5 clk=~clk;
end

IClab I1(clk,rst,in1,in2,sel,out);
endmodule
