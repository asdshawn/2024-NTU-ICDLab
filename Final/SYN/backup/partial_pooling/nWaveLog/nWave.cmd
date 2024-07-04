verdiSetActWin -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_pooling_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_pooling_tb/clk} \
{/partial_pooling_tb/data_0\[21:0\]} \
{/partial_pooling_tb/data_1\[21:0\]} \
{/partial_pooling_tb/golden_data\[21:0\]} \
{/partial_pooling_tb/data\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1152 649
wvSetCursor -win $_nWave1 44.975947 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 56.943231 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 48.658189 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb"
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/partial_pooling/partial_pooling.fsdb"
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/partial_pooling_tb/Test"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/partial_pooling_tb/clk} \
{/partial_pooling_tb/data_0\[21:0\]} \
{/partial_pooling_tb/data_1\[21:0\]} \
{/partial_pooling_tb/golden_data\[21:0\]} \
{/partial_pooling_tb/data\[21:0\]} \
{/partial_pooling_tb/Test/temp_0\[21:0\]} \
{/partial_pooling_tb/Test/temp_1\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 6 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvExit
