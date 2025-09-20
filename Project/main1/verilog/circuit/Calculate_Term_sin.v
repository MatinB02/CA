/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Calculate_Term_sin                                           **
 **                                                                          **
 *****************************************************************************/

module Calculate_Term_sin( a,
                           term,
                           x );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0]  a;
   input [31:0] x;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [31:0] term;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus11;
   wire [31:0] s_logisimBus12;
   wire [31:0] s_logisimBus14;
   wire [31:0] s_logisimBus15;
   wire [31:0] s_logisimBus16;
   wire [3:0]  s_logisimBus17;
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus3;
   wire [31:0] s_logisimBus6;
   wire [31:0] s_logisimBus7;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet13;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus17[3:0] = a;
   assign s_logisimBus2[31:0] = x;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign term = s_logisimBus15[31:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus9[31:0]),
                 .muxIn_1(s_logisimBus14[31:0]),
                 .muxOut(s_logisimBus0[31:0]),
                 .sel(s_logisimBus17[2]));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus0[31:0]),
                 .muxIn_1(s_logisimBus1[31:0]),
                 .muxOut(s_logisimBus15[31:0]),
                 .sel(s_logisimBus17[3]));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus2[31:0]),
                 .muxIn_1(s_logisimBus16[31:0]),
                 .muxOut(s_logisimBus3[31:0]),
                 .sel(s_logisimBus17[0]));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus3[31:0]),
                 .muxIn_1(s_logisimBus7[31:0]),
                 .muxOut(s_logisimBus9[31:0]),
                 .sel(s_logisimBus17[1]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   fmult   mul915 (.a(s_logisimBus9[31:0]),
                   .b(s_logisimBus10[31:0]),
                   .res(s_logisimBus14[31:0]));

   fmult   mul16 (.a(s_logisimBus10[31:0]),
                  .b(s_logisimBus10[31:0]),
                  .res(s_logisimBus12[31:0]));

   fmult   mul1731 (.a(s_logisimBus0[31:0]),
                    .b(s_logisimBus12[31:0]),
                    .res(s_logisimBus1[31:0]));

   fmult   mul2 (.a(s_logisimBus2[31:0]),
                 .b(s_logisimBus2[31:0]),
                 .res(s_logisimBus6[31:0]));

   fmult   mul13 (.a(s_logisimBus2[31:0]),
                  .b(s_logisimBus6[31:0]),
                  .res(s_logisimBus16[31:0]));

   fmult   mul4 (.a(s_logisimBus6[31:0]),
                 .b(s_logisimBus6[31:0]),
                 .res(s_logisimBus11[31:0]));

   fmult   mul57 (.a(s_logisimBus3[31:0]),
                  .b(s_logisimBus11[31:0]),
                  .res(s_logisimBus7[31:0]));

   fmult   mul8 (.a(s_logisimBus11[31:0]),
                 .b(s_logisimBus11[31:0]),
                 .res(s_logisimBus10[31:0]));

endmodule
