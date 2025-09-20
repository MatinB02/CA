/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : logisimTopLevelShell                                         **
 **                                                                          **
 *****************************************************************************/

module logisimTopLevelShell(  );

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_FR1;
   wire [31:0] s_FR10;
   wire [31:0] s_FR11;
   wire [31:0] s_FR12;
   wire [31:0] s_FR13;
   wire [31:0] s_FR14;
   wire [31:0] s_FR15;
   wire [31:0] s_FR16;
   wire [31:0] s_FR17;
   wire [31:0] s_FR18;
   wire [31:0] s_FR19;
   wire [31:0] s_FR2;
   wire [31:0] s_FR20;
   wire [31:0] s_FR21;
   wire [31:0] s_FR22;
   wire [31:0] s_FR23;
   wire [31:0] s_FR24;
   wire [31:0] s_FR25;
   wire [31:0] s_FR26;
   wire [31:0] s_FR27;
   wire [31:0] s_FR28;
   wire [31:0] s_FR29;
   wire [31:0] s_FR3;
   wire [31:0] s_FR30;
   wire [31:0] s_FR31;
   wire [31:0] s_FR4;
   wire [31:0] s_FR5;
   wire [31:0] s_FR6;
   wire [31:0] s_FR7;
   wire [31:0] s_FR8;
   wire [31:0] s_FR9;
   wire        s_InstDone;
   wire        s_Jen;
   wire [31:0] s_Jin;
   wire [31:0] s_Jout;
   wire [31:0] s_R1;
   wire [31:0] s_R10;
   wire [31:0] s_R11;
   wire [31:0] s_R12;
   wire [31:0] s_R13;
   wire [31:0] s_R14;
   wire [31:0] s_R15;
   wire [31:0] s_R16;
   wire [31:0] s_R17;
   wire [31:0] s_R18;
   wire [31:0] s_R19;
   wire [31:0] s_R2;
   wire [31:0] s_R20;
   wire [31:0] s_R21;
   wire [31:0] s_R22;
   wire [31:0] s_R23;
   wire [31:0] s_R24;
   wire [31:0] s_R25;
   wire [31:0] s_R26;
   wire [31:0] s_R27;
   wire [31:0] s_R28;
   wire [31:0] s_R29;
   wire [31:0] s_R3;
   wire [31:0] s_R30;
   wire [31:0] s_R31;
   wire [31:0] s_R4;
   wire [31:0] s_R5;
   wire [31:0] s_R6;
   wire [31:0] s_R7;
   wire [31:0] s_R8;
   wire [31:0] s_R9;
   wire        s_clk;
   wire        s_nop;
   wire [8:0]  s_pcOUT;
   wire        s_rst;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign s_Jen     = 1'b0;
   assign s_Jin[0]  = 1'b0;
   assign s_Jin[10] = 1'b0;
   assign s_Jin[11] = 1'b0;
   assign s_Jin[12] = 1'b0;
   assign s_Jin[13] = 1'b0;
   assign s_Jin[14] = 1'b0;
   assign s_Jin[15] = 1'b0;
   assign s_Jin[16] = 1'b0;
   assign s_Jin[17] = 1'b0;
   assign s_Jin[18] = 1'b0;
   assign s_Jin[19] = 1'b0;
   assign s_Jin[1]  = 1'b0;
   assign s_Jin[20] = 1'b0;
   assign s_Jin[21] = 1'b0;
   assign s_Jin[22] = 1'b0;
   assign s_Jin[23] = 1'b0;
   assign s_Jin[24] = 1'b0;
   assign s_Jin[25] = 1'b0;
   assign s_Jin[26] = 1'b0;
   assign s_Jin[27] = 1'b0;
   assign s_Jin[28] = 1'b0;
   assign s_Jin[29] = 1'b0;
   assign s_Jin[2]  = 1'b0;
   assign s_Jin[30] = 1'b0;
   assign s_Jin[31] = 1'b0;
   assign s_Jin[3]  = 1'b0;
   assign s_Jin[4]  = 1'b0;
   assign s_Jin[5]  = 1'b0;
   assign s_Jin[6]  = 1'b0;
   assign s_Jin[7]  = 1'b0;
   assign s_Jin[8]  = 1'b0;
   assign s_Jin[9]  = 1'b0;
   assign s_clk     = 1'b0;
   assign s_rst     = 1'b0;

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   main   CIRCUIT_0 (.FR1(s_FR1),
                     .FR10(s_FR10),
                     .FR11(s_FR11),
                     .FR12(s_FR12),
                     .FR13(s_FR13),
                     .FR14(s_FR14),
                     .FR15(s_FR15),
                     .FR16(s_FR16),
                     .FR17(s_FR17),
                     .FR18(s_FR18),
                     .FR19(s_FR19),
                     .FR2(s_FR2),
                     .FR20(s_FR20),
                     .FR21(s_FR21),
                     .FR22(s_FR22),
                     .FR23(s_FR23),
                     .FR24(s_FR24),
                     .FR25(s_FR25),
                     .FR26(s_FR26),
                     .FR27(s_FR27),
                     .FR28(s_FR28),
                     .FR29(s_FR29),
                     .FR3(s_FR3),
                     .FR30(s_FR30),
                     .FR31(s_FR31),
                     .FR4(s_FR4),
                     .FR5(s_FR5),
                     .FR6(s_FR6),
                     .FR7(s_FR7),
                     .FR8(s_FR8),
                     .FR9(s_FR9),
                     .InstDone(s_InstDone),
                     .Jen(s_Jen),
                     .Jin(s_Jin),
                     .Jout(s_Jout),
                     .R1(s_R1),
                     .R10(s_R10),
                     .R11(s_R11),
                     .R12(s_R12),
                     .R13(s_R13),
                     .R14(s_R14),
                     .R15(s_R15),
                     .R16(s_R16),
                     .R17(s_R17),
                     .R18(s_R18),
                     .R19(s_R19),
                     .R2(s_R2),
                     .R20(s_R20),
                     .R21(s_R21),
                     .R22(s_R22),
                     .R23(s_R23),
                     .R24(s_R24),
                     .R25(s_R25),
                     .R26(s_R26),
                     .R27(s_R27),
                     .R28(s_R28),
                     .R29(s_R29),
                     .R3(s_R3),
                     .R30(s_R30),
                     .R31(s_R31),
                     .R4(s_R4),
                     .R5(s_R5),
                     .R6(s_R6),
                     .R7(s_R7),
                     .R8(s_R8),
                     .R9(s_R9),
                     .clk(s_clk),
                     .nop(s_nop),
                     .pcOUT(s_pcOUT),
                     .rst(s_rst));
endmodule
