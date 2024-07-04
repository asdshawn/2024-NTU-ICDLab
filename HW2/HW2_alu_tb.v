`timescale 1ns/10ps
`define CYCLE    10           	         // Modify your clock period here

module ALU_tb;

reg           clk;
reg           reset;
reg   [7:0]   datain1,datain2;
reg   [2:0]   cmd;
wire  [15:0]  dataout;

initial begin
   $dumpfile("alu.fsdb");
	$dumpvars;

   //#0
   clk = 1'b0;
   reset = 1'b1;
   datain1 = 8'd0;
   datain2 = 8'd0;
   cmd = 3'b0;

   #1  reset=1'b0;
   #5  reset=1'b1;
   #4  datain1=8'd25; datain2=8'd35; cmd=3'b011;
   #10 datain1=8'd37; datain2=8'd128; cmd=3'b100;
   #10 datain1=8'd50; datain2=8'd60; cmd=3'b110;
   #10 datain1=8'd65; datain2=8'd100;
   #5  cmd=3'b111;
   #5  $finish;
end

always begin #(`CYCLE/2) clk = ~clk; end

alu alu_0(.clk_p_i(clk), .reset_n_i(reset), .data_a_i(datain1), .data_b_i(datain2), .inst_i(cmd), .data_o(dataout));
   
endmodule