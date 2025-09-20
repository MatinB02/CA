/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SRLL                                                         **
 **                                                                          **
 *****************************************************************************/

module SRLL( a,
             b,
             res_high,
             res_low );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] a;
   input [31:0] b;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [31:0] res_high;
   output [31:0] res_low;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus12;
   wire [4:0]  s_logisimBus13;
   wire [31:0] s_logisimBus14;
   wire [31:0] s_logisimBus15;
   wire [31:0] s_logisimBus21;
   wire [4:0]  s_logisimBus22;
   wire [4:0]  s_logisimBus23;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus5;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet11;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet3;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus13[0] = s_logisimNet16;
   assign s_logisimBus13[1] = s_logisimNet17;
   assign s_logisimBus13[2] = s_logisimNet18;
   assign s_logisimBus13[3] = s_logisimNet19;
   assign s_logisimBus13[4] = s_logisimNet20;
   assign s_logisimBus22[0] = s_logisimNet11;
   assign s_logisimBus22[1] = s_logisimNet3;
   assign s_logisimBus22[2] = s_logisimNet2;
   assign s_logisimBus22[3] = s_logisimNet7;
   assign s_logisimBus22[4] = s_logisimNet8;
   assign s_logisimNet11    = s_logisimBus9[0];
   assign s_logisimNet16    = s_logisimBus10[0];
   assign s_logisimNet17    = s_logisimBus10[1];
   assign s_logisimNet18    = s_logisimBus10[2];
   assign s_logisimNet19    = s_logisimBus10[3];
   assign s_logisimNet2     = s_logisimBus9[2];
   assign s_logisimNet20    = s_logisimBus10[4];
   assign s_logisimNet3     = s_logisimBus9[1];
   assign s_logisimNet7     = s_logisimBus9[3];
   assign s_logisimNet8     = s_logisimBus9[4];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus4[31:0] = a;
   assign s_logisimBus9[31:0] = b;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign res_high = s_logisimBus15[31:0];
   assign res_low  = s_logisimBus5[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus21[31:0]  =  32'h00000001;


   // Constant
   assign  s_logisimBus15[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus23[4:0]  =  {1'b0, 4'h1};


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_1 (.input1(s_logisimNet11),
               .input2(s_logisimNet3),
               .input3(s_logisimNet2),
               .input4(s_logisimNet7),
               .input5(s_logisimNet8),
               .result(s_logisimNet6));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus1[31:0]),
                 .muxIn_1(s_logisimBus0[31:0]),
                 .muxOut(s_logisimBus12[31:0]),
                 .sel(s_logisimNet11));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus4[31:0]),
                 .muxIn_1(s_logisimBus12[31:0]),
                 .muxOut(s_logisimBus5[31:0]),
                 .sel(s_logisimNet6));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_4 (.borrowIn(1'b0),
               .borrowOut(),
               .dataA(s_logisimBus9[31:0]),
               .dataB(s_logisimBus21[31:0]),
               .result(s_logisimBus10[31:0]));

   Shifter_32_bit #(.shifterMode(2))
      ARITH_5 (.dataA(s_logisimBus4[31:0]),
               .result(s_logisimBus14[31:0]),
               .shiftAmount(s_logisimBus13[4:0]));

   Shifter_32_bit #(.shifterMode(2))
      ARITH_6 (.dataA(s_logisimBus4[31:0]),
               .result(s_logisimBus0[31:0]),
               .shiftAmount(s_logisimBus22[4:0]));

   Shifter_32_bit #(.shifterMode(2))
      ARITH_7 (.dataA(s_logisimBus14[31:0]),
               .result(s_logisimBus1[31:0]),
               .shiftAmount(s_logisimBus23[4:0]));


endmodule
