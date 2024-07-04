verdiSetActWin -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/HW1/alu.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/HW1/alu.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/user12/r2945050/ICDLab/HW1/alu.fsdb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ALU_test"
wvGetSignalSetScope -win $_nWave1 "/ALU_test/alu_0"
wvGetSignalSetScope -win $_nWave1 "/ALU_test"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/i} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/i} \
{/ALU_test/datain1\[7:0\]} \
{/ALU_test/datain2\[7:0\]} \
{/ALU_test/dataout\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/i} \
{/ALU_test/datain1\[7:0\]} \
{/ALU_test/datain2\[7:0\]} \
{/ALU_test/dataout\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 216.710013 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ALU_test"
wvGetSignalSetScope -win $_nWave1 "/ALU_test"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/datain1\[7:0\]} \
{/ALU_test/datain2\[7:0\]} \
{/ALU_test/dataout\[15:0\]} \
{/ALU_test/cmd\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/cmd\[2:0\]} \
{/ALU_test/datain1\[7:0\]} \
{/ALU_test/datain2\[7:0\]} \
{/ALU_test/dataout\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 3846.602731 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 4496.732770 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 5016.836801 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/ALU_test"
wvGetSignalSetScope -win $_nWave1 "/ALU_test"
wvGetSignalSetScope -win $_nWave1 "/ALU_test/alu_0"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/cmd\[2:0\]} \
{/ALU_test/alu_0/data_o\[15:0\]} \
{/ALU_test/datain1\[7:0\]} \
{/ALU_test/datain2\[7:0\]} \
{/ALU_test/dataout\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/ALU_test/clk} \
{/ALU_test/reset} \
{/ALU_test/cmd\[2:0\]} \
{/ALU_test/alu_0/data_o\[15:0\]} \
{/ALU_test/datain1\[7:0\]} \
{/ALU_test/datain2\[7:0\]} \
{/ALU_test/dataout\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -format Bin
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 3965.793238 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 4030.806242 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 3944.122237 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8083.283485 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 7988.385245 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8996.086806 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 6937.341682 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 6980.683685 -snap {("G1" 1)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSetCursor -win $_nWave1 1126.892068 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2123.758127 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 3424.018205 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 921.017555 -snap {("G1" 3)}
