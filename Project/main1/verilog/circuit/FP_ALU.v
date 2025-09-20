/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : FP_ALU                                                       **
 **                                                                          **
 *****************************************************************************/

module FP_ALU( Done,
               a,
               aluop,
               b,
               clk,
               res );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] a;
   input [2:0]  aluop;
   input [31:0] b;
   input        clk;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        Done;
   output [31:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus12;
   wire [2:0]  s_logisimBus2;
   wire [31:0] s_logisimBus3;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus5;
   wire [31:0] s_logisimBus7;
   wire [31:0] s_logisimBus8;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet1;
   wire        s_logisimNet11;
   wire        s_logisimNet13;
   wire        s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[2:0]  = aluop;
   assign s_logisimBus3[31:0] = b;
   assign s_logisimBus9[31:0] = a;
   assign s_logisimNet13      = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Done = s_logisimNet11;
   assign res  = s_logisimBus12[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet1  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_8 #(.nrOfBits(32))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus0[31:0]),
                 .muxIn_1(s_logisimBus7[31:0]),
                 .muxIn_2(s_logisimBus5[31:0]),
                 .muxIn_3(s_logisimBus8[31:0]),
                 .muxIn_4(s_logisimBus10[31:0]),
                 .muxIn_5(s_logisimBus4[31:0]),
                 .muxIn_6(32'd0),
                 .muxIn_7(32'd0),
                 .muxOut(s_logisimBus12[31:0]),
                 .sel(s_logisimBus2[2:0]));

   Multiplexer_8   PLEXERS_2 (.enable(1'b1),
                              .muxIn_0(s_logisimNet1),
                              .muxIn_1(s_logisimNet1),
                              .muxIn_2(s_logisimNet1),
                              .muxIn_3(s_logisimNet1),
                              .muxIn_4(s_logisimNet1),
                              .muxIn_5(s_logisimNet6),
                              .muxIn_6(s_logisimNet1),
                              .muxIn_7(s_logisimNet1),
                              .muxOut(s_logisimNet11),
                              .sel(s_logisimBus2[2:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   fadd   faddH (.INFINITY_PIN(),
                 .NAN_PIN(),
                 .a(s_logisimBus9[31:0]),
                 .b(s_logisimBus3[31:0]),
                 .res(s_logisimBus0[31:0]));

   fsub   fsubH (.INFINITY_PIN(),
                 .NAN_PIN(),
                 .a(s_logisimBus9[31:0]),
                 .b(s_logisimBus3[31:0]),
                 .res(s_logisimBus7[31:0]));

   fmult   fmultH (.a(s_logisimBus3[31:0]),
                   .b(s_logisimBus9[31:0]),
                   .res(s_logisimBus5[31:0]));

   fabs   fabsH (.a(s_logisimBus9[31:0]),
                 .res(s_logisimBus8[31:0]));

   fslt   fsltH (.INFINITY_PIN(),
                 .NAN_PIN(),
                 .a(s_logisimBus9[31:0]),
                 .b(s_logisimBus3[31:0]),
                 .res(s_logisimBus10[31:0]));

   fsin   fsinH (.Done(s_logisimNet6),
                 .clk(s_logisimNet13),
                 .count(s_logisimBus9[31:0]),
                 .res(s_logisimBus4[31:0]),
                 .x(s_logisimBus3[31:0]));

endmodule
