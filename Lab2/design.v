module IClab(clk,rst,in1,in2,sel,out);
  input clk, rst, sel, in1, in2;
  output out;
  reg out_r;
  reg out_w;
  assign out=out_r;
  
  always@(*)begin
     if(sel)
     out_w=in1 | in2;
     else
     out_w=in1 & in2;
  end

  always@(posedge clk)begin
     if(~rst)
       out_r<=1'b0;
     else
       out_r<=out_w;
  end
endmodule
