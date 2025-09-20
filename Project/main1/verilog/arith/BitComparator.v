/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : BitComparator                                                **
 **                                                                          **
 *****************************************************************************/

module BitComparator( aEqualsB,
                      aGreaterThanB,
                      aLessThanB,
                      dataA,
                      dataB );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter twosComplement = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input dataA;
   input dataB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output aEqualsB;
   output aGreaterThanB;
   output aLessThanB;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign aEqualsB      = (dataA == dataB);
   assign aLessThanB    = (dataA < dataB);
   assign aGreaterThanB = (dataA > dataB);

endmodule
