wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/Top_tb.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/Top_tb.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2945050/ICDLab/Final/Top_tb.fsdb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_tb"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test/\\CHIPS\[0\].core "
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Top_tb/Test/\\CHIPS\[0\].core /o_data\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_tb"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test/\\CHIPS\[0\].core "
wvGetSignalSetScope -win $_nWave1 "/Top_tb"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Top_tb/clk} \
{/Top_tb/rst_n} \
{/Top_tb/time_} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Top_tb/Test/\\CHIPS\[0\].core /o_data\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_tb"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test/\\CHIPS\[0\].core "
wvGetSignalSetScope -win $_nWave1 "/Top_tb"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test/\\CHIPS\[0\].core /conv"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Top_tb/clk} \
{/Top_tb/rst_n} \
{/Top_tb/time_} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Top_tb/Test/\\CHIPS\[0\].core /conv/o_conv_r\[20:0\]} \
{/Top_tb/Test/\\CHIPS\[0\].core /o_data\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/Top_tb"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test"
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test/\\CHIPS\[0\].core "
wvGetSignalSetScope -win $_nWave1 "/Top_tb/Test/\\CHIPS\[0\].core /conv"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Top_tb/clk} \
{/Top_tb/rst_n} \
{/Top_tb/time_} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/Top_tb/Test/\\CHIPS\[0\].core /conv/o_conv_r\[20:0\]} \
{/Top_tb/Test/\\CHIPS\[0\].core /conv/o_conv\[20:0\]} \
{/Top_tb/Test/\\CHIPS\[0\].core /o_data\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetRadix -win $_nWave1 -format Bin
wvExit
