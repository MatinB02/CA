/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : floatTOdec                                                   **
 **                                                                          **
 *****************************************************************************/

module floatTOdec( dec,
                   float );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] float;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] dec;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus12;
   wire [31:0] s_logisimBus13;
   wire [31:0] s_logisimBus14;
   wire [3:0]  s_logisimBus15;
   wire [3:0]  s_logisimBus16;
   wire [3:0]  s_logisimBus17;
   wire [3:0]  s_logisimBus18;
   wire [3:0]  s_logisimBus19;
   wire [3:0]  s_logisimBus20;
   wire [3:0]  s_logisimBus21;
   wire [3:0]  s_logisimBus22;
   wire [31:0] s_logisimBus27;
   wire [31:0] s_logisimBus28;
   wire [31:0] s_logisimBus29;
   wire [3:0]  s_logisimBus3;
   wire [31:0] s_logisimBus30;
   wire [3:0]  s_logisimBus31;
   wire [31:0] s_logisimBus37;
   wire [31:0] s_logisimBus38;
   wire [31:0] s_logisimBus39;
   wire [3:0]  s_logisimBus4;
   wire [31:0] s_logisimBus40;
   wire [31:0] s_logisimBus41;
   wire [31:0] s_logisimBus42;
   wire [31:0] s_logisimBus43;
   wire [31:0] s_logisimBus44;
   wire [31:0] s_logisimBus45;
   wire [3:0]  s_logisimBus46;
   wire [3:0]  s_logisimBus47;
   wire [3:0]  s_logisimBus48;
   wire [3:0]  s_logisimBus49;
   wire [3:0]  s_logisimBus5;
   wire [3:0]  s_logisimBus50;
   wire [3:0]  s_logisimBus51;
   wire [3:0]  s_logisimBus52;
   wire [3:0]  s_logisimBus53;
   wire [3:0]  s_logisimBus54;
   wire [3:0]  s_logisimBus55;
   wire [3:0]  s_logisimBus56;
   wire [3:0]  s_logisimBus57;
   wire [3:0]  s_logisimBus58;
   wire [3:0]  s_logisimBus59;
   wire [3:0]  s_logisimBus6;
   wire [3:0]  s_logisimBus60;
   wire [3:0]  s_logisimBus61;
   wire [3:0]  s_logisimBus7;
   wire [3:0]  s_logisimBus8;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet2;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet32;
   wire        s_logisimNet33;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet36;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus41[31:0] = float;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign dec = s_logisimBus31[3:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus42[31:0]  =  32'h40E00000;


   // Constant
   assign  s_logisimBus13[31:0]  =  32'h41000000;


   // Constant
   assign  s_logisimBus43[31:0]  =  32'h41100000;


   // Constant
   assign  s_logisimBus37[31:0]  =  32'h41200000;


   // Constant
   assign  s_logisimBus28[31:0]  =  32'h41300000;


   // Constant
   assign  s_logisimBus14[31:0]  =  32'h41400000;


   // Constant
   assign  s_logisimBus44[31:0]  =  32'h41500000;


   // Constant
   assign  s_logisimBus39[31:0]  =  32'h41600000;


   // Constant
   assign  s_logisimBus29[31:0]  =  32'h41700000;


   // Constant
   assign  s_logisimBus40[31:0]  =  32'h40000000;


   // Constant
   assign  s_logisimBus45[31:0]  =  32'h40400000;


   // Constant
   assign  s_logisimBus38[31:0]  =  32'h40800000;


   // Constant
   assign  s_logisimBus27[31:0]  =  32'h40A00000;


   // Constant
   assign  s_logisimBus12[31:0]  =  32'h40C00000;


   // Constant
   assign  s_logisimBus30[31:0]  =  32'h3F800000;


   // Constant
   assign  s_logisimBus46[3:0]  =  4'h5;


   // Constant
   assign  s_logisimBus47[3:0]  =  4'h6;


   // Constant
   assign  s_logisimBus48[3:0]  =  4'h7;


   // Constant
   assign  s_logisimBus49[3:0]  =  4'h8;


   // Constant
   assign  s_logisimBus50[3:0]  =  4'h9;


   // Constant
   assign  s_logisimBus51[3:0]  =  4'hA;


   // Constant
   assign  s_logisimBus52[3:0]  =  4'hB;


   // Constant
   assign  s_logisimBus53[3:0]  =  4'hC;


   // Constant
   assign  s_logisimBus54[3:0]  =  4'hD;


   // Constant
   assign  s_logisimBus55[3:0]  =  4'hE;


   // Constant
   assign  s_logisimBus56[3:0]  =  4'hF;


   // Constant
   assign  s_logisimBus57[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus58[3:0]  =  4'h1;


   // Constant
   assign  s_logisimBus59[3:0]  =  4'h2;


   // Constant
   assign  s_logisimBus60[3:0]  =  4'h3;


   // Constant
   assign  s_logisimBus61[3:0]  =  4'h4;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus5[3:0]),
                 .muxIn_1(s_logisimBus46[3:0]),
                 .muxOut(s_logisimBus20[3:0]),
                 .sel(s_logisimNet11));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus20[3:0]),
                 .muxIn_1(s_logisimBus47[3:0]),
                 .muxOut(s_logisimBus3[3:0]),
                 .sel(s_logisimNet33));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus3[3:0]),
                 .muxIn_1(s_logisimBus48[3:0]),
                 .muxOut(s_logisimBus21[3:0]),
                 .sel(s_logisimNet9));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus21[3:0]),
                 .muxIn_1(s_logisimBus49[3:0]),
                 .muxOut(s_logisimBus18[3:0]),
                 .sel(s_logisimNet32));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus18[3:0]),
                 .muxIn_1(s_logisimBus50[3:0]),
                 .muxOut(s_logisimBus7[3:0]),
                 .sel(s_logisimNet23));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_6 (.enable(1'b1),
                 .muxIn_0(s_logisimBus7[3:0]),
                 .muxIn_1(s_logisimBus51[3:0]),
                 .muxOut(s_logisimBus4[3:0]),
                 .sel(s_logisimNet0));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus4[3:0]),
                 .muxIn_1(s_logisimBus52[3:0]),
                 .muxOut(s_logisimBus22[3:0]),
                 .sel(s_logisimNet10));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_8 (.enable(1'b1),
                 .muxIn_0(s_logisimBus22[3:0]),
                 .muxIn_1(s_logisimBus53[3:0]),
                 .muxOut(s_logisimBus19[3:0]),
                 .sel(s_logisimNet34));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus19[3:0]),
                 .muxIn_1(s_logisimBus54[3:0]),
                 .muxOut(s_logisimBus8[3:0]),
                 .sel(s_logisimNet26));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_10 (.enable(1'b1),
                  .muxIn_0(s_logisimBus8[3:0]),
                  .muxIn_1(s_logisimBus55[3:0]),
                  .muxOut(s_logisimBus31[3:0]),
                  .sel(s_logisimNet2));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_11 (.enable(1'b1),
                  .muxIn_0(s_logisimBus56[3:0]),
                  .muxIn_1(s_logisimBus57[3:0]),
                  .muxOut(s_logisimBus15[3:0]),
                  .sel(s_logisimNet35));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_12 (.enable(1'b1),
                  .muxIn_0(s_logisimBus15[3:0]),
                  .muxIn_1(s_logisimBus58[3:0]),
                  .muxOut(s_logisimBus17[3:0]),
                  .sel(s_logisimNet24));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_13 (.enable(1'b1),
                  .muxIn_0(s_logisimBus17[3:0]),
                  .muxIn_1(s_logisimBus59[3:0]),
                  .muxOut(s_logisimBus16[3:0]),
                  .sel(s_logisimNet36));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_14 (.enable(1'b1),
                  .muxIn_0(s_logisimBus16[3:0]),
                  .muxIn_1(s_logisimBus60[3:0]),
                  .muxOut(s_logisimBus6[3:0]),
                  .sel(s_logisimNet25));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_15 (.enable(1'b1),
                  .muxIn_0(s_logisimBus6[3:0]),
                  .muxIn_1(s_logisimBus61[3:0]),
                  .muxOut(s_logisimBus5[3:0]),
                  .sel(s_logisimNet1));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_16 (.aEqualsB(s_logisimNet33),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus42[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_17 (.aEqualsB(s_logisimNet9),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus13[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_18 (.aEqualsB(s_logisimNet32),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus43[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_19 (.aEqualsB(s_logisimNet23),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus37[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_20 (.aEqualsB(s_logisimNet0),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus28[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_21 (.aEqualsB(s_logisimNet10),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus14[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_22 (.aEqualsB(s_logisimNet34),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus44[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_23 (.aEqualsB(s_logisimNet26),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus39[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_24 (.aEqualsB(s_logisimNet2),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus29[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_25 (.aEqualsB(s_logisimNet35),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus30[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_26 (.aEqualsB(s_logisimNet24),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus40[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_27 (.aEqualsB(s_logisimNet36),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus45[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_28 (.aEqualsB(s_logisimNet25),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus38[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_29 (.aEqualsB(s_logisimNet1),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus27[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_30 (.aEqualsB(s_logisimNet11),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus41[31:0]),
                .dataB(s_logisimBus12[31:0]));


endmodule
