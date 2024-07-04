wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Lab2/iclab.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Lab2/iclab.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2945050/ICDLab/Lab2/iclab.fsdb.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/clk} \
{/tb/in1} \
{/tb/in2} \
{/tb/out} \
{/tb/rst} \
{/tb/sel} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetCursor -win $_nWave1 168.574122 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1473.628088 -snap {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 500.140442 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1536.145644 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 509.071521 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1473.628088 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2536.426528 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1500.421326 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Lab2/iclab.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Lab2/iclab.fsdb"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2500.702211 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 3456.327698 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 4510.195059 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 5494.846554 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 6486.196359 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 7486.477243 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 8495.689207 -snap {("G1" 1)}
wvExit
