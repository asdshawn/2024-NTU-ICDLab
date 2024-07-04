wvResizeWindow -win $_nWave1 2176 133 787 333
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/user12/r2945050/ICDLab/HW2/alu.fsdb.fsdb" \
           "/home/raid7_2/user12/r2945050/ICDLab/HW2/alu.fsdb"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/raid7_2/user12/r2945050/ICDLab/HW2/alu.fsdb.fsdb}
wvExit
