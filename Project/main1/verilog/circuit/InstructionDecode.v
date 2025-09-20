/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : InstructionDecode                                            **
 **                                                                          **
 *****************************************************************************/

module InstructionDecode( Instruction,
                          func,
                          imm,
                          opCode,
                          rd,
                          rs,
                          rt,
                          shmt );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] Instruction;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [5:0]  func;
   output [31:0] imm;
   output [5:0]  opCode;
   output [4:0]  rd;
   output [4:0]  rs;
   output [4:0]  rt;
   output [31:0] shmt;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus2;
   wire [31:0] s_logisimBus4;
   wire [31:0] s_logisimBus5;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus5[31:0] = Instruction;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign func   = s_logisimBus5[5:0];
   assign imm    = s_logisimBus2[31:0];
   assign opCode = s_logisimBus5[31:26];
   assign rd     = s_logisimBus5[15:11];
   assign rs     = s_logisimBus5[20:16];
   assign rt     = s_logisimBus5[25:21];
   assign shmt   = s_logisimBus4[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Bit Extender
   assign  s_logisimBus2[0]  =  s_logisimBus5[0];
   assign  s_logisimBus2[1]  =  s_logisimBus5[1];
   assign  s_logisimBus2[2]  =  s_logisimBus5[2];
   assign  s_logisimBus2[3]  =  s_logisimBus5[3];
   assign  s_logisimBus2[4]  =  s_logisimBus5[4];
   assign  s_logisimBus2[5]  =  s_logisimBus5[5];
   assign  s_logisimBus2[6]  =  s_logisimBus5[6];
   assign  s_logisimBus2[7]  =  s_logisimBus5[7];
   assign  s_logisimBus2[8]  =  s_logisimBus5[8];
   assign  s_logisimBus2[9]  =  s_logisimBus5[9];
   assign  s_logisimBus2[10]  =  s_logisimBus5[10];
   assign  s_logisimBus2[11]  =  s_logisimBus5[11];
   assign  s_logisimBus2[12]  =  s_logisimBus5[12];
   assign  s_logisimBus2[13]  =  s_logisimBus5[13];
   assign  s_logisimBus2[14]  =  s_logisimBus5[14];
   assign  s_logisimBus2[15]  =  s_logisimBus5[15];
   assign  s_logisimBus2[16]  =  s_logisimBus5[15];
   assign  s_logisimBus2[17]  =  s_logisimBus5[15];
   assign  s_logisimBus2[18]  =  s_logisimBus5[15];
   assign  s_logisimBus2[19]  =  s_logisimBus5[15];
   assign  s_logisimBus2[20]  =  s_logisimBus5[15];
   assign  s_logisimBus2[21]  =  s_logisimBus5[15];
   assign  s_logisimBus2[22]  =  s_logisimBus5[15];
   assign  s_logisimBus2[23]  =  s_logisimBus5[15];
   assign  s_logisimBus2[24]  =  s_logisimBus5[15];
   assign  s_logisimBus2[25]  =  s_logisimBus5[15];
   assign  s_logisimBus2[26]  =  s_logisimBus5[15];
   assign  s_logisimBus2[27]  =  s_logisimBus5[15];
   assign  s_logisimBus2[28]  =  s_logisimBus5[15];
   assign  s_logisimBus2[29]  =  s_logisimBus5[15];
   assign  s_logisimBus2[30]  =  s_logisimBus5[15];
   assign  s_logisimBus2[31]  =  s_logisimBus5[15];


   // Bit Extender
   assign  s_logisimBus4[0]  =  s_logisimBus5[6];
   assign  s_logisimBus4[1]  =  s_logisimBus5[7];
   assign  s_logisimBus4[2]  =  s_logisimBus5[8];
   assign  s_logisimBus4[3]  =  s_logisimBus5[9];
   assign  s_logisimBus4[4]  =  s_logisimBus5[10];
   assign  s_logisimBus4[5]  =  1'b0;
   assign  s_logisimBus4[6]  =  1'b0;
   assign  s_logisimBus4[7]  =  1'b0;
   assign  s_logisimBus4[8]  =  1'b0;
   assign  s_logisimBus4[9]  =  1'b0;
   assign  s_logisimBus4[10]  =  1'b0;
   assign  s_logisimBus4[11]  =  1'b0;
   assign  s_logisimBus4[12]  =  1'b0;
   assign  s_logisimBus4[13]  =  1'b0;
   assign  s_logisimBus4[14]  =  1'b0;
   assign  s_logisimBus4[15]  =  1'b0;
   assign  s_logisimBus4[16]  =  1'b0;
   assign  s_logisimBus4[17]  =  1'b0;
   assign  s_logisimBus4[18]  =  1'b0;
   assign  s_logisimBus4[19]  =  1'b0;
   assign  s_logisimBus4[20]  =  1'b0;
   assign  s_logisimBus4[21]  =  1'b0;
   assign  s_logisimBus4[22]  =  1'b0;
   assign  s_logisimBus4[23]  =  1'b0;
   assign  s_logisimBus4[24]  =  1'b0;
   assign  s_logisimBus4[25]  =  1'b0;
   assign  s_logisimBus4[26]  =  1'b0;
   assign  s_logisimBus4[27]  =  1'b0;
   assign  s_logisimBus4[28]  =  1'b0;
   assign  s_logisimBus4[29]  =  1'b0;
   assign  s_logisimBus4[30]  =  1'b0;
   assign  s_logisimBus4[31]  =  1'b0;


endmodule
