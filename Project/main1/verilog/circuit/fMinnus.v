/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : fMinnus                                                      **
 **                                                                          **
 *****************************************************************************/

module fMinnus( a,
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
   output [31:0] res;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [31:0] s_logisimBus0;
   wire [8:0]  s_logisimBus10;
   wire [22:0] s_logisimBus100;
   wire [7:0]  s_logisimBus103;
   wire [31:0] s_logisimBus104;
   wire [22:0] s_logisimBus109;
   wire [7:0]  s_logisimBus11;
   wire [8:0]  s_logisimBus110;
   wire [22:0] s_logisimBus111;
   wire [31:0] s_logisimBus113;
   wire [5:0]  s_logisimBus114;
   wire [22:0] s_logisimBus117;
   wire [7:0]  s_logisimBus119;
   wire [23:0] s_logisimBus120;
   wire [5:0]  s_logisimBus121;
   wire [23:0] s_logisimBus123;
   wire [22:0] s_logisimBus132;
   wire [22:0] s_logisimBus134;
   wire [7:0]  s_logisimBus135;
   wire [7:0]  s_logisimBus136;
   wire [23:0] s_logisimBus16;
   wire [7:0]  s_logisimBus17;
   wire [8:0]  s_logisimBus20;
   wire [22:0] s_logisimBus21;
   wire [7:0]  s_logisimBus22;
   wire [8:0]  s_logisimBus23;
   wire [23:0] s_logisimBus24;
   wire [23:0] s_logisimBus28;
   wire [31:0] s_logisimBus3;
   wire [7:0]  s_logisimBus30;
   wire [31:0] s_logisimBus33;
   wire [7:0]  s_logisimBus37;
   wire [23:0] s_logisimBus4;
   wire [23:0] s_logisimBus41;
   wire [22:0] s_logisimBus42;
   wire [8:0]  s_logisimBus43;
   wire [23:0] s_logisimBus45;
   wire [7:0]  s_logisimBus47;
   wire [8:0]  s_logisimBus48;
   wire [7:0]  s_logisimBus50;
   wire [7:0]  s_logisimBus51;
   wire [22:0] s_logisimBus52;
   wire [31:0] s_logisimBus55;
   wire [6:0]  s_logisimBus56;
   wire [5:0]  s_logisimBus59;
   wire [8:0]  s_logisimBus6;
   wire [8:0]  s_logisimBus61;
   wire [7:0]  s_logisimBus63;
   wire [22:0] s_logisimBus67;
   wire [23:0] s_logisimBus68;
   wire [22:0] s_logisimBus69;
   wire [22:0] s_logisimBus7;
   wire [7:0]  s_logisimBus70;
   wire [8:0]  s_logisimBus72;
   wire [5:0]  s_logisimBus74;
   wire [31:0] s_logisimBus77;
   wire [8:0]  s_logisimBus8;
   wire [5:0]  s_logisimBus81;
   wire [7:0]  s_logisimBus82;
   wire [8:0]  s_logisimBus84;
   wire [23:0] s_logisimBus86;
   wire [7:0]  s_logisimBus87;
   wire [7:0]  s_logisimBus88;
   wire [23:0] s_logisimBus9;
   wire [7:0]  s_logisimBus90;
   wire [31:0] s_logisimBus92;
   wire [22:0] s_logisimBus93;
   wire [7:0]  s_logisimBus94;
   wire [7:0]  s_logisimBus97;
   wire        s_logisimNet1;
   wire        s_logisimNet101;
   wire        s_logisimNet102;
   wire        s_logisimNet105;
   wire        s_logisimNet106;
   wire        s_logisimNet108;
   wire        s_logisimNet112;
   wire        s_logisimNet115;
   wire        s_logisimNet116;
   wire        s_logisimNet118;
   wire        s_logisimNet12;
   wire        s_logisimNet124;
   wire        s_logisimNet125;
   wire        s_logisimNet126;
   wire        s_logisimNet129;
   wire        s_logisimNet13;
   wire        s_logisimNet130;
   wire        s_logisimNet133;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet2;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet29;
   wire        s_logisimNet32;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet36;
   wire        s_logisimNet38;
   wire        s_logisimNet39;
   wire        s_logisimNet40;
   wire        s_logisimNet44;
   wire        s_logisimNet46;
   wire        s_logisimNet49;
   wire        s_logisimNet5;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet60;
   wire        s_logisimNet64;
   wire        s_logisimNet65;
   wire        s_logisimNet66;
   wire        s_logisimNet71;
   wire        s_logisimNet73;
   wire        s_logisimNet75;
   wire        s_logisimNet76;
   wire        s_logisimNet78;
   wire        s_logisimNet79;
   wire        s_logisimNet80;
   wire        s_logisimNet83;
   wire        s_logisimNet85;
   wire        s_logisimNet89;
   wire        s_logisimNet91;
   wire        s_logisimNet95;
   wire        s_logisimNet96;
   wire        s_logisimNet98;
   wire        s_logisimNet99;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus123[0]  = s_logisimBus132[0];
   assign s_logisimBus123[10] = s_logisimBus132[10];
   assign s_logisimBus123[11] = s_logisimBus132[11];
   assign s_logisimBus123[12] = s_logisimBus132[12];
   assign s_logisimBus123[13] = s_logisimBus132[13];
   assign s_logisimBus123[14] = s_logisimBus132[14];
   assign s_logisimBus123[15] = s_logisimBus132[15];
   assign s_logisimBus123[16] = s_logisimBus132[16];
   assign s_logisimBus123[17] = s_logisimBus132[17];
   assign s_logisimBus123[18] = s_logisimBus132[18];
   assign s_logisimBus123[19] = s_logisimBus132[19];
   assign s_logisimBus123[1]  = s_logisimBus132[1];
   assign s_logisimBus123[20] = s_logisimBus132[20];
   assign s_logisimBus123[21] = s_logisimBus132[21];
   assign s_logisimBus123[22] = s_logisimBus132[22];
   assign s_logisimBus123[2]  = s_logisimBus132[2];
   assign s_logisimBus123[3]  = s_logisimBus132[3];
   assign s_logisimBus123[4]  = s_logisimBus132[4];
   assign s_logisimBus123[5]  = s_logisimBus132[5];
   assign s_logisimBus123[6]  = s_logisimBus132[6];
   assign s_logisimBus123[7]  = s_logisimBus132[7];
   assign s_logisimBus123[8]  = s_logisimBus132[8];
   assign s_logisimBus123[9]  = s_logisimBus132[9];
   assign s_logisimBus132[0]  = s_logisimBus92[0];
   assign s_logisimBus132[10] = s_logisimBus92[10];
   assign s_logisimBus132[11] = s_logisimBus92[11];
   assign s_logisimBus132[12] = s_logisimBus92[12];
   assign s_logisimBus132[13] = s_logisimBus92[13];
   assign s_logisimBus132[14] = s_logisimBus92[14];
   assign s_logisimBus132[15] = s_logisimBus92[15];
   assign s_logisimBus132[16] = s_logisimBus92[16];
   assign s_logisimBus132[17] = s_logisimBus92[17];
   assign s_logisimBus132[18] = s_logisimBus92[18];
   assign s_logisimBus132[19] = s_logisimBus92[19];
   assign s_logisimBus132[1]  = s_logisimBus92[1];
   assign s_logisimBus132[20] = s_logisimBus92[20];
   assign s_logisimBus132[21] = s_logisimBus92[21];
   assign s_logisimBus132[22] = s_logisimBus92[22];
   assign s_logisimBus132[2]  = s_logisimBus92[2];
   assign s_logisimBus132[3]  = s_logisimBus92[3];
   assign s_logisimBus132[4]  = s_logisimBus92[4];
   assign s_logisimBus132[5]  = s_logisimBus92[5];
   assign s_logisimBus132[6]  = s_logisimBus92[6];
   assign s_logisimBus132[7]  = s_logisimBus92[7];
   assign s_logisimBus132[8]  = s_logisimBus92[8];
   assign s_logisimBus132[9]  = s_logisimBus92[9];
   assign s_logisimBus134[0]  = s_logisimBus104[0];
   assign s_logisimBus134[10] = s_logisimBus104[10];
   assign s_logisimBus134[11] = s_logisimBus104[11];
   assign s_logisimBus134[12] = s_logisimBus104[12];
   assign s_logisimBus134[13] = s_logisimBus104[13];
   assign s_logisimBus134[14] = s_logisimBus104[14];
   assign s_logisimBus134[15] = s_logisimBus104[15];
   assign s_logisimBus134[16] = s_logisimBus104[16];
   assign s_logisimBus134[17] = s_logisimBus104[17];
   assign s_logisimBus134[18] = s_logisimBus104[18];
   assign s_logisimBus134[19] = s_logisimBus104[19];
   assign s_logisimBus134[1]  = s_logisimBus104[1];
   assign s_logisimBus134[20] = s_logisimBus104[20];
   assign s_logisimBus134[21] = s_logisimBus104[21];
   assign s_logisimBus134[22] = s_logisimBus104[22];
   assign s_logisimBus134[2]  = s_logisimBus104[2];
   assign s_logisimBus134[3]  = s_logisimBus104[3];
   assign s_logisimBus134[4]  = s_logisimBus104[4];
   assign s_logisimBus134[5]  = s_logisimBus104[5];
   assign s_logisimBus134[6]  = s_logisimBus104[6];
   assign s_logisimBus134[7]  = s_logisimBus104[7];
   assign s_logisimBus134[8]  = s_logisimBus104[8];
   assign s_logisimBus134[9]  = s_logisimBus104[9];
   assign s_logisimBus135[0]  = s_logisimBus104[23];
   assign s_logisimBus135[1]  = s_logisimBus104[24];
   assign s_logisimBus135[2]  = s_logisimBus104[25];
   assign s_logisimBus135[3]  = s_logisimBus104[26];
   assign s_logisimBus135[4]  = s_logisimBus104[27];
   assign s_logisimBus135[5]  = s_logisimBus104[28];
   assign s_logisimBus135[6]  = s_logisimBus104[29];
   assign s_logisimBus135[7]  = s_logisimBus104[30];
   assign s_logisimBus136[0]  = s_logisimBus92[23];
   assign s_logisimBus136[1]  = s_logisimBus92[24];
   assign s_logisimBus136[2]  = s_logisimBus92[25];
   assign s_logisimBus136[3]  = s_logisimBus92[26];
   assign s_logisimBus136[4]  = s_logisimBus92[27];
   assign s_logisimBus136[5]  = s_logisimBus92[28];
   assign s_logisimBus136[6]  = s_logisimBus92[29];
   assign s_logisimBus136[7]  = s_logisimBus92[30];
   assign s_logisimBus16[0]   = s_logisimBus134[0];
   assign s_logisimBus16[10]  = s_logisimBus134[10];
   assign s_logisimBus16[11]  = s_logisimBus134[11];
   assign s_logisimBus16[12]  = s_logisimBus134[12];
   assign s_logisimBus16[13]  = s_logisimBus134[13];
   assign s_logisimBus16[14]  = s_logisimBus134[14];
   assign s_logisimBus16[15]  = s_logisimBus134[15];
   assign s_logisimBus16[16]  = s_logisimBus134[16];
   assign s_logisimBus16[17]  = s_logisimBus134[17];
   assign s_logisimBus16[18]  = s_logisimBus134[18];
   assign s_logisimBus16[19]  = s_logisimBus134[19];
   assign s_logisimBus16[1]   = s_logisimBus134[1];
   assign s_logisimBus16[20]  = s_logisimBus134[20];
   assign s_logisimBus16[21]  = s_logisimBus134[21];
   assign s_logisimBus16[22]  = s_logisimBus134[22];
   assign s_logisimBus16[23]  = s_logisimNet130;
   assign s_logisimBus16[2]   = s_logisimBus134[2];
   assign s_logisimBus16[3]   = s_logisimBus134[3];
   assign s_logisimBus16[4]   = s_logisimBus134[4];
   assign s_logisimBus16[5]   = s_logisimBus134[5];
   assign s_logisimBus16[6]   = s_logisimBus134[6];
   assign s_logisimBus16[7]   = s_logisimBus134[7];
   assign s_logisimBus16[8]   = s_logisimBus134[8];
   assign s_logisimBus16[9]   = s_logisimBus134[9];
   assign s_logisimBus20[0]   = s_logisimBus135[0];
   assign s_logisimBus20[1]   = s_logisimBus135[1];
   assign s_logisimBus20[2]   = s_logisimBus135[2];
   assign s_logisimBus20[3]   = s_logisimBus135[3];
   assign s_logisimBus20[4]   = s_logisimBus135[4];
   assign s_logisimBus20[5]   = s_logisimBus135[5];
   assign s_logisimBus20[6]   = s_logisimBus135[6];
   assign s_logisimBus20[7]   = s_logisimBus135[7];
   assign s_logisimBus23[0]   = s_logisimBus135[0];
   assign s_logisimBus23[1]   = s_logisimBus135[1];
   assign s_logisimBus23[2]   = s_logisimBus135[2];
   assign s_logisimBus23[3]   = s_logisimBus135[3];
   assign s_logisimBus23[4]   = s_logisimBus135[4];
   assign s_logisimBus23[5]   = s_logisimBus135[5];
   assign s_logisimBus23[6]   = s_logisimBus135[6];
   assign s_logisimBus23[7]   = s_logisimBus135[7];
   assign s_logisimBus28[0]   = s_logisimBus134[0];
   assign s_logisimBus28[10]  = s_logisimBus134[10];
   assign s_logisimBus28[11]  = s_logisimBus134[11];
   assign s_logisimBus28[12]  = s_logisimBus134[12];
   assign s_logisimBus28[13]  = s_logisimBus134[13];
   assign s_logisimBus28[14]  = s_logisimBus134[14];
   assign s_logisimBus28[15]  = s_logisimBus134[15];
   assign s_logisimBus28[16]  = s_logisimBus134[16];
   assign s_logisimBus28[17]  = s_logisimBus134[17];
   assign s_logisimBus28[18]  = s_logisimBus134[18];
   assign s_logisimBus28[19]  = s_logisimBus134[19];
   assign s_logisimBus28[1]   = s_logisimBus134[1];
   assign s_logisimBus28[20]  = s_logisimBus134[20];
   assign s_logisimBus28[21]  = s_logisimBus134[21];
   assign s_logisimBus28[22]  = s_logisimBus134[22];
   assign s_logisimBus28[2]   = s_logisimBus134[2];
   assign s_logisimBus28[3]   = s_logisimBus134[3];
   assign s_logisimBus28[4]   = s_logisimBus134[4];
   assign s_logisimBus28[5]   = s_logisimBus134[5];
   assign s_logisimBus28[6]   = s_logisimBus134[6];
   assign s_logisimBus28[7]   = s_logisimBus134[7];
   assign s_logisimBus28[8]   = s_logisimBus134[8];
   assign s_logisimBus28[9]   = s_logisimBus134[9];
   assign s_logisimBus41[0]   = s_logisimBus132[0];
   assign s_logisimBus41[10]  = s_logisimBus132[10];
   assign s_logisimBus41[11]  = s_logisimBus132[11];
   assign s_logisimBus41[12]  = s_logisimBus132[12];
   assign s_logisimBus41[13]  = s_logisimBus132[13];
   assign s_logisimBus41[14]  = s_logisimBus132[14];
   assign s_logisimBus41[15]  = s_logisimBus132[15];
   assign s_logisimBus41[16]  = s_logisimBus132[16];
   assign s_logisimBus41[17]  = s_logisimBus132[17];
   assign s_logisimBus41[18]  = s_logisimBus132[18];
   assign s_logisimBus41[19]  = s_logisimBus132[19];
   assign s_logisimBus41[1]   = s_logisimBus132[1];
   assign s_logisimBus41[20]  = s_logisimBus132[20];
   assign s_logisimBus41[21]  = s_logisimBus132[21];
   assign s_logisimBus41[22]  = s_logisimBus132[22];
   assign s_logisimBus41[23]  = s_logisimNet133;
   assign s_logisimBus41[2]   = s_logisimBus132[2];
   assign s_logisimBus41[3]   = s_logisimBus132[3];
   assign s_logisimBus41[4]   = s_logisimBus132[4];
   assign s_logisimBus41[5]   = s_logisimBus132[5];
   assign s_logisimBus41[6]   = s_logisimBus132[6];
   assign s_logisimBus41[7]   = s_logisimBus132[7];
   assign s_logisimBus41[8]   = s_logisimBus132[8];
   assign s_logisimBus41[9]   = s_logisimBus132[9];
   assign s_logisimBus45[0]   = s_logisimBus132[0];
   assign s_logisimBus45[10]  = s_logisimBus132[10];
   assign s_logisimBus45[11]  = s_logisimBus132[11];
   assign s_logisimBus45[12]  = s_logisimBus132[12];
   assign s_logisimBus45[13]  = s_logisimBus132[13];
   assign s_logisimBus45[14]  = s_logisimBus132[14];
   assign s_logisimBus45[15]  = s_logisimBus132[15];
   assign s_logisimBus45[16]  = s_logisimBus132[16];
   assign s_logisimBus45[17]  = s_logisimBus132[17];
   assign s_logisimBus45[18]  = s_logisimBus132[18];
   assign s_logisimBus45[19]  = s_logisimBus132[19];
   assign s_logisimBus45[1]   = s_logisimBus132[1];
   assign s_logisimBus45[20]  = s_logisimBus132[20];
   assign s_logisimBus45[21]  = s_logisimBus132[21];
   assign s_logisimBus45[22]  = s_logisimBus132[22];
   assign s_logisimBus45[2]   = s_logisimBus132[2];
   assign s_logisimBus45[3]   = s_logisimBus132[3];
   assign s_logisimBus45[4]   = s_logisimBus132[4];
   assign s_logisimBus45[5]   = s_logisimBus132[5];
   assign s_logisimBus45[6]   = s_logisimBus132[6];
   assign s_logisimBus45[7]   = s_logisimBus132[7];
   assign s_logisimBus45[8]   = s_logisimBus132[8];
   assign s_logisimBus45[9]   = s_logisimBus132[9];
   assign s_logisimBus48[0]   = s_logisimBus136[0];
   assign s_logisimBus48[1]   = s_logisimBus136[1];
   assign s_logisimBus48[2]   = s_logisimBus136[2];
   assign s_logisimBus48[3]   = s_logisimBus136[3];
   assign s_logisimBus48[4]   = s_logisimBus136[4];
   assign s_logisimBus48[5]   = s_logisimBus136[5];
   assign s_logisimBus48[6]   = s_logisimBus136[6];
   assign s_logisimBus48[7]   = s_logisimBus136[7];
   assign s_logisimBus4[0]    = s_logisimBus132[0];
   assign s_logisimBus4[10]   = s_logisimBus132[10];
   assign s_logisimBus4[11]   = s_logisimBus132[11];
   assign s_logisimBus4[12]   = s_logisimBus132[12];
   assign s_logisimBus4[13]   = s_logisimBus132[13];
   assign s_logisimBus4[14]   = s_logisimBus132[14];
   assign s_logisimBus4[15]   = s_logisimBus132[15];
   assign s_logisimBus4[16]   = s_logisimBus132[16];
   assign s_logisimBus4[17]   = s_logisimBus132[17];
   assign s_logisimBus4[18]   = s_logisimBus132[18];
   assign s_logisimBus4[19]   = s_logisimBus132[19];
   assign s_logisimBus4[1]    = s_logisimBus132[1];
   assign s_logisimBus4[20]   = s_logisimBus132[20];
   assign s_logisimBus4[21]   = s_logisimBus132[21];
   assign s_logisimBus4[22]   = s_logisimBus132[22];
   assign s_logisimBus4[23]   = s_logisimNet133;
   assign s_logisimBus4[2]    = s_logisimBus132[2];
   assign s_logisimBus4[3]    = s_logisimBus132[3];
   assign s_logisimBus4[4]    = s_logisimBus132[4];
   assign s_logisimBus4[5]    = s_logisimBus132[5];
   assign s_logisimBus4[6]    = s_logisimBus132[6];
   assign s_logisimBus4[7]    = s_logisimBus132[7];
   assign s_logisimBus4[8]    = s_logisimBus132[8];
   assign s_logisimBus4[9]    = s_logisimBus132[9];
   assign s_logisimBus61[0]   = s_logisimBus136[0];
   assign s_logisimBus61[1]   = s_logisimBus136[1];
   assign s_logisimBus61[2]   = s_logisimBus136[2];
   assign s_logisimBus61[3]   = s_logisimBus136[3];
   assign s_logisimBus61[4]   = s_logisimBus136[4];
   assign s_logisimBus61[5]   = s_logisimBus136[5];
   assign s_logisimBus61[6]   = s_logisimBus136[6];
   assign s_logisimBus61[7]   = s_logisimBus136[7];
   assign s_logisimBus72[0]   = s_logisimBus136[0];
   assign s_logisimBus72[1]   = s_logisimBus136[1];
   assign s_logisimBus72[2]   = s_logisimBus136[2];
   assign s_logisimBus72[3]   = s_logisimBus136[3];
   assign s_logisimBus72[4]   = s_logisimBus136[4];
   assign s_logisimBus72[5]   = s_logisimBus136[5];
   assign s_logisimBus72[6]   = s_logisimBus136[6];
   assign s_logisimBus72[7]   = s_logisimBus136[7];
   assign s_logisimBus84[0]   = s_logisimBus135[0];
   assign s_logisimBus84[1]   = s_logisimBus135[1];
   assign s_logisimBus84[2]   = s_logisimBus135[2];
   assign s_logisimBus84[3]   = s_logisimBus135[3];
   assign s_logisimBus84[4]   = s_logisimBus135[4];
   assign s_logisimBus84[5]   = s_logisimBus135[5];
   assign s_logisimBus84[6]   = s_logisimBus135[6];
   assign s_logisimBus84[7]   = s_logisimBus135[7];
   assign s_logisimBus86[0]   = s_logisimBus134[0];
   assign s_logisimBus86[10]  = s_logisimBus134[10];
   assign s_logisimBus86[11]  = s_logisimBus134[11];
   assign s_logisimBus86[12]  = s_logisimBus134[12];
   assign s_logisimBus86[13]  = s_logisimBus134[13];
   assign s_logisimBus86[14]  = s_logisimBus134[14];
   assign s_logisimBus86[15]  = s_logisimBus134[15];
   assign s_logisimBus86[16]  = s_logisimBus134[16];
   assign s_logisimBus86[17]  = s_logisimBus134[17];
   assign s_logisimBus86[18]  = s_logisimBus134[18];
   assign s_logisimBus86[19]  = s_logisimBus134[19];
   assign s_logisimBus86[1]   = s_logisimBus134[1];
   assign s_logisimBus86[20]  = s_logisimBus134[20];
   assign s_logisimBus86[21]  = s_logisimBus134[21];
   assign s_logisimBus86[22]  = s_logisimBus134[22];
   assign s_logisimBus86[2]   = s_logisimBus134[2];
   assign s_logisimBus86[3]   = s_logisimBus134[3];
   assign s_logisimBus86[4]   = s_logisimBus134[4];
   assign s_logisimBus86[5]   = s_logisimBus134[5];
   assign s_logisimBus86[6]   = s_logisimBus134[6];
   assign s_logisimBus86[7]   = s_logisimBus134[7];
   assign s_logisimBus86[8]   = s_logisimBus134[8];
   assign s_logisimBus86[9]   = s_logisimBus134[9];
   assign s_logisimBus8[0]    = s_logisimBus135[0];
   assign s_logisimBus8[1]    = s_logisimBus135[1];
   assign s_logisimBus8[2]    = s_logisimBus135[2];
   assign s_logisimBus8[3]    = s_logisimBus135[3];
   assign s_logisimBus8[4]    = s_logisimBus135[4];
   assign s_logisimBus8[5]    = s_logisimBus135[5];
   assign s_logisimBus8[6]    = s_logisimBus135[6];
   assign s_logisimBus8[7]    = s_logisimBus135[7];
   assign s_logisimBus9[0]    = s_logisimBus134[0];
   assign s_logisimBus9[10]   = s_logisimBus134[10];
   assign s_logisimBus9[11]   = s_logisimBus134[11];
   assign s_logisimBus9[12]   = s_logisimBus134[12];
   assign s_logisimBus9[13]   = s_logisimBus134[13];
   assign s_logisimBus9[14]   = s_logisimBus134[14];
   assign s_logisimBus9[15]   = s_logisimBus134[15];
   assign s_logisimBus9[16]   = s_logisimBus134[16];
   assign s_logisimBus9[17]   = s_logisimBus134[17];
   assign s_logisimBus9[18]   = s_logisimBus134[18];
   assign s_logisimBus9[19]   = s_logisimBus134[19];
   assign s_logisimBus9[1]    = s_logisimBus134[1];
   assign s_logisimBus9[20]   = s_logisimBus134[20];
   assign s_logisimBus9[21]   = s_logisimBus134[21];
   assign s_logisimBus9[22]   = s_logisimBus134[22];
   assign s_logisimBus9[23]   = s_logisimNet130;
   assign s_logisimBus9[2]    = s_logisimBus134[2];
   assign s_logisimBus9[3]    = s_logisimBus134[3];
   assign s_logisimBus9[4]    = s_logisimBus134[4];
   assign s_logisimBus9[5]    = s_logisimBus134[5];
   assign s_logisimBus9[6]    = s_logisimBus134[6];
   assign s_logisimBus9[7]    = s_logisimBus134[7];
   assign s_logisimBus9[8]    = s_logisimBus134[8];
   assign s_logisimBus9[9]    = s_logisimBus134[9];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus104[31:0] = b;
   assign s_logisimBus92[31:0]  = a;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign res = s_logisimBus113[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus72[8]  =  1'b0;


   // Constant
   assign  s_logisimBus56[6]  =  1'b0;


   // Constant
   assign  s_logisimBus8[8]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus6[0]  =  s_logisimBus56[0];
   assign  s_logisimBus6[1]  =  s_logisimBus56[1];
   assign  s_logisimBus6[2]  =  s_logisimBus56[2];
   assign  s_logisimBus6[3]  =  s_logisimBus56[3];
   assign  s_logisimBus6[4]  =  s_logisimBus56[4];
   assign  s_logisimBus6[5]  =  s_logisimBus56[5];
   assign  s_logisimBus6[6]  =  s_logisimBus56[6];
   assign  s_logisimBus6[7]  =  1'b0;
   assign  s_logisimBus6[8]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus94[0]  =  s_logisimBus56[0];
   assign  s_logisimBus94[1]  =  s_logisimBus56[1];
   assign  s_logisimBus94[2]  =  s_logisimBus56[2];
   assign  s_logisimBus94[3]  =  s_logisimBus56[3];
   assign  s_logisimBus94[4]  =  s_logisimBus56[4];
   assign  s_logisimBus94[5]  =  s_logisimBus56[5];
   assign  s_logisimBus94[6]  =  1'b0;
   assign  s_logisimBus94[7]  =  1'b0;


   // Constant
   assign  s_logisimBus23[8]  =  1'b0;


   // Constant
   assign  s_logisimBus45[23]  =  1'b0;


   // Constant
   assign  s_logisimBus86[23]  =  1'b0;


   // Constant
   assign  s_logisimBus123[23]  =  1'b0;


   // Constant
   assign  s_logisimBus43[8:0]  =  {1'b0, 8'h00};


   // Constant
   assign  s_logisimBus121[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus61[8]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus55[0]  =  s_logisimBus68[0];
   assign  s_logisimBus55[1]  =  s_logisimBus68[1];
   assign  s_logisimBus55[2]  =  s_logisimBus68[2];
   assign  s_logisimBus55[3]  =  s_logisimBus68[3];
   assign  s_logisimBus55[4]  =  s_logisimBus68[4];
   assign  s_logisimBus55[5]  =  s_logisimBus68[5];
   assign  s_logisimBus55[6]  =  s_logisimBus68[6];
   assign  s_logisimBus55[7]  =  s_logisimBus68[7];
   assign  s_logisimBus55[8]  =  s_logisimBus68[8];
   assign  s_logisimBus55[9]  =  s_logisimBus68[9];
   assign  s_logisimBus55[10]  =  s_logisimBus68[10];
   assign  s_logisimBus55[11]  =  s_logisimBus68[11];
   assign  s_logisimBus55[12]  =  s_logisimBus68[12];
   assign  s_logisimBus55[13]  =  s_logisimBus68[13];
   assign  s_logisimBus55[14]  =  s_logisimBus68[14];
   assign  s_logisimBus55[15]  =  s_logisimBus68[15];
   assign  s_logisimBus55[16]  =  s_logisimBus68[16];
   assign  s_logisimBus55[17]  =  s_logisimBus68[17];
   assign  s_logisimBus55[18]  =  s_logisimBus68[18];
   assign  s_logisimBus55[19]  =  s_logisimBus68[19];
   assign  s_logisimBus55[20]  =  s_logisimBus68[20];
   assign  s_logisimBus55[21]  =  s_logisimBus68[21];
   assign  s_logisimBus55[22]  =  s_logisimBus68[22];
   assign  s_logisimBus55[23]  =  s_logisimBus68[23];
   assign  s_logisimBus55[24]  =  1'b0;
   assign  s_logisimBus55[25]  =  1'b0;
   assign  s_logisimBus55[26]  =  1'b0;
   assign  s_logisimBus55[27]  =  1'b0;
   assign  s_logisimBus55[28]  =  1'b0;
   assign  s_logisimBus55[29]  =  1'b0;
   assign  s_logisimBus55[30]  =  1'b0;
   assign  s_logisimBus55[31]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus3[0]  =  s_logisimBus81[0];
   assign  s_logisimBus3[1]  =  s_logisimBus81[1];
   assign  s_logisimBus3[2]  =  s_logisimBus81[2];
   assign  s_logisimBus3[3]  =  s_logisimBus81[3];
   assign  s_logisimBus3[4]  =  s_logisimBus81[4];
   assign  s_logisimBus3[5]  =  s_logisimBus81[5];
   assign  s_logisimBus3[6]  =  1'b0;
   assign  s_logisimBus3[7]  =  1'b0;
   assign  s_logisimBus3[8]  =  1'b0;
   assign  s_logisimBus3[9]  =  1'b0;
   assign  s_logisimBus3[10]  =  1'b0;
   assign  s_logisimBus3[11]  =  1'b0;
   assign  s_logisimBus3[12]  =  1'b0;
   assign  s_logisimBus3[13]  =  1'b0;
   assign  s_logisimBus3[14]  =  1'b0;
   assign  s_logisimBus3[15]  =  1'b0;
   assign  s_logisimBus3[16]  =  1'b0;
   assign  s_logisimBus3[17]  =  1'b0;
   assign  s_logisimBus3[18]  =  1'b0;
   assign  s_logisimBus3[19]  =  1'b0;
   assign  s_logisimBus3[20]  =  1'b0;
   assign  s_logisimBus3[21]  =  1'b0;
   assign  s_logisimBus3[22]  =  1'b0;
   assign  s_logisimBus3[23]  =  1'b0;
   assign  s_logisimBus3[24]  =  1'b0;
   assign  s_logisimBus3[25]  =  1'b0;
   assign  s_logisimBus3[26]  =  1'b0;
   assign  s_logisimBus3[27]  =  1'b0;
   assign  s_logisimBus3[28]  =  1'b0;
   assign  s_logisimBus3[29]  =  1'b0;
   assign  s_logisimBus3[30]  =  1'b0;
   assign  s_logisimBus3[31]  =  1'b0;


   // Constant
   assign  s_logisimBus84[8]  =  1'b0;


   // Constant
   assign  s_logisimBus28[23]  =  1'b0;


   // Constant
   assign  s_logisimBus59[5]  =  1'b0;


   // Constant
   assign  s_logisimBus74[5:0]  =  {2'b01, 4'h8};


   // Constant
   assign  s_logisimBus114[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimBus47[7:0]  =  8'h3F;


   // Constant
   assign  s_logisimBus87[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus100[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus30[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus52[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus50[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus67[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus97[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus117[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus51[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus63[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus10[8:0]  =  {1'b0, 8'h00};


   // Constant
   assign  s_logisimNet101  =  1'b1;


   // Constant
   assign  s_logisimNet14  =  1'b0;


   // Constant
   assign  s_logisimNet118  =  1'b1;


   // Constant
   assign  s_logisimNet35  =  1'b0;


   // Constant
   assign  s_logisimBus48[8]  =  1'b0;


   // Constant
   assign  s_logisimBus20[8]  =  1'b0;


   // Constant
   assign  s_logisimBus33[31:0]  =  32'h00000000;


   // NOT Gate
   assign s_logisimNet2 = ~s_logisimNet25;

   // NOT Gate
   assign s_logisimNet46 = ~s_logisimNet99;

   // NOT Gate
   assign s_logisimNet112 = ~s_logisimNet66;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet76),
               .input2(s_logisimNet46),
               .result(s_logisimNet26));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet5),
               .input2(s_logisimNet27),
               .result(s_logisimNet85));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet71),
               .input2(s_logisimNet112),
               .result(s_logisimNet36));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet29),
               .input2(s_logisimNet95),
               .result(s_logisimNet89));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet36),
               .input2(s_logisimNet26),
               .result(s_logisimNet15));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet89),
               .input2(s_logisimNet85),
               .result(s_logisimNet80));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus132[22:0]),
                 .muxIn_1(s_logisimBus134[22:0]),
                 .muxOut(s_logisimBus7[22:0]),
                 .sel(s_logisimNet49));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_8 (.enable(1'b1),
                 .muxIn_0(s_logisimBus109[22:0]),
                 .muxIn_1(s_logisimBus7[22:0]),
                 .muxOut(s_logisimBus0[22:0]),
                 .sel(s_logisimNet91));

   Multiplexer_2   PLEXERS_9 (.enable(1'b1),
                              .muxIn_0(s_logisimBus104[31]),
                              .muxIn_1(s_logisimBus92[31]),
                              .muxOut(s_logisimNet106),
                              .sel(s_logisimNet83));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_10 (.enable(1'b1),
                  .muxIn_0(s_logisimBus82[7:0]),
                  .muxIn_1(s_logisimBus135[7:0]),
                  .muxOut(s_logisimBus17[7:0]),
                  .sel(s_logisimNet57));

   Multiplexer_2   PLEXERS_11 (.enable(1'b1),
                               .muxIn_0(s_logisimBus104[31]),
                               .muxIn_1(s_logisimBus92[31]),
                               .muxOut(s_logisimNet98),
                               .sel(s_logisimNet44));

   Multiplexer_2   PLEXERS_12 (.enable(1'b1),
                               .muxIn_0(s_logisimNet106),
                               .muxIn_1(s_logisimNet98),
                               .muxOut(s_logisimNet105),
                               .sel(s_logisimNet32));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_13 (.enable(1'b1),
                  .muxIn_0(s_logisimBus119[7:0]),
                  .muxIn_1(s_logisimBus90[7:0]),
                  .muxOut(s_logisimBus88[7:0]),
                  .sel(s_logisimNet13));

   Multiplexer_2   PLEXERS_14 (.enable(1'b1),
                               .muxIn_0(s_logisimBus92[31]),
                               .muxIn_1(s_logisimBus104[31]),
                               .muxOut(s_logisimNet58),
                               .sel(s_logisimNet49));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_15 (.enable(1'b1),
                  .muxIn_0(s_logisimBus88[7:0]),
                  .muxIn_1(s_logisimBus17[7:0]),
                  .muxOut(s_logisimBus11[7:0]),
                  .sel(s_logisimNet75));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_16 (.enable(1'b1),
                  .muxIn_0(s_logisimBus135[7:0]),
                  .muxIn_1(s_logisimBus136[7:0]),
                  .muxOut(s_logisimBus37[7:0]),
                  .sel(s_logisimNet13));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_17 (.enable(1'b1),
                  .muxIn_0(s_logisimBus136[7:0]),
                  .muxIn_1(s_logisimBus135[7:0]),
                  .muxOut(s_logisimBus22[7:0]),
                  .sel(s_logisimNet13));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_18 (.enable(1'b1),
                  .muxIn_0(s_logisimBus136[7:0]),
                  .muxIn_1(s_logisimBus135[7:0]),
                  .muxOut(s_logisimBus70[7:0]),
                  .sel(s_logisimNet49));

   Multiplexer_2   PLEXERS_19 (.enable(1'b1),
                               .muxIn_0(s_logisimNet105),
                               .muxIn_1(s_logisimNet58),
                               .muxOut(s_logisimBus0[31]),
                               .sel(s_logisimNet91));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_20 (.enable(1'b1),
                  .muxIn_0(s_logisimBus11[7:0]),
                  .muxIn_1(s_logisimBus70[7:0]),
                  .muxOut(s_logisimBus0[30:23]),
                  .sel(s_logisimNet91));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_21 (.enable(1'b1),
                  .muxIn_0(s_logisimBus68[22:0]),
                  .muxIn_1(s_logisimBus77[23:1]),
                  .muxOut(s_logisimBus93[22:0]),
                  .sel(s_logisimNet2));

   Multiplexer_bus_2 #(.nrOfBits(24))
      PLEXERS_22 (.enable(1'b1),
                  .muxIn_0(s_logisimBus24[23:0]),
                  .muxIn_1(s_logisimBus120[23:0]),
                  .muxOut(s_logisimBus68[23:0]),
                  .sel(s_logisimNet38));

   Multiplexer_2   PLEXERS_23 (.enable(1'b1),
                               .muxIn_0(s_logisimNet101),
                               .muxIn_1(s_logisimNet14),
                               .muxOut(s_logisimNet130),
                               .sel(s_logisimNet65));

   Multiplexer_2   PLEXERS_24 (.enable(1'b1),
                               .muxIn_0(s_logisimNet118),
                               .muxIn_1(s_logisimNet35),
                               .muxOut(s_logisimNet133),
                               .sel(s_logisimNet78));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_25 (.enable(1'b1),
                  .muxIn_0(s_logisimBus0[31:0]),
                  .muxIn_1(s_logisimBus33[31:0]),
                  .muxOut(s_logisimBus113[31:0]),
                  .sel(s_logisimNet79));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_26 (.enable(1'b1),
                  .muxIn_0(s_logisimBus93[22:0]),
                  .muxIn_1(s_logisimBus68[22:0]),
                  .muxOut(s_logisimBus42[22:0]),
                  .sel(s_logisimNet40));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_27 (.enable(1'b1),
                  .muxIn_0(s_logisimBus111[22:0]),
                  .muxIn_1(s_logisimBus69[22:0]),
                  .muxOut(s_logisimBus21[22:0]),
                  .sel(s_logisimNet1));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_28 (.enable(1'b1),
                  .muxIn_0(s_logisimBus21[22:0]),
                  .muxIn_1(s_logisimBus42[22:0]),
                  .muxOut(s_logisimBus109[22:0]),
                  .sel(s_logisimNet12));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_29 (.aEqualsB(s_logisimNet32),
                .aGreaterThanB(s_logisimNet83),
                .aLessThanB(),
                .dataA(s_logisimBus72[8:0]),
                .dataB(s_logisimBus8[8:0]));

   Subtractor #(.extendedBits(10),
                .nrOfBits(9))
      ARITH_30 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus23[8:0]),
                .dataB(s_logisimBus6[8:0]),
                .result(s_logisimBus110[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_31 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet57),
                .dataA(s_logisimBus110[8:0]),
                .dataB(s_logisimBus43[8:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_32 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus135[7:0]),
                .dataB(s_logisimBus94[7:0]),
                .result(s_logisimBus82[7:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_33 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet44),
                .aLessThanB(),
                .dataA(s_logisimBus45[23:0]),
                .dataB(s_logisimBus86[23:0]));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_34 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus56[5:0]),
                .dataB(s_logisimBus121[5:0]),
                .result(s_logisimBus81[5:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_35 (.aEqualsB(s_logisimNet75),
                .aGreaterThanB(s_logisimNet13),
                .aLessThanB(s_logisimNet49),
                .dataA(s_logisimBus61[8:0]),
                .dataB(s_logisimBus84[8:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_36 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus74[5:0]),
                .dataB(s_logisimBus59[5:0]),
                .result(s_logisimBus56[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_37 (.aEqualsB(s_logisimNet25),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus56[5:0]),
                .dataB(s_logisimBus114[5:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_38 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus37[7:0]),
                .dataB(s_logisimBus22[7:0]),
                .result(s_logisimBus103[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_39 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet91),
                .aLessThanB(),
                .dataA(s_logisimBus103[7:0]),
                .dataB(s_logisimBus47[7:0]));

   Subtractor #(.extendedBits(25),
                .nrOfBits(24))
      ARITH_40 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus4[23:0]),
                .dataB(s_logisimBus16[23:0]),
                .result(s_logisimBus24[23:0]));

   Subtractor #(.extendedBits(25),
                .nrOfBits(24))
      ARITH_41 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus9[23:0]),
                .dataB(s_logisimBus41[23:0]),
                .result(s_logisimBus120[23:0]));

   Comparator #(.nrOfBits(24),
                .twosComplement(1))
      ARITH_42 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet38),
                .dataA(s_logisimBus123[23:0]),
                .dataB(s_logisimBus28[23:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_43 (.aEqualsB(s_logisimNet99),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus134[22:0]),
                .dataB(s_logisimBus100[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_44 (.aEqualsB(s_logisimNet27),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus134[22:0]),
                .dataB(s_logisimBus52[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_45 (.aEqualsB(s_logisimNet66),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus132[22:0]),
                .dataB(s_logisimBus67[22:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_46 (.aEqualsB(s_logisimNet76),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus135[7:0]),
                .dataB(s_logisimBus87[7:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_47 (.aEqualsB(s_logisimNet95),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus132[22:0]),
                .dataB(s_logisimBus117[22:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_48 (.aEqualsB(s_logisimNet5),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus135[7:0]),
                .dataB(s_logisimBus30[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_49 (.aEqualsB(s_logisimNet71),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus136[7:0]),
                .dataB(s_logisimBus50[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_50 (.aEqualsB(s_logisimNet29),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus136[7:0]),
                .dataB(s_logisimBus97[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_51 (.aEqualsB(s_logisimNet65),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus135[7:0]),
                .dataB(s_logisimBus51[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_52 (.aEqualsB(s_logisimNet78),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus136[7:0]),
                .dataB(s_logisimBus63[7:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_53 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet40),
                .dataA(s_logisimBus110[8:0]),
                .dataB(s_logisimBus10[8:0]));

   Comparator #(.nrOfBits(31),
                .twosComplement(1))
      ARITH_54 (.aEqualsB(s_logisimNet79),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus92[30:0]),
                .dataB(s_logisimBus104[30:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_55 (.aEqualsB(s_logisimNet12),
                .aGreaterThanB(s_logisimNet1),
                .aLessThanB(),
                .dataA(s_logisimBus48[8:0]),
                .dataB(s_logisimBus20[8:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   substract   v16 (.exponent_a(s_logisimBus136[7:0]),
                    .exponent_b(s_logisimBus135[7:0]),
                    .exponent_result(s_logisimBus90[7:0]),
                    .fraction_a(s_logisimBus132[22:0]),
                    .fraction_b(s_logisimBus134[22:0]),
                    .fraction_result(s_logisimBus69[22:0]),
                    .sub_normal_b(s_logisimNet130));

   SLLL   v19 (.a(s_logisimBus55[31:0]),
               .b(s_logisimBus3[31:0]),
               .res_high(),
               .res_low(s_logisimBus77[31:0]));

   bitOne   v18 (.a(s_logisimBus68[23:0]),
                 .res(s_logisimBus59[4:0]));

   substract   v17 (.exponent_a(s_logisimBus135[7:0]),
                    .exponent_b(s_logisimBus136[7:0]),
                    .exponent_result(s_logisimBus119[7:0]),
                    .fraction_a(s_logisimBus134[22:0]),
                    .fraction_b(s_logisimBus132[22:0]),
                    .fraction_result(s_logisimBus111[22:0]),
                    .sub_normal_b(s_logisimNet133));

endmodule
