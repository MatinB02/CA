/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : jtag_ram8                                                    **
 **                                                                          **
 *****************************************************************************/

module jtag_ram8( Addr,
                  Din,
                  Dout,
                  Jen,
                  Jin,
                  Jout,
                  Wen,
                  clk );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [2:0]  Addr;
   input [31:0] Din;
   input        Jen;
   input [31:0] Jin;
   input        Wen;
   input        clk;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [31:0] Dout;
   output [31:0] Jout;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus11;
   wire [2:0]  s_logisimBus12;
   wire [31:0] s_logisimBus13;
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus24;
   wire [31:0] s_logisimBus25;
   wire [31:0] s_logisimBus26;
   wire [31:0] s_logisimBus27;
   wire [31:0] s_logisimBus28;
   wire [31:0] s_logisimBus29;
   wire [31:0] s_logisimBus3;
   wire [31:0] s_logisimBus30;
   wire [31:0] s_logisimBus31;
   wire [31:0] s_logisimBus32;
   wire [31:0] s_logisimBus33;
   wire [31:0] s_logisimBus38;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus8;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus12[2:0]  = Addr;
   assign s_logisimBus2[31:0]  = Din;
   assign s_logisimBus38[31:0] = Jin;
   assign s_logisimNet1        = Wen;
   assign s_logisimNet5        = Jen;
   assign s_logisimNet7        = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Dout = s_logisimBus25[31:0];
   assign Jout = s_logisimBus13[31:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet5),
               .input2(s_logisimNet21),
               .result(s_logisimNet34));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet5),
               .input2(s_logisimNet6),
               .result(s_logisimNet16));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet5),
               .input2(s_logisimNet22),
               .result(s_logisimNet35));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet5),
               .input2(s_logisimNet0),
               .result(s_logisimNet18));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet5),
               .input2(s_logisimNet23),
               .result(s_logisimNet36));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet5),
               .input2(s_logisimNet17),
               .result(s_logisimNet19));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet5),
               .input2(s_logisimNet14),
               .result(s_logisimNet37));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet5),
               .input2(s_logisimNet15),
               .result(s_logisimNet20));

   Decoder_8   PLEXERS_9 (.decoderOut_0(s_logisimNet21),
                          .decoderOut_1(s_logisimNet6),
                          .decoderOut_2(s_logisimNet22),
                          .decoderOut_3(s_logisimNet0),
                          .decoderOut_4(s_logisimNet23),
                          .decoderOut_5(s_logisimNet17),
                          .decoderOut_6(s_logisimNet14),
                          .decoderOut_7(s_logisimNet15),
                          .enable(s_logisimNet1),
                          .sel(s_logisimBus12[2:0]));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_10 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus38[31:0]),
                  .muxOut(s_logisimBus26[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_11 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus30[31:0]),
                  .muxOut(s_logisimBus3[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_12 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus24[31:0]),
                  .muxOut(s_logisimBus27[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_13 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus31[31:0]),
                  .muxOut(s_logisimBus4[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_14 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus10[31:0]),
                  .muxOut(s_logisimBus28[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_15 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus32[31:0]),
                  .muxOut(s_logisimBus8[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_16 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus11[31:0]),
                  .muxOut(s_logisimBus29[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_17 (.enable(1'b1),
                  .muxIn_0(s_logisimBus2[31:0]),
                  .muxIn_1(s_logisimBus33[31:0]),
                  .muxOut(s_logisimBus9[31:0]),
                  .sel(s_logisimNet5));

   Multiplexer_bus_8 #(.nrOfBits(32))
      PLEXERS_18 (.enable(1'b1),
                  .muxIn_0(s_logisimBus30[31:0]),
                  .muxIn_1(s_logisimBus24[31:0]),
                  .muxIn_2(s_logisimBus31[31:0]),
                  .muxIn_3(s_logisimBus10[31:0]),
                  .muxIn_4(s_logisimBus32[31:0]),
                  .muxIn_5(s_logisimBus11[31:0]),
                  .muxIn_6(s_logisimBus33[31:0]),
                  .muxIn_7(s_logisimBus13[31:0]),
                  .muxOut(s_logisimBus25[31:0]),
                  .sel(s_logisimBus12[2:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_19 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet34),
                 .d(s_logisimBus26[31:0]),
                 .q(s_logisimBus30[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_20 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet16),
                 .d(s_logisimBus3[31:0]),
                 .q(s_logisimBus24[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_21 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet35),
                 .d(s_logisimBus27[31:0]),
                 .q(s_logisimBus31[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_22 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet18),
                 .d(s_logisimBus4[31:0]),
                 .q(s_logisimBus10[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_23 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet36),
                 .d(s_logisimBus28[31:0]),
                 .q(s_logisimBus32[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_24 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet19),
                 .d(s_logisimBus8[31:0]),
                 .q(s_logisimBus11[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_25 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet37),
                 .d(s_logisimBus29[31:0]),
                 .q(s_logisimBus33[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_26 (.clock(s_logisimNet7),
                 .clockEnable(s_logisimNet20),
                 .d(s_logisimBus9[31:0]),
                 .q(s_logisimBus13[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));


endmodule
