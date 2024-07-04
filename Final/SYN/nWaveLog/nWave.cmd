wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/SYN/Top_tb.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/Final/SYN/Top_tb.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/user12/r2945050/ICDLab/Final/SYN/Top_tb.fsdb.fsdb}
wvSetWindowTimeUnit -win $_nWave1 1.000000 ns
wvSetCursor -win $_nWave1 5449.246687
wvSetCursor -win $_nWave1 5453.072062
wvSetCursor -win $_nWave1 5449.724859
wvSetCursor -win $_nWave1 5453.072062
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 5453.993448
wvSetCursor -win $_nWave1 5453.999958
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 5453.999495
wvSetCursor -win $_nWave1 5453.999782
wvExit
