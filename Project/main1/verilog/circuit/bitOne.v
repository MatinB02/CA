/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : bitOne                                                       **
 **                                                                          **
 *****************************************************************************/

module bitOne( a,
               res );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [23:0] a;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [4:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [4:0]  s_logisimBus1;
   wire [4:0]  s_logisimBus10;
   wire [4:0]  s_logisimBus102;
   wire [4:0]  s_logisimBus106;
   wire [23:0] s_logisimBus109;
   wire [23:0] s_logisimBus110;
   wire [4:0]  s_logisimBus111;
   wire [4:0]  s_logisimBus112;
   wire [4:0]  s_logisimBus115;
   wire [4:0]  s_logisimBus116;
   wire [23:0] s_logisimBus117;
   wire [23:0] s_logisimBus118;
   wire [23:0] s_logisimBus119;
   wire [4:0]  s_logisimBus120;
   wire [4:0]  s_logisimBus121;
   wire [4:0]  s_logisimBus125;
   wire [4:0]  s_logisimBus126;
   wire [23:0] s_logisimBus127;
   wire [23:0] s_logisimBus128;
   wire [23:0] s_logisimBus13;
   wire [4:0]  s_logisimBus130;
   wire [4:0]  s_logisimBus132;
   wire [4:0]  s_logisimBus133;
   wire [23:0] s_logisimBus134;
   wire [23:0] s_logisimBus135;
   wire [23:0] s_logisimBus136;
   wire [4:0]  s_logisimBus139;
   wire [23:0] s_logisimBus14;
   wire [23:0] s_logisimBus140;
   wire [23:0] s_logisimBus141;
   wire [4:0]  s_logisimBus144;
   wire [4:0]  s_logisimBus145;
   wire [23:0] s_logisimBus146;
   wire [23:0] s_logisimBus147;
   wire [23:0] s_logisimBus15;
   wire [4:0]  s_logisimBus150;
   wire [4:0]  s_logisimBus151;
   wire [23:0] s_logisimBus152;
   wire [23:0] s_logisimBus153;
   wire [23:0] s_logisimBus154;
   wire [23:0] s_logisimBus155;
   wire [4:0]  s_logisimBus159;
   wire [4:0]  s_logisimBus160;
   wire [23:0] s_logisimBus161;
   wire [23:0] s_logisimBus162;
   wire [4:0]  s_logisimBus164;
   wire [23:0] s_logisimBus165;
   wire [23:0] s_logisimBus166;
   wire [23:0] s_logisimBus167;
   wire [23:0] s_logisimBus168;
   wire [23:0] s_logisimBus169;
   wire [4:0]  s_logisimBus17;
   wire [4:0]  s_logisimBus18;
   wire [4:0]  s_logisimBus23;
   wire [4:0]  s_logisimBus24;
   wire [4:0]  s_logisimBus28;
   wire [23:0] s_logisimBus29;
   wire [23:0] s_logisimBus30;
   wire [23:0] s_logisimBus31;
   wire [4:0]  s_logisimBus32;
   wire [4:0]  s_logisimBus33;
   wire [4:0]  s_logisimBus40;
   wire [4:0]  s_logisimBus41;
   wire [23:0] s_logisimBus43;
   wire [23:0] s_logisimBus44;
   wire [23:0] s_logisimBus45;
   wire [4:0]  s_logisimBus47;
   wire [4:0]  s_logisimBus48;
   wire [4:0]  s_logisimBus49;
   wire [23:0] s_logisimBus5;
   wire [4:0]  s_logisimBus50;
   wire [4:0]  s_logisimBus52;
   wire [23:0] s_logisimBus55;
   wire [4:0]  s_logisimBus56;
   wire [4:0]  s_logisimBus57;
   wire [4:0]  s_logisimBus58;
   wire [23:0] s_logisimBus60;
   wire [23:0] s_logisimBus61;
   wire [23:0] s_logisimBus62;
   wire [4:0]  s_logisimBus65;
   wire [4:0]  s_logisimBus70;
   wire [4:0]  s_logisimBus72;
   wire [23:0] s_logisimBus73;
   wire [23:0] s_logisimBus74;
   wire [23:0] s_logisimBus75;
   wire [4:0]  s_logisimBus77;
   wire [4:0]  s_logisimBus78;
   wire [4:0]  s_logisimBus83;
   wire [4:0]  s_logisimBus84;
   wire [23:0] s_logisimBus87;
   wire [23:0] s_logisimBus88;
   wire [4:0]  s_logisimBus89;
   wire [4:0]  s_logisimBus9;
   wire [4:0]  s_logisimBus93;
   wire [23:0] s_logisimBus95;
   wire [23:0] s_logisimBus96;
   wire [23:0] s_logisimBus97;
   wire [23:0] s_logisimBus98;
   wire [4:0]  s_logisimBus99;
   wire        s_logisimNet0;
   wire        s_logisimNet100;
   wire        s_logisimNet101;
   wire        s_logisimNet103;
   wire        s_logisimNet104;
   wire        s_logisimNet105;
   wire        s_logisimNet107;
   wire        s_logisimNet108;
   wire        s_logisimNet11;
   wire        s_logisimNet113;
   wire        s_logisimNet114;
   wire        s_logisimNet12;
   wire        s_logisimNet122;
   wire        s_logisimNet123;
   wire        s_logisimNet124;
   wire        s_logisimNet129;
   wire        s_logisimNet131;
   wire        s_logisimNet137;
   wire        s_logisimNet138;
   wire        s_logisimNet142;
   wire        s_logisimNet143;
   wire        s_logisimNet148;
   wire        s_logisimNet149;
   wire        s_logisimNet156;
   wire        s_logisimNet157;
   wire        s_logisimNet158;
   wire        s_logisimNet16;
   wire        s_logisimNet163;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet3;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet38;
   wire        s_logisimNet39;
   wire        s_logisimNet4;
   wire        s_logisimNet42;
   wire        s_logisimNet46;
   wire        s_logisimNet51;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet59;
   wire        s_logisimNet6;
   wire        s_logisimNet63;
   wire        s_logisimNet64;
   wire        s_logisimNet66;
   wire        s_logisimNet67;
   wire        s_logisimNet68;
   wire        s_logisimNet69;
   wire        s_logisimNet7;
   wire        s_logisimNet71;
   wire        s_logisimNet76;
   wire        s_logisimNet79;
   wire        s_logisimNet8;
   wire        s_logisimNet80;
   wire        s_logisimNet81;
   wire        s_logisimNet82;
   wire        s_logisimNet85;
   wire        s_logisimNet86;
   wire        s_logisimNet90;
   wire        s_logisimNet91;
   wire        s_logisimNet92;
   wire        s_logisimNet94;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus5[23:0] = a;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign res = s_logisimBus52[4:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus165[23:0]  =  24'h000001;


   // Constant
   assign  s_logisimBus141[23:0]  =  24'h000100;


   // Constant
   assign  s_logisimBus73[23:0]  =  24'h0000FF;


   // Constant
   assign  s_logisimBus44[23:0]  =  24'h000200;


   // Constant
   assign  s_logisimBus140[23:0]  =  24'h0001FF;


   // Constant
   assign  s_logisimBus55[23:0]  =  24'h000000;


   // Constant
   assign  s_logisimBus127[23:0]  =  24'h000400;


   // Constant
   assign  s_logisimBus43[23:0]  =  24'h0003FF;


   // Constant
   assign  s_logisimBus13[23:0]  =  24'h000800;


   // Constant
   assign  s_logisimBus128[23:0]  =  24'h0007FF;


   // Constant
   assign  s_logisimBus109[23:0]  =  24'h001000;


   // Constant
   assign  s_logisimBus14[23:0]  =  24'h000FFF;


   // Constant
   assign  s_logisimBus161[23:0]  =  24'h002000;


   // Constant
   assign  s_logisimBus110[23:0]  =  24'h001FFF;


   // Constant
   assign  s_logisimBus87[23:0]  =  24'h004000;


   // Constant
   assign  s_logisimBus162[23:0]  =  24'h003FFF;


   // Constant
   assign  s_logisimBus146[23:0]  =  24'h008000;


   // Constant
   assign  s_logisimBus88[23:0]  =  24'h007FFF;


   // Constant
   assign  s_logisimBus60[23:0]  =  24'h010000;


   // Constant
   assign  s_logisimBus147[23:0]  =  24'h00FFFF;


   // Constant
   assign  s_logisimBus134[23:0]  =  24'h020000;


   // Constant
   assign  s_logisimBus61[23:0]  =  24'h01FFFF;


   // Constant
   assign  s_logisimBus29[23:0]  =  24'h040000;


   // Constant
   assign  s_logisimBus135[23:0]  =  24'h03FFFF;


   // Constant
   assign  s_logisimBus118[23:0]  =  24'h080000;


   // Constant
   assign  s_logisimBus31[23:0]  =  24'h07FFFF;


   // Constant
   assign  s_logisimBus168[23:0]  =  24'h100000;


   // Constant
   assign  s_logisimBus119[23:0]  =  24'h0FFFFF;


   // Constant
   assign  s_logisimBus97[23:0]  =  24'h200000;


   // Constant
   assign  s_logisimBus169[23:0]  =  24'h1FFFFF;


   // Constant
   assign  s_logisimBus154[23:0]  =  24'h400000;


   // Constant
   assign  s_logisimBus98[23:0]  =  24'h3FFFFF;


   // Constant
   assign  s_logisimBus75[23:0]  =  24'h7FFFFF;


   // Constant
   assign  s_logisimBus155[23:0]  =  24'h7FFFFF;


   // Constant
   assign  s_logisimBus136[23:0]  =  24'h000000;


   // Constant
   assign  s_logisimBus45[23:0]  =  24'h000004;


   // Constant
   assign  s_logisimBus15[23:0]  =  24'h000003;


   // Constant
   assign  s_logisimBus62[23:0]  =  24'h000008;


   // Constant
   assign  s_logisimBus30[23:0]  =  24'h000007;


   // Constant
   assign  s_logisimBus166[23:0]  =  24'h000010;


   // Constant
   assign  s_logisimBus117[23:0]  =  24'h00000F;


   // Constant
   assign  s_logisimBus95[23:0]  =  24'h000020;


   // Constant
   assign  s_logisimBus167[23:0]  =  24'h00001F;


   // Constant
   assign  s_logisimBus152[23:0]  =  24'h000040;


   // Constant
   assign  s_logisimBus96[23:0]  =  24'h00003F;


   // Constant
   assign  s_logisimBus74[23:0]  =  24'h000080;


   // Constant
   assign  s_logisimBus153[23:0]  =  24'h00007F;


   // Constant
   assign  s_logisimBus125[4:0]  =  {1'b0, 4'h1};


   // Constant
   assign  s_logisimBus56[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus150[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus130[4:0]  =  {1'b0, 4'h3};


   // Constant
   assign  s_logisimBus115[4:0]  =  {1'b0, 4'h9};


   // Constant
   assign  s_logisimBus164[4:0]  =  {1'b0, 4'hA};


   // Constant
   assign  s_logisimBus93[4:0]  =  {1'b0, 4'hB};


   // Constant
   assign  s_logisimBus151[4:0]  =  {1'b0, 4'hC};


   // Constant
   assign  s_logisimBus70[4:0]  =  {1'b0, 4'hD};


   // Constant
   assign  s_logisimBus139[4:0]  =  {1'b0, 4'hE};


   // Constant
   assign  s_logisimBus40[4:0]  =  {1'b0, 4'hF};


   // Constant
   assign  s_logisimBus126[4:0]  =  {1'b1, 4'h0};


   // Constant
   assign  s_logisimBus9[4:0]  =  {1'b1, 4'h1};


   // Constant
   assign  s_logisimBus106[4:0]  =  {1'b1, 4'h2};


   // Constant
   assign  s_logisimBus159[4:0]  =  {1'b1, 4'h3};


   // Constant
   assign  s_logisimBus84[4:0]  =  {1'b1, 4'h4};


   // Constant
   assign  s_logisimBus145[4:0]  =  {1'b1, 4'h5};


   // Constant
   assign  s_logisimBus58[4:0]  =  {1'b1, 4'h6};


   // Constant
   assign  s_logisimBus133[4:0]  =  {1'b1, 4'h7};


   // Constant
   assign  s_logisimBus116[4:0]  =  {1'b0, 4'h2};


   // Constant
   assign  s_logisimBus160[4:0]  =  {1'b1, 4'h8};


   // Constant
   assign  s_logisimBus83[4:0]  =  {1'b0, 4'h4};


   // Constant
   assign  s_logisimBus144[4:0]  =  {1'b0, 4'h5};


   // Constant
   assign  s_logisimBus57[4:0]  =  {1'b0, 4'h6};


   // Constant
   assign  s_logisimBus132[4:0]  =  {1'b0, 4'h7};


   // Constant
   assign  s_logisimBus23[4:0]  =  {1'b0, 4'h8};


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet59),
               .input2(s_logisimNet54),
               .result(s_logisimNet81));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet46),
               .input2(s_logisimNet131),
               .result(s_logisimNet142));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet25),
               .input2(s_logisimNet20),
               .result(s_logisimNet51));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet16),
               .input2(s_logisimNet114),
               .result(s_logisimNet129));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet39),
               .input2(s_logisimNet163),
               .result(s_logisimNet19));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet94),
               .input2(s_logisimNet92),
               .result(s_logisimNet113));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet8),
               .input2(s_logisimNet149),
               .result(s_logisimNet4));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet71),
               .input2(s_logisimNet69),
               .result(s_logisimNet91));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet63),
               .input2(s_logisimNet138),
               .result(s_logisimNet148));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet42),
                .input2(s_logisimNet37),
                .result(s_logisimNet67));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet26),
                .input2(s_logisimNet124),
                .result(s_logisimNet137));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet12),
                .input2(s_logisimNet7),
                .result(s_logisimNet36));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet108),
                .input2(s_logisimNet104),
                .result(s_logisimNet123));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet21),
                .input2(s_logisimNet157),
                .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet86),
                .input2(s_logisimNet27),
                .result(s_logisimNet101));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet34),
                .input2(s_logisimNet90),
                .result(s_logisimNet27));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet79),
                .input2(s_logisimNet53),
                .result(s_logisimNet80));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet38),
                .input2(s_logisimNet68),
                .result(s_logisimNet103));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet11),
                .input2(s_logisimNet6),
                .result(s_logisimNet35));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet107),
                .input2(s_logisimNet105),
                .result(s_logisimNet122));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimNet22),
                .input2(s_logisimNet158),
                .result(s_logisimNet2));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimNet85),
                .input2(s_logisimNet82),
                .result(s_logisimNet100));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet76),
                .input2(s_logisimNet143),
                .result(s_logisimNet156));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_24 (.enable(1'b1),
                  .muxIn_0(s_logisimBus102[4:0]),
                  .muxIn_1(s_logisimBus125[4:0]),
                  .muxOut(s_logisimBus72[4:0]),
                  .sel(s_logisimNet0));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_25 (.enable(1'b1),
                  .muxIn_0(s_logisimBus56[4:0]),
                  .muxIn_1(s_logisimBus150[4:0]),
                  .muxOut(s_logisimBus102[4:0]),
                  .sel(s_logisimNet66));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_26 (.enable(1'b1),
                  .muxIn_0(s_logisimBus18[4:0]),
                  .muxIn_1(s_logisimBus115[4:0]),
                  .muxOut(s_logisimBus111[4:0]),
                  .sel(s_logisimNet81));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_27 (.enable(1'b1),
                  .muxIn_0(s_logisimBus111[4:0]),
                  .muxIn_1(s_logisimBus164[4:0]),
                  .muxOut(s_logisimBus24[4:0]),
                  .sel(s_logisimNet142));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_28 (.enable(1'b1),
                  .muxIn_0(s_logisimBus24[4:0]),
                  .muxIn_1(s_logisimBus93[4:0]),
                  .muxOut(s_logisimBus89[4:0]),
                  .sel(s_logisimNet51));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_29 (.enable(1'b1),
                  .muxIn_0(s_logisimBus89[4:0]),
                  .muxIn_1(s_logisimBus151[4:0]),
                  .muxOut(s_logisimBus1[4:0]),
                  .sel(s_logisimNet129));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_30 (.enable(1'b1),
                  .muxIn_0(s_logisimBus1[4:0]),
                  .muxIn_1(s_logisimBus70[4:0]),
                  .muxOut(s_logisimBus65[4:0]),
                  .sel(s_logisimNet19));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_31 (.enable(1'b1),
                  .muxIn_0(s_logisimBus65[4:0]),
                  .muxIn_1(s_logisimBus139[4:0]),
                  .muxOut(s_logisimBus32[4:0]),
                  .sel(s_logisimNet113));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_32 (.enable(1'b1),
                  .muxIn_0(s_logisimBus32[4:0]),
                  .muxIn_1(s_logisimBus40[4:0]),
                  .muxOut(s_logisimBus33[4:0]),
                  .sel(s_logisimNet4));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_33 (.enable(1'b1),
                  .muxIn_0(s_logisimBus33[4:0]),
                  .muxIn_1(s_logisimBus126[4:0]),
                  .muxOut(s_logisimBus120[4:0]),
                  .sel(s_logisimNet91));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_34 (.enable(1'b1),
                  .muxIn_0(s_logisimBus120[4:0]),
                  .muxIn_1(s_logisimBus9[4:0]),
                  .muxOut(s_logisimBus41[4:0]),
                  .sel(s_logisimNet148));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_35 (.enable(1'b1),
                  .muxIn_0(s_logisimBus41[4:0]),
                  .muxIn_1(s_logisimBus106[4:0]),
                  .muxOut(s_logisimBus99[4:0]),
                  .sel(s_logisimNet67));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_36 (.enable(1'b1),
                  .muxIn_0(s_logisimBus99[4:0]),
                  .muxIn_1(s_logisimBus159[4:0]),
                  .muxOut(s_logisimBus10[4:0]),
                  .sel(s_logisimNet137));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_37 (.enable(1'b1),
                  .muxIn_0(s_logisimBus10[4:0]),
                  .muxIn_1(s_logisimBus84[4:0]),
                  .muxOut(s_logisimBus78[4:0]),
                  .sel(s_logisimNet36));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_38 (.enable(1'b1),
                  .muxIn_0(s_logisimBus78[4:0]),
                  .muxIn_1(s_logisimBus145[4:0]),
                  .muxOut(s_logisimBus48[4:0]),
                  .sel(s_logisimNet123));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_39 (.enable(1'b1),
                  .muxIn_0(s_logisimBus48[4:0]),
                  .muxIn_1(s_logisimBus58[4:0]),
                  .muxOut(s_logisimBus50[4:0]),
                  .sel(s_logisimNet3));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_40 (.enable(1'b1),
                  .muxIn_0(s_logisimBus72[4:0]),
                  .muxIn_1(s_logisimBus116[4:0]),
                  .muxOut(s_logisimBus112[4:0]),
                  .sel(s_logisimNet80));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_41 (.enable(1'b1),
                  .muxIn_0(s_logisimBus50[4:0]),
                  .muxIn_1(s_logisimBus133[4:0]),
                  .muxOut(s_logisimBus121[4:0]),
                  .sel(s_logisimNet101));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_42 (.enable(1'b1),
                  .muxIn_0(s_logisimBus121[4:0]),
                  .muxIn_1(s_logisimBus160[4:0]),
                  .muxOut(s_logisimBus52[4:0]),
                  .sel(s_logisimNet64));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_43 (.enable(1'b1),
                  .muxIn_0(s_logisimBus112[4:0]),
                  .muxIn_1(s_logisimBus130[4:0]),
                  .muxOut(s_logisimBus28[4:0]),
                  .sel(s_logisimNet103));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_44 (.enable(1'b1),
                  .muxIn_0(s_logisimBus28[4:0]),
                  .muxIn_1(s_logisimBus83[4:0]),
                  .muxOut(s_logisimBus77[4:0]),
                  .sel(s_logisimNet35));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_45 (.enable(1'b1),
                  .muxIn_0(s_logisimBus77[4:0]),
                  .muxIn_1(s_logisimBus144[4:0]),
                  .muxOut(s_logisimBus47[4:0]),
                  .sel(s_logisimNet122));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_46 (.enable(1'b1),
                  .muxIn_0(s_logisimBus47[4:0]),
                  .muxIn_1(s_logisimBus57[4:0]),
                  .muxOut(s_logisimBus49[4:0]),
                  .sel(s_logisimNet2));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_47 (.enable(1'b1),
                  .muxIn_0(s_logisimBus49[4:0]),
                  .muxIn_1(s_logisimBus132[4:0]),
                  .muxOut(s_logisimBus17[4:0]),
                  .sel(s_logisimNet100));

   Multiplexer_bus_2 #(.nrOfBits(5))
      PLEXERS_48 (.enable(1'b1),
                  .muxIn_0(s_logisimBus17[4:0]),
                  .muxIn_1(s_logisimBus23[4:0]),
                  .muxOut(s_logisimBus18[4:0]),
                  .sel(s_logisimNet156));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_49 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet143),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus141[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_50 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet59),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus73[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_51 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet54),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus44[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_52 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet46),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus140[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_53 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet131),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus127[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_54 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet25),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus43[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_55 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet20),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus13[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_56 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet16),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus128[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_57 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet114),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus109[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_58 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet39),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus14[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_59 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet163),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus161[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_60 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet94),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus110[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_61 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet92),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus87[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_62 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet8),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus162[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_63 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet149),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus146[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_64 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet71),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus88[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_65 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet69),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus60[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_66 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet63),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus147[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_67 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet138),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus134[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_68 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet42),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus61[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_69 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet37),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus29[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_70 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet26),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus135[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_71 (.aEqualsB(s_logisimNet0),
                .aGreaterThanB(s_logisimNet79),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus165[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_72 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet124),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus118[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_73 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet12),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus31[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_74 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet7),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus168[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_75 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet108),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus119[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_76 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet104),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus97[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_77 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet21),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus169[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_78 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet157),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus154[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_79 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet86),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus98[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_80 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet34),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus75[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_81 (.aEqualsB(s_logisimNet90),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus155[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_82 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet64),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus136[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_83 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet53),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus45[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_84 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet38),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus15[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_85 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet68),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus62[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_86 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet11),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus30[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_87 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet6),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus166[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_88 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet107),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus117[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_89 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet105),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus95[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_90 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet22),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus167[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_91 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet158),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus152[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_92 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet85),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus96[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_93 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet82),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus74[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_94 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet76),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus153[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_95 (.aEqualsB(s_logisimNet66),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus5[23:0]),
                .dataB(s_logisimBus55[23:0]));


endmodule
