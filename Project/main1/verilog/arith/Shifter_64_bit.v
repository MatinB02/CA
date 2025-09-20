/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Shifter_64_bit                                               **
 **                                                                          **
 *****************************************************************************/

module Shifter_64_bit( dataA,
                       result,
                       shiftAmount );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter shifterMode = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [63:0] dataA;
   input [5:0]  shiftAmount;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [63:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [63:0] s_stage0Result;
   wire        s_stage0ShiftIn;
   wire [63:0] s_stage1Result;
   wire [1:0]  s_stage1ShiftIn;
   wire [63:0] s_stage2Result;
   wire [3:0]  s_stage2ShiftIn;
   wire [63:0] s_stage3Result;
   wire [7:0]  s_stage3ShiftIn;
   wire [63:0] s_stage4Result;
   wire [15:0] s_stage4ShiftIn;
   wire [63:0] s_stage5Result;
   wire [31:0] s_stage5ShiftIn;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   /*******************************************************************************
   ** ShifterMode represents when:                                               **
   ** 0 : Logical Shift Left                                                     **
   ** 1 : Rotate Left                                                            **
   ** 2 :                                                                        **
   ** Logical Shift Right                                                        **
   ** 3 : Arithmetic Shift Right                                                 **
   ** 4 : Rotate Right                                                           **
   *******************************************************************************/

   /*******************************************************************************
   ** Stage 0 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage0ShiftIn = ((shifterMode == 1) || (shifterMode == 3))
        ? dataA[shifterMode] : (63 == 4) ? dataA[0] : 0;

   assign s_stage0Result  = (shiftAmount == 0)
        ? dataA
        : ((shifterMode == 0) || (shifterMode == 1))
           ? {dataA[62:0],s_stage0ShiftIn}
           : {s_stage0ShiftIn,dataA[63:1]};

   /*******************************************************************************
   ** Stage 1 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage1ShiftIn = (shifterMode == 1) ?
                              s_stage0Result[63:62] :
                              (shifterMode == 3) ?
                              { 2{s_stage0Result[63]} } :
                              (shifterMode == 4) ?
                              s_stage0Result[1:0] : 0;

   assign s_stage1Result  = (shiftAmount[1]==0) ?
                              s_stage0Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage0Result[61:0],s_stage1ShiftIn} :
                              {s_stage1ShiftIn,s_stage0Result[63:2]};

   /*******************************************************************************
   ** Stage 2 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage2ShiftIn = (shifterMode == 1) ?
                              s_stage1Result[63:60] :
                              (shifterMode == 3) ?
                              { 4{s_stage1Result[63]} } :
                              (shifterMode == 4) ?
                              s_stage1Result[3:0] : 0;

   assign s_stage2Result  = (shiftAmount[2]==0) ?
                              s_stage1Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage1Result[59:0],s_stage2ShiftIn} :
                              {s_stage2ShiftIn,s_stage1Result[63:4]};

   /*******************************************************************************
   ** Stage 3 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage3ShiftIn = (shifterMode == 1) ?
                              s_stage2Result[63:56] :
                              (shifterMode == 3) ?
                              { 8{s_stage2Result[63]} } :
                              (shifterMode == 4) ?
                              s_stage2Result[7:0] : 0;

   assign s_stage3Result  = (shiftAmount[3]==0) ?
                              s_stage2Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage2Result[55:0],s_stage3ShiftIn} :
                              {s_stage3ShiftIn,s_stage2Result[63:8]};

   /*******************************************************************************
   ** Stage 4 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage4ShiftIn = (shifterMode == 1) ?
                              s_stage3Result[63:48] :
                              (shifterMode == 3) ?
                              { 16{s_stage3Result[63]} } :
                              (shifterMode == 4) ?
                              s_stage3Result[15:0] : 0;

   assign s_stage4Result  = (shiftAmount[4]==0) ?
                              s_stage3Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage3Result[47:0],s_stage4ShiftIn} :
                              {s_stage4ShiftIn,s_stage3Result[63:16]};

   /*******************************************************************************
   ** Stage 5 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage5ShiftIn = (shifterMode == 1) ?
                              s_stage4Result[63:32] :
                              (shifterMode == 3) ?
                              { 32{s_stage4Result[63]} } :
                              (shifterMode == 4) ?
                              s_stage4Result[31:0] : 0;

   assign s_stage5Result  = (shiftAmount[5]==0) ?
                              s_stage4Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage4Result[31:0],s_stage5ShiftIn} :
                              {s_stage5ShiftIn,s_stage4Result[63:32]};

   /*******************************************************************************
   ** The result is assigned here                                                **
   *******************************************************************************/
   assign result = s_stage5Result;

endmodule
