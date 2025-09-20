/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : substract                                                    **
 **                                                                          **
 *****************************************************************************/

module substract( exponent_a,
                  exponent_b,
                  exponent_result,
                  fraction_a,
                  fraction_b,
                  fraction_result,
                  sub_normal_b );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0]  exponent_a;
   input [7:0]  exponent_b;
   input [22:0] fraction_a;
   input [22:0] fraction_b;
   input        sub_normal_b;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0]  exponent_result;
   output [22:0] fraction_result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [63:0] s_logisimBus10;
   wire [7:0]  s_logisimBus100;
   wire [4:0]  s_logisimBus102;
   wire [63:0] s_logisimBus107;
   wire [31:0] s_logisimBus110;
   wire [63:0] s_logisimBus111;
   wire [31:0] s_logisimBus112;
   wire [4:0]  s_logisimBus115;
   wire [5:0]  s_logisimBus117;
   wire [5:0]  s_logisimBus118;
   wire [5:0]  s_logisimBus119;
   wire [5:0]  s_logisimBus120;
   wire [5:0]  s_logisimBus121;
   wire [5:0]  s_logisimBus122;
   wire [5:0]  s_logisimBus123;
   wire [5:0]  s_logisimBus124;
   wire [5:0]  s_logisimBus125;
   wire [5:0]  s_logisimBus126;
   wire [5:0]  s_logisimBus13;
   wire [7:0]  s_logisimBus130;
   wire [7:0]  s_logisimBus131;
   wire [22:0] s_logisimBus132;
   wire [5:0]  s_logisimBus136;
   wire [5:0]  s_logisimBus137;
   wire [5:0]  s_logisimBus138;
   wire [5:0]  s_logisimBus139;
   wire [2:0]  s_logisimBus14;
   wire [5:0]  s_logisimBus140;
   wire [5:0]  s_logisimBus141;
   wire [5:0]  s_logisimBus142;
   wire [5:0]  s_logisimBus143;
   wire [5:0]  s_logisimBus144;
   wire [5:0]  s_logisimBus145;
   wire [4:0]  s_logisimBus146;
   wire [31:0] s_logisimBus147;
   wire [7:0]  s_logisimBus148;
   wire [63:0] s_logisimBus15;
   wire [31:0] s_logisimBus152;
   wire [5:0]  s_logisimBus155;
   wire [5:0]  s_logisimBus156;
   wire [5:0]  s_logisimBus157;
   wire [5:0]  s_logisimBus158;
   wire [5:0]  s_logisimBus16;
   wire [31:0] s_logisimBus160;
   wire [7:0]  s_logisimBus161;
   wire [22:0] s_logisimBus162;
   wire [22:0] s_logisimBus164;
   wire [5:0]  s_logisimBus166;
   wire [5:0]  s_logisimBus167;
   wire [5:0]  s_logisimBus168;
   wire [7:0]  s_logisimBus169;
   wire [63:0] s_logisimBus17;
   wire [5:0]  s_logisimBus171;
   wire [5:0]  s_logisimBus173;
   wire [5:0]  s_logisimBus174;
   wire [31:0] s_logisimBus175;
   wire [5:0]  s_logisimBus176;
   wire [5:0]  s_logisimBus177;
   wire [5:0]  s_logisimBus178;
   wire [5:0]  s_logisimBus179;
   wire [5:0]  s_logisimBus180;
   wire [5:0]  s_logisimBus181;
   wire [5:0]  s_logisimBus182;
   wire [5:0]  s_logisimBus183;
   wire [5:0]  s_logisimBus184;
   wire [5:0]  s_logisimBus185;
   wire [63:0] s_logisimBus186;
   wire [22:0] s_logisimBus187;
   wire [7:0]  s_logisimBus19;
   wire [7:0]  s_logisimBus2;
   wire [22:0] s_logisimBus21;
   wire [5:0]  s_logisimBus22;
   wire [63:0] s_logisimBus25;
   wire [31:0] s_logisimBus26;
   wire [5:0]  s_logisimBus29;
   wire [5:0]  s_logisimBus3;
   wire [5:0]  s_logisimBus30;
   wire [5:0]  s_logisimBus31;
   wire [5:0]  s_logisimBus32;
   wire [5:0]  s_logisimBus33;
   wire [5:0]  s_logisimBus34;
   wire [5:0]  s_logisimBus35;
   wire [5:0]  s_logisimBus36;
   wire [5:0]  s_logisimBus37;
   wire [5:0]  s_logisimBus38;
   wire [22:0] s_logisimBus39;
   wire [31:0] s_logisimBus4;
   wire [5:0]  s_logisimBus40;
   wire [31:0] s_logisimBus41;
   wire [23:0] s_logisimBus42;
   wire [5:0]  s_logisimBus43;
   wire [63:0] s_logisimBus44;
   wire [5:0]  s_logisimBus45;
   wire [22:0] s_logisimBus48;
   wire [5:0]  s_logisimBus49;
   wire [63:0] s_logisimBus53;
   wire [5:0]  s_logisimBus55;
   wire [63:0] s_logisimBus56;
   wire [5:0]  s_logisimBus57;
   wire [2:0]  s_logisimBus58;
   wire [5:0]  s_logisimBus6;
   wire [7:0]  s_logisimBus62;
   wire [5:0]  s_logisimBus63;
   wire [5:0]  s_logisimBus64;
   wire [5:0]  s_logisimBus65;
   wire [31:0] s_logisimBus66;
   wire [5:0]  s_logisimBus7;
   wire [5:0]  s_logisimBus70;
   wire [63:0] s_logisimBus71;
   wire [7:0]  s_logisimBus75;
   wire [31:0] s_logisimBus76;
   wire [63:0] s_logisimBus78;
   wire [31:0] s_logisimBus80;
   wire [63:0] s_logisimBus81;
   wire [5:0]  s_logisimBus83;
   wire [63:0] s_logisimBus86;
   wire [63:0] s_logisimBus88;
   wire [5:0]  s_logisimBus89;
   wire [63:0] s_logisimBus90;
   wire [5:0]  s_logisimBus91;
   wire [5:0]  s_logisimBus92;
   wire [5:0]  s_logisimBus93;
   wire [5:0]  s_logisimBus94;
   wire [7:0]  s_logisimBus95;
   wire [31:0] s_logisimBus96;
   wire [5:0]  s_logisimBus97;
   wire        s_logisimNet1;
   wire        s_logisimNet101;
   wire        s_logisimNet103;
   wire        s_logisimNet105;
   wire        s_logisimNet106;
   wire        s_logisimNet108;
   wire        s_logisimNet109;
   wire        s_logisimNet11;
   wire        s_logisimNet113;
   wire        s_logisimNet114;
   wire        s_logisimNet116;
   wire        s_logisimNet12;
   wire        s_logisimNet127;
   wire        s_logisimNet128;
   wire        s_logisimNet129;
   wire        s_logisimNet133;
   wire        s_logisimNet151;
   wire        s_logisimNet153;
   wire        s_logisimNet154;
   wire        s_logisimNet159;
   wire        s_logisimNet163;
   wire        s_logisimNet170;
   wire        s_logisimNet18;
   wire        s_logisimNet23;
   wire        s_logisimNet27;
   wire        s_logisimNet28;
   wire        s_logisimNet47;
   wire        s_logisimNet5;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet52;
   wire        s_logisimNet54;
   wire        s_logisimNet59;
   wire        s_logisimNet60;
   wire        s_logisimNet61;
   wire        s_logisimNet67;
   wire        s_logisimNet68;
   wire        s_logisimNet72;
   wire        s_logisimNet73;
   wire        s_logisimNet74;
   wire        s_logisimNet77;
   wire        s_logisimNet8;
   wire        s_logisimNet82;
   wire        s_logisimNet84;
   wire        s_logisimNet85;
   wire        s_logisimNet87;
   wire        s_logisimNet9;
   wire        s_logisimNet98;
   wire        s_logisimNet99;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus111[41] = s_logisimBus132[0];
   assign s_logisimBus111[42] = s_logisimBus132[1];
   assign s_logisimBus111[43] = s_logisimBus132[2];
   assign s_logisimBus111[44] = s_logisimBus132[3];
   assign s_logisimBus111[45] = s_logisimBus132[4];
   assign s_logisimBus111[46] = s_logisimBus132[5];
   assign s_logisimBus111[47] = s_logisimBus132[6];
   assign s_logisimBus111[48] = s_logisimBus132[7];
   assign s_logisimBus111[49] = s_logisimBus132[8];
   assign s_logisimBus111[50] = s_logisimBus132[9];
   assign s_logisimBus111[51] = s_logisimBus132[10];
   assign s_logisimBus111[52] = s_logisimBus132[11];
   assign s_logisimBus111[53] = s_logisimBus132[12];
   assign s_logisimBus111[54] = s_logisimBus132[13];
   assign s_logisimBus111[55] = s_logisimBus132[14];
   assign s_logisimBus111[56] = s_logisimBus132[15];
   assign s_logisimBus111[57] = s_logisimBus132[16];
   assign s_logisimBus111[58] = s_logisimBus132[17];
   assign s_logisimBus111[59] = s_logisimBus132[18];
   assign s_logisimBus111[60] = s_logisimBus132[19];
   assign s_logisimBus111[61] = s_logisimBus132[20];
   assign s_logisimBus111[62] = s_logisimBus132[21];
   assign s_logisimBus111[63] = s_logisimBus132[22];
   assign s_logisimBus132[0]  = s_logisimBus71[41];
   assign s_logisimBus132[10] = s_logisimBus71[51];
   assign s_logisimBus132[11] = s_logisimBus71[52];
   assign s_logisimBus132[12] = s_logisimBus71[53];
   assign s_logisimBus132[13] = s_logisimBus71[54];
   assign s_logisimBus132[14] = s_logisimBus71[55];
   assign s_logisimBus132[15] = s_logisimBus71[56];
   assign s_logisimBus132[16] = s_logisimBus71[57];
   assign s_logisimBus132[17] = s_logisimBus71[58];
   assign s_logisimBus132[18] = s_logisimBus71[59];
   assign s_logisimBus132[19] = s_logisimBus71[60];
   assign s_logisimBus132[1]  = s_logisimBus71[42];
   assign s_logisimBus132[20] = s_logisimBus71[61];
   assign s_logisimBus132[21] = s_logisimBus71[62];
   assign s_logisimBus132[22] = s_logisimBus71[63];
   assign s_logisimBus132[2]  = s_logisimBus71[43];
   assign s_logisimBus132[3]  = s_logisimBus71[44];
   assign s_logisimBus132[4]  = s_logisimBus71[45];
   assign s_logisimBus132[5]  = s_logisimBus71[46];
   assign s_logisimBus132[6]  = s_logisimBus71[47];
   assign s_logisimBus132[7]  = s_logisimBus71[48];
   assign s_logisimBus132[8]  = s_logisimBus71[49];
   assign s_logisimBus132[9]  = s_logisimBus71[50];
   assign s_logisimBus42[0]   = s_logisimBus164[0];
   assign s_logisimBus42[10]  = s_logisimBus164[10];
   assign s_logisimBus42[11]  = s_logisimBus164[11];
   assign s_logisimBus42[12]  = s_logisimBus164[12];
   assign s_logisimBus42[13]  = s_logisimBus164[13];
   assign s_logisimBus42[14]  = s_logisimBus164[14];
   assign s_logisimBus42[15]  = s_logisimBus164[15];
   assign s_logisimBus42[16]  = s_logisimBus164[16];
   assign s_logisimBus42[17]  = s_logisimBus164[17];
   assign s_logisimBus42[18]  = s_logisimBus164[18];
   assign s_logisimBus42[19]  = s_logisimBus164[19];
   assign s_logisimBus42[1]   = s_logisimBus164[1];
   assign s_logisimBus42[20]  = s_logisimBus164[20];
   assign s_logisimBus42[21]  = s_logisimBus164[21];
   assign s_logisimBus42[22]  = s_logisimBus164[22];
   assign s_logisimBus42[23]  = s_logisimNet108;
   assign s_logisimBus42[2]   = s_logisimBus164[2];
   assign s_logisimBus42[3]   = s_logisimBus164[3];
   assign s_logisimBus42[4]   = s_logisimBus164[4];
   assign s_logisimBus42[5]   = s_logisimBus164[5];
   assign s_logisimBus42[6]   = s_logisimBus164[6];
   assign s_logisimBus42[7]   = s_logisimBus164[7];
   assign s_logisimBus42[8]   = s_logisimBus164[8];
   assign s_logisimBus42[9]   = s_logisimBus164[9];
   assign s_logisimBus90[40]  = s_logisimBus164[0];
   assign s_logisimBus90[41]  = s_logisimBus164[1];
   assign s_logisimBus90[42]  = s_logisimBus164[2];
   assign s_logisimBus90[43]  = s_logisimBus164[3];
   assign s_logisimBus90[44]  = s_logisimBus164[4];
   assign s_logisimBus90[45]  = s_logisimBus164[5];
   assign s_logisimBus90[46]  = s_logisimBus164[6];
   assign s_logisimBus90[47]  = s_logisimBus164[7];
   assign s_logisimBus90[48]  = s_logisimBus164[8];
   assign s_logisimBus90[49]  = s_logisimBus164[9];
   assign s_logisimBus90[50]  = s_logisimBus164[10];
   assign s_logisimBus90[51]  = s_logisimBus164[11];
   assign s_logisimBus90[52]  = s_logisimBus164[12];
   assign s_logisimBus90[53]  = s_logisimBus164[13];
   assign s_logisimBus90[54]  = s_logisimBus164[14];
   assign s_logisimBus90[55]  = s_logisimBus164[15];
   assign s_logisimBus90[56]  = s_logisimBus164[16];
   assign s_logisimBus90[57]  = s_logisimBus164[17];
   assign s_logisimBus90[58]  = s_logisimBus164[18];
   assign s_logisimBus90[59]  = s_logisimBus164[19];
   assign s_logisimBus90[60]  = s_logisimBus164[20];
   assign s_logisimBus90[61]  = s_logisimBus164[21];
   assign s_logisimBus90[62]  = s_logisimBus164[22];
   assign s_logisimBus90[63]  = s_logisimNet108;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus131[7:0]  = exponent_a;
   assign s_logisimBus164[22:0] = fraction_b;
   assign s_logisimBus53[62:40] = fraction_a;
   assign s_logisimBus95[7:0]   = exponent_b;
   assign s_logisimNet108       = sub_normal_b;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign exponent_result = s_logisimBus2[7:0];
   assign fraction_result = s_logisimBus162[22:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus53[39:0]  =  40'h0000000000;


   // Constant
   assign  s_logisimBus53[63]  =  1'b1;


   // Constant
   assign  s_logisimBus16[5]  =  1'b0;


   // Constant
   assign  s_logisimBus55[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus43[5:0]  =  {2'b01, 4'h8};


   // Constant
   assign  s_logisimBus13[5:0]  =  {2'b10, 4'h7};


   // Constant
   assign  s_logisimBus155[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus63[5:0]  =  {2'b00, 4'h2};


   // Constant
   assign  s_logisimBus156[5:0]  =  {2'b00, 4'h3};


   // Constant
   assign  s_logisimBus64[5:0]  =  {2'b00, 4'h4};


   // Constant
   assign  s_logisimBus157[5:0]  =  {2'b00, 4'h5};


   // Constant
   assign  s_logisimBus65[5:0]  =  {2'b00, 4'h6};


   // Constant
   assign  s_logisimBus177[5:0]  =  {2'b00, 4'h7};


   // Constant
   assign  s_logisimBus119[5:0]  =  {2'b00, 4'h8};


   // Constant
   assign  s_logisimBus178[5:0]  =  {2'b00, 4'h9};


   // Constant
   assign  s_logisimBus118[5:0]  =  {2'b00, 4'hA};


   // Constant
   assign  s_logisimBus179[5:0]  =  {2'b00, 4'hB};


   // Constant
   assign  s_logisimBus120[5:0]  =  {2'b00, 4'hC};


   // Constant
   assign  s_logisimBus176[5:0]  =  {2'b00, 4'hD};


   // Constant
   assign  s_logisimBus117[5:0]  =  {2'b00, 4'hE};


   // Constant
   assign  s_logisimBus180[5:0]  =  {2'b00, 4'hF};


   // Constant
   assign  s_logisimBus121[5:0]  =  {2'b01, 4'h0};


   // Constant
   assign  s_logisimBus181[5:0]  =  {2'b01, 4'h1};


   // Constant
   assign  s_logisimBus122[5:0]  =  {2'b01, 4'h2};


   // Constant
   assign  s_logisimBus182[5:0]  =  {2'b01, 4'h3};


   // Constant
   assign  s_logisimBus123[5:0]  =  {2'b01, 4'h4};


   // Constant
   assign  s_logisimBus183[5:0]  =  {2'b01, 4'h5};


   // Constant
   assign  s_logisimBus124[5:0]  =  {2'b01, 4'h6};


   // Constant
   assign  s_logisimBus184[5:0]  =  {2'b01, 4'h7};


   // Constant
   assign  s_logisimBus126[5:0]  =  {2'b01, 4'h8};


   // Constant
   assign  s_logisimBus185[5:0]  =  {2'b01, 4'h9};


   // Constant
   assign  s_logisimBus89[5:0]  =  {2'b00, 4'h0};


   // Bit Extender
   assign  s_logisimBus112[0]  =  s_logisimBus174[0];
   assign  s_logisimBus112[1]  =  s_logisimBus174[1];
   assign  s_logisimBus112[2]  =  s_logisimBus174[2];
   assign  s_logisimBus112[3]  =  s_logisimBus174[3];
   assign  s_logisimBus112[4]  =  s_logisimBus174[4];
   assign  s_logisimBus112[5]  =  s_logisimBus174[5];
   assign  s_logisimBus112[6]  =  1'b0;
   assign  s_logisimBus112[7]  =  1'b0;
   assign  s_logisimBus112[8]  =  1'b0;
   assign  s_logisimBus112[9]  =  1'b0;
   assign  s_logisimBus112[10]  =  1'b0;
   assign  s_logisimBus112[11]  =  1'b0;
   assign  s_logisimBus112[12]  =  1'b0;
   assign  s_logisimBus112[13]  =  1'b0;
   assign  s_logisimBus112[14]  =  1'b0;
   assign  s_logisimBus112[15]  =  1'b0;
   assign  s_logisimBus112[16]  =  1'b0;
   assign  s_logisimBus112[17]  =  1'b0;
   assign  s_logisimBus112[18]  =  1'b0;
   assign  s_logisimBus112[19]  =  1'b0;
   assign  s_logisimBus112[20]  =  1'b0;
   assign  s_logisimBus112[21]  =  1'b0;
   assign  s_logisimBus112[22]  =  1'b0;
   assign  s_logisimBus112[23]  =  1'b0;
   assign  s_logisimBus112[24]  =  1'b0;
   assign  s_logisimBus112[25]  =  1'b0;
   assign  s_logisimBus112[26]  =  1'b0;
   assign  s_logisimBus112[27]  =  1'b0;
   assign  s_logisimBus112[28]  =  1'b0;
   assign  s_logisimBus112[29]  =  1'b0;
   assign  s_logisimBus112[30]  =  1'b0;
   assign  s_logisimBus112[31]  =  1'b0;


   // Constant
   assign  s_logisimBus70[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus22[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus58[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus97[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimBus49[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus90[39:0]  =  40'h0000000000;


   // Constant
   assign  s_logisimBus83[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimBus147[31:0]  =  32'h00000001;


   // Constant
   assign  s_logisimBus102[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus115[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus146[4:0]  =  {1'b0, 4'h0};


   // Constant
   assign  s_logisimBus187[22:0]  =  {3'b000, 20'h00001};


   // Constant
   assign  s_logisimBus111[40:0]  =  {1'b0, 40'h0000000000};


   // Constant
   assign  s_logisimBus161[7:0]  =  8'h01;


   // Bit Extender
   assign  s_logisimBus19[0]  =  s_logisimBus173[0];
   assign  s_logisimBus19[1]  =  s_logisimBus173[1];
   assign  s_logisimBus19[2]  =  s_logisimBus173[2];
   assign  s_logisimBus19[3]  =  s_logisimBus173[3];
   assign  s_logisimBus19[4]  =  s_logisimBus173[4];
   assign  s_logisimBus19[5]  =  s_logisimBus173[5];
   assign  s_logisimBus19[6]  =  1'b0;
   assign  s_logisimBus19[7]  =  1'b0;


   // Constant
   assign  s_logisimBus152[31:0]  =  32'h00000001;


   // Bit Extender
   assign  s_logisimBus4[0]  =  s_logisimBus62[0];
   assign  s_logisimBus4[1]  =  s_logisimBus62[1];
   assign  s_logisimBus4[2]  =  s_logisimBus62[2];
   assign  s_logisimBus4[3]  =  s_logisimBus62[3];
   assign  s_logisimBus4[4]  =  s_logisimBus62[4];
   assign  s_logisimBus4[5]  =  s_logisimBus62[5];
   assign  s_logisimBus4[6]  =  s_logisimBus62[6];
   assign  s_logisimBus4[7]  =  s_logisimBus62[7];
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


   // Bit Extender
   assign  s_logisimBus80[0]  =  s_logisimBus42[0];
   assign  s_logisimBus80[1]  =  s_logisimBus42[1];
   assign  s_logisimBus80[2]  =  s_logisimBus42[2];
   assign  s_logisimBus80[3]  =  s_logisimBus42[3];
   assign  s_logisimBus80[4]  =  s_logisimBus42[4];
   assign  s_logisimBus80[5]  =  s_logisimBus42[5];
   assign  s_logisimBus80[6]  =  s_logisimBus42[6];
   assign  s_logisimBus80[7]  =  s_logisimBus42[7];
   assign  s_logisimBus80[8]  =  s_logisimBus42[8];
   assign  s_logisimBus80[9]  =  s_logisimBus42[9];
   assign  s_logisimBus80[10]  =  s_logisimBus42[10];
   assign  s_logisimBus80[11]  =  s_logisimBus42[11];
   assign  s_logisimBus80[12]  =  s_logisimBus42[12];
   assign  s_logisimBus80[13]  =  s_logisimBus42[13];
   assign  s_logisimBus80[14]  =  s_logisimBus42[14];
   assign  s_logisimBus80[15]  =  s_logisimBus42[15];
   assign  s_logisimBus80[16]  =  s_logisimBus42[16];
   assign  s_logisimBus80[17]  =  s_logisimBus42[17];
   assign  s_logisimBus80[18]  =  s_logisimBus42[18];
   assign  s_logisimBus80[19]  =  s_logisimBus42[19];
   assign  s_logisimBus80[20]  =  s_logisimBus42[20];
   assign  s_logisimBus80[21]  =  s_logisimBus42[21];
   assign  s_logisimBus80[22]  =  s_logisimBus42[22];
   assign  s_logisimBus80[23]  =  s_logisimBus42[23];
   assign  s_logisimBus80[24]  =  1'b0;
   assign  s_logisimBus80[25]  =  1'b0;
   assign  s_logisimBus80[26]  =  1'b0;
   assign  s_logisimBus80[27]  =  1'b0;
   assign  s_logisimBus80[28]  =  1'b0;
   assign  s_logisimBus80[29]  =  1'b0;
   assign  s_logisimBus80[30]  =  1'b0;
   assign  s_logisimBus80[31]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus26[0]  =  s_logisimBus75[0];
   assign  s_logisimBus26[1]  =  s_logisimBus75[1];
   assign  s_logisimBus26[2]  =  s_logisimBus75[2];
   assign  s_logisimBus26[3]  =  s_logisimBus75[3];
   assign  s_logisimBus26[4]  =  s_logisimBus75[4];
   assign  s_logisimBus26[5]  =  s_logisimBus75[5];
   assign  s_logisimBus26[6]  =  s_logisimBus75[6];
   assign  s_logisimBus26[7]  =  s_logisimBus75[7];
   assign  s_logisimBus26[8]  =  1'b0;
   assign  s_logisimBus26[9]  =  1'b0;
   assign  s_logisimBus26[10]  =  1'b0;
   assign  s_logisimBus26[11]  =  1'b0;
   assign  s_logisimBus26[12]  =  1'b0;
   assign  s_logisimBus26[13]  =  1'b0;
   assign  s_logisimBus26[14]  =  1'b0;
   assign  s_logisimBus26[15]  =  1'b0;
   assign  s_logisimBus26[16]  =  1'b0;
   assign  s_logisimBus26[17]  =  1'b0;
   assign  s_logisimBus26[18]  =  1'b0;
   assign  s_logisimBus26[19]  =  1'b0;
   assign  s_logisimBus26[20]  =  1'b0;
   assign  s_logisimBus26[21]  =  1'b0;
   assign  s_logisimBus26[22]  =  1'b0;
   assign  s_logisimBus26[23]  =  1'b0;
   assign  s_logisimBus26[24]  =  1'b0;
   assign  s_logisimBus26[25]  =  1'b0;
   assign  s_logisimBus26[26]  =  1'b0;
   assign  s_logisimBus26[27]  =  1'b0;
   assign  s_logisimBus26[28]  =  1'b0;
   assign  s_logisimBus26[29]  =  1'b0;
   assign  s_logisimBus26[30]  =  1'b0;
   assign  s_logisimBus26[31]  =  1'b0;


   // Constant
   assign  s_logisimBus100[7:0]  =  8'h28;


   // Constant
   assign  s_logisimBus171[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus40[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus14[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus7[5:0]  =  {2'b00, 4'h0};


   // Constant
   assign  s_logisimBus94[5:0]  =  {2'b00, 4'h1};


   // Constant
   assign  s_logisimBus45[5:0]  =  {2'b00, 4'h1};


   // Bit Extender
   assign  s_logisimBus160[0]  =  s_logisimBus29[0];
   assign  s_logisimBus160[1]  =  s_logisimBus29[1];
   assign  s_logisimBus160[2]  =  s_logisimBus29[2];
   assign  s_logisimBus160[3]  =  s_logisimBus29[3];
   assign  s_logisimBus160[4]  =  s_logisimBus29[4];
   assign  s_logisimBus160[5]  =  s_logisimBus29[5];
   assign  s_logisimBus160[6]  =  1'b0;
   assign  s_logisimBus160[7]  =  1'b0;
   assign  s_logisimBus160[8]  =  1'b0;
   assign  s_logisimBus160[9]  =  1'b0;
   assign  s_logisimBus160[10]  =  1'b0;
   assign  s_logisimBus160[11]  =  1'b0;
   assign  s_logisimBus160[12]  =  1'b0;
   assign  s_logisimBus160[13]  =  1'b0;
   assign  s_logisimBus160[14]  =  1'b0;
   assign  s_logisimBus160[15]  =  1'b0;
   assign  s_logisimBus160[16]  =  1'b0;
   assign  s_logisimBus160[17]  =  1'b0;
   assign  s_logisimBus160[18]  =  1'b0;
   assign  s_logisimBus160[19]  =  1'b0;
   assign  s_logisimBus160[20]  =  1'b0;
   assign  s_logisimBus160[21]  =  1'b0;
   assign  s_logisimBus160[22]  =  1'b0;
   assign  s_logisimBus160[23]  =  1'b0;
   assign  s_logisimBus160[24]  =  1'b0;
   assign  s_logisimBus160[25]  =  1'b0;
   assign  s_logisimBus160[26]  =  1'b0;
   assign  s_logisimBus160[27]  =  1'b0;
   assign  s_logisimBus160[28]  =  1'b0;
   assign  s_logisimBus160[29]  =  1'b0;
   assign  s_logisimBus160[30]  =  1'b0;
   assign  s_logisimBus160[31]  =  1'b0;


   // NOT Gate
   assign s_logisimNet28 = ~s_logisimNet106;

   // NOT Gate
   assign s_logisimNet154 = ~s_logisimNet82;

   // NOT Gate
   assign s_logisimNet84 = ~s_logisimNet170;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(6))
      GATES_1 (.input1(s_logisimBus112[5:0]),
               .input2(s_logisimBus70[5:0]),
               .result(s_logisimBus125[5:0]));

   OR_GATE_25_INPUTS #(.BubblesMask({1'b0, 24'h000000}))
      GATES_2 (.input1(s_logisimNet8),
               .input10(s_logisimNet74),
               .input11(s_logisimNet87),
               .input12(s_logisimNet101),
               .input13(s_logisimNet18),
               .input14(s_logisimNet129),
               .input15(s_logisimNet114),
               .input16(s_logisimNet52),
               .input17(s_logisimNet103),
               .input18(s_logisimNet59),
               .input19(s_logisimNet77),
               .input2(s_logisimNet67),
               .input20(s_logisimNet163),
               .input21(s_logisimNet133),
               .input22(s_logisimNet12),
               .input23(s_logisimNet5),
               .input24(s_logisimNet72),
               .input25(s_logisimNet85),
               .input3(s_logisimNet11),
               .input4(s_logisimNet127),
               .input5(s_logisimNet109),
               .input6(s_logisimNet60),
               .input7(s_logisimNet23),
               .input8(s_logisimNet47),
               .input9(s_logisimNet61),
               .result(s_logisimNet170));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_3 (.input1(s_logisimNet153),
               .input2(s_logisimNet68),
               .input3(s_logisimNet84),
               .result(s_logisimNet27));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_4 (.input1(s_logisimNet153),
               .input2(s_logisimNet154),
               .input3(s_logisimNet170),
               .result(s_logisimNet54));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_5 (.input1(s_logisimNet153),
               .input2(s_logisimNet113),
               .input3(s_logisimNet170),
               .result(s_logisimNet51));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_6 (.input1(s_logisimNet27),
               .input2(s_logisimNet51),
               .input3(s_logisimNet54),
               .result(s_logisimNet116));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet116),
               .input2(s_logisimNet73),
               .result(s_logisimNet1));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(6))
      GATES_8 (.input1(s_logisimBus66[5:0]),
               .input2(s_logisimBus171[5:0]),
               .result(s_logisimBus57[5:0]));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus39[22:0]),
                 .muxIn_1(s_logisimBus53[62:40]),
                 .muxOut(s_logisimBus162[22:0]),
                 .sel(s_logisimNet99));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_10 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet153),
                  .sel(s_logisimBus3[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_11 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet8),
                  .sel(s_logisimBus91[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_12 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet67),
                  .sel(s_logisimBus166[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_13 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet11),
                  .sel(s_logisimBus92[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_14 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet127),
                  .sel(s_logisimBus167[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_15 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet109),
                  .sel(s_logisimBus93[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_16 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet60),
                  .sel(s_logisimBus168[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_17 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet23),
                  .sel(s_logisimBus137[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_18 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet47),
                  .sel(s_logisimBus31[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_19 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet61),
                  .sel(s_logisimBus138[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_20 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet74),
                  .sel(s_logisimBus32[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_21 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet87),
                  .sel(s_logisimBus139[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_22 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet101),
                  .sel(s_logisimBus33[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_23 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet18),
                  .sel(s_logisimBus136[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_24 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet129),
                  .sel(s_logisimBus30[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_25 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet114),
                  .sel(s_logisimBus140[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_26 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet52),
                  .sel(s_logisimBus34[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_27 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet103),
                  .sel(s_logisimBus141[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_28 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet59),
                  .sel(s_logisimBus35[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_29 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet77),
                  .sel(s_logisimBus145[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_30 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet163),
                  .sel(s_logisimBus36[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_31 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet133),
                  .sel(s_logisimBus142[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_32 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet12),
                  .sel(s_logisimBus37[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_33 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet5),
                  .sel(s_logisimBus143[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_34 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet72),
                  .sel(s_logisimBus38[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_35 (.dataIn(s_logisimBus186[63:0]),
                  .dataOut(s_logisimNet85),
                  .sel(s_logisimBus144[5:0]));

   BitSelector #(.nrOfExtendedBits(9),
                 .nrOfInputBits(6),
                 .nrOfselBits(3))
      PLEXERS_36 (.dataIn(s_logisimBus125[5:0]),
                  .dataOut(s_logisimNet151),
                  .sel(s_logisimBus58[2:0]));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_37 (.enable(1'b1),
                  .muxIn_0(s_logisimBus10[63:0]),
                  .muxIn_1(s_logisimBus17[63:0]),
                  .muxOut(s_logisimBus78[63:0]),
                  .sel(s_logisimNet50));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_38 (.enable(1'b1),
                  .muxIn_0(s_logisimBus17[62:40]),
                  .muxIn_1(s_logisimBus132[22:0]),
                  .muxOut(s_logisimBus21[22:0]),
                  .sel(s_logisimNet28));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_39 (.enable(1'b1),
                  .muxIn_0(s_logisimBus78[63:0]),
                  .muxIn_1(s_logisimBus25[63:0]),
                  .muxOut(s_logisimBus88[63:0]),
                  .sel(s_logisimNet151));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_40 (.enable(1'b1),
                  .muxIn_0(s_logisimBus88[63:0]),
                  .muxIn_1(s_logisimBus17[63:0]),
                  .muxOut(s_logisimBus71[63:0]),
                  .sel(s_logisimNet9));

   BitSelector #(.nrOfExtendedBits(33),
                 .nrOfInputBits(23),
                 .nrOfselBits(5))
      PLEXERS_41 (.dataIn(s_logisimBus21[22:0]),
                  .dataOut(s_logisimNet68),
                  .sel(s_logisimBus102[4:0]));

   BitSelector #(.nrOfExtendedBits(33),
                 .nrOfInputBits(23),
                 .nrOfselBits(5))
      PLEXERS_42 (.dataIn(s_logisimBus21[22:0]),
                  .dataOut(s_logisimNet82),
                  .sel(s_logisimBus115[4:0]));

   BitSelector #(.nrOfExtendedBits(33),
                 .nrOfInputBits(23),
                 .nrOfselBits(5))
      PLEXERS_43 (.dataIn(s_logisimBus21[22:0]),
                  .dataOut(s_logisimNet113),
                  .sel(s_logisimBus146[4:0]));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_44 (.enable(1'b1),
                  .muxIn_0(s_logisimBus21[22:0]),
                  .muxIn_1(s_logisimBus48[22:0]),
                  .muxOut(s_logisimBus39[22:0]),
                  .sel(s_logisimNet116));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_45 (.enable(1'b1),
                  .muxIn_0(s_logisimBus148[7:0]),
                  .muxIn_1(s_logisimBus130[7:0]),
                  .muxOut(s_logisimBus2[7:0]),
                  .sel(s_logisimNet1));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_46 (.enable(1'b1),
                  .muxIn_0(s_logisimBus76[31:0]),
                  .muxIn_1(s_logisimBus4[31:0]),
                  .muxOut(s_logisimBus41[31:0]),
                  .sel(s_logisimNet108));

   Multiplexer_bus_2 #(.nrOfBits(32))
      PLEXERS_47 (.enable(1'b1),
                  .muxIn_0(s_logisimBus96[31:0]),
                  .muxIn_1(s_logisimBus26[31:0]),
                  .muxOut(s_logisimBus66[31:0]),
                  .sel(s_logisimNet108));

   BitSelector #(.nrOfExtendedBits(9),
                 .nrOfInputBits(6),
                 .nrOfselBits(3))
      PLEXERS_48 (.dataIn(s_logisimBus57[5:0]),
                  .dataOut(s_logisimNet98),
                  .sel(s_logisimBus14[2:0]));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_49 (.enable(1'b1),
                  .muxIn_0(s_logisimBus81[63:0]),
                  .muxIn_1(s_logisimBus90[63:0]),
                  .muxOut(s_logisimBus56[63:0]),
                  .sel(s_logisimNet128));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_50 (.enable(1'b1),
                  .muxIn_0(s_logisimBus56[63:0]),
                  .muxIn_1(s_logisimBus86[63:0]),
                  .muxOut(s_logisimBus15[63:0]),
                  .sel(s_logisimNet98));

   Subtractor #(.extendedBits(65),
                .nrOfBits(64))
      ARITH_51 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus53[63:0]),
                .dataB(s_logisimBus15[63:0]),
                .result(s_logisimBus17[63:0]));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_52 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus173[5:0]),
                .dataB(s_logisimBus55[5:0]),
                .result(s_logisimBus174[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_53 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus43[5:0]),
                .dataB(s_logisimBus16[5:0]),
                .result(s_logisimBus173[5:0]));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_54 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus173[5:0]),
                .dataB(s_logisimBus13[5:0]),
                .result(s_logisimBus3[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_55 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus155[5:0]),
                .result(s_logisimBus91[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_56 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus63[5:0]),
                .result(s_logisimBus166[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_57 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus156[5:0]),
                .result(s_logisimBus92[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_58 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus64[5:0]),
                .result(s_logisimBus167[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_59 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus157[5:0]),
                .result(s_logisimBus93[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_60 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus65[5:0]),
                .result(s_logisimBus168[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_61 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus177[5:0]),
                .result(s_logisimBus137[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_62 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus119[5:0]),
                .result(s_logisimBus31[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_63 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus178[5:0]),
                .result(s_logisimBus138[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_64 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus118[5:0]),
                .result(s_logisimBus32[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_65 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus179[5:0]),
                .result(s_logisimBus139[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_66 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus120[5:0]),
                .result(s_logisimBus33[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_67 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus176[5:0]),
                .result(s_logisimBus136[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_68 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus117[5:0]),
                .result(s_logisimBus30[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_69 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus180[5:0]),
                .result(s_logisimBus140[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_70 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus121[5:0]),
                .result(s_logisimBus34[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_71 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus181[5:0]),
                .result(s_logisimBus141[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_72 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus122[5:0]),
                .result(s_logisimBus35[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_73 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus182[5:0]),
                .result(s_logisimBus145[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_74 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus123[5:0]),
                .result(s_logisimBus36[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_75 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus183[5:0]),
                .result(s_logisimBus142[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_76 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus124[5:0]),
                .result(s_logisimBus37[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_77 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus184[5:0]),
                .result(s_logisimBus143[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_78 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus126[5:0]),
                .result(s_logisimBus38[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_79 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus3[5:0]),
                .dataB(s_logisimBus185[5:0]),
                .result(s_logisimBus144[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_80 (.aEqualsB(s_logisimNet106),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus173[5:0]),
                .dataB(s_logisimBus89[5:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_81 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus112[5:0]),
                .dataB(s_logisimBus22[5:0]),
                .result(s_logisimBus6[5:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_82 (.dataA(s_logisimBus17[63:0]),
                .result(s_logisimBus25[63:0]),
                .shiftAmount(s_logisimBus112[5:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_83 (.dataA(s_logisimBus17[63:0]),
                .result(s_logisimBus107[63:0]),
                .shiftAmount(s_logisimBus6[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_84 (.aEqualsB(s_logisimNet50),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus112[5:0]),
                .dataB(s_logisimBus97[5:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_85 (.dataA(s_logisimBus107[63:0]),
                .result(s_logisimBus10[63:0]),
                .shiftAmount(s_logisimBus49[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_86 (.aEqualsB(s_logisimNet9),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus173[5:0]),
                .dataB(s_logisimBus83[5:0]));

   Adder #(.extendedBits(24),
           .nrOfBits(23))
      ARITH_87 (.carryIn(1'b0),
                .carryOut(s_logisimNet73),
                .dataA(s_logisimBus21[22:0]),
                .dataB(s_logisimBus187[22:0]),
                .result(s_logisimBus48[22:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_88 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus131[7:0]),
                .dataB(s_logisimBus95[7:0]),
                .result(s_logisimBus62[7:0]));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_89 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus4[31:0]),
                .dataB(s_logisimBus147[31:0]),
                .result(s_logisimBus76[31:0]));

   Subtractor #(.extendedBits(65),
                .nrOfBits(64))
      ARITH_90 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus71[63:0]),
                .dataB(s_logisimBus111[63:0]),
                .result(s_logisimBus186[63:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_91 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus148[7:0]),
                .dataB(s_logisimBus161[7:0]),
                .result(s_logisimBus130[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_92 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus131[7:0]),
                .dataB(s_logisimBus19[7:0]),
                .result(s_logisimBus148[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_93 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus131[7:0]),
                .dataB(s_logisimBus95[7:0]),
                .result(s_logisimBus75[7:0]));

   Subtractor #(.extendedBits(33),
                .nrOfBits(32))
      ARITH_94 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus26[31:0]),
                .dataB(s_logisimBus152[31:0]),
                .result(s_logisimBus96[31:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_95 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus131[7:0]),
                .dataB(s_logisimBus95[7:0]),
                .result(s_logisimBus169[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_96 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet99),
                .aLessThanB(),
                .dataA(s_logisimBus169[7:0]),
                .dataB(s_logisimBus100[7:0]));

   Subtractor #(.extendedBits(7),
                .nrOfBits(6))
      ARITH_97 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus66[5:0]),
                .dataB(s_logisimBus40[5:0]),
                .result(s_logisimBus158[5:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_98 (.dataA(s_logisimBus90[63:0]),
                .result(s_logisimBus86[63:0]),
                .shiftAmount(s_logisimBus66[5:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_99 (.dataA(s_logisimBus90[63:0]),
                .result(s_logisimBus44[63:0]),
                .shiftAmount(s_logisimBus158[5:0]));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_100 (.carryIn(1'b0),
                 .carryOut(),
                 .dataA(s_logisimBus173[5:0]),
                 .dataB(s_logisimBus94[5:0]),
                 .result(s_logisimBus29[5:0]));

   Comparator #(.nrOfBits(6),
                .twosComplement(1))
      ARITH_101 (.aEqualsB(s_logisimNet128),
                 .aGreaterThanB(),
                 .aLessThanB(),
                 .dataA(s_logisimBus66[5:0]),
                 .dataB(s_logisimBus7[5:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_102 (.dataA(s_logisimBus44[63:0]),
                 .result(s_logisimBus81[63:0]),
                 .shiftAmount(s_logisimBus45[5:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   SLLL   v14 (.a(s_logisimBus17[63:32]),
               .b(s_logisimBus160[31:0]),
               .res_high(),
               .res_low(s_logisimBus175[31:0]));

   bitOne   v13 (.a(s_logisimBus17[63:40]),
                 .res(s_logisimBus16[4:0]));

   SRL_fadd   v12 (.a(s_logisimBus80[31:0]),
                   .b(s_logisimBus41[31:0]),
                   .one_signal(),
                   .res_low(s_logisimBus110[31:0]));

endmodule
