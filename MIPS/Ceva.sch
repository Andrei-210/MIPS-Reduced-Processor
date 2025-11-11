VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(6:2)
        SIGNAL Instr(25:21)
        SIGNAL RegDest
        SIGNAL Instr(15:11)
        SIGNAL Instr(20:16)
        SIGNAL WrReg(4:0)
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL Instr(15:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL ALUSrc
        SIGNAL MemWr
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL WrData(31:0)
        SIGNAL MemOut(31:0)
        SIGNAL ALU_Out(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL Mem2Reg
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        SIGNAL ALUOP(1:0)
        SIGNAL Branch
        SIGNAL PC(31:0)
        SIGNAL XLXN_2(31:0)
        SIGNAL Zero
        SIGNAL Instr(31:0)
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2025 4 14 21 20 24
            RECTANGLE N 64 -144 320 192 
            RECTANGLE N 320 132 384 156 
            LINE N 320 144 384 144 
            LINE N 384 -32 320 -32 
            RECTANGLE N 320 36 384 60 
            LINE N 320 48 384 48 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            LINE N 384 -112 320 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2025 3 19 21 7 52
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2025 3 19 21 39 43
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2025 3 19 21 49 14
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2025 4 14 20 52 50
            RECTANGLE N 0 -412 64 -388 
            LINE N 64 -400 0 -400 
            RECTANGLE N 0 -348 64 -324 
            LINE N 64 -336 0 -336 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -176 0 -176 
            RECTANGLE N 320 -188 384 -164 
            LINE N 320 -176 384 -176 
            LINE N 64 -112 0 -112 
            RECTANGLE N 64 -432 320 -4 
            LINE N 320 -400 384 -400 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2025 3 25 23 4 44
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2025 3 25 23 10 50
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2025 4 14 21 4 23
            LINE N 320 32 384 32 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2025 4 8 20 12 51
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            LINE N 64 -432 0 -432 
            RECTANGLE N 416 -444 480 -420 
            LINE N 416 -432 480 -432 
            RECTANGLE N 416 -380 480 -356 
            LINE N 416 -368 480 -368 
            RECTANGLE N 64 -472 416 228 
            LINE N 64 -320 0 -320 
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
        END BLOCKDEF
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(31:0) PC(31:0)
            PIN Zero Zero
            PIN Branch Branch
            PIN New_PC(31:0) New_PC(31:0)
            PIN Offset(15:0) Instr(15:0)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN I0(4:0) Instr(20:16)
            PIN Sel RegDest
            PIN I1(4:0) Instr(15:11)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
            PIN Zero Zero
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(31:0) INW0(31:0)
            PIN INW1(31:0) INW1(31:0)
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN DataOut(31:0) MemOut(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN I0(31:0) MemOut(31:0)
            PIN I1(31:0) ALU_Out(31:0)
            PIN Y(31:0) WrData(31:0)
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN Branch Branch
            PIN ALUOP(1:0) ALUOP(1:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE U_PC 544 1120 R0
            BEGIN DISPLAY 0 -248 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 256 512 544 512
            WIRE 256 512 256 864
            WIRE 256 864 256 1088
            WIRE 256 1088 544 1088
            BEGIN DISPLAY 256 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 448 1024 544 1024
        END BRANCH
        BEGIN BRANCH PC(6:2)
            WIRE 1184 1120 1280 1120
            WIRE 1280 1120 1408 1120
            BEGIN DISPLAY 1280 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1872 1184 1968 1184
        BEGIN INSTANCE U_MUXRegD 2256 1664 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1872 1312 1968 1312
        BEGIN BRANCH Instr(25:21)
            WIRE 1968 1184 2800 1184
            WIRE 2800 1184 3120 1184
            BEGIN DISPLAY 2800 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1872 1568 1968 1568
        BEGIN BRANCH RegDest
            WIRE 2064 1632 2160 1632
            WIRE 2160 1632 2256 1632
            BEGIN DISPLAY 2160 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:11)
            WIRE 1968 1568 2000 1568
            WIRE 2000 1568 2256 1568
            BEGIN DISPLAY 2000 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1968 1312 2096 1312
            WIRE 2096 1312 2096 1504
            WIRE 2096 1504 2256 1504
            WIRE 2096 1312 2784 1312
            WIRE 2784 1312 3120 1312
            BEGIN DISPLAY 2784 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2640 1504 2800 1504
            WIRE 2800 1504 3120 1504
            BEGIN DISPLAY 2800 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 448 1024 Clk R180 28
        BUSTAP 1872 1776 1968 1776
        BEGIN BRANCH Instr(15:0)
            WIRE 1968 1776 2992 1776
            WIRE 2992 1776 3712 1776
            WIRE 3712 1152 3984 1152
            WIRE 3712 1152 3712 1776
            BEGIN DISPLAY 2992 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 4480 1152 4592 1152
            WIRE 4592 1152 4720 1152
            BEGIN DISPLAY 4592 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 4720 1136 R0
            BEGIN DISPLAY 0 -348 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH INW0(31:0)
            WIRE 4656 992 4720 992
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 4656 1056 4720 1056
        END BRANCH
        IOMARKER 4656 992 INW0(31:0) R180 28
        BEGIN BRANCH RdData1(31:0)
            WIRE 3600 992 3840 992
            WIRE 3840 992 3984 992
            BEGIN DISPLAY 3840 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4656 1056 INW1(31:0) R180 28
        BEGIN BRANCH Clk
            WIRE 4480 928 4576 928
            WIRE 4576 928 4720 928
            BEGIN DISPLAY 4576 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 3088 1584 3088 1712
            WIRE 3088 1712 4496 1712
            WIRE 4496 1712 5824 1712
            WIRE 3088 1584 3120 1584
            WIRE 5744 1216 5824 1216
            WIRE 5824 1216 5824 1712
            BEGIN DISPLAY 4496 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 3760 1280 3888 1280
            WIRE 3888 1280 3984 1280
            BEGIN DISPLAY 3888 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3760 1216 3888 1216
            WIRE 3888 1216 3984 1216
            BEGIN DISPLAY 3888 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 3600 1056 3664 1056
            WIRE 3664 1056 3840 1056
            WIRE 3840 1056 3984 1056
            WIRE 3664 1056 3664 1408
            WIRE 3664 1408 4624 1408
            WIRE 4624 1280 4720 1280
            WIRE 4624 1280 4624 1408
            BEGIN DISPLAY 3840 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3984 1392 R0
            BEGIN DISPLAY 0 -552 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(31:0)
            WIRE 5168 1280 5264 1280
            WIRE 5264 1280 5360 1280
            BEGIN DISPLAY 5264 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 4368 1216 4416 1216
            WIRE 4416 1216 4416 1264
            WIRE 4416 1264 4416 1552
            WIRE 4416 1552 4912 1552
            WIRE 4912 1552 5296 1552
            WIRE 5296 1344 5360 1344
            WIRE 5296 1344 5296 1552
            BEGIN DISPLAY 4912 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(31:0)
            WIRE 5168 992 5264 992
        END BRANCH
        IOMARKER 5264 992 OUTW0(31:0) R0 28
        BEGIN BRANCH Mem2Reg
            WIRE 5184 1216 5264 1216
            WIRE 5264 1216 5360 1216
            BEGIN DISPLAY 5264 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Ctrl 2336 2336 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1872 1984 1968 1984
        BUSTAP 1872 2304 1968 2304
        BEGIN BRANCH Instr(31:26)
            WIRE 1968 1984 2112 1984
            WIRE 2112 1984 2336 1984
            BEGIN DISPLAY 2112 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(5:0)
            WIRE 1968 2304 2112 2304
            WIRE 2112 2304 2336 2304
            BEGIN DISPLAY 2112 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2720 1984 2880 1984
            WIRE 2880 1984 3072 1984
            BEGIN DISPLAY 2880 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2720 2048 2880 2048
            WIRE 2880 2048 3072 2048
            BEGIN DISPLAY 2880 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2720 2112 2880 2112
            WIRE 2880 2112 3072 2112
            BEGIN DISPLAY 2880 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2720 2176 2880 2176
            WIRE 2880 2176 3072 2176
            BEGIN DISPLAY 2880 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2720 2240 2880 2240
            WIRE 2880 2240 3072 2240
            BEGIN DISPLAY 2880 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2720 2304 2880 2304
            WIRE 2880 2304 3072 2304
            BEGIN DISPLAY 2880 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4416 1264 4512 1264
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 4512 1264 4528 1264
            WIRE 4528 1216 4528 1264
            WIRE 4528 1216 4592 1216
            WIRE 4592 1216 4720 1216
            BEGIN DISPLAY 4592 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxData 5360 1376 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 3008 992 3056 992
            WIRE 3056 992 3120 992
            BEGIN DISPLAY 3056 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 3120 1424 R0
            BEGIN DISPLAY 0 -604 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RegWr
            WIRE 3008 1104 3056 1104
            WIRE 3056 1104 3120 1104
            BEGIN DISPLAY 3056 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2720 2368 2880 2368
            WIRE 2880 2368 3072 2368
            BEGIN DISPLAY 2880 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 928 768 1088 768
            WIRE 1088 768 1088 880
            WIRE 1088 880 1088 1024
            WIRE 1088 1024 1088 1120
            WIRE 1088 1120 1088 1392
            WIRE 928 1024 1088 1024
            BEGIN DISPLAY 1088 880 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1120 1184 1120
        BEGIN INSTANCE U_New_PC 544 624 R0
            BEGIN DISPLAY 0 -264 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Zero
            WIRE 928 512 2800 512
            WIRE 2800 512 4384 512
            WIRE 4384 512 4384 992
            WIRE 4368 992 4384 992
            BEGIN DISPLAY 2800 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 928 592 1104 592
            WIRE 1104 592 1360 592
            BEGIN DISPLAY 1104 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1408 1152 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(31:0)
            WIRE 1792 1120 1872 1120
            WIRE 1872 1120 1872 1680
            WIRE 1872 1680 1872 2480
            WIRE 1872 576 1872 672
            WIRE 1872 672 1872 704
            WIRE 1872 704 1872 1120
            BEGIN DISPLAY 1872 1680 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1872 672 1776 672
        BEGIN BRANCH Instr(15:0)
            WIRE 928 672 1104 672
            WIRE 1104 672 1776 672
            BEGIN DISPLAY 1104 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
