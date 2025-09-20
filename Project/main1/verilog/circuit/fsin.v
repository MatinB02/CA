/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : fsin                                                         **
 **                                                                          **
 *****************************************************************************/

module fsin( Done,
             clk,
             count,
             res,
             x );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        clk;
   input [31:0] count;
   input [31:0] x;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        Done;
   output [31:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [3:0]  s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus11;
   wire [31:0] s_logisimBus12;
   wire [31:0] s_logisimBus13;
   wire [31:0] s_logisimBus14;
   wire [31:0] s_logisimBus15;
   wire [31:0] s_logisimBus16;
   wire [31:0] s_logisimBus17;
   wire [31:0] s_logisimBus18;
   wire [31:0] s_logisimBus19;
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus20;
   wire [31:0] s_logisimBus21;
   wire [31:0] s_logisimBus22;
   wire [31:0] s_logisimBus23;
   wire [31:0] s_logisimBus24;
   wire [31:0] s_logisimBus25;
   wire [3:0]  s_logisimBus26;
   wire [3:0]  s_logisimBus27;
   wire [3:0]  s_logisimBus28;
   wire [31:0] s_logisimBus3;
   wire [3:0]  s_logisimBus31;
   wire [31:0] s_logisimBus33;
   wire [3:0]  s_logisimBus34;
   wire [31:0] s_logisimBus39;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus40;
   wire [3:0]  s_logisimBus41;
   wire [31:0] s_logisimBus5;
   wire [31:0] s_logisimBus7;
   wire [31:0] s_logisimBus8;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet29;
   wire        s_logisimNet30;
   wire        s_logisimNet32;
   wire        s_logisimNet35;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet38;
   wire        s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[31:0]  = x;
   assign s_logisimBus40[31:0] = count;
   assign s_logisimNet36       = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Done = s_logisimNet38;
   assign res  = s_logisimBus39[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus34[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus1[3:0]  =  4'h1;


   // Constant
   assign  s_logisimBus25[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimNet37  =  1'b0;


   // Constant
   assign  s_logisimBus9[31:0]  =  32'h3F800000;


   // Constant
   assign  s_logisimBus10[31:0]  =  32'h3C088889;


   // Constant
   assign  s_logisimBus11[31:0]  =  32'h3638EF1D;


   // Constant
   assign  s_logisimBus7[31:0]  =  32'h2F309231;


   // Constant
   assign  s_logisimBus12[31:0]  =  32'h274A963C;


   // Constant
   assign  s_logisimBus13[31:0]  =  32'h1EB8DC78;


   // Constant
   assign  s_logisimBus14[31:0]  =  32'h159F9E67;


   // Constant
   assign  s_logisimBus15[31:0]  =  32'h0C12CFCC;


   // Constant
   assign  s_logisimBus8[31:0]  =  32'h021CC093;


   // Constant
   assign  s_logisimBus17[31:0]  =  32'hBE2AAAAB;


   // Constant
   assign  s_logisimBus18[31:0]  =  32'hB9500D01;


   // Constant
   assign  s_logisimBus19[31:0]  =  32'hB2D7322B;


   // Constant
   assign  s_logisimBus16[31:0]  =  32'hAB573F9F;


   // Constant
   assign  s_logisimBus20[31:0]  =  32'hA317A4DA;


   // Constant
   assign  s_logisimBus21[31:0]  =  32'h9A3B0DA1;


   // Constant
   assign  s_logisimBus22[31:0]  =  32'h90E8D58E;


   // Constant
   assign  s_logisimBus23[31:0]  =  32'h8721A697;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus33[31:0]),
                 .muxIn_1(s_logisimBus39[31:0]),
                 .muxOut(s_logisimBus4[31:0]),
                 .sel(s_logisimNet35));

   Multiplexer_2   PLEXERS_2 (.enable(1'b1),
                              .muxIn_0(s_logisimNet30),
                              .muxIn_1(s_logisimNet35),
                              .muxOut(s_logisimNet32),
                              .sel(s_logisimNet35));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus26[3:0]),
                 .muxIn_1(s_logisimBus31[3:0]),
                 .muxOut(s_logisimBus27[3:0]),
                 .sel(s_logisimNet35));

   Multiplexer_2   PLEXERS_4 (.enable(1'b1),
                              .muxIn_0(s_logisimNet32),
                              .muxIn_1(s_logisimNet37),
                              .muxOut(s_logisimNet29),
                              .sel(s_logisimNet6));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus4[31:0]),
                 .muxIn_1(s_logisimBus25[31:0]),
                 .muxOut(s_logisimBus3[31:0]),
                 .sel(s_logisimNet6));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_6 (.enable(1'b1),
                 .muxIn_0(s_logisimBus27[3:0]),
                 .muxIn_1(s_logisimBus41[3:0]),
                 .muxOut(s_logisimBus28[3:0]),
                 .sel(s_logisimNet6));

   Multiplexer_bus_16 #(.nrOfBits(32))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus9[31:0]),
                 .muxIn_1(s_logisimBus17[31:0]),
                 .muxIn_10(s_logisimBus13[31:0]),
                 .muxIn_11(s_logisimBus21[31:0]),
                 .muxIn_12(s_logisimBus14[31:0]),
                 .muxIn_13(s_logisimBus22[31:0]),
                 .muxIn_14(s_logisimBus15[31:0]),
                 .muxIn_15(s_logisimBus23[31:0]),
                 .muxIn_2(s_logisimBus10[31:0]),
                 .muxIn_3(s_logisimBus18[31:0]),
                 .muxIn_4(s_logisimBus11[31:0]),
                 .muxIn_5(s_logisimBus19[31:0]),
                 .muxIn_6(s_logisimBus7[31:0]),
                 .muxIn_7(s_logisimBus16[31:0]),
                 .muxIn_8(s_logisimBus12[31:0]),
                 .muxIn_9(s_logisimBus20[31:0]),
                 .muxOut(s_logisimBus2[31:0]),
                 .sel(s_logisimBus31[3:0]));

   Comparator #(.nrOfBits(4),
                .twosComplement(1))
      ARITH_8 (.aEqualsB(s_logisimNet30),
               .aGreaterThanB(),
               .aLessThanB(),
               .dataA(s_logisimBus31[3:0]),
               .dataB(s_logisimBus34[3:0]));

   Subtractor #(.extendedBits(5),
                .nrOfBits(4))
      ARITH_9 (.borrowIn(1'b0),
               .borrowOut(),
               .dataA(s_logisimBus31[3:0]),
               .dataB(s_logisimBus1[3:0]),
               .result(s_logisimBus26[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_10 (.clock(s_logisimNet36),
                 .clockEnable(1'b1),
                 .d(s_logisimBus3[31:0]),
                 .q(s_logisimBus39[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_11 (.clock(s_logisimNet36),
                 .clockEnable(1'b1),
                 .d(s_logisimBus28[3:0]),
                 .q(s_logisimBus31[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_12 (.clock(s_logisimNet36),
                 .clockEnable(1'b1),
                 .d(s_logisimNet29),
                 .q(s_logisimNet35),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_13 (.clock(s_logisimNet36),
                 .d(s_logisimNet35),
                 .preset(1'b0),
                 .q(s_logisimNet38),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet36),
                 .d(1'b0),
                 .preset(s_logisimNet36),
                 .q(),
                 .qBar(s_logisimNet6),
                 .reset(s_logisimNet35),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   fadd   addh (.INFINITY_PIN(),
                .NAN_PIN(),
                .a(s_logisimBus39[31:0]),
                .b(s_logisimBus5[31:0]),
                .res(s_logisimBus33[31:0]));

   floatTOdec   floatToDecH (.dec(s_logisimBus41[3:0]),
                             .float(s_logisimBus40[31:0]));

   Calculate_Term_sin   calcH (.a(s_logisimBus31[3:0]),
                               .term(s_logisimBus24[31:0]),
                               .x(s_logisimBus0[31:0]));

   fmult   multh (.a(s_logisimBus24[31:0]),
                  .b(s_logisimBus2[31:0]),
                  .res(s_logisimBus5[31:0]));

endmodule
