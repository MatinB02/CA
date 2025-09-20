/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 *****************************************************************************/

module ALU( InstDone,
            a,
            aluop,
            b,
            clk,
            res_high,
            res_low,
            zero );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] a;
   input [3:0]  aluop;
   input [31:0] b;
   input        clk;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        InstDone;
   output [31:0] res_high;
   output [31:0] res_low;
   output        zero;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus11;
   wire [31:0] s_logisimBus14;
   wire [31:0] s_logisimBus15;
   wire [31:0] s_logisimBus16;
   wire [31:0] s_logisimBus17;
   wire [31:0] s_logisimBus18;
   wire [31:0] s_logisimBus19;
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus21;
   wire [31:0] s_logisimBus22;
   wire [31:0] s_logisimBus23;
   wire [31:0] s_logisimBus24;
   wire [31:0] s_logisimBus27;
   wire [31:0] s_logisimBus3;
   wire [3:0]  s_logisimBus33;
   wire [3:0]  s_logisimBus34;
   wire [3:0]  s_logisimBus35;
   wire [31:0] s_logisimBus36;
   wire [3:0]  s_logisimBus4;
   wire [31:0] s_logisimBus5;
   wire [31:0] s_logisimBus6;
   wire [31:0] s_logisimBus7;
   wire [31:0] s_logisimBus8;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet20;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet28;
   wire        s_logisimNet29;
   wire        s_logisimNet30;
   wire        s_logisimNet31;
   wire        s_logisimNet32;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[31:0]  = a;
   assign s_logisimBus17[31:0] = b;
   assign s_logisimBus4[3:0]   = aluop;
   assign s_logisimNet30       = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign InstDone = s_logisimNet26;
   assign res_high = s_logisimBus10[31:0];
   assign res_low  = s_logisimBus23[31:0];
   assign zero     = s_logisimNet29;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus33[3:0]  =  4'h1;


   // Constant
   assign  s_logisimBus34[3:0]  =  4'h3;


   // Constant
   assign  s_logisimNet31  =  1'b1;


   // Constant
   assign  s_logisimBus35[3:0]  =  4'hE;


   // Constant
   assign  s_logisimNet32  =  1'b0;


   // Constant
   assign  s_logisimBus36[31:0]  =  32'h00000000;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_16 #(.nrOfBits(32))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus8[31:0]),
                 .muxIn_1(s_logisimBus8[31:0]),
                 .muxIn_10(s_logisimBus7[31:0]),
                 .muxIn_11(s_logisimBus18[31:0]),
                 .muxIn_12(32'd0),
                 .muxIn_13(32'd0),
                 .muxIn_14(32'd0),
                 .muxIn_15(32'd0),
                 .muxIn_2(32'd0),
                 .muxIn_3(s_logisimBus22[31:0]),
                 .muxIn_4(s_logisimBus1[31:0]),
                 .muxIn_5(s_logisimBus24[31:0]),
                 .muxIn_6(s_logisimBus27[31:0]),
                 .muxIn_7(32'd0),
                 .muxIn_8(32'd0),
                 .muxIn_9(s_logisimBus6[31:0]),
                 .muxOut(s_logisimBus10[31:0]),
                 .sel(s_logisimBus4[3:0]));

   Multiplexer_bus_16 #(.nrOfBits(32))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus16[31:0]),
                 .muxIn_1(s_logisimBus16[31:0]),
                 .muxIn_10(s_logisimBus19[31:0]),
                 .muxIn_11(s_logisimBus21[31:0]),
                 .muxIn_12(s_logisimBus14[31:0]),
                 .muxIn_13(32'd0),
                 .muxIn_14(32'd0),
                 .muxIn_15(32'd0),
                 .muxIn_2(s_logisimBus5[31:0]),
                 .muxIn_3(s_logisimBus11[31:0]),
                 .muxIn_4(s_logisimBus2[31:0]),
                 .muxIn_5(s_logisimBus9[31:0]),
                 .muxIn_6(s_logisimBus3[31:0]),
                 .muxIn_7(s_logisimBus0[31:0]),
                 .muxIn_8(32'd0),
                 .muxIn_9(s_logisimBus15[31:0]),
                 .muxOut(s_logisimBus23[31:0]),
                 .sel(s_logisimBus4[3:0]));

   Multiplexer_2   PLEXERS_3 (.enable(1'b1),
                              .muxIn_0(s_logisimNet31),
                              .muxIn_1(s_logisimNet25),
                              .muxOut(s_logisimNet12),
                              .sel(s_logisimNet20));

   Multiplexer_2   PLEXERS_4 (.enable(1'b1),
                              .muxIn_0(s_logisimNet12),
                              .muxIn_1(s_logisimNet32),
                              .muxOut(s_logisimNet26),
                              .sel(s_logisimNet28));

   Comparator #(.nrOfBits(4),
                .twosComplement(0))
      ARITH_5 (.aEqualsB(s_logisimNet13),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus4[3:0]),
               .dataB(s_logisimBus33[3:0]));

   Adder #(.extendedBits(33),
           .nrOfBits(32))
      ARITH_6 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus0[31:0]),
               .dataB(s_logisimBus17[31:0]),
               .result(s_logisimBus14[31:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(0))
      ARITH_7 (.aEqualsB(s_logisimNet20),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus4[3:0]),
               .dataB(s_logisimBus34[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(0))
      ARITH_8 (.aEqualsB(s_logisimNet28),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus4[3:0]),
               .dataB(s_logisimBus35[3:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_9 (.aEqualsB(s_logisimNet29),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus36[31:0]),
               .dataB(s_logisimBus23[31:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   ADDD   x1 (.S(s_logisimNet13),
              .a(s_logisimBus0[31:0]),
              .b(s_logisimBus17[31:0]),
              .res_high(s_logisimBus8[31:0]),
              .res_low(s_logisimBus16[31:0]));

   SLTI   slti1 (.a(s_logisimBus0[31:0]),
                 .b(s_logisimBus17[31:0]),
                 .res_low(s_logisimBus5[31:0]));

   ANDD   x2 (.a(s_logisimBus0[31:0]),
              .b(s_logisimBus17[31:0]),
              .res_high(s_logisimBus1[31:0]),
              .res_low(s_logisimBus2[31:0]));

   ORR   x3 (.a(s_logisimBus0[31:0]),
             .b(s_logisimBus17[31:0]),
             .res_high(s_logisimBus24[31:0]),
             .res_low(s_logisimBus9[31:0]));

   XORR   x4 (.a(s_logisimBus0[31:0]),
              .b(s_logisimBus17[31:0]),
              .res_high(s_logisimBus27[31:0]),
              .res_low(s_logisimBus3[31:0]));

   SLLL   x5 (.a(s_logisimBus0[31:0]),
              .b(s_logisimBus17[31:0]),
              .res_high(s_logisimBus6[31:0]),
              .res_low(s_logisimBus15[31:0]));

   SRLL   x6 (.a(s_logisimBus0[31:0]),
              .b(s_logisimBus17[31:0]),
              .res_high(s_logisimBus7[31:0]),
              .res_low(s_logisimBus19[31:0]));

   SRAA   x7 (.a(s_logisimBus0[31:0]),
              .b(s_logisimBus17[31:0]),
              .res_high(s_logisimBus18[31:0]),
              .res_low(s_logisimBus21[31:0]));

   DIV   x8 (.clk(s_logisimNet30),
             .dividend(s_logisimBus0[31:0]),
             .divisor(s_logisimBus17[31:0]),
             .done(s_logisimNet25),
             .quotient(s_logisimBus11[31:0]),
             .remainder(s_logisimBus22[31:0]));

endmodule
