verdiSetActWin -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/conv/conv.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/conv/conv.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2945050/ICDLab/Final/conv/conv.fsdb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/conv_tb"
wvGetSignalSetScope -win $_nWave1 "/conv_tb/Test"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/conv_tb/clk} \
{/conv_tb/i_pconv\[1006:0\]} \
{/conv_tb/Test/pconv_ext_0\[21:0\]} \
{/conv_tb/Test/pconv_ext_26\[21:0\]} \
{/conv_tb/Test/pconv_ext_52\[21:0\]} \
{/conv_tb/Test/o_conv\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1152 649
wvResizeWindow -win $_nWave1 0 23 1152 649
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvResizeWindow -win $_nWave1 0 23 1152 649
wvSetCursor -win $_nWave1 0.302188 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/conv/conv.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/conv/conv.fsdb"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/conv_tb/clk} \
{/conv_tb/i_pconv\[1006:0\]} \
{/conv_tb/Test/pconv_ext_0\[21:0\]} \
{/conv_tb/Test/pconv_ext_26\[21:0\]} \
{/conv_tb/Test/pconv_ext_52\[21:0\]} \
{/conv_tb/Test/conv_w_0\[21:0\]} \
{/conv_tb/Test/o_conv\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 18.385960 -snap {("G2" 0)}
