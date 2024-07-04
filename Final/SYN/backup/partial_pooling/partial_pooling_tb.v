`define CYCLE 10
`define NUM 1000

module partial_pooling_tb;
reg         clk;
reg  signed [21:0] data_0, data_1, golden_data;
wire [21:0] data;
integer err, stop, i;

partial_pooling Test(.i_data({data_1, data_0}), .o_data(data));

always #(`CYCLE/2) clk = ~clk;

initial begin
    $dumpfile("partial_pooling.fsdb");
    $dumpvars;
    clk = 1'b1;
    i = 0;
    err = 0;
    stop = 0;
end

always @ (negedge clk) begin
    if (data !== golden_data && i != 0) begin
            $display("| ERROR at %d: | yours:%b | golden:%b |", i-1, data, golden_data);
            err = err + 1;
    end
    if (i < `NUM) begin
        data_0 = $random;
        data_1 = $random;
        if (data_0 > data_1) golden_data = data_0;               
        else golden_data = data_1;
        i = i + 1;
    end
    else stop = 1;
end

initial begin
      @(posedge stop) begin
        $display("------------------------------------------------------------------\n");        
        if (err == 0) begin
            $display("             All data have been generated successfully!\n");
            $display("-------------------------------PASS-------------------------------\n");
        end
        else begin
            $display("                  There are %d errors!\n", err);
            $display("-------------------------------FAIL-------------------------------\n");
		end
        $finish;
      end
end

endmodule
