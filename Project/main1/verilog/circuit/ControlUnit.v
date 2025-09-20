/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ControlUnit                                                  **
 **                                                                          **
 *****************************************************************************/

module ControlUnit( ALUop,
                    ALUsrc,
                    FALUop,
                    FROMCOP,
                    FregWrite,
                    TOCOP,
                    branch,
                    divv,
                    func,
                    inst,
                    inst2,
                    j,
                    main_clock,
                    memToReg,
                    memWrite,
                    mohi,
                    nop,
                    opCode,
                    regDst,
                    regWrite,
                    shmt );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [5:0] func;
   input       inst;
   input       inst2;
   input       main_clock;
   input [5:0] opCode;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] ALUop;
   output       ALUsrc;
   output [2:0] FALUop;
   output       FROMCOP;
   output       FregWrite;
   output       TOCOP;
   output       branch;
   output       divv;
   output       j;
   output       memToReg;
   output       memWrite;
   output       mohi;
   output       nop;
   output       regDst;
   output       regWrite;
   output       shmt;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [5:0] s_logisimBus10;
   wire [3:0] s_logisimBus100;
   wire [3:0] s_logisimBus101;
   wire [3:0] s_logisimBus102;
   wire [3:0] s_logisimBus103;
   wire [3:0] s_logisimBus104;
   wire [3:0] s_logisimBus105;
   wire [3:0] s_logisimBus106;
   wire [3:0] s_logisimBus107;
   wire [3:0] s_logisimBus108;
   wire [3:0] s_logisimBus109;
   wire [3:0] s_logisimBus110;
   wire [5:0] s_logisimBus111;
   wire [5:0] s_logisimBus112;
   wire [5:0] s_logisimBus113;
   wire [5:0] s_logisimBus114;
   wire [5:0] s_logisimBus115;
   wire [5:0] s_logisimBus116;
   wire [5:0] s_logisimBus117;
   wire [5:0] s_logisimBus118;
   wire [5:0] s_logisimBus119;
   wire [5:0] s_logisimBus120;
   wire [5:0] s_logisimBus121;
   wire [5:0] s_logisimBus122;
   wire [5:0] s_logisimBus123;
   wire [5:0] s_logisimBus124;
   wire [5:0] s_logisimBus125;
   wire [5:0] s_logisimBus126;
   wire [5:0] s_logisimBus127;
   wire [5:0] s_logisimBus128;
   wire [5:0] s_logisimBus129;
   wire [5:0] s_logisimBus130;
   wire [5:0] s_logisimBus131;
   wire [5:0] s_logisimBus132;
   wire [5:0] s_logisimBus133;
   wire [5:0] s_logisimBus134;
   wire [5:0] s_logisimBus135;
   wire [5:0] s_logisimBus136;
   wire [5:0] s_logisimBus137;
   wire [5:0] s_logisimBus138;
   wire [3:0] s_logisimBus17;
   wire [5:0] s_logisimBus18;
   wire [2:0] s_logisimBus19;
   wire [3:0] s_logisimBus20;
   wire [3:0] s_logisimBus22;
   wire [3:0] s_logisimBus23;
   wire [3:0] s_logisimBus31;
   wire [3:0] s_logisimBus32;
   wire [3:0] s_logisimBus36;
   wire [3:0] s_logisimBus42;
   wire [3:0] s_logisimBus43;
   wire [2:0] s_logisimBus44;
   wire [3:0] s_logisimBus45;
   wire [2:0] s_logisimBus46;
   wire [2:0] s_logisimBus48;
   wire [3:0] s_logisimBus49;
   wire [3:0] s_logisimBus51;
   wire [2:0] s_logisimBus55;
   wire [3:0] s_logisimBus59;
   wire [3:0] s_logisimBus6;
   wire [3:0] s_logisimBus62;
   wire [3:0] s_logisimBus64;
   wire [2:0] s_logisimBus65;
   wire [3:0] s_logisimBus7;
   wire [3:0] s_logisimBus72;
   wire [3:0] s_logisimBus74;
   wire [2:0] s_logisimBus75;
   wire [2:0] s_logisimBus80;
   wire [2:0] s_logisimBus81;
   wire [2:0] s_logisimBus82;
   wire [3:0] s_logisimBus83;
   wire [3:0] s_logisimBus84;
   wire [2:0] s_logisimBus85;
   wire [3:0] s_logisimBus86;
   wire [2:0] s_logisimBus87;
   wire [3:0] s_logisimBus88;
   wire [2:0] s_logisimBus89;
   wire [3:0] s_logisimBus9;
   wire [3:0] s_logisimBus90;
   wire [2:0] s_logisimBus91;
   wire [3:0] s_logisimBus93;
   wire [2:0] s_logisimBus94;
   wire [3:0] s_logisimBus95;
   wire [3:0] s_logisimBus96;
   wire [3:0] s_logisimBus98;
   wire [3:0] s_logisimBus99;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet2;
   wire       s_logisimNet21;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet47;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet60;
   wire       s_logisimNet61;
   wire       s_logisimNet63;
   wire       s_logisimNet66;
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet69;
   wire       s_logisimNet70;
   wire       s_logisimNet71;
   wire       s_logisimNet73;
   wire       s_logisimNet76;
   wire       s_logisimNet77;
   wire       s_logisimNet78;
   wire       s_logisimNet79;
   wire       s_logisimNet8;
   wire       s_logisimNet92;
   wire       s_logisimNet97;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus10[5:0] = func;
   assign s_logisimBus18[5:0] = opCode;
   assign s_logisimNet21      = inst2;
   assign s_logisimNet25      = inst;
   assign s_logisimNet29      = main_clock;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALUop     = s_logisimBus45[3:0];
   assign ALUsrc    = s_logisimNet77;
   assign FALUop    = s_logisimBus48[2:0];
   assign FROMCOP   = s_logisimNet68;
   assign FregWrite = s_logisimNet24;
   assign TOCOP     = s_logisimNet60;
   assign branch    = s_logisimNet73;
   assign divv      = s_logisimNet61;
   assign j         = s_logisimNet30;
   assign memToReg  = s_logisimNet50;
   assign memWrite  = s_logisimNet56;
   assign mohi      = s_logisimNet28;
   assign nop       = s_logisimNet70;
   assign regDst    = s_logisimNet58;
   assign regWrite  = s_logisimNet76;
   assign shmt      = s_logisimNet12;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet78  =  1'b1;


   // Constant
   assign  s_logisimNet79  =  1'b0;


   // Constant
   assign  s_logisimBus113[5:0]  =  {2'b10, 4'h0};


   // Constant
   assign  s_logisimBus111[5:0]  =  {2'b01, 4'h4};


   // Constant
   assign  s_logisimBus112[5:0]  =  {2'b01, 4'h5};


   // Constant
   assign  s_logisimBus114[5:0]  =  {2'b01, 4'h6};


   // Constant
   assign  s_logisimBus115[5:0]  =  {2'b01, 4'h7};


   // Constant
   assign  s_logisimBus116[5:0]  =  {2'b01, 4'h8};


   // Constant
   assign  s_logisimBus117[5:0]  =  {2'b01, 4'h9};


   // Constant
   assign  s_logisimBus118[5:0]  =  {2'b10, 4'h2};


   // Constant
   assign  s_logisimBus119[5:0]  =  {2'b10, 4'h4};


   // Constant
   assign  s_logisimBus120[5:0]  =  {2'b10, 4'h5};


   // Constant
   assign  s_logisimBus121[5:0]  =  {2'b10, 4'h6};


   // Constant
   assign  s_logisimBus122[5:0]  =  {2'b00, 4'h4};


   // Constant
   assign  s_logisimBus123[5:0]  =  {2'b00, 4'h6};


   // Constant
   assign  s_logisimBus124[5:0]  =  {2'b00, 4'h7};


   // Constant
   assign  s_logisimBus125[5:0]  =  {2'b01, 4'hA};


   // Constant
   assign  s_logisimBus126[5:0]  =  {2'b01, 4'h0};


   // Constant
   assign  s_logisimBus127[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimBus128[5:0]  =  {2'b00, 4'h8};


   // Constant
   assign  s_logisimBus129[5:0]  =  {2'b01, 4'h2};


   // Constant
   assign  s_logisimBus130[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus131[5:0]  =  {2'b01, 4'h3};


   // Constant
   assign  s_logisimBus80[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus81[2:0]  =  3'b101;


   // Constant
   assign  s_logisimBus82[2:0]  =  3'b100;


   // Constant
   assign  s_logisimBus83[3:0]  =  4'hF;


   // Constant
   assign  s_logisimBus84[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus85[2:0]  =  3'b011;


   // Constant
   assign  s_logisimBus86[3:0]  =  4'h1;


   // Constant
   assign  s_logisimBus87[2:0]  =  3'b010;


   // Constant
   assign  s_logisimBus88[3:0]  =  4'h4;


   // Constant
   assign  s_logisimBus89[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus90[3:0]  =  4'h5;


   // Constant
   assign  s_logisimBus91[2:0]  =  3'b000;


   // Constant
   assign  s_logisimNet92  =  1'b1;


   // Constant
   assign  s_logisimBus93[3:0]  =  4'h6;


   // Constant
   assign  s_logisimBus94[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus95[3:0]  =  4'h9;


   // Constant
   assign  s_logisimBus96[3:0]  =  4'hA;


   // Constant
   assign  s_logisimNet97  =  1'b0;


   // Constant
   assign  s_logisimBus98[3:0]  =  4'hB;


   // Constant
   assign  s_logisimBus132[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimBus133[5:0]  =  {2'b00, 4'h8};


   // Constant
   assign  s_logisimBus134[5:0]  =  {2'b10, 4'hB};


   // Constant
   assign  s_logisimBus135[5:0]  =  {2'b10, 4'h3};


   // Constant
   assign  s_logisimBus136[5:0]  =  {2'b00, 4'h5};


   // Constant
   assign  s_logisimBus137[5:0]  =  {2'b00, 4'hA};


   // Constant
   assign  s_logisimBus138[5:0]  =  {2'b00, 4'h2};


   // Constant
   assign  s_logisimBus99[3:0]  =  4'h3;


   // Constant
   assign  s_logisimBus100[3:0]  =  4'hF;


   // Constant
   assign  s_logisimBus101[3:0]  =  4'h9;


   // Constant
   assign  s_logisimBus102[3:0]  =  4'hF;


   // Constant
   assign  s_logisimBus103[3:0]  =  4'hF;


   // Constant
   assign  s_logisimBus104[3:0]  =  4'hC;


   // Constant
   assign  s_logisimBus105[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus106[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus107[3:0]  =  4'h7;


   // Constant
   assign  s_logisimBus108[3:0]  =  4'h2;


   // Constant
   assign  s_logisimBus109[3:0]  =  4'hF;


   // Constant
   assign  s_logisimBus110[3:0]  =  4'hE;


   // NOT Gate
   assign s_logisimNet3 = ~s_logisimNet25;

   // NOT Gate
   assign s_logisimNet63 = ~s_logisimNet21;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b10))
      GATES_1 (.input1(s_logisimNet21),
               .input2(s_logisimNet35),
               .result(s_logisimNet66));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet13),
               .input2(s_logisimNet41),
               .result(s_logisimNet70));

   OR_GATE_7_INPUTS #(.BubblesMask({3'b000, 4'h0}))
      GATES_3 (.input1(s_logisimNet53),
               .input2(s_logisimNet37),
               .input3(s_logisimNet57),
               .input4(s_logisimNet67),
               .input5(s_logisimNet54),
               .input6(s_logisimNet38),
               .input7(s_logisimNet60),
               .result(s_logisimNet52));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet58),
               .input2(s_logisimNet14),
               .result(s_logisimNet28));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet68),
               .input2(s_logisimNet58),
               .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b01))
      GATES_6 (.input1(s_logisimNet52),
               .input2(s_logisimNet58),
               .result(s_logisimNet27));

   AND_GATE #(.BubblesMask(2'b10))
      GATES_7 (.input1(s_logisimNet25),
               .input2(s_logisimNet34),
               .result(s_logisimNet16));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet52),
               .input2(s_logisimNet58),
               .result(s_logisimNet24));

   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_9 (.input1(s_logisimNet27),
               .input2(s_logisimNet5),
               .input3(s_logisimNet71),
               .input4(s_logisimNet69),
               .input5(s_logisimNet50),
               .result(s_logisimNet76));

   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_10 (.input1(s_logisimNet71),
                .input2(s_logisimNet56),
                .input3(s_logisimNet50),
                .input4(s_logisimNet73),
                .input5(s_logisimNet69),
                .result(s_logisimNet77));

   Multiplexer_2   PLEXERS_11 (.enable(1'b1),
                               .muxIn_0(s_logisimNet63),
                               .muxIn_1(s_logisimNet78),
                               .muxOut(s_logisimNet1),
                               .sel(s_logisimNet66));

   Multiplexer_2   PLEXERS_12 (.enable(1'b1),
                               .muxIn_0(s_logisimNet79),
                               .muxIn_1(s_logisimNet1),
                               .muxOut(s_logisimNet13),
                               .sel(s_logisimNet53));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_13 (.enable(1'b1),
                  .muxIn_0(s_logisimBus80[2:0]),
                  .muxIn_1(s_logisimBus81[2:0]),
                  .muxOut(s_logisimBus44[2:0]),
                  .sel(s_logisimNet53));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_14 (.enable(1'b1),
                  .muxIn_0(s_logisimBus44[2:0]),
                  .muxIn_1(s_logisimBus82[2:0]),
                  .muxOut(s_logisimBus65[2:0]),
                  .sel(s_logisimNet38));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_15 (.enable(1'b1),
                  .muxIn_0(s_logisimBus83[3:0]),
                  .muxIn_1(s_logisimBus84[3:0]),
                  .muxOut(s_logisimBus7[3:0]),
                  .sel(s_logisimNet2));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_16 (.enable(1'b1),
                  .muxIn_0(s_logisimBus65[2:0]),
                  .muxIn_1(s_logisimBus85[2:0]),
                  .muxOut(s_logisimBus75[2:0]),
                  .sel(s_logisimNet54));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_17 (.enable(1'b1),
                  .muxIn_0(s_logisimBus7[3:0]),
                  .muxIn_1(s_logisimBus86[3:0]),
                  .muxOut(s_logisimBus49[3:0]),
                  .sel(s_logisimNet8));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_18 (.enable(1'b1),
                  .muxIn_0(s_logisimBus75[2:0]),
                  .muxIn_1(s_logisimBus87[2:0]),
                  .muxOut(s_logisimBus19[2:0]),
                  .sel(s_logisimNet67));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_19 (.enable(1'b1),
                  .muxIn_0(s_logisimBus49[3:0]),
                  .muxIn_1(s_logisimBus88[3:0]),
                  .muxOut(s_logisimBus31[3:0]),
                  .sel(s_logisimNet39));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_20 (.enable(1'b1),
                  .muxIn_0(s_logisimBus19[2:0]),
                  .muxIn_1(s_logisimBus89[2:0]),
                  .muxOut(s_logisimBus46[2:0]),
                  .sel(s_logisimNet57));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_21 (.enable(1'b1),
                  .muxIn_0(s_logisimBus31[3:0]),
                  .muxIn_1(s_logisimBus90[3:0]),
                  .muxOut(s_logisimBus20[3:0]),
                  .sel(s_logisimNet4));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_22 (.enable(1'b1),
                  .muxIn_0(s_logisimBus46[2:0]),
                  .muxIn_1(s_logisimBus91[2:0]),
                  .muxOut(s_logisimBus55[2:0]),
                  .sel(s_logisimNet37));

   Multiplexer_2   PLEXERS_23 (.enable(1'b1),
                               .muxIn_0(s_logisimNet3),
                               .muxIn_1(s_logisimNet92),
                               .muxOut(s_logisimNet40),
                               .sel(s_logisimNet16));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_24 (.enable(1'b1),
                  .muxIn_0(s_logisimBus20[3:0]),
                  .muxIn_1(s_logisimBus93[3:0]),
                  .muxOut(s_logisimBus6[3:0]),
                  .sel(s_logisimNet15));

   Multiplexer_bus_2 #(.nrOfBits(3))
      PLEXERS_25 (.enable(1'b1),
                  .muxIn_0(s_logisimBus94[2:0]),
                  .muxIn_1(s_logisimBus55[2:0]),
                  .muxOut(s_logisimBus48[2:0]),
                  .sel(s_logisimNet58));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_26 (.enable(1'b1),
                  .muxIn_0(s_logisimBus6[3:0]),
                  .muxIn_1(s_logisimBus95[3:0]),
                  .muxOut(s_logisimBus32[3:0]),
                  .sel(s_logisimNet0));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_27 (.enable(1'b1),
                  .muxIn_0(s_logisimBus32[3:0]),
                  .muxIn_1(s_logisimBus96[3:0]),
                  .muxOut(s_logisimBus22[3:0]),
                  .sel(s_logisimNet47));

   Multiplexer_2   PLEXERS_28 (.enable(1'b1),
                               .muxIn_0(s_logisimNet97),
                               .muxIn_1(s_logisimNet40),
                               .muxOut(s_logisimNet41),
                               .sel(s_logisimNet61));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_29 (.enable(1'b1),
                  .muxIn_0(s_logisimBus22[3:0]),
                  .muxIn_1(s_logisimBus98[3:0]),
                  .muxOut(s_logisimBus9[3:0]),
                  .sel(s_logisimNet33));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_30 (.enable(1'b1),
                  .muxIn_0(s_logisimBus9[3:0]),
                  .muxIn_1(s_logisimBus99[3:0]),
                  .muxOut(s_logisimBus59[3:0]),
                  .sel(s_logisimNet61));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_31 (.enable(1'b1),
                  .muxIn_0(s_logisimBus59[3:0]),
                  .muxIn_1(s_logisimBus100[3:0]),
                  .muxOut(s_logisimBus51[3:0]),
                  .sel(s_logisimNet14));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_32 (.enable(1'b1),
                  .muxIn_0(s_logisimBus51[3:0]),
                  .muxIn_1(s_logisimBus101[3:0]),
                  .muxOut(s_logisimBus36[3:0]),
                  .sel(s_logisimNet12));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_33 (.enable(1'b1),
                  .muxIn_0(s_logisimBus36[3:0]),
                  .muxIn_1(s_logisimBus102[3:0]),
                  .muxOut(s_logisimBus23[3:0]),
                  .sel(s_logisimNet26));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_34 (.enable(1'b1),
                  .muxIn_0(s_logisimBus23[3:0]),
                  .muxIn_1(s_logisimBus103[3:0]),
                  .muxOut(s_logisimBus42[3:0]),
                  .sel(s_logisimNet11));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_35 (.enable(1'b1),
                  .muxIn_0(s_logisimBus42[3:0]),
                  .muxIn_1(s_logisimBus104[3:0]),
                  .muxOut(s_logisimBus62[3:0]),
                  .sel(s_logisimNet71));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_36 (.enable(1'b1),
                  .muxIn_0(s_logisimBus62[3:0]),
                  .muxIn_1(s_logisimBus105[3:0]),
                  .muxOut(s_logisimBus72[3:0]),
                  .sel(s_logisimNet56));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_37 (.enable(1'b1),
                  .muxIn_0(s_logisimBus72[3:0]),
                  .muxIn_1(s_logisimBus106[3:0]),
                  .muxOut(s_logisimBus17[3:0]),
                  .sel(s_logisimNet50));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_38 (.enable(1'b1),
                  .muxIn_0(s_logisimBus17[3:0]),
                  .muxIn_1(s_logisimBus107[3:0]),
                  .muxOut(s_logisimBus43[3:0]),
                  .sel(s_logisimNet73));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_39 (.enable(1'b1),
                  .muxIn_0(s_logisimBus43[3:0]),
                  .muxIn_1(s_logisimBus108[3:0]),
                  .muxOut(s_logisimBus64[3:0]),
                  .sel(s_logisimNet69));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_40 (.enable(1'b1),
                  .muxIn_0(s_logisimBus64[3:0]),
                  .muxIn_1(s_logisimBus109[3:0]),
                  .muxOut(s_logisimBus74[3:0]),
                  .sel(s_logisimNet30));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_41 (.enable(1'b1),
                  .muxIn_0(s_logisimBus74[3:0]),
                  .muxIn_1(s_logisimBus110[3:0]),
                  .muxOut(s_logisimBus45[3:0]),
                  .sel(s_logisimNet53));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_42 (.aEqualsB(s_logisimNet57),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus111[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_43 (.aEqualsB(s_logisimNet67),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus112[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_44 (.aEqualsB(s_logisimNet2),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus113[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_45 (.aEqualsB(s_logisimNet54),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus114[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_46 (.aEqualsB(s_logisimNet38),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus115[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_47 (.aEqualsB(s_logisimNet60),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus116[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_48 (.aEqualsB(s_logisimNet68),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus117[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_49 (.aEqualsB(s_logisimNet8),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus118[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_50 (.aEqualsB(s_logisimNet39),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus119[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_51 (.aEqualsB(s_logisimNet4),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus120[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_52 (.aEqualsB(s_logisimNet15),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus121[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_53 (.aEqualsB(s_logisimNet0),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus122[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_54 (.aEqualsB(s_logisimNet47),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus123[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_55 (.aEqualsB(s_logisimNet33),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus124[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_56 (.aEqualsB(s_logisimNet61),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus125[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_57 (.aEqualsB(s_logisimNet14),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus126[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_58 (.aEqualsB(s_logisimNet12),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus127[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_59 (.aEqualsB(s_logisimNet26),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus128[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_60 (.aEqualsB(s_logisimNet11),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus129[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_61 (.aEqualsB(s_logisimNet53),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus130[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_62 (.aEqualsB(s_logisimNet37),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus131[5:0]),
                .dataB(s_logisimBus10[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_63 (.aEqualsB(s_logisimNet58),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus132[5:0]),
                .dataB(s_logisimBus18[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_64 (.aEqualsB(s_logisimNet71),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus133[5:0]),
                .dataB(s_logisimBus18[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_65 (.aEqualsB(s_logisimNet56),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus134[5:0]),
                .dataB(s_logisimBus18[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_66 (.aEqualsB(s_logisimNet50),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus135[5:0]),
                .dataB(s_logisimBus18[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_67 (.aEqualsB(s_logisimNet73),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus136[5:0]),
                .dataB(s_logisimBus18[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_68 (.aEqualsB(s_logisimNet69),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus137[5:0]),
                .dataB(s_logisimBus18[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(0))
      ARITH_69 (.aEqualsB(s_logisimNet30),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus138[5:0]),
                .dataB(s_logisimBus18[5:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_70 (.clock(s_logisimNet29),
                 .clockEnable(1'b1),
                 .d(s_logisimNet25),
                 .q(s_logisimNet34),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_71 (.clock(s_logisimNet29),
                 .clockEnable(1'b1),
                 .d(s_logisimNet21),
                 .q(s_logisimNet35),
                 .reset(1'b0),
                 .tick(1'b1));


endmodule
