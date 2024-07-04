wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_conv/partial_conv.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_conv/partial_conv.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2945050/ICDLab/Final/partial_conv/partial_conv.fsdb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_conv_tb/clk} \
{/partial_conv_tb/Test/data_0\[14:0\]} \
{/partial_conv_tb/Test/data_1\[14:0\]} \
{/partial_conv_tb/Test/data_2\[14:0\]} \
{/partial_conv_tb/Test/i_weight\[23:0\]} \
{/partial_conv_tb/Test/weight_0\[14:0\]} \
{/partial_conv_tb/Test/weight_1\[14:0\]} \
{/partial_conv_tb/Test/weight_2\[14:0\]} \
{/partial_conv_tb/Test/i_data\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 8 31 1152 649
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvResizeWindow -win $_nWave1 8 31 1152 649
wvSetCursor -win $_nWave1 3.918914 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 4.061420 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 4.025793 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 5.985250 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_conv_tb/clk} \
{/partial_conv_tb/Test/data_0\[14:0\]} \
{/partial_conv_tb/Test/weight_0\[14:0\]} \
{/partial_conv_tb/Test/product_0_temp\[29:0\]} \
{/partial_conv_tb/Test/data_1\[14:0\]} \
{/partial_conv_tb/Test/weight_1\[14:0\]} \
{/partial_conv_tb/Test/product_1_temp\[29:0\]} \
{/partial_conv_tb/Test/data_2\[14:0\]} \
{/partial_conv_tb/Test/weight_2\[14:0\]} \
{/partial_conv_tb/Test/product_2_temp\[29:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 2.030710 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 7 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 7 10 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetRadix -win $_nWave1 -Unsigned
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_conv_tb/clk} \
{/partial_conv_tb/Test/product_0_temp\[29:0\]} \
{/partial_conv_tb/Test/product_0\[14:0\]} \
{/partial_conv_tb/Test/product_1_temp\[29:0\]} \
{/partial_conv_tb/Test/product_1\[14:0\]} \
{/partial_conv_tb/Test/product_2_temp\[29:0\]} \
{/partial_conv_tb/Test/product_2\[14:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 5 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 5 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_conv_tb/clk} \
{/partial_conv_tb/Test/product_0\[14:0\]} \
{/partial_conv_tb/Test/product_0_ext\[17:0\]} \
{/partial_conv_tb/Test/product_1\[14:0\]} \
{/partial_conv_tb/Test/product_1_ext\[17:0\]} \
{/partial_conv_tb/Test/product_2\[14:0\]} \
{/partial_conv_tb/Test/product_2_ext\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 5 7 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/partial_conv_tb/Test"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_conv_tb/clk} \
{/partial_conv_tb/Test/product_0_ext\[17:0\]} \
{/partial_conv_tb/Test/product_1_ext\[17:0\]} \
{/partial_conv_tb/Test/product_2_ext\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/partial_conv_tb/Test/o_pconv\[17:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 7.632530 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 9.930439 -snap {("G3" 0)}
wvExit
