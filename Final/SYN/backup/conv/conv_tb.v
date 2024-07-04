`define PCONV_LEN 19
`define CORE_NUM 3
`define CONV_LEN 22
`define CYCLE 5

module conv_tb;
reg clk;
reg [1:0] layer_num;
reg [`PCONV_LEN*53-1:0] i_pconv;
wire [`CONV_LEN-1:0]     o_conv;
integer i, err;
reg stop;
localparam num = 10;

conv Test(
    .layer_num(2'b0),
    .i_pconv(i_pconv),
    .o_conv(o_conv)
);

always #(`CYCLE/2) clk = ~clk;

initial begin
    $dumpfile("conv.fsdb");
    $dumpvars;
    clk = 1'b1;
    i = 0;
    err = 0;
    stop = 0;
end

always @(negedge clk) begin
    if (i < num) begin
        i_pconv = $random;
        i = i + 1;
    end
    else $finish;//stop = 1;
end
/**
initial begin
      @(posedge stop) begin
        $display("------------------------------------------------------------------\n");        
        if (err == 0) begin
            $display("          All%d data have been generated successfully!\n", num);
            $display("-------------------------------PASS-------------------------------\n");
        end
        else begin
            $display("        There are %d errors in %d data!\n", err, num);
            $display("-------------------------------FAIL-------------------------------\n");
		end
        $finish;
      end
end
**/
endmodule