/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplier                                                   **
 **                                                                          **
 *****************************************************************************/

module Multiplier( carryIn,
                   inputA,
                   inputB,
                   multHigh,
                   multLow );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter calcBits = 1;
   parameter nrOfBits = 1;
   parameter unsignedMultiplier = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [nrOfBits-1:0] carryIn;
   input [nrOfBits-1:0] inputA;
   input [nrOfBits-1:0] inputB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] multHigh;
   output [nrOfBits-1:0] multLow;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [calcBits-1:0] s_extendedcarryIn;
   wire [calcBits-1:0] s_multResult;
   wire [calcBits-1:0] s_newResult;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg[calcBits-1:0] s_carryIn;
   reg[calcBits-1:0] s_multUnsigned;
   reg[calcBits-1:0] s_intermediateResult;
   reg signed[calcBits-1:0] s_multSigned;

   always @(*)
   begin
      s_carryIn[nrOfBits-1:0] = carryIn;
      if (unsignedMultiplier== 1)
         begin
            s_carryIn[calcBits-1:nrOfBits] = 0;
            s_multUnsigned = $unsigned(inputA) * $unsigned(inputB);
            s_intermediateResult = $unsigned(s_multUnsigned) + $unsigned(s_carryIn);
          end
       else
         begin
            if (carryIn[nrOfBits-1] == 1)
               s_carryIn[calcBits-1:nrOfBits] = -1;
            else
               s_carryIn[calcBits-1:nrOfBits] = 0;
            s_multSigned = $signed(inputA) * $signed(inputB);
            s_intermediateResult = $signed(s_multSigned) + $signed(s_carryIn);
          end
   end

   assign multHigh = s_intermediateResult[calcBits-1:nrOfBits];
   assign multLow  = s_intermediateResult[nrOfBits-1:0];

endmodule
