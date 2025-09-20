/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( a,
             b,
             cout,
             s,
             sub_notadd );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] a;
   input [3:0] b;
   input       sub_notadd;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       cout;
   output [3:0] s;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus0;
   wire [3:0] s_logisimBus1;
   wire [3:0] s_logisimBus2;
   wire [3:0] s_logisimBus3;
   wire [3:0] s_logisimBus8;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[3:0] = a;
   assign s_logisimBus8[3:0] = b;
   assign s_logisimNet5      = sub_notadd;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign cout = s_logisimNet6;
   assign s    = s_logisimBus0[3:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Adder #(.extendedBits(5),
           .nrOfBits(4))
      ARITH_1 (.carryIn(1'b0),
               .carryOut(s_logisimNet4),
               .dataA(s_logisimBus2[3:0]),
               .dataB(s_logisimBus8[3:0]),
               .result(s_logisimBus1[3:0]));

   Subtractor #(.extendedBits(5),
                .nrOfBits(4))
      ARITH_2 (.borrowIn(1'b0),
               .borrowOut(s_logisimNet7),
               .dataA(s_logisimBus2[3:0]),
               .dataB(s_logisimBus8[3:0]),
               .result(s_logisimBus3[3:0]));

   Multiplexer_bus_2 #(.nrOfBits(4))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus1[3:0]),
                 .muxIn_1(s_logisimBus3[3:0]),
                 .muxOut(s_logisimBus0[3:0]),
                 .sel(s_logisimNet5));

   Multiplexer_2   PLEXERS_4 (.enable(1'b1),
                              .muxIn_0(s_logisimNet4),
                              .muxIn_1(s_logisimNet7),
                              .muxOut(s_logisimNet6),
                              .sel(s_logisimNet5));


endmodule
