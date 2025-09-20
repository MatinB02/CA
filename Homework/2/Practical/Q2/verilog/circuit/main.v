/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( clk,
             dividend,
             divisor,
             done,
             quotient,
             remainder,
             start );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        clk;
   input [31:0] dividend;
   input [31:0] divisor;
   input        start;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        done;
   output [31:0] quotient;
   output [31:0] remainder;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus11;
   wire [31:0] s_logisimBus12;
   wire [31:0] s_logisimBus13;
   wire [31:0] s_logisimBus15;
   wire [31:0] s_logisimBus17;
   wire [31:0] s_logisimBus18;
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus20;
   wire [31:0] s_logisimBus21;
   wire [31:0] s_logisimBus22;
   wire [30:0] s_logisimBus23;
   wire [31:0] s_logisimBus24;
   wire [30:0] s_logisimBus26;
   wire [7:0]  s_logisimBus27;
   wire [31:0] s_logisimBus28;
   wire [31:0] s_logisimBus30;
   wire [31:0] s_logisimBus31;
   wire [7:0]  s_logisimBus33;
   wire [7:0]  s_logisimBus35;
   wire [31:0] s_logisimBus4;
   wire [7:0]  s_logisimBus6;
   wire [31:0] s_logisimBus8;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet14;
   wire        s_logisimNet16;
   wire        s_logisimNet19;
   wire        s_logisimNet25;
   wire        s_logisimNet29;
   wire        s_logisimNet3;
   wire        s_logisimNet32;
   wire        s_logisimNet34;
   wire        s_logisimNet36;
   wire        s_logisimNet5;
   wire        s_logisimNet7;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus17[10] = s_logisimBus26[9];
   assign s_logisimBus17[11] = s_logisimBus26[10];
   assign s_logisimBus17[12] = s_logisimBus26[11];
   assign s_logisimBus17[13] = s_logisimBus26[12];
   assign s_logisimBus17[14] = s_logisimBus26[13];
   assign s_logisimBus17[15] = s_logisimBus26[14];
   assign s_logisimBus17[16] = s_logisimBus26[15];
   assign s_logisimBus17[17] = s_logisimBus26[16];
   assign s_logisimBus17[18] = s_logisimBus26[17];
   assign s_logisimBus17[19] = s_logisimBus26[18];
   assign s_logisimBus17[1]  = s_logisimBus26[0];
   assign s_logisimBus17[20] = s_logisimBus26[19];
   assign s_logisimBus17[21] = s_logisimBus26[20];
   assign s_logisimBus17[22] = s_logisimBus26[21];
   assign s_logisimBus17[23] = s_logisimBus26[22];
   assign s_logisimBus17[24] = s_logisimBus26[23];
   assign s_logisimBus17[25] = s_logisimBus26[24];
   assign s_logisimBus17[26] = s_logisimBus26[25];
   assign s_logisimBus17[27] = s_logisimBus26[26];
   assign s_logisimBus17[28] = s_logisimBus26[27];
   assign s_logisimBus17[29] = s_logisimBus26[28];
   assign s_logisimBus17[2]  = s_logisimBus26[1];
   assign s_logisimBus17[30] = s_logisimBus26[29];
   assign s_logisimBus17[31] = s_logisimBus26[30];
   assign s_logisimBus17[3]  = s_logisimBus26[2];
   assign s_logisimBus17[4]  = s_logisimBus26[3];
   assign s_logisimBus17[5]  = s_logisimBus26[4];
   assign s_logisimBus17[6]  = s_logisimBus26[5];
   assign s_logisimBus17[7]  = s_logisimBus26[6];
   assign s_logisimBus17[8]  = s_logisimBus26[7];
   assign s_logisimBus17[9]  = s_logisimBus26[8];
   assign s_logisimBus23[0]  = s_logisimBus11[0];
   assign s_logisimBus23[10] = s_logisimBus11[10];
   assign s_logisimBus23[11] = s_logisimBus11[11];
   assign s_logisimBus23[12] = s_logisimBus11[12];
   assign s_logisimBus23[13] = s_logisimBus11[13];
   assign s_logisimBus23[14] = s_logisimBus11[14];
   assign s_logisimBus23[15] = s_logisimBus11[15];
   assign s_logisimBus23[16] = s_logisimBus11[16];
   assign s_logisimBus23[17] = s_logisimBus11[17];
   assign s_logisimBus23[18] = s_logisimBus11[18];
   assign s_logisimBus23[19] = s_logisimBus11[19];
   assign s_logisimBus23[1]  = s_logisimBus11[1];
   assign s_logisimBus23[20] = s_logisimBus11[20];
   assign s_logisimBus23[21] = s_logisimBus11[21];
   assign s_logisimBus23[22] = s_logisimBus11[22];
   assign s_logisimBus23[23] = s_logisimBus11[23];
   assign s_logisimBus23[24] = s_logisimBus11[24];
   assign s_logisimBus23[25] = s_logisimBus11[25];
   assign s_logisimBus23[26] = s_logisimBus11[26];
   assign s_logisimBus23[27] = s_logisimBus11[27];
   assign s_logisimBus23[28] = s_logisimBus11[28];
   assign s_logisimBus23[29] = s_logisimBus11[29];
   assign s_logisimBus23[2]  = s_logisimBus11[2];
   assign s_logisimBus23[30] = s_logisimBus11[30];
   assign s_logisimBus23[3]  = s_logisimBus11[3];
   assign s_logisimBus23[4]  = s_logisimBus11[4];
   assign s_logisimBus23[5]  = s_logisimBus11[5];
   assign s_logisimBus23[6]  = s_logisimBus11[6];
   assign s_logisimBus23[7]  = s_logisimBus11[7];
   assign s_logisimBus23[8]  = s_logisimBus11[8];
   assign s_logisimBus23[9]  = s_logisimBus11[9];
   assign s_logisimBus26[0]  = s_logisimBus4[0];
   assign s_logisimBus26[10] = s_logisimBus4[10];
   assign s_logisimBus26[11] = s_logisimBus4[11];
   assign s_logisimBus26[12] = s_logisimBus4[12];
   assign s_logisimBus26[13] = s_logisimBus4[13];
   assign s_logisimBus26[14] = s_logisimBus4[14];
   assign s_logisimBus26[15] = s_logisimBus4[15];
   assign s_logisimBus26[16] = s_logisimBus4[16];
   assign s_logisimBus26[17] = s_logisimBus4[17];
   assign s_logisimBus26[18] = s_logisimBus4[18];
   assign s_logisimBus26[19] = s_logisimBus4[19];
   assign s_logisimBus26[1]  = s_logisimBus4[1];
   assign s_logisimBus26[20] = s_logisimBus4[20];
   assign s_logisimBus26[21] = s_logisimBus4[21];
   assign s_logisimBus26[22] = s_logisimBus4[22];
   assign s_logisimBus26[23] = s_logisimBus4[23];
   assign s_logisimBus26[24] = s_logisimBus4[24];
   assign s_logisimBus26[25] = s_logisimBus4[25];
   assign s_logisimBus26[26] = s_logisimBus4[26];
   assign s_logisimBus26[27] = s_logisimBus4[27];
   assign s_logisimBus26[28] = s_logisimBus4[28];
   assign s_logisimBus26[29] = s_logisimBus4[29];
   assign s_logisimBus26[2]  = s_logisimBus4[2];
   assign s_logisimBus26[30] = s_logisimBus4[30];
   assign s_logisimBus26[3]  = s_logisimBus4[3];
   assign s_logisimBus26[4]  = s_logisimBus4[4];
   assign s_logisimBus26[5]  = s_logisimBus4[5];
   assign s_logisimBus26[6]  = s_logisimBus4[6];
   assign s_logisimBus26[7]  = s_logisimBus4[7];
   assign s_logisimBus26[8]  = s_logisimBus4[8];
   assign s_logisimBus26[9]  = s_logisimBus4[9];
   assign s_logisimBus2[0]   = s_logisimNet25;
   assign s_logisimBus2[10]  = s_logisimBus23[9];
   assign s_logisimBus2[11]  = s_logisimBus23[10];
   assign s_logisimBus2[12]  = s_logisimBus23[11];
   assign s_logisimBus2[13]  = s_logisimBus23[12];
   assign s_logisimBus2[14]  = s_logisimBus23[13];
   assign s_logisimBus2[15]  = s_logisimBus23[14];
   assign s_logisimBus2[16]  = s_logisimBus23[15];
   assign s_logisimBus2[17]  = s_logisimBus23[16];
   assign s_logisimBus2[18]  = s_logisimBus23[17];
   assign s_logisimBus2[19]  = s_logisimBus23[18];
   assign s_logisimBus2[1]   = s_logisimBus23[0];
   assign s_logisimBus2[20]  = s_logisimBus23[19];
   assign s_logisimBus2[21]  = s_logisimBus23[20];
   assign s_logisimBus2[22]  = s_logisimBus23[21];
   assign s_logisimBus2[23]  = s_logisimBus23[22];
   assign s_logisimBus2[24]  = s_logisimBus23[23];
   assign s_logisimBus2[25]  = s_logisimBus23[24];
   assign s_logisimBus2[26]  = s_logisimBus23[25];
   assign s_logisimBus2[27]  = s_logisimBus23[26];
   assign s_logisimBus2[28]  = s_logisimBus23[27];
   assign s_logisimBus2[29]  = s_logisimBus23[28];
   assign s_logisimBus2[2]   = s_logisimBus23[1];
   assign s_logisimBus2[30]  = s_logisimBus23[29];
   assign s_logisimBus2[31]  = s_logisimBus23[30];
   assign s_logisimBus2[3]   = s_logisimBus23[2];
   assign s_logisimBus2[4]   = s_logisimBus23[3];
   assign s_logisimBus2[5]   = s_logisimBus23[4];
   assign s_logisimBus2[6]   = s_logisimBus23[5];
   assign s_logisimBus2[7]   = s_logisimBus23[6];
   assign s_logisimBus2[8]   = s_logisimBus23[7];
   assign s_logisimBus2[9]   = s_logisimBus23[8];
   assign s_logisimNet25     = s_logisimBus4[31];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus18[31:0] = dividend;
   assign s_logisimBus8[31:0]  = divisor;
   assign s_logisimNet10       = clk;
   assign s_logisimNet5        = start;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign done      = s_logisimNet3;
   assign quotient  = s_logisimBus4[31:0];
   assign remainder = s_logisimBus11[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus33[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus30[31:0]  =  32'h00000001;


   // Constant
   assign  s_logisimNet16  =  1'b0;


   // Constant
   assign  s_logisimBus27[7:0]  =  8'h40;


   // Constant
   assign  s_logisimBus31[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus35[7:0]  =  8'h01;


   // Constant
   assign  s_logisimBus17[0]  =  1'b0;


   // NOT Gate
   assign s_logisimNet14 = ~s_logisimNet32;

   // NOT Gate
   assign s_logisimNet34 = ~s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet7),
               .input2(s_logisimBus6[0]),
               .result(s_logisimNet0));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet10),
               .input2(s_logisimNet34),
               .result(s_logisimNet1));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet3),
               .input2(s_logisimNet29),
               .result(s_logisimNet36));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus4[31:0]),
                 .muxIn_1(s_logisimBus21[31:0]),
                 .muxOut(s_logisimBus15[31:0]),
                 .sel(s_logisimNet14));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus11[31:0]),
                 .muxIn_1(s_logisimBus22[31:0]),
                 .muxOut(s_logisimBus20[31:0]),
                 .sel(s_logisimNet14));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_6 (.enable(1'b1),
                 .muxIn_0(s_logisimBus15[31:0]),
                 .muxIn_1(s_logisimBus18[31:0]),
                 .muxOut(s_logisimBus24[31:0]),
                 .sel(s_logisimNet7));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus20[31:0]),
                 .muxIn_1(s_logisimBus31[31:0]),
                 .muxOut(s_logisimBus12[31:0]),
                 .sel(s_logisimNet7));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_8 (.enable(1'b1),
                 .muxIn_0(s_logisimBus17[31:0]),
                 .muxIn_1(s_logisimBus24[31:0]),
                 .muxOut(s_logisimBus28[31:0]),
                 .sel(s_logisimNet0));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus2[31:0]),
                 .muxIn_1(s_logisimBus12[31:0]),
                 .muxOut(s_logisimBus13[31:0]),
                 .sel(s_logisimNet0));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_10 (.aEqualsB(s_logisimNet7),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus33[7:0]),
                .dataB(s_logisimBus6[7:0]));

   Adder #(.extendedBits(33),
           .nrOfBits(32))
      ARITH_11 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus4[31:0]),
                .dataB(s_logisimBus30[31:0]),
                .result(s_logisimBus21[31:0]));

   Comparator #(.nrOfBits(32),
                .twosComplement(1))
      ARITH_12 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet32),
                .dataA(s_logisimBus11[31:0]),
                .dataB(s_logisimBus8[31:0]));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_13 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus11[31:0]),
                .dataB(s_logisimBus8[31:0]),
                .result(s_logisimBus22[31:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_14 (.aEqualsB(s_logisimNet29),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus6[7:0]),
                .dataB(s_logisimBus35[7:0]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(8'hFF),
                    .mode(0),
                    .width(8))
      MEMORY_15 (.clear(s_logisimNet5),
                 .clock(s_logisimNet10),
                 .compareOut(),
                 .countValue(s_logisimBus6[7:0]),
                 .enable(1'b1),
                 .load(s_logisimNet7),
                 .loadData(s_logisimBus27[7:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet16));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      q (.clock(s_logisimNet1),
         .clockEnable(1'b1),
         .d(s_logisimBus28[31:0]),
         .q(s_logisimBus4[31:0]),
         .reset(1'b0),
         .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(32))
      a (.clock(s_logisimNet1),
         .clockEnable(1'b1),
         .d(s_logisimBus13[31:0]),
         .q(s_logisimBus11[31:0]),
         .reset(1'b0),
         .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_18 (.clock(s_logisimNet10),
                 .clockEnable(1'b1),
                 .d(s_logisimNet36),
                 .q(s_logisimNet3),
                 .reset(s_logisimNet5),
                 .tick(1'b1));


endmodule
