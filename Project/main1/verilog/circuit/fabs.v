/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : fabs                                                         **
 **                                                                          **
 *****************************************************************************/

module fabs( a,
             res );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [31:0] a;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [31:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [22:0] s_logisimBus1;
   wire [7:0]  s_logisimBus2;
   wire [31:0] s_logisimBus3;
   wire [31:0] s_logisimBus4;
   wire        s_logisimNet0;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus1[0]  = s_logisimBus3[0];
   assign s_logisimBus1[10] = s_logisimBus3[10];
   assign s_logisimBus1[11] = s_logisimBus3[11];
   assign s_logisimBus1[12] = s_logisimBus3[12];
   assign s_logisimBus1[13] = s_logisimBus3[13];
   assign s_logisimBus1[14] = s_logisimBus3[14];
   assign s_logisimBus1[15] = s_logisimBus3[15];
   assign s_logisimBus1[16] = s_logisimBus3[16];
   assign s_logisimBus1[17] = s_logisimBus3[17];
   assign s_logisimBus1[18] = s_logisimBus3[18];
   assign s_logisimBus1[19] = s_logisimBus3[19];
   assign s_logisimBus1[1]  = s_logisimBus3[1];
   assign s_logisimBus1[20] = s_logisimBus3[20];
   assign s_logisimBus1[21] = s_logisimBus3[21];
   assign s_logisimBus1[22] = s_logisimBus3[22];
   assign s_logisimBus1[2]  = s_logisimBus3[2];
   assign s_logisimBus1[3]  = s_logisimBus3[3];
   assign s_logisimBus1[4]  = s_logisimBus3[4];
   assign s_logisimBus1[5]  = s_logisimBus3[5];
   assign s_logisimBus1[6]  = s_logisimBus3[6];
   assign s_logisimBus1[7]  = s_logisimBus3[7];
   assign s_logisimBus1[8]  = s_logisimBus3[8];
   assign s_logisimBus1[9]  = s_logisimBus3[9];
   assign s_logisimBus2[0]  = s_logisimBus3[23];
   assign s_logisimBus2[1]  = s_logisimBus3[24];
   assign s_logisimBus2[2]  = s_logisimBus3[25];
   assign s_logisimBus2[3]  = s_logisimBus3[26];
   assign s_logisimBus2[4]  = s_logisimBus3[27];
   assign s_logisimBus2[5]  = s_logisimBus3[28];
   assign s_logisimBus2[6]  = s_logisimBus3[29];
   assign s_logisimBus2[7]  = s_logisimBus3[30];
   assign s_logisimBus4[0]  = s_logisimBus1[0];
   assign s_logisimBus4[10] = s_logisimBus1[10];
   assign s_logisimBus4[11] = s_logisimBus1[11];
   assign s_logisimBus4[12] = s_logisimBus1[12];
   assign s_logisimBus4[13] = s_logisimBus1[13];
   assign s_logisimBus4[14] = s_logisimBus1[14];
   assign s_logisimBus4[15] = s_logisimBus1[15];
   assign s_logisimBus4[16] = s_logisimBus1[16];
   assign s_logisimBus4[17] = s_logisimBus1[17];
   assign s_logisimBus4[18] = s_logisimBus1[18];
   assign s_logisimBus4[19] = s_logisimBus1[19];
   assign s_logisimBus4[1]  = s_logisimBus1[1];
   assign s_logisimBus4[20] = s_logisimBus1[20];
   assign s_logisimBus4[21] = s_logisimBus1[21];
   assign s_logisimBus4[22] = s_logisimBus1[22];
   assign s_logisimBus4[23] = s_logisimBus2[0];
   assign s_logisimBus4[24] = s_logisimBus2[1];
   assign s_logisimBus4[25] = s_logisimBus2[2];
   assign s_logisimBus4[26] = s_logisimBus2[3];
   assign s_logisimBus4[27] = s_logisimBus2[4];
   assign s_logisimBus4[28] = s_logisimBus2[5];
   assign s_logisimBus4[29] = s_logisimBus2[6];
   assign s_logisimBus4[2]  = s_logisimBus1[2];
   assign s_logisimBus4[30] = s_logisimBus2[7];
   assign s_logisimBus4[3]  = s_logisimBus1[3];
   assign s_logisimBus4[4]  = s_logisimBus1[4];
   assign s_logisimBus4[5]  = s_logisimBus1[5];
   assign s_logisimBus4[6]  = s_logisimBus1[6];
   assign s_logisimBus4[7]  = s_logisimBus1[7];
   assign s_logisimBus4[8]  = s_logisimBus1[8];
   assign s_logisimBus4[9]  = s_logisimBus1[9];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus3[31:0] = a;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign res = s_logisimBus4[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimBus4[31]  =  1'b0;


endmodule
