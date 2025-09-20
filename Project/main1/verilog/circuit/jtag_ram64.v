/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : jtag_ram64                                                   **
 **                                                                          **
 *****************************************************************************/

module jtag_ram64( Addr,
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
   input [5:0]  Addr;
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
   wire [31:0] s_logisimBus1;
   wire [31:0] s_logisimBus10;
   wire [31:0] s_logisimBus14;
   wire [31:0] s_logisimBus17;
   wire [31:0] s_logisimBus19;
   wire [31:0] s_logisimBus20;
   wire [31:0] s_logisimBus21;
   wire [31:0] s_logisimBus22;
   wire [31:0] s_logisimBus23;
   wire [31:0] s_logisimBus25;
   wire [31:0] s_logisimBus28;
   wire [31:0] s_logisimBus3;
   wire [31:0] s_logisimBus30;
   wire [31:0] s_logisimBus31;
   wire [5:0]  s_logisimBus32;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus5;
   wire [31:0] s_logisimBus6;
   wire [31:0] s_logisimBus8;
   wire [31:0] s_logisimBus9;
   wire        s_logisimNet0;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet18;
   wire        s_logisimNet24;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet29;
   wire        s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus28[31:0] = Jin;
   assign s_logisimBus32[5:0]  = Addr;
   assign s_logisimBus8[31:0]  = Din;
   assign s_logisimNet12       = Jen;
   assign s_logisimNet13       = clk;
   assign s_logisimNet15       = Wen;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Dout = s_logisimBus30[31:0];
   assign Jout = s_logisimBus31[31:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_8 #(.nrOfBits(32))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus10[31:0]),
                 .muxIn_1(s_logisimBus9[31:0]),
                 .muxIn_2(s_logisimBus1[31:0]),
                 .muxIn_3(s_logisimBus14[31:0]),
                 .muxIn_4(s_logisimBus20[31:0]),
                 .muxIn_5(s_logisimBus17[31:0]),
                 .muxIn_6(s_logisimBus23[31:0]),
                 .muxIn_7(s_logisimBus22[31:0]),
                 .muxOut(s_logisimBus30[31:0]),
                 .sel(s_logisimBus32[5:3]));

   Decoder_8   PLEXERS_2 (.decoderOut_0(s_logisimNet27),
                          .decoderOut_1(s_logisimNet29),
                          .decoderOut_2(s_logisimNet24),
                          .decoderOut_3(s_logisimNet7),
                          .decoderOut_4(s_logisimNet0),
                          .decoderOut_5(s_logisimNet26),
                          .decoderOut_6(s_logisimNet18),
                          .decoderOut_7(s_logisimNet16),
                          .enable(s_logisimNet15),
                          .sel(s_logisimBus32[5:3]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   jtag_ram8   b6 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus23[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus21[31:0]),
                   .Jout(s_logisimBus3[31:0]),
                   .Wen(s_logisimNet18),
                   .clk(s_logisimNet13));

   jtag_ram8   b7 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus22[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus3[31:0]),
                   .Jout(s_logisimBus31[31:0]),
                   .Wen(s_logisimNet16),
                   .clk(s_logisimNet13));

   jtag_ram8   b1 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus9[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus4[31:0]),
                   .Jout(s_logisimBus19[31:0]),
                   .Wen(s_logisimNet29),
                   .clk(s_logisimNet13));

   jtag_ram8   b0 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus10[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus28[31:0]),
                   .Jout(s_logisimBus4[31:0]),
                   .Wen(s_logisimNet27),
                   .clk(s_logisimNet13));

   jtag_ram8   b2 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus1[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus19[31:0]),
                   .Jout(s_logisimBus5[31:0]),
                   .Wen(s_logisimNet24),
                   .clk(s_logisimNet13));

   jtag_ram8   b3 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus14[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus5[31:0]),
                   .Jout(s_logisimBus25[31:0]),
                   .Wen(s_logisimNet7),
                   .clk(s_logisimNet13));

   jtag_ram8   b4 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus20[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus25[31:0]),
                   .Jout(s_logisimBus6[31:0]),
                   .Wen(s_logisimNet0),
                   .clk(s_logisimNet13));

   jtag_ram8   b5 (.Addr(s_logisimBus32[2:0]),
                   .Din(s_logisimBus8[31:0]),
                   .Dout(s_logisimBus17[31:0]),
                   .Jen(s_logisimNet12),
                   .Jin(s_logisimBus6[31:0]),
                   .Jout(s_logisimBus21[31:0]),
                   .Wen(s_logisimNet26),
                   .clk(s_logisimNet13));

endmodule
