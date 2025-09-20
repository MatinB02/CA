/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : logisimTopLevelShell                                         **
 **                                                                          **
 *****************************************************************************/

module logisimTopLevelShell(  );

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire        s_clk;
   wire [31:0] s_dividend;
   wire [31:0] s_divisor;
   wire        s_done;
   wire [31:0] s_quotient;
   wire [31:0] s_remainder;
   wire        s_start;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign s_clk          = 1'b0;
   assign s_dividend[0]  = 1'b0;
   assign s_dividend[10] = 1'b0;
   assign s_dividend[11] = 1'b0;
   assign s_dividend[12] = 1'b0;
   assign s_dividend[13] = 1'b0;
   assign s_dividend[14] = 1'b0;
   assign s_dividend[15] = 1'b0;
   assign s_dividend[16] = 1'b0;
   assign s_dividend[17] = 1'b0;
   assign s_dividend[18] = 1'b0;
   assign s_dividend[19] = 1'b0;
   assign s_dividend[1]  = 1'b0;
   assign s_dividend[20] = 1'b0;
   assign s_dividend[21] = 1'b0;
   assign s_dividend[22] = 1'b0;
   assign s_dividend[23] = 1'b0;
   assign s_dividend[24] = 1'b0;
   assign s_dividend[25] = 1'b0;
   assign s_dividend[26] = 1'b0;
   assign s_dividend[27] = 1'b0;
   assign s_dividend[28] = 1'b0;
   assign s_dividend[29] = 1'b0;
   assign s_dividend[2]  = 1'b0;
   assign s_dividend[30] = 1'b0;
   assign s_dividend[31] = 1'b0;
   assign s_dividend[3]  = 1'b0;
   assign s_dividend[4]  = 1'b0;
   assign s_dividend[5]  = 1'b0;
   assign s_dividend[6]  = 1'b0;
   assign s_dividend[7]  = 1'b0;
   assign s_dividend[8]  = 1'b0;
   assign s_dividend[9]  = 1'b0;
   assign s_divisor[0]   = 1'b0;
   assign s_divisor[10]  = 1'b0;
   assign s_divisor[11]  = 1'b0;
   assign s_divisor[12]  = 1'b0;
   assign s_divisor[13]  = 1'b0;
   assign s_divisor[14]  = 1'b0;
   assign s_divisor[15]  = 1'b0;
   assign s_divisor[16]  = 1'b0;
   assign s_divisor[17]  = 1'b0;
   assign s_divisor[18]  = 1'b0;
   assign s_divisor[19]  = 1'b0;
   assign s_divisor[1]   = 1'b0;
   assign s_divisor[20]  = 1'b0;
   assign s_divisor[21]  = 1'b0;
   assign s_divisor[22]  = 1'b0;
   assign s_divisor[23]  = 1'b0;
   assign s_divisor[24]  = 1'b0;
   assign s_divisor[25]  = 1'b0;
   assign s_divisor[26]  = 1'b0;
   assign s_divisor[27]  = 1'b0;
   assign s_divisor[28]  = 1'b0;
   assign s_divisor[29]  = 1'b0;
   assign s_divisor[2]   = 1'b0;
   assign s_divisor[30]  = 1'b0;
   assign s_divisor[31]  = 1'b0;
   assign s_divisor[3]   = 1'b0;
   assign s_divisor[4]   = 1'b0;
   assign s_divisor[5]   = 1'b0;
   assign s_divisor[6]   = 1'b0;
   assign s_divisor[7]   = 1'b0;
   assign s_divisor[8]   = 1'b0;
   assign s_divisor[9]   = 1'b0;
   assign s_start        = 1'b0;

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   main   CIRCUIT_0 (.clk(s_clk),
                     .dividend(s_dividend),
                     .divisor(s_divisor),
                     .done(s_done),
                     .quotient(s_quotient),
                     .remainder(s_remainder),
                     .start(s_start));
endmodule
