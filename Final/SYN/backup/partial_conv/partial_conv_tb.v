`define TEST_LEN 24
`define OUTPUT_LEN 18
`define CYCLE 5
`define size 26

module partial_conv_tb;
reg clk;
reg  [`TEST_LEN-1:0]  i_data;
reg  [`TEST_LEN-1:0]  i_weight;
wire [`OUTPUT_LEN-1:0] o_pconv;
integer i, err;
reg stop;
localparam num = `size*`size;

partial_conv Test(
    .i_data(i_data),
    .i_weight(i_weight),
    .o_pconv(o_pconv)
);

always #(`CYCLE/2) clk = ~clk;

initial begin
    $dumpfile("partial_conv.fsdb");
    $dumpvars;
    clk = 1'b1;
    i = 0;
    err = 0;
    stop = 0;
end

always @(negedge clk) begin
    if (i < num) begin
        i_data = $random;
        i_weight = $random;
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