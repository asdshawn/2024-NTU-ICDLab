`timescale 1ns/10ps
`define INPUT_LEN 8
`define OUTPUT_LEN 8
`define CYCLE 10

module Top_tb;
reg clk;
reg rst_n;
wire [1:0] layer_num;
reg  [`INPUT_LEN-1:0]  i_data;
wire [`OUTPUT_LEN-1:0] o_data;
reg signed [`INPUT_LEN-1:0] weight [0:287];
reg  [`INPUT_LEN-1:0] data [0:675];
integer i, j, k, m, l, err, filter_num[0:2], feature_size[0:2], time_;
integer t, cut_data_out, conv_out, max_pool_out;
reg signed [29:0] mul_temp [0:8];
reg signed [14:0] mul [0:8];
reg signed [20:0] conv_temp;
reg [20:0] conv [0:31][0:23][0:23];
reg [20:0] max_pool [0:31][0:11][0:11];
reg [20:0] test [0:18431];
reg stop;

assign layer_num = 2'd0;

Top Test(
    .clk(clk),
    .rst_n(rst_n),
    .layer_num(layer_num),
    .i_data(i_data),
    .o_data(o_data)
);

always #(`CYCLE/2) clk = ~clk;

initial begin
    $dumpfile("Top_tb.fsdb");
    $dumpvars;
    $readmemb("pixel_data.txt", data);
    $readmemb("bin_weight0.txt", weight);
    cut_data_out = $fopen("cut_data_out.txt", "w");
    conv_out = $fopen("conv_out.txt", "w");
    max_pool_out = $fopen("max_pool_out.txt", "w");
    $readmemb("Golden_Conv_32.txt", test);
    clk = 1'b1;
    rst_n = 1'b1;
    err = 0;
    stop = 0;
    rst_n = ~rst_n;
    #(`CYCLE) rst_n = ~rst_n;
    time_ = 0;
    filter_num[0] = 32;
    filter_num[1] = 64;
    filter_num[2] = 64;
    feature_size[0] = 26;
    feature_size[1] = 12;
    feature_size[2] = 7;
    i_data = weight[0];
    t = 0;
    for (m = 0; m < 1; m = m + 1) begin
        for (i = 0; i < filter_num[m]; i = i + 1) begin
            for (j = 0; j < feature_size[m]-2; j = j + 1) begin
                for (k = 0; k < feature_size[m]-2; k = k + 1) begin
                    mul_temp[0] = {{7{weight[i*9][7]}}, weight[i*9]} * {data[j*feature_size[m]+k], 7'b0};
                    mul_temp[1] = {{7{weight[i*9+1][7]}}, weight[i*9+1]} * {data[j*feature_size[m]+k+1], 7'b0};
                    mul_temp[2] = {{7{weight[i*9+2][7]}}, weight[i*9+2]} * {data[j*feature_size[m]+k+2], 7'b0};
                    mul_temp[3] = {{7{weight[i*9+3][7]}}, weight[i*9+3]} * {data[(j+1)*feature_size[m]+k], 7'b0};
                    mul_temp[4] = {{7{weight[i*9+4][7]}}, weight[i*9+4]} * {data[(j+1)*feature_size[m]+k+1], 7'b0};
                    mul_temp[5] = {{7{weight[i*9+5][7]}}, weight[i*9+5]} * {data[(j+1)*feature_size[m]+k+2], 7'b0};
                    mul_temp[6] = {{7{weight[i*9+6][7]}}, weight[i*9+6]} * {data[(j+2)*feature_size[m]+k], 7'b0};
                    mul_temp[7] = {{7{weight[i*9+7][7]}}, weight[i*9+7]} * {data[(j+2)*feature_size[m]+k+1], 7'b0};
                    mul_temp[8] = {{7{weight[i*9+8][7]}}, weight[i*9+8]} * {data[(j+2)*feature_size[m]+k+2], 7'b0};
                    for (l = 0; l < 9; l = l + 1) mul[l] = mul_temp[l][21:7];
                    conv_temp = {{6{mul[0][14]}}, mul[0]} + {{6{mul[1][14]}}, mul[1]} + {{6{mul[2][14]}}, mul[2]} + {{6{mul[3][14]}}, mul[3]} + {{6{mul[4][14]}}, mul[4]} + {{6{mul[5][14]}}, mul[5]} + {{6{mul[6][14]}}, mul[6]} + {{6{mul[7][14]}}, mul[7]} + {{6{mul[8][14]}}, mul[8]};
                    //$display("%b", conv_temp);
                    if (conv_temp[20]) conv[i][j][k] = 0;
                    else conv[i][j][k] = conv_temp;
                    $fwrite(cut_data_out, "ch.%d: %b.%b\n", i, conv[i][j][k][15:8], conv[i][j][k][7:0]);
                    $fwrite(conv_out, "Conv[%d][%d][%d]:%b\n", i, j, k, conv[i][j][k]);
                    /**if (test[t] !== conv[0][j][k]) begin
                        $display("No.%d yours: %b test: %b", t, conv[0][j][k], test[t]);
                        $display("data[%d] = %b", j+k, data[j+k]);
                        $display("data[%d] = %b", j+k+1, data[j+k+1]);
                        $display("data[%d] = %b", j+k+2, data[j+k+2]);
                        $display("data[%d] = %b", j+feature_size[m]+k, data[j+feature_size[m]+k]); 
                        $display("data[%d] = %b", j+feature_size[m]+k+1, data[j+feature_size[m]+k+1]);
                        $display("data[%d] = %b", j+feature_size[m]+k+2, data[j+feature_size[m]+k+2]);
                        $display("data[%d] = %b", j+52+k, data[j+52+k]);
                        $display("data[%d] = %b", j+52+k+1, data[j+52+k+1]);
                        $display("data[%d] = %b", j+52+k+2, data[j+52+k+2]);
                        $display("weight[%d] = %b", i*9, weight[i*9]);
                        $display("weight[%d] = %b", i*9+1, weight[i*9+1]);
                        $display("weight[%d] = %b", i*9+2, weight[i*9+2]);
                        $display("weight[%d] = %b", i*9+3, weight[i*9+3]);
                        $display("weight[%d] = %b", i*9+4, weight[i*9+4]);
                        $display("weight[%d] = %b", i*9+5, weight[i*9+5]);
                        $display("weight[%d] = %b", i*9+6, weight[i*9+6]);
                        $display("weight[%d] = %b", i*9+7, weight[i*9+7]);
                        $display("weight[%d] = %b", i*9+8, weight[i*9+8]);
                    end
                    t = t + 1;**/
                end
            end
        end
        for (i = 0; i < filter_num[m]; i = i + 1) begin
            for (j = 0; j < feature_size[m]-2; j = j + 2) begin
                for (k = 0; k < feature_size[m]-2; k = k + 2) begin
                    if (conv[i][j][k] > conv[i][j][k+1]) begin
                        if (conv[i][j][k] > conv[i][j+1][k]) begin
                            if (conv[i][j][k] > conv[i][j+1][k+1]) max_pool[i][j/2][k/2] = conv[i][j][k];
                            else max_pool[i][j/2][k/2] = conv[i][j+1][k+1];
                        end
                        else begin
                            if (conv[i][j+1][k] > conv[i][j+1][k+1]) max_pool[i][j/2][k/2] = conv[i][j+1][k];
                            else max_pool[i][j/2][k/2] = conv[i][j+1][k+1];
                        end
                    end
                    else begin
                        if (conv[i][j][k+1] > conv[i][j+1][k]) begin
                            if (conv[i][j][k+1] > conv[i][j+1][k+1]) max_pool[i][j/2][k/2] = conv[i][j][k+1];
                            else max_pool[i][j/2][k/2] = conv[i][j+1][k+1];
                        end
                        else begin
                            if (conv[i][j+1][k] > conv[i][j+1][k+1]) max_pool[i][j/2][k/2] = conv[i][j+1][k];
                            else max_pool[i][j/2][k/2] = conv[i][j+1][k+1];
                        end
                    end
                    /**$display("%b", conv[i][j][k]);
                    $display("%b", conv[i][j][k+1]);
                    $display("%b", conv[i][j+1][k]);
                    $display("%b", conv[i][j+1][k+1]);**/
                    $fwrite(max_pool_out, "MaxPool[%d][%d][%d]:%b\n", i, j/2, k/2, max_pool[i][j/2][k/2]);
                end
            end
        end
    end
    i = 1;
    j = 0;
    k = 0;
    m = 0;
end

always @(negedge clk) begin
    if (rst_n) begin
        if (m < 1/**filter_num[0]/2**/) begin
            if (i < 9*2) begin
                i_data = weight[m*9*2+i];
                i = i + 1;
            end
            else begin
                if (j < 24) begin
                    if (k < 78) begin
                        i_data = data[j*26+k];
                        k = k + 1;
                    end
                    else begin
                        k = 0;
                        j = j + 1;
                    end
                end
                else begin
                    j = 0;
                    i = 0;
                    m = m + 1;
                end
            end
        end
        else stop = 1;
    end
end

always @(posedge clk) begin
    if (rst_n) begin
        $display("No.%d: %b", time_, o_data);
        time_ = time_ + 1;
    end
end

initial begin
      @(posedge stop) begin
        $display("------------------------------------------------------------------\n");        
        if (err == 0) begin
            $display("          All data have been generated successfully!\n");
            $display("-------------------------------PASS-------------------------------\n");
        end
        else begin
            $display("        There are %d errors in data!\n", err);
            $display("-------------------------------FAIL-------------------------------\n");
		end
        $finish;
      end
end

endmodule