`timescale 1ns/10ps
`define INPUT_LEN 8
`define OUTPUT_LEN 15
`define CYCLE 4
//對第一層
//初始資料在165(9+52*3)到齊，166算完第一個conv，之後每2個clk算完，168、170，以此列推，直到212(166+(24-1)*2)便會得到24個conv，加6個clk(218)後得到下一列的conv。
//222(218+4)完成第一個Max pooling，之後每4個clk算完，226、240，以此列推，直到266(222+(12-1)*4)便會得到12個Max pooling，加60(52+8)個clk(326)後得到下一列的Max pooling。
//Image data會在第1361(9+52*26)個clk進完，因此最後一個Max pooling會在1410(1361+48+1)時出來。

//對第二層
//初始資料在81(9+24*3)到齊，82算完第一個conv，之後每2個clk算完，84、86，以此列推，直到100(82+(10-1)*2)便會得到10個conv，加6個clk(106)後得到下一列的conv。
//110(106+4)完成第一個Max pooling，之後每4個clk算完，114、118，以此列推，直到126(110+(5-1)*4)便會得到5個Max pooling，加32(24+8)個clk(158)後得到下一列的Max pooling。
//Feature data會在第297(9+24*12)個clk進完，因此最後一個Max pooling會在318(297+20+1)時出來。

//對第三層
//初始資料在39(9+10*3)到齊，40算完第一個conv，之後每2個clk算完，直到44(40+(3-1)*2)便會得到3個conv，加6個clk(50)後得到下一列的conv。
//Feature data會在第59(9+10*5)個clk進完，因此最後一個conv會在64(59+6-1)時出來。

module Top_tb;
reg clk;
reg rst_n;
wire [1:0] layer_num;
reg  [`INPUT_LEN-1:0]  i_data;
wire [`OUTPUT_LEN-1:0] o_data;
reg signed [`INPUT_LEN-1:0] weight [0:287];
reg  [`INPUT_LEN-1:0] data [0:676*2-1];
integer i, j, k, m, l, t, err, filter_num[0:2], feature_size[0:2], time_, c1, c2, c3;
integer max_pool_out;
reg signed [29:0] mul_temp [0:8];
reg signed [14:0] mul [0:8];
reg signed [20:0] conv_temp;
reg [20:0] conv [0:31][0:23][0:23];
reg [20:0] max_pool [0:31][0:11][0:11];
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
always @(posedge clk) if (rst_n) time_ = time_ + 1;

