/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( FR1,
             FR10,
             FR11,
             FR12,
             FR13,
             FR14,
             FR15,
             FR16,
             FR17,
             FR18,
             FR19,
             FR2,
             FR20,
             FR21,
             FR22,
             FR23,
             FR24,
             FR25,
             FR26,
             FR27,
             FR28,
             FR29,
             FR3,
             FR30,
             FR31,
             FR4,
             FR5,
             FR6,
             FR7,
             FR8,
             FR9,
             InstDone,
             Jen,
             Jin,
             Jout,
             R1,
             R10,
             R11,
             R12,
             R13,
             R14,
             R15,
             R16,
             R17,
             R18,
             R19,
             R2,
             R20,
             R21,
             R22,
             R23,
             R24,
             R25,
             R26,
             R27,
             R28,
             R29,
             R3,
             R30,
             R31,
             R4,
             R5,
             R6,
             R7,
             R8,
             R9,
             clk,
             nop,
             pcOUT,
             rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        Jen;
   input [31:0] Jin;
   input        clk;
   input        rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [31:0] FR1;
   output [31:0] FR10;
   output [31:0] FR11;
   output [31:0] FR12;
   output [31:0] FR13;
   output [31:0] FR14;
   output [31:0] FR15;
   output [31:0] FR16;
   output [31:0] FR17;
   output [31:0] FR18;
   output [31:0] FR19;
   output [31:0] FR2;
   output [31:0] FR20;
   output [31:0] FR21;
   output [31:0] FR22;
   output [31:0] FR23;
   output [31:0] FR24;
   output [31:0] FR25;
   output [31:0] FR26;
   output [31:0] FR27;
   output [31:0] FR28;
   output [31:0] FR29;
   output [31:0] FR3;
   output [31:0] FR30;
   output [31:0] FR31;
   output [31:0] FR4;
   output [31:0] FR5;
   output [31:0] FR6;
   output [31:0] FR7;
   output [31:0] FR8;
   output [31:0] FR9;
   output        InstDone;
   output [31:0] Jout;
   output [31:0] R1;
   output [31:0] R10;
   output [31:0] R11;
   output [31:0] R12;
   output [31:0] R13;
   output [31:0] R14;
   output [31:0] R15;
   output [31:0] R16;
   output [31:0] R17;
   output [31:0] R18;
   output [31:0] R19;
   output [31:0] R2;
   output [31:0] R20;
   output [31:0] R21;
   output [31:0] R22;
   output [31:0] R23;
   output [31:0] R24;
   output [31:0] R25;
   output [31:0] R26;
   output [31:0] R27;
   output [31:0] R28;
   output [31:0] R29;
   output [31:0] R3;
   output [31:0] R30;
   output [31:0] R31;
   output [31:0] R4;
   output [31:0] R5;
   output [31:0] R6;
   output [31:0] R7;
   output [31:0] R8;
   output [31:0] R9;
   output        nop;
   output [8:0]  pcOUT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [8:0]  s_logisimBus0;
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus100;
   wire [31:0] s_logisimBus101;
   wire [31:0] s_logisimBus102;
   wire [31:0] s_logisimBus103;
   wire [31:0] s_logisimBus104;
   wire [31:0] s_logisimBus105;
   wire [31:0] s_logisimBus106;
   wire [31:0] s_logisimBus112;
   wire [31:0] s_logisimBus113;
   wire [31:0] s_logisimBus114;
   wire [31:0] s_logisimBus115;
   wire [31:0] s_logisimBus116;
   wire [31:0] s_logisimBus117;
   wire [31:0] s_logisimBus118;
   wire [31:0] s_logisimBus119;
   wire [4:0]  s_logisimBus12;
   wire [31:0] s_logisimBus120;
   wire [31:0] s_logisimBus121;
   wire [31:0] s_logisimBus122;
   wire [31:0] s_logisimBus123;
   wire [31:0] s_logisimBus124;
   wire [31:0] s_logisimBus125;
   wire [31:0] s_logisimBus126;
   wire [31:0] s_logisimBus127;
   wire [31:0] s_logisimBus128;
   wire [31:0] s_logisimBus129;
   wire [31:0] s_logisimBus130;
   wire [31:0] s_logisimBus131;
   wire [31:0] s_logisimBus132;
   wire [31:0] s_logisimBus133;
   wire [31:0] s_logisimBus134;
   wire [31:0] s_logisimBus135;
   wire [31:0] s_logisimBus136;
   wire [31:0] s_logisimBus137;
   wire [31:0] s_logisimBus138;
   wire [31:0] s_logisimBus139;
   wire [31:0] s_logisimBus14;
   wire [31:0] s_logisimBus140;
   wire [31:0] s_logisimBus141;
   wire [31:0] s_logisimBus142;
   wire [31:0] s_logisimBus143;
   wire [4:0]  s_logisimBus15;
   wire [5:0]  s_logisimBus17;
   wire [31:0] s_logisimBus18;
   wire [8:0]  s_logisimBus2;
   wire [8:0]  s_logisimBus24;
   wire [31:0] s_logisimBus28;
   wire [31:0] s_logisimBus3;
   wire [4:0]  s_logisimBus30;
   wire [4:0]  s_logisimBus32;
   wire [4:0]  s_logisimBus33;
   wire [31:0] s_logisimBus35;
   wire [4:0]  s_logisimBus37;
   wire [31:0] s_logisimBus39;
   wire [31:0] s_logisimBus40;
   wire [31:0] s_logisimBus42;
   wire [31:0] s_logisimBus43;
   wire [31:0] s_logisimBus44;
   wire [4:0]  s_logisimBus46;
   wire [31:0] s_logisimBus47;
   wire [31:0] s_logisimBus48;
   wire [3:0]  s_logisimBus5;
   wire [31:0] s_logisimBus50;
   wire [31:0] s_logisimBus51;
   wire [5:0]  s_logisimBus55;
   wire [31:0] s_logisimBus56;
   wire [31:0] s_logisimBus57;
   wire [31:0] s_logisimBus58;
   wire [2:0]  s_logisimBus59;
   wire [31:0] s_logisimBus6;
   wire [8:0]  s_logisimBus61;
   wire [31:0] s_logisimBus62;
   wire [8:0]  s_logisimBus63;
   wire [2:0]  s_logisimBus64;
   wire [5:0]  s_logisimBus65;
   wire [8:0]  s_logisimBus67;
   wire [5:0]  s_logisimBus68;
   wire [31:0] s_logisimBus7;
   wire [4:0]  s_logisimBus70;
   wire [31:0] s_logisimBus71;
   wire [31:0] s_logisimBus72;
   wire [31:0] s_logisimBus74;
   wire [31:0] s_logisimBus75;
   wire [31:0] s_logisimBus76;
   wire [31:0] s_logisimBus77;
   wire [31:0] s_logisimBus78;
   wire [31:0] s_logisimBus79;
   wire [31:0] s_logisimBus80;
   wire [31:0] s_logisimBus81;
   wire [31:0] s_logisimBus82;
   wire [31:0] s_logisimBus83;
   wire [31:0] s_logisimBus84;
   wire [31:0] s_logisimBus85;
   wire [31:0] s_logisimBus86;
   wire [31:0] s_logisimBus87;
   wire [31:0] s_logisimBus88;
   wire [31:0] s_logisimBus89;
   wire [31:0] s_logisimBus90;
   wire [31:0] s_logisimBus91;
   wire [31:0] s_logisimBus92;
   wire [31:0] s_logisimBus93;
   wire [31:0] s_logisimBus94;
   wire [31:0] s_logisimBus95;
   wire [31:0] s_logisimBus96;
   wire [31:0] s_logisimBus97;
   wire [31:0] s_logisimBus98;
   wire [31:0] s_logisimBus99;
   wire        s_logisimNet10;
   wire        s_logisimNet107;
   wire        s_logisimNet108;
   wire        s_logisimNet109;
   wire        s_logisimNet110;
   wire        s_logisimNet111;
   wire        s_logisimNet13;
   wire        s_logisimNet16;
   wire        s_logisimNet19;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet29;
   wire        s_logisimNet31;
   wire        s_logisimNet34;
   wire        s_logisimNet36;
   wire        s_logisimNet38;
   wire        s_logisimNet4;
   wire        s_logisimNet41;
   wire        s_logisimNet45;
   wire        s_logisimNet49;
   wire        s_logisimNet52;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet60;
   wire        s_logisimNet66;
   wire        s_logisimNet69;
   wire        s_logisimNet8;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus44[31:0] = Jin;
   assign s_logisimNet111      = rst;
   assign s_logisimNet60       = clk;
   assign s_logisimNet8        = Jen;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign FR1      = s_logisimBus76[31:0];
   assign FR10     = s_logisimBus85[31:0];
   assign FR11     = s_logisimBus86[31:0];
   assign FR12     = s_logisimBus87[31:0];
   assign FR13     = s_logisimBus88[31:0];
   assign FR14     = s_logisimBus89[31:0];
   assign FR15     = s_logisimBus90[31:0];
   assign FR16     = s_logisimBus91[31:0];
   assign FR17     = s_logisimBus92[31:0];
   assign FR18     = s_logisimBus93[31:0];
   assign FR19     = s_logisimBus94[31:0];
   assign FR2      = s_logisimBus77[31:0];
   assign FR20     = s_logisimBus95[31:0];
   assign FR21     = s_logisimBus96[31:0];
   assign FR22     = s_logisimBus97[31:0];
   assign FR23     = s_logisimBus98[31:0];
   assign FR24     = s_logisimBus99[31:0];
   assign FR25     = s_logisimBus100[31:0];
   assign FR26     = s_logisimBus101[31:0];
   assign FR27     = s_logisimBus102[31:0];
   assign FR28     = s_logisimBus103[31:0];
   assign FR29     = s_logisimBus104[31:0];
   assign FR3      = s_logisimBus78[31:0];
   assign FR30     = s_logisimBus105[31:0];
   assign FR31     = s_logisimBus106[31:0];
   assign FR4      = s_logisimBus79[31:0];
   assign FR5      = s_logisimBus80[31:0];
   assign FR6      = s_logisimBus81[31:0];
   assign FR7      = s_logisimBus82[31:0];
   assign FR8      = s_logisimBus83[31:0];
   assign FR9      = s_logisimBus84[31:0];
   assign InstDone = s_logisimNet20;
   assign Jout     = s_logisimBus74[31:0];
   assign R1       = s_logisimBus113[31:0];
   assign R10      = s_logisimBus122[31:0];
   assign R11      = s_logisimBus123[31:0];
   assign R12      = s_logisimBus124[31:0];
   assign R13      = s_logisimBus125[31:0];
   assign R14      = s_logisimBus126[31:0];
   assign R15      = s_logisimBus127[31:0];
   assign R16      = s_logisimBus128[31:0];
   assign R17      = s_logisimBus129[31:0];
   assign R18      = s_logisimBus130[31:0];
   assign R19      = s_logisimBus131[31:0];
   assign R2       = s_logisimBus114[31:0];
   assign R20      = s_logisimBus132[31:0];
   assign R21      = s_logisimBus133[31:0];
   assign R22      = s_logisimBus134[31:0];
   assign R23      = s_logisimBus135[31:0];
   assign R24      = s_logisimBus136[31:0];
   assign R25      = s_logisimBus137[31:0];
   assign R26      = s_logisimBus138[31:0];
   assign R27      = s_logisimBus139[31:0];
   assign R28      = s_logisimBus140[31:0];
   assign R29      = s_logisimBus141[31:0];
   assign R3       = s_logisimBus115[31:0];
   assign R30      = s_logisimBus142[31:0];
   assign R31      = s_logisimBus143[31:0];
   assign R4       = s_logisimBus116[31:0];
   assign R5       = s_logisimBus117[31:0];
   assign R6       = s_logisimBus118[31:0];
   assign R7       = s_logisimBus119[31:0];
   assign R8       = s_logisimBus120[31:0];
   assign R9       = s_logisimBus121[31:0];
   assign nop      = s_logisimNet21;
   assign pcOUT    = s_logisimBus2[8:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus71[31:0]  =  32'h01407818;


   // Constant
   assign  s_logisimBus46[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus64[2:0]  =  3'b101;


   // Constant
   assign  s_logisimBus65[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus55[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimNet69  =  1'b1;


   // Constant
   assign  s_logisimBus72[31:0]  =  32'h01407818;


   // Constant
   assign  s_logisimBus67[8:0]  =  {1'b0, 8'h01};


   // Constant
   assign  s_logisimBus70[4:0]  =  {1'b0, 4'h0};


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet54),
               .input2(s_logisimNet4),
               .result(s_logisimNet20));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_2 (.input1(s_logisimNet38),
               .input2(s_logisimNet53),
               .input3(s_logisimNet41),
               .result(s_logisimNet36));

   AND_GATE #(.BubblesMask(2'b01))
      GATES_3 (.input1(s_logisimNet22),
               .input2(s_logisimNet25),
               .result(s_logisimNet66));

   AND_GATE #(.BubblesMask(2'b10))
      GATES_4 (.input1(s_logisimNet60),
               .input2(s_logisimNet21),
               .result(s_logisimNet29));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus62[31:0]),
                 .muxIn_1(s_logisimBus112[31:0]),
                 .muxOut(s_logisimBus28[31:0]),
                 .sel(s_logisimNet110));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_6 (.enable(1'b1),
                 .muxIn_0(s_logisimBus46[4:0]),
                 .muxIn_1(s_logisimBus37[4:0]),
                 .muxOut(s_logisimBus12[4:0]),
                 .sel(s_logisimNet109));

   Multiplexer_2   PLEXERS_7 (.enable(1'b1),
                              .muxIn_0(s_logisimNet49),
                              .muxIn_1(s_logisimNet19),
                              .muxOut(s_logisimNet52),
                              .sel(s_logisimNet36));

   Multiplexer_2   PLEXERS_8 (.enable(1'b1),
                              .muxIn_0(s_logisimNet52),
                              .muxIn_1(s_logisimNet69),
                              .muxOut(s_logisimNet26),
                              .sel(s_logisimNet31));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus48[31:0]),
                 .muxIn_1(s_logisimBus3[31:0]),
                 .muxOut(s_logisimBus51[31:0]),
                 .sel(s_logisimNet10));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_10 (.enable(1'b1),
                  .muxIn_0(s_logisimBus51[31:0]),
                  .muxIn_1(s_logisimBus47[31:0]),
                  .muxOut(s_logisimBus14[31:0]),
                  .sel(s_logisimNet16));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_11 (.enable(1'b1),
                  .muxIn_0(s_logisimBus112[31:0]),
                  .muxIn_1(s_logisimBus48[31:0]),
                  .muxOut(s_logisimBus40[31:0]),
                  .sel(s_logisimNet16));

   Multiplexer_bus_2 #(.nrOfBits(9))
      PLEXERS_12 (.enable(1'b1),
                  .muxIn_0(s_logisimBus0[8:0]),
                  .muxIn_1(s_logisimBus63[8:0]),
                  .muxOut(s_logisimBus61[8:0]),
                  .sel(s_logisimNet66));

   Multiplexer_bus_2 #(.nrOfBits(9))
      PLEXERS_13 (.enable(1'b1),
                  .muxIn_0(s_logisimBus61[8:0]),
                  .muxIn_1(s_logisimBus3[8:0]),
                  .muxOut(s_logisimBus24[8:0]),
                  .sel(s_logisimNet34));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_14 (.enable(1'b1),
                  .muxIn_0(s_logisimBus32[4:0]),
                  .muxIn_1(s_logisimBus37[4:0]),
                  .muxOut(s_logisimBus30[4:0]),
                  .sel(s_logisimNet23));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_15 (.enable(1'b1),
                  .muxIn_0(s_logisimBus58[31:0]),
                  .muxIn_1(s_logisimBus18[31:0]),
                  .muxOut(s_logisimBus56[31:0]),
                  .sel(s_logisimNet13));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_16 (.enable(1'b1),
                  .muxIn_0(s_logisimBus56[31:0]),
                  .muxIn_1(s_logisimBus1[31:0]),
                  .muxOut(s_logisimBus43[31:0]),
                  .sel(s_logisimNet45));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_17 (.enable(1'b1),
                  .muxIn_0(s_logisimBus70[4:0]),
                  .muxIn_1(s_logisimBus30[4:0]),
                  .muxOut(s_logisimBus33[4:0]),
                  .sel(s_logisimNet9));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_18 (.enable(1'b1),
                  .muxIn_0(s_logisimBus43[31:0]),
                  .muxIn_1(s_logisimBus75[31:0]),
                  .muxOut(s_logisimBus50[31:0]),
                  .sel(s_logisimNet27));

   Multiplexer_2   PLEXERS_19 (.enable(1'b1),
                               .muxIn_0(s_logisimNet49),
                               .muxIn_1(s_logisimNet19),
                               .muxOut(s_logisimNet54),
                               .sel(s_logisimNet109));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_20 (.aEqualsB(s_logisimNet4),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus57[31:0]),
                .dataB(s_logisimBus71[31:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_21 (.aEqualsB(s_logisimNet38),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus59[2:0]),
                .dataB(s_logisimBus64[2:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_22 (.aEqualsB(s_logisimNet53),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus17[5:0]),
                .dataB(s_logisimBus65[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_23 (.aEqualsB(s_logisimNet41),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus68[5:0]),
                .dataB(s_logisimBus55[5:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_24 (.aEqualsB(s_logisimNet31),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus39[31:0]),
                .dataB(s_logisimBus72[31:0]));

   Adder #(.extendedBits(10),
           .nrOfBits(9))
      ARITH_25 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus2[8:0]),
                .dataB(s_logisimBus67[8:0]),
                .result(s_logisimBus0[8:0]));

   Adder #(.extendedBits(10),
           .nrOfBits(9))
      ARITH_26 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus0[8:0]),
                .dataB(s_logisimBus3[8:0]),
                .result(s_logisimBus63[8:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      MEMORY_27 (.clock(s_logisimNet60),
                 .clockEnable(1'b1),
                 .d(s_logisimBus7[31:0]),
                 .q(s_logisimBus57[31:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(9))
      pc (.clock(s_logisimNet29),
          .clockEnable(s_logisimNet54),
          .d(s_logisimBus24[8:0]),
          .q(s_logisimBus2[8:0]),
          .reset(s_logisimNet111),
          .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      HI (.clock(s_logisimNet29),
          .clockEnable(s_logisimNet108),
          .d(s_logisimBus42[31:0]),
          .q(s_logisimBus1[31:0]),
          .reset(1'b0),
          .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   jtag_ram512   Dmem (.Addr(s_logisimBus58[10:2]),
                       .Din(s_logisimBus48[31:0]),
                       .Dout(s_logisimBus18[31:0]),
                       .Jen(s_logisimNet8),
                       .Jin(s_logisimBus6[31:0]),
                       .Jout(s_logisimBus74[31:0]),
                       .Wen(s_logisimNet107),
                       .clk(s_logisimNet60));

   regfile   FP_RF (.Aread0(s_logisimBus15[4:0]),
                    .Aread1(s_logisimBus32[4:0]),
                    .Awrite(s_logisimBus12[4:0]),
                    .Dread0(s_logisimBus75[31:0]),
                    .Dread1(s_logisimBus35[31:0]),
                    .Dwrite(s_logisimBus28[31:0]),
                    .R1(s_logisimBus76[31:0]),
                    .R10(s_logisimBus85[31:0]),
                    .R11(s_logisimBus86[31:0]),
                    .R12(s_logisimBus87[31:0]),
                    .R13(s_logisimBus88[31:0]),
                    .R14(s_logisimBus89[31:0]),
                    .R15(s_logisimBus90[31:0]),
                    .R16(s_logisimBus91[31:0]),
                    .R17(s_logisimBus92[31:0]),
                    .R18(s_logisimBus93[31:0]),
                    .R19(s_logisimBus94[31:0]),
                    .R2(s_logisimBus77[31:0]),
                    .R20(s_logisimBus95[31:0]),
                    .R21(s_logisimBus96[31:0]),
                    .R22(s_logisimBus97[31:0]),
                    .R23(s_logisimBus98[31:0]),
                    .R24(s_logisimBus99[31:0]),
                    .R25(s_logisimBus100[31:0]),
                    .R26(s_logisimBus101[31:0]),
                    .R27(s_logisimBus102[31:0]),
                    .R28(s_logisimBus103[31:0]),
                    .R29(s_logisimBus104[31:0]),
                    .R3(s_logisimBus78[31:0]),
                    .R30(s_logisimBus105[31:0]),
                    .R31(s_logisimBus106[31:0]),
                    .R4(s_logisimBus79[31:0]),
                    .R5(s_logisimBus80[31:0]),
                    .R6(s_logisimBus81[31:0]),
                    .R7(s_logisimBus82[31:0]),
                    .R8(s_logisimBus83[31:0]),
                    .R9(s_logisimBus84[31:0]),
                    .clk(s_logisimNet60),
                    .rst(s_logisimNet111));

   FP_ALU   FPALUMain (.Done(s_logisimNet19),
                       .a(s_logisimBus75[31:0]),
                       .aluop(s_logisimBus59[2:0]),
                       .b(s_logisimBus35[31:0]),
                       .clk(s_logisimNet60),
                       .res(s_logisimBus62[31:0]));

   ALU   ALUMain (.InstDone(s_logisimNet49),
                  .a(s_logisimBus40[31:0]),
                  .aluop(s_logisimBus5[3:0]),
                  .b(s_logisimBus14[31:0]),
                  .clk(s_logisimNet60),
                  .res_high(s_logisimBus42[31:0]),
                  .res_low(s_logisimBus58[31:0]),
                  .zero(s_logisimNet22));

   InstructionDecode   IDMain (.Instruction(s_logisimBus7[31:0]),
                               .func(s_logisimBus17[5:0]),
                               .imm(s_logisimBus3[31:0]),
                               .opCode(s_logisimBus68[5:0]),
                               .rd(s_logisimBus37[4:0]),
                               .rs(s_logisimBus32[4:0]),
                               .rt(s_logisimBus15[4:0]),
                               .shmt(s_logisimBus47[31:0]));

   ControlUnit   CUMain (.ALUop(s_logisimBus5[3:0]),
                         .ALUsrc(s_logisimNet10),
                         .FALUop(s_logisimBus59[2:0]),
                         .FROMCOP(s_logisimNet27),
                         .FregWrite(s_logisimNet109),
                         .TOCOP(s_logisimNet110),
                         .branch(s_logisimNet25),
                         .divv(s_logisimNet108),
                         .func(s_logisimBus17[5:0]),
                         .inst(s_logisimNet49),
                         .inst2(s_logisimNet26),
                         .j(s_logisimNet34),
                         .main_clock(s_logisimNet60),
                         .memToReg(s_logisimNet13),
                         .memWrite(s_logisimNet107),
                         .mohi(s_logisimNet45),
                         .nop(s_logisimNet21),
                         .opCode(s_logisimBus68[5:0]),
                         .regDst(s_logisimNet23),
                         .regWrite(s_logisimNet9),
                         .shmt(s_logisimNet16));

   jtag_ram512   Imem (.Addr(s_logisimBus2[8:0]),
                       .Din(32'd0),
                       .Dout(s_logisimBus7[31:0]),
                       .Jen(s_logisimNet8),
                       .Jin(s_logisimBus44[31:0]),
                       .Jout(s_logisimBus6[31:0]),
                       .Wen(1'b0),
                       .clk(s_logisimNet60));

   regfile   RegfileMain (.Aread0(s_logisimBus15[4:0]),
                          .Aread1(s_logisimBus32[4:0]),
                          .Awrite(s_logisimBus33[4:0]),
                          .Dread0(s_logisimBus112[31:0]),
                          .Dread1(s_logisimBus48[31:0]),
                          .Dwrite(s_logisimBus50[31:0]),
                          .R1(s_logisimBus113[31:0]),
                          .R10(s_logisimBus122[31:0]),
                          .R11(s_logisimBus123[31:0]),
                          .R12(s_logisimBus124[31:0]),
                          .R13(s_logisimBus125[31:0]),
                          .R14(s_logisimBus126[31:0]),
                          .R15(s_logisimBus127[31:0]),
                          .R16(s_logisimBus128[31:0]),
                          .R17(s_logisimBus129[31:0]),
                          .R18(s_logisimBus130[31:0]),
                          .R19(s_logisimBus131[31:0]),
                          .R2(s_logisimBus114[31:0]),
                          .R20(s_logisimBus132[31:0]),
                          .R21(s_logisimBus133[31:0]),
                          .R22(s_logisimBus134[31:0]),
                          .R23(s_logisimBus135[31:0]),
                          .R24(s_logisimBus136[31:0]),
                          .R25(s_logisimBus137[31:0]),
                          .R26(s_logisimBus138[31:0]),
                          .R27(s_logisimBus139[31:0]),
                          .R28(s_logisimBus140[31:0]),
                          .R29(s_logisimBus141[31:0]),
                          .R3(s_logisimBus115[31:0]),
                          .R30(s_logisimBus142[31:0]),
                          .R31(s_logisimBus143[31:0]),
                          .R4(s_logisimBus116[31:0]),
                          .R5(s_logisimBus117[31:0]),
                          .R6(s_logisimBus118[31:0]),
                          .R7(s_logisimBus119[31:0]),
                          .R8(s_logisimBus120[31:0]),
                          .R9(s_logisimBus121[31:0]),
                          .clk(s_logisimNet29),
                          .rst(s_logisimNet111));

endmodule
