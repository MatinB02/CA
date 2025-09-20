/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : fmult                                                        **
 **                                                                          **
 *****************************************************************************/

module fmult( a,
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
   wire [63:0] s_logisimBus0;
   wire [8:0]  s_logisimBus101;
   wire [7:0]  s_logisimBus106;
   wire [8:0]  s_logisimBus107;
   wire [22:0] s_logisimBus108;
   wire [8:0]  s_logisimBus109;
   wire [31:0] s_logisimBus11;
   wire [7:0]  s_logisimBus110;
   wire [23:0] s_logisimBus111;
   wire [7:0]  s_logisimBus112;
   wire [7:0]  s_logisimBus114;
   wire [7:0]  s_logisimBus115;
   wire [7:0]  s_logisimBus118;
   wire [7:0]  s_logisimBus121;
   wire [22:0] s_logisimBus123;
   wire [7:0]  s_logisimBus125;
   wire [7:0]  s_logisimBus127;
   wire [7:0]  s_logisimBus129;
   wire [7:0]  s_logisimBus130;
   wire [22:0] s_logisimBus131;
   wire [63:0] s_logisimBus134;
   wire [7:0]  s_logisimBus136;
   wire [22:0] s_logisimBus139;
   wire [5:0]  s_logisimBus141;
   wire [7:0]  s_logisimBus142;
   wire [7:0]  s_logisimBus145;
   wire [8:0]  s_logisimBus148;
   wire [22:0] s_logisimBus151;
   wire [7:0]  s_logisimBus152;
   wire [7:0]  s_logisimBus154;
   wire [7:0]  s_logisimBus155;
   wire [7:0]  s_logisimBus157;
   wire [22:0] s_logisimBus158;
   wire [23:0] s_logisimBus159;
   wire [7:0]  s_logisimBus16;
   wire [8:0]  s_logisimBus160;
   wire [7:0]  s_logisimBus161;
   wire [7:0]  s_logisimBus17;
   wire [63:0] s_logisimBus18;
   wire [7:0]  s_logisimBus21;
   wire [7:0]  s_logisimBus24;
   wire [7:0]  s_logisimBus26;
   wire [23:0] s_logisimBus27;
   wire [7:0]  s_logisimBus31;
   wire [7:0]  s_logisimBus33;
   wire [22:0] s_logisimBus34;
   wire [63:0] s_logisimBus35;
   wire [23:0] s_logisimBus38;
   wire [7:0]  s_logisimBus39;
   wire [7:0]  s_logisimBus4;
   wire [22:0] s_logisimBus40;
   wire [7:0]  s_logisimBus41;
   wire [31:0] s_logisimBus43;
   wire [63:0] s_logisimBus44;
   wire [22:0] s_logisimBus47;
   wire [8:0]  s_logisimBus48;
   wire [7:0]  s_logisimBus49;
   wire [22:0] s_logisimBus51;
   wire [63:0] s_logisimBus52;
   wire [23:0] s_logisimBus54;
   wire [63:0] s_logisimBus56;
   wire [22:0] s_logisimBus59;
   wire [7:0]  s_logisimBus6;
   wire [7:0]  s_logisimBus60;
   wire [7:0]  s_logisimBus61;
   wire [23:0] s_logisimBus62;
   wire [31:0] s_logisimBus63;
   wire [22:0] s_logisimBus66;
   wire [8:0]  s_logisimBus67;
   wire [5:0]  s_logisimBus68;
   wire [7:0]  s_logisimBus69;
   wire [7:0]  s_logisimBus7;
   wire [22:0] s_logisimBus72;
   wire [22:0] s_logisimBus73;
   wire [5:0]  s_logisimBus76;
   wire [63:0] s_logisimBus77;
   wire [63:0] s_logisimBus79;
   wire [22:0] s_logisimBus81;
   wire [7:0]  s_logisimBus82;
   wire [7:0]  s_logisimBus83;
   wire [7:0]  s_logisimBus84;
   wire [63:0] s_logisimBus87;
   wire [7:0]  s_logisimBus88;
   wire [7:0]  s_logisimBus89;
   wire [63:0] s_logisimBus9;
   wire [5:0]  s_logisimBus91;
   wire [22:0] s_logisimBus92;
   wire [7:0]  s_logisimBus98;
   wire [7:0]  s_logisimBus99;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet100;
   wire        s_logisimNet102;
   wire        s_logisimNet103;
   wire        s_logisimNet104;
   wire        s_logisimNet105;
   wire        s_logisimNet113;
   wire        s_logisimNet116;
   wire        s_logisimNet117;
   wire        s_logisimNet119;
   wire        s_logisimNet120;
   wire        s_logisimNet122;
   wire        s_logisimNet124;
   wire        s_logisimNet128;
   wire        s_logisimNet13;
   wire        s_logisimNet133;
   wire        s_logisimNet137;
   wire        s_logisimNet138;
   wire        s_logisimNet14;
   wire        s_logisimNet140;
   wire        s_logisimNet143;
   wire        s_logisimNet144;
   wire        s_logisimNet146;
   wire        s_logisimNet147;
   wire        s_logisimNet149;
   wire        s_logisimNet150;
   wire        s_logisimNet156;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet25;
   wire        s_logisimNet28;
   wire        s_logisimNet29;
   wire        s_logisimNet30;
   wire        s_logisimNet32;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet42;
   wire        s_logisimNet46;
   wire        s_logisimNet50;
   wire        s_logisimNet53;
   wire        s_logisimNet55;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet64;
   wire        s_logisimNet65;
   wire        s_logisimNet70;
   wire        s_logisimNet71;
   wire        s_logisimNet74;
   wire        s_logisimNet78;
   wire        s_logisimNet8;
   wire        s_logisimNet80;
   wire        s_logisimNet85;
   wire        s_logisimNet86;
   wire        s_logisimNet90;
   wire        s_logisimNet93;
   wire        s_logisimNet94;
   wire        s_logisimNet96;
   wire        s_logisimNet97;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus111[0]  = s_logisimBus151[0];
   assign s_logisimBus111[10] = s_logisimBus151[10];
   assign s_logisimBus111[11] = s_logisimBus151[11];
   assign s_logisimBus111[12] = s_logisimBus151[12];
   assign s_logisimBus111[13] = s_logisimBus151[13];
   assign s_logisimBus111[14] = s_logisimBus151[14];
   assign s_logisimBus111[15] = s_logisimBus151[15];
   assign s_logisimBus111[16] = s_logisimBus151[16];
   assign s_logisimBus111[17] = s_logisimBus151[17];
   assign s_logisimBus111[18] = s_logisimBus151[18];
   assign s_logisimBus111[19] = s_logisimBus151[19];
   assign s_logisimBus111[1]  = s_logisimBus151[1];
   assign s_logisimBus111[20] = s_logisimBus151[20];
   assign s_logisimBus111[21] = s_logisimBus151[21];
   assign s_logisimBus111[22] = s_logisimBus151[22];
   assign s_logisimBus111[2]  = s_logisimBus151[2];
   assign s_logisimBus111[3]  = s_logisimBus151[3];
   assign s_logisimBus111[4]  = s_logisimBus151[4];
   assign s_logisimBus111[5]  = s_logisimBus151[5];
   assign s_logisimBus111[6]  = s_logisimBus151[6];
   assign s_logisimBus111[7]  = s_logisimBus151[7];
   assign s_logisimBus111[8]  = s_logisimBus151[8];
   assign s_logisimBus111[9]  = s_logisimBus151[9];
   assign s_logisimBus139[0]  = s_logisimBus63[0];
   assign s_logisimBus139[10] = s_logisimBus63[10];
   assign s_logisimBus139[11] = s_logisimBus63[11];
   assign s_logisimBus139[12] = s_logisimBus63[12];
   assign s_logisimBus139[13] = s_logisimBus63[13];
   assign s_logisimBus139[14] = s_logisimBus63[14];
   assign s_logisimBus139[15] = s_logisimBus63[15];
   assign s_logisimBus139[16] = s_logisimBus63[16];
   assign s_logisimBus139[17] = s_logisimBus63[17];
   assign s_logisimBus139[18] = s_logisimBus63[18];
   assign s_logisimBus139[19] = s_logisimBus63[19];
   assign s_logisimBus139[1]  = s_logisimBus63[1];
   assign s_logisimBus139[20] = s_logisimBus63[20];
   assign s_logisimBus139[21] = s_logisimBus63[21];
   assign s_logisimBus139[22] = s_logisimBus63[22];
   assign s_logisimBus139[2]  = s_logisimBus63[2];
   assign s_logisimBus139[3]  = s_logisimBus63[3];
   assign s_logisimBus139[4]  = s_logisimBus63[4];
   assign s_logisimBus139[5]  = s_logisimBus63[5];
   assign s_logisimBus139[6]  = s_logisimBus63[6];
   assign s_logisimBus139[7]  = s_logisimBus63[7];
   assign s_logisimBus139[8]  = s_logisimBus63[8];
   assign s_logisimBus139[9]  = s_logisimBus63[9];
   assign s_logisimBus151[0]  = s_logisimBus43[0];
   assign s_logisimBus151[10] = s_logisimBus43[10];
   assign s_logisimBus151[11] = s_logisimBus43[11];
   assign s_logisimBus151[12] = s_logisimBus43[12];
   assign s_logisimBus151[13] = s_logisimBus43[13];
   assign s_logisimBus151[14] = s_logisimBus43[14];
   assign s_logisimBus151[15] = s_logisimBus43[15];
   assign s_logisimBus151[16] = s_logisimBus43[16];
   assign s_logisimBus151[17] = s_logisimBus43[17];
   assign s_logisimBus151[18] = s_logisimBus43[18];
   assign s_logisimBus151[19] = s_logisimBus43[19];
   assign s_logisimBus151[1]  = s_logisimBus43[1];
   assign s_logisimBus151[20] = s_logisimBus43[20];
   assign s_logisimBus151[21] = s_logisimBus43[21];
   assign s_logisimBus151[22] = s_logisimBus43[22];
   assign s_logisimBus151[2]  = s_logisimBus43[2];
   assign s_logisimBus151[3]  = s_logisimBus43[3];
   assign s_logisimBus151[4]  = s_logisimBus43[4];
   assign s_logisimBus151[5]  = s_logisimBus43[5];
   assign s_logisimBus151[6]  = s_logisimBus43[6];
   assign s_logisimBus151[7]  = s_logisimBus43[7];
   assign s_logisimBus151[8]  = s_logisimBus43[8];
   assign s_logisimBus151[9]  = s_logisimBus43[9];
   assign s_logisimBus160[8]  = s_logisimNet58;
   assign s_logisimBus27[0]   = s_logisimBus139[0];
   assign s_logisimBus27[10]  = s_logisimBus139[10];
   assign s_logisimBus27[11]  = s_logisimBus139[11];
   assign s_logisimBus27[12]  = s_logisimBus139[12];
   assign s_logisimBus27[13]  = s_logisimBus139[13];
   assign s_logisimBus27[14]  = s_logisimBus139[14];
   assign s_logisimBus27[15]  = s_logisimBus139[15];
   assign s_logisimBus27[16]  = s_logisimBus139[16];
   assign s_logisimBus27[17]  = s_logisimBus139[17];
   assign s_logisimBus27[18]  = s_logisimBus139[18];
   assign s_logisimBus27[19]  = s_logisimBus139[19];
   assign s_logisimBus27[1]   = s_logisimBus139[1];
   assign s_logisimBus27[20]  = s_logisimBus139[20];
   assign s_logisimBus27[21]  = s_logisimBus139[21];
   assign s_logisimBus27[22]  = s_logisimBus139[22];
   assign s_logisimBus27[2]   = s_logisimBus139[2];
   assign s_logisimBus27[3]   = s_logisimBus139[3];
   assign s_logisimBus27[4]   = s_logisimBus139[4];
   assign s_logisimBus27[5]   = s_logisimBus139[5];
   assign s_logisimBus27[6]   = s_logisimBus139[6];
   assign s_logisimBus27[7]   = s_logisimBus139[7];
   assign s_logisimBus27[8]   = s_logisimBus139[8];
   assign s_logisimBus27[9]   = s_logisimBus139[9];
   assign s_logisimBus38[0]   = s_logisimBus139[0];
   assign s_logisimBus38[10]  = s_logisimBus139[10];
   assign s_logisimBus38[11]  = s_logisimBus139[11];
   assign s_logisimBus38[12]  = s_logisimBus139[12];
   assign s_logisimBus38[13]  = s_logisimBus139[13];
   assign s_logisimBus38[14]  = s_logisimBus139[14];
   assign s_logisimBus38[15]  = s_logisimBus139[15];
   assign s_logisimBus38[16]  = s_logisimBus139[16];
   assign s_logisimBus38[17]  = s_logisimBus139[17];
   assign s_logisimBus38[18]  = s_logisimBus139[18];
   assign s_logisimBus38[19]  = s_logisimBus139[19];
   assign s_logisimBus38[1]   = s_logisimBus139[1];
   assign s_logisimBus38[20]  = s_logisimBus139[20];
   assign s_logisimBus38[21]  = s_logisimBus139[21];
   assign s_logisimBus38[22]  = s_logisimBus139[22];
   assign s_logisimBus38[2]   = s_logisimBus139[2];
   assign s_logisimBus38[3]   = s_logisimBus139[3];
   assign s_logisimBus38[4]   = s_logisimBus139[4];
   assign s_logisimBus38[5]   = s_logisimBus139[5];
   assign s_logisimBus38[6]   = s_logisimBus139[6];
   assign s_logisimBus38[7]   = s_logisimBus139[7];
   assign s_logisimBus38[8]   = s_logisimBus139[8];
   assign s_logisimBus38[9]   = s_logisimBus139[9];
   assign s_logisimBus54[0]   = s_logisimBus151[0];
   assign s_logisimBus54[10]  = s_logisimBus151[10];
   assign s_logisimBus54[11]  = s_logisimBus151[11];
   assign s_logisimBus54[12]  = s_logisimBus151[12];
   assign s_logisimBus54[13]  = s_logisimBus151[13];
   assign s_logisimBus54[14]  = s_logisimBus151[14];
   assign s_logisimBus54[15]  = s_logisimBus151[15];
   assign s_logisimBus54[16]  = s_logisimBus151[16];
   assign s_logisimBus54[17]  = s_logisimBus151[17];
   assign s_logisimBus54[18]  = s_logisimBus151[18];
   assign s_logisimBus54[19]  = s_logisimBus151[19];
   assign s_logisimBus54[1]   = s_logisimBus151[1];
   assign s_logisimBus54[20]  = s_logisimBus151[20];
   assign s_logisimBus54[21]  = s_logisimBus151[21];
   assign s_logisimBus54[22]  = s_logisimBus151[22];
   assign s_logisimBus54[2]   = s_logisimBus151[2];
   assign s_logisimBus54[3]   = s_logisimBus151[3];
   assign s_logisimBus54[4]   = s_logisimBus151[4];
   assign s_logisimBus54[5]   = s_logisimBus151[5];
   assign s_logisimBus54[6]   = s_logisimBus151[6];
   assign s_logisimBus54[7]   = s_logisimBus151[7];
   assign s_logisimBus54[8]   = s_logisimBus151[8];
   assign s_logisimBus54[9]   = s_logisimBus151[9];
   assign s_logisimBus67[8]   = s_logisimNet58;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus43[31:0] = a;
   assign s_logisimBus63[31:0] = b;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign res = s_logisimBus11[31:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus91[5:0]  =  {2'b10, 4'hF};


   // Constant
   assign  s_logisimBus76[5:0]  =  {2'b10, 4'hE};


   // Constant
   assign  s_logisimBus152[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus60[7:0]  =  8'h00;


   // Constant
   assign  s_logisimNet58  =  1'b0;


   // Constant
   assign  s_logisimBus51[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus110[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus148[8:0]  =  {1'b1, 8'h82};


   // Constant
   assign  s_logisimBus88[7:0]  =  8'h7F;


   // Constant
   assign  s_logisimBus31[7:0]  =  8'h7F;


   // Constant
   assign  s_logisimBus33[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus27[23]  =  1'b0;


   // Constant
   assign  s_logisimBus109[8:0]  =  {1'b1, 8'h82};


   // Constant
   assign  s_logisimBus136[7:0]  =  8'h01;


   // Constant
   assign  s_logisimBus101[8:0]  =  {1'b0, 8'h3F};


   // Constant
   assign  s_logisimBus129[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus72[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus24[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus123[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus39[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus131[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus114[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus40[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus16[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus81[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus141[5:0]  =  {2'b11, 4'hF};


   // Constant
   assign  s_logisimBus121[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus59[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus84[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus158[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus155[7:0]  =  8'h01;


   // Constant
   assign  s_logisimBus157[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus108[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus130[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus73[22:0]  =  {3'b000, 20'h00000};


   // Constant
   assign  s_logisimBus154[7:0]  =  8'hFF;


   // Constant
   assign  s_logisimBus66[22:0]  =  {3'b111, 20'hFFFFF};


   // Constant
   assign  s_logisimBus38[23]  =  1'b1;


   // Constant
   assign  s_logisimBus41[7:0]  =  8'h40;


   // Constant
   assign  s_logisimBus111[23]  =  1'b1;


   // Constant
   assign  s_logisimBus54[23]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus77[0]  =  s_logisimBus159[0];
   assign  s_logisimBus77[1]  =  s_logisimBus159[1];
   assign  s_logisimBus77[2]  =  s_logisimBus159[2];
   assign  s_logisimBus77[3]  =  s_logisimBus159[3];
   assign  s_logisimBus77[4]  =  s_logisimBus159[4];
   assign  s_logisimBus77[5]  =  s_logisimBus159[5];
   assign  s_logisimBus77[6]  =  s_logisimBus159[6];
   assign  s_logisimBus77[7]  =  s_logisimBus159[7];
   assign  s_logisimBus77[8]  =  s_logisimBus159[8];
   assign  s_logisimBus77[9]  =  s_logisimBus159[9];
   assign  s_logisimBus77[10]  =  s_logisimBus159[10];
   assign  s_logisimBus77[11]  =  s_logisimBus159[11];
   assign  s_logisimBus77[12]  =  s_logisimBus159[12];
   assign  s_logisimBus77[13]  =  s_logisimBus159[13];
   assign  s_logisimBus77[14]  =  s_logisimBus159[14];
   assign  s_logisimBus77[15]  =  s_logisimBus159[15];
   assign  s_logisimBus77[16]  =  s_logisimBus159[16];
   assign  s_logisimBus77[17]  =  s_logisimBus159[17];
   assign  s_logisimBus77[18]  =  s_logisimBus159[18];
   assign  s_logisimBus77[19]  =  s_logisimBus159[19];
   assign  s_logisimBus77[20]  =  s_logisimBus159[20];
   assign  s_logisimBus77[21]  =  s_logisimBus159[21];
   assign  s_logisimBus77[22]  =  s_logisimBus159[22];
   assign  s_logisimBus77[23]  =  s_logisimBus159[23];
   assign  s_logisimBus77[24]  =  1'b0;
   assign  s_logisimBus77[25]  =  1'b0;
   assign  s_logisimBus77[26]  =  1'b0;
   assign  s_logisimBus77[27]  =  1'b0;
   assign  s_logisimBus77[28]  =  1'b0;
   assign  s_logisimBus77[29]  =  1'b0;
   assign  s_logisimBus77[30]  =  1'b0;
   assign  s_logisimBus77[31]  =  1'b0;
   assign  s_logisimBus77[32]  =  1'b0;
   assign  s_logisimBus77[33]  =  1'b0;
   assign  s_logisimBus77[34]  =  1'b0;
   assign  s_logisimBus77[35]  =  1'b0;
   assign  s_logisimBus77[36]  =  1'b0;
   assign  s_logisimBus77[37]  =  1'b0;
   assign  s_logisimBus77[38]  =  1'b0;
   assign  s_logisimBus77[39]  =  1'b0;
   assign  s_logisimBus77[40]  =  1'b0;
   assign  s_logisimBus77[41]  =  1'b0;
   assign  s_logisimBus77[42]  =  1'b0;
   assign  s_logisimBus77[43]  =  1'b0;
   assign  s_logisimBus77[44]  =  1'b0;
   assign  s_logisimBus77[45]  =  1'b0;
   assign  s_logisimBus77[46]  =  1'b0;
   assign  s_logisimBus77[47]  =  1'b0;
   assign  s_logisimBus77[48]  =  1'b0;
   assign  s_logisimBus77[49]  =  1'b0;
   assign  s_logisimBus77[50]  =  1'b0;
   assign  s_logisimBus77[51]  =  1'b0;
   assign  s_logisimBus77[52]  =  1'b0;
   assign  s_logisimBus77[53]  =  1'b0;
   assign  s_logisimBus77[54]  =  1'b0;
   assign  s_logisimBus77[55]  =  1'b0;
   assign  s_logisimBus77[56]  =  1'b0;
   assign  s_logisimBus77[57]  =  1'b0;
   assign  s_logisimBus77[58]  =  1'b0;
   assign  s_logisimBus77[59]  =  1'b0;
   assign  s_logisimBus77[60]  =  1'b0;
   assign  s_logisimBus77[61]  =  1'b0;
   assign  s_logisimBus77[62]  =  1'b0;
   assign  s_logisimBus77[63]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus79[0]  =  s_logisimBus62[0];
   assign  s_logisimBus79[1]  =  s_logisimBus62[1];
   assign  s_logisimBus79[2]  =  s_logisimBus62[2];
   assign  s_logisimBus79[3]  =  s_logisimBus62[3];
   assign  s_logisimBus79[4]  =  s_logisimBus62[4];
   assign  s_logisimBus79[5]  =  s_logisimBus62[5];
   assign  s_logisimBus79[6]  =  s_logisimBus62[6];
   assign  s_logisimBus79[7]  =  s_logisimBus62[7];
   assign  s_logisimBus79[8]  =  s_logisimBus62[8];
   assign  s_logisimBus79[9]  =  s_logisimBus62[9];
   assign  s_logisimBus79[10]  =  s_logisimBus62[10];
   assign  s_logisimBus79[11]  =  s_logisimBus62[11];
   assign  s_logisimBus79[12]  =  s_logisimBus62[12];
   assign  s_logisimBus79[13]  =  s_logisimBus62[13];
   assign  s_logisimBus79[14]  =  s_logisimBus62[14];
   assign  s_logisimBus79[15]  =  s_logisimBus62[15];
   assign  s_logisimBus79[16]  =  s_logisimBus62[16];
   assign  s_logisimBus79[17]  =  s_logisimBus62[17];
   assign  s_logisimBus79[18]  =  s_logisimBus62[18];
   assign  s_logisimBus79[19]  =  s_logisimBus62[19];
   assign  s_logisimBus79[20]  =  s_logisimBus62[20];
   assign  s_logisimBus79[21]  =  s_logisimBus62[21];
   assign  s_logisimBus79[22]  =  s_logisimBus62[22];
   assign  s_logisimBus79[23]  =  s_logisimBus62[23];
   assign  s_logisimBus79[24]  =  1'b0;
   assign  s_logisimBus79[25]  =  1'b0;
   assign  s_logisimBus79[26]  =  1'b0;
   assign  s_logisimBus79[27]  =  1'b0;
   assign  s_logisimBus79[28]  =  1'b0;
   assign  s_logisimBus79[29]  =  1'b0;
   assign  s_logisimBus79[30]  =  1'b0;
   assign  s_logisimBus79[31]  =  1'b0;
   assign  s_logisimBus79[32]  =  1'b0;
   assign  s_logisimBus79[33]  =  1'b0;
   assign  s_logisimBus79[34]  =  1'b0;
   assign  s_logisimBus79[35]  =  1'b0;
   assign  s_logisimBus79[36]  =  1'b0;
   assign  s_logisimBus79[37]  =  1'b0;
   assign  s_logisimBus79[38]  =  1'b0;
   assign  s_logisimBus79[39]  =  1'b0;
   assign  s_logisimBus79[40]  =  1'b0;
   assign  s_logisimBus79[41]  =  1'b0;
   assign  s_logisimBus79[42]  =  1'b0;
   assign  s_logisimBus79[43]  =  1'b0;
   assign  s_logisimBus79[44]  =  1'b0;
   assign  s_logisimBus79[45]  =  1'b0;
   assign  s_logisimBus79[46]  =  1'b0;
   assign  s_logisimBus79[47]  =  1'b0;
   assign  s_logisimBus79[48]  =  1'b0;
   assign  s_logisimBus79[49]  =  1'b0;
   assign  s_logisimBus79[50]  =  1'b0;
   assign  s_logisimBus79[51]  =  1'b0;
   assign  s_logisimBus79[52]  =  1'b0;
   assign  s_logisimBus79[53]  =  1'b0;
   assign  s_logisimBus79[54]  =  1'b0;
   assign  s_logisimBus79[55]  =  1'b0;
   assign  s_logisimBus79[56]  =  1'b0;
   assign  s_logisimBus79[57]  =  1'b0;
   assign  s_logisimBus79[58]  =  1'b0;
   assign  s_logisimBus79[59]  =  1'b0;
   assign  s_logisimBus79[60]  =  1'b0;
   assign  s_logisimBus79[61]  =  1'b0;
   assign  s_logisimBus79[62]  =  1'b0;
   assign  s_logisimBus79[63]  =  1'b0;


   // Constant
   assign  s_logisimBus35[63:0]  =  64'h0000000000000000;


   // Constant
   assign  s_logisimBus161[7:0]  =  8'h7F;


   // Constant
   assign  s_logisimBus118[7:0]  =  8'h7E;


   // Constant
   assign  s_logisimBus89[7:0]  =  8'h7F;


   // Constant
   assign  s_logisimBus17[7:0]  =  8'h7E;


   // NOT Gate
   assign s_logisimBus125 = ~s_logisimBus26;

   // NOT Gate
   assign s_logisimNet90 = ~s_logisimNet133;

   // NOT Gate
   assign s_logisimNet150 = ~s_logisimNet25;

   // NOT Gate
   assign s_logisimNet71 = ~s_logisimNet94;

   // NOT Gate
   assign s_logisimNet137 = ~s_logisimNet8;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NOR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet50),
               .input2(s_logisimNet64),
               .result(s_logisimNet23));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet143),
               .input2(s_logisimNet124),
               .result(s_logisimNet53));

   NOR_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus160[7]),
               .input2(s_logisimBus67[7]),
               .result(s_logisimNet10));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_4 (.input1(s_logisimBus67[7]),
               .input2(s_logisimNet96),
               .input3(s_logisimBus160[7]),
               .result(s_logisimNet117));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet2),
               .input2(s_logisimNet10),
               .result(s_logisimNet42));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet119),
               .input2(s_logisimNet122),
               .result(s_logisimNet46));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet93),
               .input2(s_logisimNet103),
               .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet37),
               .input2(s_logisimNet150),
               .result(s_logisimNet143));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet105),
               .input2(s_logisimNet71),
               .result(s_logisimNet124));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet113),
                .input2(s_logisimNet120),
                .result(s_logisimNet93));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet1),
                .input2(s_logisimNet22),
                .result(s_logisimNet119));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet143),
                .input2(s_logisimNet124),
                .result(s_logisimNet100));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet19),
                .input2(s_logisimNet90),
                .result(s_logisimNet85));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet144),
                .input2(s_logisimNet149),
                .result(s_logisimNet122));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet14),
                .input2(s_logisimNet137),
                .result(s_logisimNet78));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet86),
                .input2(s_logisimNet55),
                .result(s_logisimNet103));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet102),
                .input2(s_logisimNet28),
                .result(s_logisimNet20));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet36),
                .input2(s_logisimNet138),
                .result(s_logisimNet147));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_19 (.input1(s_logisimNet46),
                .input2(s_logisimNet29),
                .input3(s_logisimNet78),
                .input4(s_logisimNet85),
                .result(s_logisimNet80));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_20 (.input1(s_logisimNet103),
                .input2(s_logisimNet42),
                .input3(s_logisimNet122),
                .result(s_logisimNet30));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_21 (.input1(s_logisimNet93),
                .input2(s_logisimNet100),
                .input3(s_logisimNet119),
                .result(s_logisimNet97));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimBus43[31]),
                .input2(s_logisimBus63[31]),
                .result(s_logisimBus11[31]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_23 (.enable(1'b1),
                  .muxIn_0(s_logisimBus161[7:0]),
                  .muxIn_1(s_logisimBus118[7:0]),
                  .muxOut(s_logisimBus112[7:0]),
                  .sel(s_logisimNet143));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_24 (.enable(1'b1),
                  .muxIn_0(s_logisimBus89[7:0]),
                  .muxIn_1(s_logisimBus17[7:0]),
                  .muxOut(s_logisimBus69[7:0]),
                  .sel(s_logisimNet124));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_25 (.dataIn(s_logisimBus18[63:0]),
                  .dataOut(s_logisimNet64),
                  .sel(s_logisimBus91[5:0]));

   BitSelector #(.nrOfExtendedBits(65),
                 .nrOfInputBits(64),
                 .nrOfselBits(6))
      PLEXERS_26 (.dataIn(s_logisimBus18[63:0]),
                  .dataOut(s_logisimNet50),
                  .sel(s_logisimBus76[5:0]));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_27 (.enable(1'b1),
                  .muxIn_0(s_logisimBus18[45:23]),
                  .muxIn_1(s_logisimBus18[46:24]),
                  .muxOut(s_logisimBus47[22:0]),
                  .sel(s_logisimBus18[47]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_28 (.enable(1'b1),
                  .muxIn_0(s_logisimBus67[7:0]),
                  .muxIn_1(s_logisimBus82[7:0]),
                  .muxOut(s_logisimBus145[7:0]),
                  .sel(s_logisimBus67[7]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_29 (.enable(1'b1),
                  .muxIn_0(s_logisimBus160[7:0]),
                  .muxIn_1(s_logisimBus127[7:0]),
                  .muxOut(s_logisimBus142[7:0]),
                  .sel(s_logisimBus160[7]));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_30 (.enable(1'b1),
                  .muxIn_0(s_logisimBus47[22:0]),
                  .muxIn_1(s_logisimBus51[22:0]),
                  .muxOut(s_logisimBus92[22:0]),
                  .sel(s_logisimNet97));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_31 (.enable(1'b1),
                  .muxIn_0(s_logisimBus83[7:0]),
                  .muxIn_1(s_logisimBus110[7:0]),
                  .muxOut(s_logisimBus98[7:0]),
                  .sel(s_logisimNet97));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_32 (.enable(1'b1),
                  .muxIn_0(s_logisimBus98[7:0]),
                  .muxIn_1(s_logisimBus33[7:0]),
                  .muxOut(s_logisimBus106[7:0]),
                  .sel(s_logisimNet23));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_33 (.enable(1'b1),
                  .muxIn_0(s_logisimBus7[7:0]),
                  .muxIn_1(s_logisimBus6[7:0]),
                  .muxOut(s_logisimBus26[7:0]),
                  .sel(s_logisimBus18[47]));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_34 (.enable(1'b1),
                  .muxIn_0(s_logisimBus92[22:0]),
                  .muxIn_1(s_logisimBus81[22:0]),
                  .muxOut(s_logisimBus34[22:0]),
                  .sel(s_logisimNet30));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_35 (.enable(1'b1),
                  .muxIn_0(s_logisimBus106[7:0]),
                  .muxIn_1(s_logisimBus16[7:0]),
                  .muxOut(s_logisimBus61[7:0]),
                  .sel(s_logisimNet30));

   Multiplexer_bus_2 #(.nrOfBits(6))
      PLEXERS_36 (.enable(1'b1),
                  .muxIn_0(s_logisimBus107[5:0]),
                  .muxIn_1(s_logisimBus141[5:0]),
                  .muxOut(s_logisimBus68[5:0]),
                  .sel(s_logisimNet32));

   Multiplexer_bus_2 #(.nrOfBits(23))
      PLEXERS_37 (.enable(1'b1),
                  .muxIn_0(s_logisimBus34[22:0]),
                  .muxIn_1(s_logisimBus66[22:0]),
                  .muxOut(s_logisimBus11[22:0]),
                  .sel(s_logisimNet80));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_38 (.enable(1'b1),
                  .muxIn_0(s_logisimBus61[7:0]),
                  .muxIn_1(s_logisimBus154[7:0]),
                  .muxOut(s_logisimBus11[30:23]),
                  .sel(s_logisimNet80));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_39 (.enable(1'b1),
                  .muxIn_0(s_logisimBus21[7:0]),
                  .muxIn_1(s_logisimBus26[7:0]),
                  .muxOut(s_logisimBus83[7:0]),
                  .sel(s_logisimNet53));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_40 (.enable(1'b1),
                  .muxIn_0(s_logisimBus145[7:0]),
                  .muxIn_1(s_logisimBus142[7:0]),
                  .muxOut(s_logisimBus4[7:0]),
                  .sel(s_logisimNet124));

   Multiplexer_bus_2 #(.nrOfBits(24))
      PLEXERS_41 (.enable(1'b1),
                  .muxIn_0(s_logisimBus38[23:0]),
                  .muxIn_1(s_logisimBus27[23:0]),
                  .muxOut(s_logisimBus159[23:0]),
                  .sel(s_logisimNet124));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_42 (.enable(1'b1),
                  .muxIn_0(s_logisimBus99[7:0]),
                  .muxIn_1(s_logisimBus4[7:0]),
                  .muxOut(s_logisimBus115[7:0]),
                  .sel(s_logisimNet20));

   Multiplexer_bus_2 #(.nrOfBits(24))
      PLEXERS_43 (.enable(1'b1),
                  .muxIn_0(s_logisimBus111[23:0]),
                  .muxIn_1(s_logisimBus54[23:0]),
                  .muxOut(s_logisimBus62[23:0]),
                  .sel(s_logisimNet143));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_44 (.enable(1'b1),
                  .muxIn_0(s_logisimBus134[63:0]),
                  .muxIn_1(s_logisimBus35[63:0]),
                  .muxOut(s_logisimBus44[63:0]),
                  .sel(s_logisimNet147));

   Multiplexer_2   PLEXERS_45 (.enable(1'b1),
                               .muxIn_0(s_logisimBus67[7]),
                               .muxIn_1(s_logisimBus160[7]),
                               .muxOut(s_logisimNet156),
                               .sel(s_logisimNet124));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_46 (.enable(1'b1),
                  .muxIn_0(s_logisimBus52[63:0]),
                  .muxIn_1(s_logisimBus44[63:0]),
                  .muxOut(s_logisimBus56[63:0]),
                  .sel(s_logisimNet156));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_47 (.enable(1'b1),
                  .muxIn_0(s_logisimBus56[63:0]),
                  .muxIn_1(s_logisimBus9[63:0]),
                  .muxOut(s_logisimBus0[63:0]),
                  .sel(s_logisimNet53));

   Multiplexer_bus_2 #(.nrOfBits(64))
      PLEXERS_48 (.enable(1'b1),
                  .muxIn_0(s_logisimBus0[63:0]),
                  .muxIn_1(s_logisimBus87[63:0]),
                  .muxOut(s_logisimBus18[63:0]),
                  .sel(s_logisimNet117));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_49 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus43[30:23]),
                .dataB(s_logisimBus112[7:0]),
                .result(s_logisimBus160[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_50 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus63[30:23]),
                .dataB(s_logisimBus69[7:0]),
                .result(s_logisimBus67[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_51 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus152[7:0]),
                .dataB(s_logisimBus67[7:0]),
                .result(s_logisimBus82[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_52 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus60[7:0]),
                .dataB(s_logisimBus160[7:0]),
                .result(s_logisimBus127[7:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_53 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet96),
                .dataA(s_logisimBus48[8:0]),
                .dataB(s_logisimBus148[8:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_54 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus160[7:0]),
                .dataB(s_logisimBus67[7:0]),
                .result(s_logisimBus49[7:0]));

   Adder #(.extendedBits(10),
           .nrOfBits(9))
      ARITH_55 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus160[8:0]),
                .dataB(s_logisimBus67[8:0]),
                .result(s_logisimBus48[8:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_56 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet2),
                .aLessThanB(),
                .dataA(s_logisimBus49[7:0]),
                .dataB(s_logisimBus88[7:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_57 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus49[7:0]),
                .dataB(s_logisimBus31[7:0]),
                .result(s_logisimBus7[7:0]));

   Subtractor #(.extendedBits(10),
                .nrOfBits(9))
      ARITH_58 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus109[8:0]),
                .dataB(s_logisimBus48[8:0]),
                .result(s_logisimBus107[8:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_59 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus7[7:0]),
                .dataB(s_logisimBus99[7:0]),
                .result(s_logisimBus21[7:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_60 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus7[7:0]),
                .dataB(s_logisimBus136[7:0]),
                .result(s_logisimBus6[7:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(1))
      ARITH_61 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet32),
                .aLessThanB(),
                .dataA(s_logisimBus107[8:0]),
                .dataB(s_logisimBus101[8:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_62 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus125[7:0]),
                .dataB(s_logisimBus155[7:0]),
                .result());

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_63 (.aEqualsB(s_logisimNet25),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus151[22:0]),
                .dataB(s_logisimBus72[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_64 (.aEqualsB(s_logisimNet94),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus139[22:0]),
                .dataB(s_logisimBus123[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_65 (.aEqualsB(s_logisimNet120),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus139[22:0]),
                .dataB(s_logisimBus131[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_66 (.aEqualsB(s_logisimNet22),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus151[22:0]),
                .dataB(s_logisimBus40[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_67 (.aEqualsB(s_logisimNet133),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus139[22:0]),
                .dataB(s_logisimBus59[22:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_68 (.aEqualsB(s_logisimNet149),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus139[22:0]),
                .dataB(s_logisimBus158[22:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_69 (.aEqualsB(s_logisimNet37),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[30:23]),
                .dataB(s_logisimBus129[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_70 (.aEqualsB(s_logisimNet105),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus63[30:23]),
                .dataB(s_logisimBus24[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_71 (.aEqualsB(s_logisimNet113),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus63[30:23]),
                .dataB(s_logisimBus39[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_72 (.aEqualsB(s_logisimNet1),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[30:23]),
                .dataB(s_logisimBus114[7:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_73 (.aEqualsB(s_logisimNet8),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus151[22:0]),
                .dataB(s_logisimBus108[22:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_74 (.aEqualsB(s_logisimNet19),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus63[30:23]),
                .dataB(s_logisimBus121[7:0]));

   Comparator #(.nrOfBits(23),
                .twosComplement(1))
      ARITH_75 (.aEqualsB(s_logisimNet55),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus151[22:0]),
                .dataB(s_logisimBus73[22:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_76 (.aEqualsB(s_logisimNet144),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus63[30:23]),
                .dataB(s_logisimBus84[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_77 (.aEqualsB(s_logisimNet14),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[30:23]),
                .dataB(s_logisimBus157[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_78 (.aEqualsB(s_logisimNet86),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[30:23]),
                .dataB(s_logisimBus130[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_79 (.aEqualsB(s_logisimNet138),
                .aGreaterThanB(s_logisimNet36),
                .aLessThanB(),
                .dataA(s_logisimBus4[7:0]),
                .dataB(s_logisimBus41[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_80 (.aEqualsB(s_logisimNet28),
                .aGreaterThanB(s_logisimNet102),
                .aLessThanB(),
                .dataA(s_logisimBus99[7:0]),
                .dataB(s_logisimBus4[7:0]));

   Shifter_64_bit #(.shifterMode(0))
      ARITH_81 (.dataA(s_logisimBus9[63:0]),
                .result(s_logisimBus52[63:0]),
                .shiftAmount(s_logisimBus115[5:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_82 (.dataA(s_logisimBus9[63:0]),
                .result(s_logisimBus134[63:0]),
                .shiftAmount(s_logisimBus4[5:0]));

   Multiplier #(.calcBits(128),
                .nrOfBits(64),
                .unsignedMultiplier(0))
      ARITH_83 (.carryIn(64'd0),
                .inputA(s_logisimBus79[63:0]),
                .inputB(s_logisimBus77[63:0]),
                .multHigh(),
                .multLow(s_logisimBus9[63:0]));

   Shifter_64_bit #(.shifterMode(2))
      ARITH_84 (.dataA(s_logisimBus9[63:0]),
                .result(s_logisimBus87[63:0]),
                .shiftAmount(s_logisimBus68[5:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   find_msb   findMSBh (.input1(s_logisimBus9[63:0]),
                        .result_msb(s_logisimBus99[7:0]));

endmodule