initial begin
    m = 0;
    $dumpfile("Top_tb.fsdb");
    $dumpvars;
    $readmemb("bin_weight0.txt", weight);
    $readmemb("pixel_data.txt", data);
    max_pool_out = $fopen("max_pool_out.txt", "w");
    clk = 1'b1;
    rst_n = 1'b1;
    err = 0;
    stop = 0;
    #(`CYCLE/2) rst_n = ~rst_n;
    #(`CYCLE) rst_n = ~rst_n;
    time_ = 0;
    filter_num[0] = 1;//32;
    filter_num[1] = 1;//64;
    filter_num[2] = 1;//64;
    feature_size[0] = 26;
    feature_size[1] = 12;
    feature_size[2] = 5;
    c1 = 0;
    c2 = 0;
    //for (m = 0; m < 1; m = m + 1) begin
        for (i = 0; i < filter_num[m]; i = i + 1) begin
            for (j = 0; j < feature_size[m]-2; j = j + 1) begin
                for (k = 0; k < (feature_size[m]-2)*2; k = k + 2) begin
                    mul_temp[0] = {{7{weight[i*9+0][7]}}, weight[i*9+0]} * {data[j*feature_size[m]*2+k+0], 7'b0};
                    mul_temp[1] = {{7{weight[i*9+1][7]}}, weight[i*9+1]} * {data[j*feature_size[m]*2+k+2], 7'b0};
                    mul_temp[2] = {{7{weight[i*9+2][7]}}, weight[i*9+2]} * {data[j*feature_size[m]*2+k+4], 7'b0};
                    mul_temp[3] = {{7{weight[i*9+3][7]}}, weight[i*9+3]} * {data[(j+1)*feature_size[m]*2+k+0], 7'b0};
                    mul_temp[4] = {{7{weight[i*9+4][7]}}, weight[i*9+4]} * {data[(j+1)*feature_size[m]*2+k+2], 7'b0};
                    mul_temp[5] = {{7{weight[i*9+5][7]}}, weight[i*9+5]} * {data[(j+1)*feature_size[m]*2+k+4], 7'b0};
                    mul_temp[6] = {{7{weight[i*9+6][7]}}, weight[i*9+6]} * {data[(j+2)*feature_size[m]*2+k+0], 7'b0};
                    mul_temp[7] = {{7{weight[i*9+7][7]}}, weight[i*9+7]} * {data[(j+2)*feature_size[m]*2+k+2], 7'b0};
                    mul_temp[8] = {{7{weight[i*9+8][7]}}, weight[i*9+8]} * {data[(j+2)*feature_size[m]*2+k+4], 7'b0};
                    /**$display("w0 * d0,0 = %b * %b", weight[i*9+0], data[j*feature_size[m]*2+k+0]);
                    $display("w1 * d0,1 = %b * %b", weight[i*9+1], data[j*feature_size[m]*2+k+2]);
                    $display("w2 * d0,2 = %b * %b", weight[i*9+2], data[j*feature_size[m]*2+k+4]);
                    $display("w3 * d1,0 = %b * %b", weight[i*9+3], data[(j+1)*feature_size[m]*2+k+0]);
                    $display("w4 * d1,1 = %b * %b", weight[i*9+4], data[(j+1)*feature_size[m]*2+k+2]);
                    $display("w5 * d1,2 = %b * %b", weight[i*9+5], data[(j+1)*feature_size[m]*2+k+4]);
                    $display("w6 * d2,0 = %b * %b", weight[i*9+6], data[(j+2)*feature_size[m]*2+k+0]);
                    $display("w7 * d2,1 = %b * %b", weight[i*9+7], data[(j+2)*feature_size[m]*2+k+2]);
                    $display("w8 * d2,2 = %b * %b", weight[i*9+8], data[(j+2)*feature_size[m]*2+k+4]);**/
                    for (l = 0; l < 9; l = l + 1) mul[l] = mul_temp[l][21:7];
                    conv_temp = {{6{mul[0][14]}}, mul[0]} + {{6{mul[1][14]}}, mul[1]} + {{6{mul[2][14]}}, mul[2]} + {{6{mul[3][14]}}, mul[3]} + {{6{mul[4][14]}}, mul[4]} + {{6{mul[5][14]}}, mul[5]} + {{6{mul[6][14]}}, mul[6]} + {{6{mul[7][14]}}, mul[7]} + {{6{mul[8][14]}}, mul[8]};
                    //$display("%d:%b", t, conv_temp);
                    if (conv_temp[20]) conv[i][j][k/2] = 0;
                    else conv[i][j][k/2] = conv_temp;
                    //$display("%b", conv[i][j][k/2]);
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
    //end
    i = 0;
    j = 0;
    k = 0;
    t = 0;
end

always @(negedge clk) begin
    if (rst_n) begin
        if (t < filter_num[0]) begin
            if (i < 9) begin
                i_data = weight[t*9+i];
                i = i + 1;
            end
            else begin
                if (j < feature_size[0]**2*2) begin
                    i_data = data[j];
                    j = j + 1;
                end
                else begin
                    j = 0;
                    t = t + 1;
                end
            end
        end
        else stop = 1;
    end
end

initial #(`CYCLE*(226+2)) begin
    if (o_data !== max_pool[0][c2][c1][0+:15]) begin
        $display("No.%d yours:%b golden:%b", time_, o_data, max_pool[0][0][0][0+:15]);
        err = err + 1;
    end
    c1 = c1 + 1;
end

always @(*) begin
    if (time_ > 226) begin
        if (c1 < 12) begin
            #(`CYCLE*4) if (o_data !== max_pool[0][c2][c1][0+:15]) begin
                $display("No.%d yours:%b golden:%b", time_, o_data, max_pool[0][c2][c1][0+:15]);
                err = err + 1;
            end
            c1 = c1 + 1;
        end
        else begin
            c1 = 0;
            c2 = c2 + 1;
            #(`CYCLE*60) if (o_data !== max_pool[0][c2][c1][0+:15]) begin
                $display("No.%d yours:%b golden:%b", time_, o_data, max_pool[0][c2][c1][0+:15]);
                err = err + 1;
            end
            c1 = c1 + 1;
        end    
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