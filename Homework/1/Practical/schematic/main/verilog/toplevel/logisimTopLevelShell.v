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
   wire [3:0] s_a;
   wire [3:0] s_b;
   wire       s_cout;
   wire [3:0] s_s;
   wire       s_sub_notadd;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign s_a[0]       = 1'b0;
   assign s_a[1]       = 1'b0;
   assign s_a[2]       = 1'b0;
   assign s_a[3]       = 1'b0;
   assign s_b[0]       = 1'b0;
   assign s_b[1]       = 1'b0;
   assign s_b[2]       = 1'b0;
   assign s_b[3]       = 1'b0;
   assign s_sub_notadd = 1'b0;

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   main   CIRCUIT_0 (.a(s_a),
                     .b(s_b),
                     .cout(s_cout),
                     .s(s_s),
                     .sub_notadd(s_sub_notadd));
endmodule
