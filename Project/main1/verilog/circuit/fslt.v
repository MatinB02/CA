/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : fslt                                                         **
 **                                                                          **
 *****************************************************************************/

module fslt( INFINITY_PIN,
             NAN_PIN,
             a,
             b,
             res );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] a;
   input [31:0] b;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output        INFINITY_PIN;
   output        NAN_PIN;
   output [31:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus3;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus6;
   wire        s_logisimNet5;
   wire        s_logisimNet7;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus3[31:0] = a;
   assign s_logisimBus6[31:0] = b;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign INFINITY_PIN = s_logisimNet7;
   assign NAN_PIN      = s_logisimNet8;
   assign res          = s_logisimBus4[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus1[31:0]  =  32'h00000000;


   // Constant
   assign  s_logisimBus2[31:0]  =  32'h00000001;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus1[31:0]),
                 .muxIn_1(s_logisimBus2[31:0]),
                 .muxOut(s_logisimBus4[31:0]),
                 .sel(s_logisimBus0[31]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   fsub   v30 (.INFINITY_PIN(s_logisimNet7),
               .NAN_PIN(s_logisimNet8),
               .a(s_logisimBus3[31:0]),
               .b(s_logisimBus6[31:0]),
               .res(s_logisimBus0[31:0]));

endmodule
