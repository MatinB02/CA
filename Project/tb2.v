module tb;
    //______________________________________________Macro colors:
    `define RED     "\033[31m"
    `define GREEN   "\033[32m"
    `define YELLOW  "\033[33m"
    `define WHITE   "\033[37m"
    `define RESET   "\033[0m"
    `define CYAN    "\033[36m"

    //______________________________________________Circuit Elements:
    reg clk, rst, Jen;
    wire [31:0] test;
    reg [31:0] instructions[512];
    reg [31:0] data_mem[512];
    reg [31:0] Jin;
    wire [31:0] Jout;
    wire InstDone;
    wire [31:0] R[32];
    wire [31:0] FR[32];
    assign R[0] = 0;
    reg [31:0] inst_reg;
    reg [4:0] inst_rs, inst_rt, inst_rd;
    reg [31:0] val_rs, val_rt;
    reg [31:0] val_frs, val_frt; /*actual values of FP register*/
    reg [31:0] val_2;
    reg [15:0] inst_imm;
    reg [31:0] inst_imm_sext;
    reg [8:0] ipc;
    reg [31:0] ireg[32];
    reg [31:0] ifreg[32]; /*expected values of FP register*/
    reg [31:0] ireghi, ireglo;
    reg [31:0] data_addr;
    //____________________________________________________Calculation Functions:
    task write2reg(input [4:0] reg_dest, input [31:0] val);
        begin
            if (reg_dest !== 0) ireg[reg_dest] = val;
        end
    endtask
    task w2fr(input [4:0] reg_dest, input [31:0] val);  // write to FP register
        begin
            if (reg_dest !== 0) ifreg[reg_dest] = val;
        end
    endtask
    function [31:0] sra(input [31:0] a, input [4:0] b);
        begin
            sra = ({{32{a[31]}}, a} >> b);
        end
    endfunction
    function [31:0] ieee754_add;
        input [31:0] a, b;

        reg sign_a, sign_b, sign_res;
        reg [7:0] exp_a, exp_b, exp_diff;
        reg [23:0] mant_a, mant_b;  // 1 + 23 bits
        reg [24:0] mant_addsub;
        reg [7:0] exp_res;
        reg [4:0] shift;

        begin
            if ((a[30:23] == 8'b11111111 && a[22:0] != 0) ||
                (b[30:23] == 8'b11111111 && b[22:0] != 0)) begin

                ieee754_add = 32'h7FC00000;  // Quiet NaN
            end else begin

                sign_a = a[31];
                sign_b = b[31];
                exp_a = a[30:23];
                exp_b = b[30:23];
                mant_a = (exp_a == 0) ? {1'b0, a[22:0]} : {1'b1, a[22:0]};  // denormals
                mant_b = (exp_b == 0) ? {1'b0, b[22:0]} : {1'b1, b[22:0]};

                // equal exponents
                if (exp_a > exp_b) begin
                    exp_diff = exp_a - exp_b;
                    mant_b = mant_b >> exp_diff;
                    exp_res = exp_a;
                end else begin
                    exp_diff = exp_b - exp_a;
                    mant_a = mant_a >> exp_diff;
                    exp_res = exp_b;
                end

                if (sign_a == sign_b) begin
                    mant_addsub = mant_a + mant_b;
                    sign_res = sign_a;
                end else begin
                    if (mant_a > mant_b) begin
                        mant_addsub = mant_a - mant_b;
                        sign_res = sign_a;
                    end else begin
                        mant_addsub = mant_b - mant_a;
                        sign_res = sign_b;
                    end
                end

            if (mant_addsub == 0) begin
            ieee754_add = 32'h00000000;  
        end else begin
            // normalize
            if (mant_addsub[24]) begin
                mant_addsub = mant_addsub >> 1;
                exp_res = exp_res + 1;
            end else begin
                while (mant_addsub[23] == 0 && exp_res > 0) begin
                    mant_addsub = mant_addsub << 1;
                    exp_res = exp_res - 1;
                end
            end

            ieee754_add = {sign_res, exp_res, mant_addsub[22:0]};
        end

            end
        end
    endfunction
    function [31:0] ieee754_abs;
        input [31:0] a;
        ieee754_abs = {1'b0, a[30:0]};
    endfunction
    function [31:0] ieee754_mul;
        input [31:0] a, b;

        reg        sign_a, sign_b, sign_r;
        reg [7:0]  exp_a, exp_b;
        reg [23:0] man_a, man_b;
        reg [47:0] man_prod;
        integer    exp_a_int, exp_b_int, exp_r_int;
        integer    shift;
        reg [22:0] frac_r;
        reg [7:0]  exp_r;

        begin
            //-------------------------------- NaN tests ------------------------------
            if ((a[30:23]==8'hFF && a[22:0]!=0) ||
                (b[30:23]==8'hFF && b[22:0]!=0) || (a[30:23]==8'hFF && a[22:0]==0 && b == 0) || (b[30:23]==8'hFF && b[22:0]==0 && a == 0) ) begin
                ieee754_mul = 32'h7FFF_FFFF;        // quiet NaN
                $display("***NaN");
                end
            //-------------------------------- 0 × ∞  --------------------------------
            else if (((a[30:23]==8'hFF) && (b[30:23]==0) && (b[22:0]==0)) ||
                    ((b[30:23]==8'hFF) && (a[30:23]==0) && (a[22:0]==0)))
                ieee754_mul = 32'h7FC0_0000;        // NaN

            //-------------------------------- any ∞  --------------------------------
            else if ((a[30:23]==8'hFF) || (b[30:23]==8'hFF)) begin
                sign_r = a[31] ^ b[31];
                ieee754_mul = {sign_r, 8'hFF, 23'b0};
            end

            //-------------------------------- any ±0  -------------------------------
            else if (((a[30:23]==0)&&(a[22:0]==0)) ||
                    ((b[30:23]==0)&&(b[22:0]==0))) begin
                sign_r = a[31] ^ b[31];
                ieee754_mul = {sign_r, 31'b0};
            end

            //-------------------------------- main path -----------------------------
            else begin
                // sign
                sign_r = a[31] ^ b[31];

                // unpack exponent & mantissa
                exp_a = a[30:23];  exp_b = b[30:23];
                man_a = (exp_a==0) ? {1'b0,a[22:0]} : {1'b1,a[22:0]};
                man_b = (exp_b==0) ? {1'b0,b[22:0]} : {1'b1,b[22:0]};

                // unbiased exponents
                exp_a_int = (exp_a==0) ? -126 : (exp_a - 127);
                exp_b_int = (exp_b==0) ? -126 : (exp_b - 127);

                // multiply mantissas
                man_prod  = man_a * man_b;          // 24×24 → 48

                // add exponents
                exp_r_int = exp_a_int + exp_b_int;

                // first (right) normalisation if MSB in bit47
                if (man_prod[47]) begin
                    man_prod  = man_prod >> 1;
                    exp_r_int = exp_r_int + 1;
                end

                // -------->>>  NEW left‑normalisation <<<--------
                while (man_prod[46]==0 && exp_r_int>-149) begin
                    man_prod  = man_prod << 1;
                    exp_r_int = exp_r_int - 1;
                end

                // overflow → ±∞
                if (exp_r_int + 127 >= 255)
                    ieee754_mul = {sign_r, 8'hFF, 23'b0};

                // normal range
                else if (exp_r_int >= -126) begin
                    exp_r  = exp_r_int + 127;
                    frac_r = man_prod[45:23];       // truncate
                    ieee754_mul = {sign_r, exp_r, frac_r};
                end

                // sub‑normal range
                else if (exp_r_int >= -149) begin
                    shift     = -126 - exp_r_int;   // 1…23
                    man_prod  = man_prod >> shift;
                    frac_r    = man_prod[45:23];
                    ieee754_mul = {sign_r, 8'h00, frac_r};
                end

                // underflow to zero
                else
                    ieee754_mul = {sign_r, 31'b0};
            end
        end
    endfunction

    function [31:0] fsin;
        input [31:0] x;  // IEEE754 float input
        input [31:0] n;  // positive integer in 32-bit binary (not float)

        // Internal registers
        integer i, limit;
        reg [31:0] sum;      // Running sum of the series
        reg [31:0] term;     // Current term of the series
        reg [31:0] x_power;  // x^(2i+1)
        reg [31:0] inv_factorial [0:19]; // Precomputed 1/(2i+1)! for i=0 to 19
        reg [31:0] x2;

        begin
             // Precomputed reciprocal factorials (1/(2i+1)!) in IEEE 754 single-precision with signs
            inv_factorial[0]  = 32'h3F800000; // 1/1! = 1.0 (positive)
            inv_factorial[1]  = 32'hBE2AAAAB; // 1/3! ≈ -0.16666667 (negative)
            inv_factorial[2]  = 32'h3C088889; // 1/5! ≈ 0.008333333 (positive)
            inv_factorial[3]  = 32'hb9500d01; // 1/7! ≈ -0.0001984127 (negative)
            inv_factorial[4]  = 32'h3638ef1d; // 1/9! ≈ 0.0000027557 (positive)
            inv_factorial[5]  = 32'hb2d7322b; // 1/11! ≈ -2.5052108e-8 (negative)
            inv_factorial[6]  = 32'h2f309231; // 1/13! ≈ 1.6059044e-10 (positive)
            inv_factorial[7]  = 32'hab573f9f; // 1/15! ≈ -7.6475733e-13 (negative)
            inv_factorial[8]  = 32'h274a963c; // 1/17! ≈ 2.8114573e-15 (positive)
            inv_factorial[9]  = 32'ha317a4da; // 1/19! ≈ -8.2206352e-18 (negative)
            inv_factorial[10] = 32'h1eb8dc78; // 1/21! ≈ 1.9572941e-20 (positive)
            inv_factorial[11] = 32'h9a3b0da1; // 1/23! ≈ -3.8681702e-23 (negative)
            inv_factorial[12] = 32'h159f9e67; // 1/25! ≈ 
            inv_factorial[13] = 32'h90e8d58e;
            inv_factorial[14] = 32'hc12cfcc;
            inv_factorial[15] = 32'h8721a697;
            inv_factorial[16] = 32'h21cc093;
            inv_factorial[17] = 32'h80010dc6;
            inv_factorial[18] = 32'h00000034;
            inv_factorial[19] = 32'h80000000;

            // Initialize variables
            sum       = x;        // First term: x
            x_power   = x;        // Start with x^1
            limit     = n[4:0] > 20 ? 20 : n[4:0]; // Cap at 19 terms for safety
            x2        = ieee754_mul(x, x); // Compute x^2 once

            // Taylor series: sin(x) = x - x^3/3! + x^5/5! - x^7/7! + ... + (-1)^i * x^(2i+1)/(2i+1)!
            for (i = 1; i < limit; i = i + 1) begin
                // Compute x_power = x_power * x^2 (next odd power: x^(2i+1))
                x_power = ieee754_mul(x_power, x2);

                // Compute term = x_power * (1/(2i+1)!)
                term = ieee754_mul(x_power, inv_factorial[i]);

                // Add term to sum
                sum = ieee754_add(sum, term);
            end
            fsin = sum;
        end
    endfunction

    function isFsin;
        input [31:0] in;
        isFsin = (in[31:26] == 6'b000000) && (in[5:1] == 5'b00000) && (in[0] == 1'b1);
    endfunction

    function [255:0] float_to_decimal;
        input [31:0] float; // 32-bit IEEE 754 float
        reg sign;
        reg [7:0] exp;
        reg [22:0] mantissa;
        reg is_zero, is_inf, is_nan;
        integer unbiased_exp;
        reg [31:0] int_part;
        reg [31:0] frac_part_scaled;
        reg [255:0] result_str;
        reg [47:0] mantissa_full;
        integer i;
        real value_approx;

        begin
            // Extract components
            sign = float[31];
            exp = float[30:23];
            mantissa = float[22:0];

            // Check special cases
            is_zero = (exp == 8'h00) && (mantissa == 23'h0);
            is_inf = (exp == 8'hFF) && (mantissa == 23'h0);
            is_nan = (exp == 8'hFF) && (mantissa != 23'h0);

            if (is_nan) begin
                result_str = "NaN";
            end
            else if (is_inf) begin
                result_str = sign ? "-Infinity" : "+Infinity";
            end
            else if (is_zero) begin
                result_str = "0.0";
            end
            else begin
                // Compute unbiased exponent
                unbiased_exp = exp - 127;

                // Special case for very small numbers
                if (unbiased_exp < -20) begin
                    result_str = sign ? "-0.0000000" : "0.0000000";
                end
                else begin
                    // Construct mantissa (1.mantissa for normalized, 0.mantissa for denormal)
                    mantissa_full = (exp == 0) ? {24'b0, mantissa} : {1'b1, mantissa, 24'b0};

                    // Approximate value
                    int_part = 0;
                    frac_part_scaled = 0;
                    value_approx = 0.0;

                    if (exp != 0) begin
                        // Normalized: mantissa starts with implicit 1
                        value_approx = 1.0;
                        for (i = 0; i < 23; i = i + 1) begin
                            if (mantissa[22-i]) begin
                                value_approx = value_approx + (1.0 / (2.0 ** (i + 1)));
                            end
                        end
                    end
                    else begin
                        // Denormalized: no implicit 1
                        value_approx = 0.0;
                        for (i = 0; i < 23; i = i + 1) begin
                            if (mantissa[22-i]) begin
                                value_approx = value_approx + (1.0 / (2.0 ** (i + 1)));
                            end
                        end
                        unbiased_exp = unbiased_exp + 1; // Adjust for denormal
                    end

                    // Apply exponent
                    if (unbiased_exp >= 0) begin
                        value_approx = value_approx * (2.0 ** unbiased_exp);
                    end
                    else begin
                        value_approx = value_approx / (2.0 ** -unbiased_exp);
                    end

                    // Apply sign
                    if (sign) value_approx = -value_approx;

                    // Split into integer and fractional parts
                    int_part = $rtoi(value_approx);
                    frac_part_scaled = $rtoi((value_approx - int_part) * 10000000); // 7 decimal places
                    if (frac_part_scaled < 0) frac_part_scaled = -frac_part_scaled;

                    // Format string with high precision
                    $sformat(result_str, "%0s%d.%07d", sign ? "-" : "", int_part, frac_part_scaled);
                end
            end
            float_to_decimal = result_str;
        end
    endfunction

    task showError;
        input [31:0] in;
        reg [31:0] val_frd, val_ifrd, error;
        reg [255:0] error_str;
        begin
            val_frd = FR[in[15:11]]; // Actual FP register value
            val_ifrd = ifreg[in[15:11]]; // Expected FP register value
            error = ieee754_add(val_frd, {~val_ifrd[31], val_ifrd[30:0]}); // val_frd - val_ifrd
            error_str = float_to_decimal(error);
            $display("hex error: %h      , Error = %s", error, error_str);
        end
    endtask

    task exec_internal;
        begin
            inst_reg = instructions[ipc];
            ipc += 1;

            inst_rs = inst_reg[25:21];
            inst_rt = inst_reg[20:16];
            inst_rd = inst_reg[15:11];
            inst_imm = inst_reg[15:0];
            inst_imm_sext = {{16{inst_imm[15]}}, inst_imm};
            val_rs = ireg[inst_rs];
            val_rt = ireg[inst_rt];
            val_frs = ifreg[inst_rs]; /*FP register value*/
            val_frt = ifreg[inst_rt]; /*FP register value*/
	      case (inst_reg[31:26])
                6'b000000: begin  // RType
                    case (inst_reg[5:0])
                        6'b100000: write2reg(inst_rd, val_rs + val_rt);             // add
                        6'b100010: write2reg(inst_rd, val_rs - val_rt);             // sub
                        6'b100100: write2reg(inst_rd, val_rs & val_rt);             // and
                        6'b100101: write2reg(inst_rd, val_rs | val_rt);             // or
                        6'b100110: write2reg(inst_rd, val_rs ^ val_rt);             // xor
                        6'b000100: write2reg(inst_rd, val_rs << val_rt[4:0]);       // sll
                        6'b000110: write2reg(inst_rd, val_rs >> val_rt[4:0]);       // srl
                        6'b000111: write2reg(inst_rd, sra(val_rs, val_rt[4:0]));    // sra
                        6'b000000:
                        write2reg(inst_rd, val_rt << inst_reg[10:6]);  // sll (imm) rd=rt<<shamt
                        6'b011010: begin  // div HI=rs%rt; LO=rs/rt
                            ireghi = val_rs % val_rt;
                            ireglo = val_rs / val_rt;
                        end
                        6'b010000: write2reg(inst_rd, ireghi);  // mfhi rd=HI
                        6'b010010: write2reg(inst_rd, ireglo);  // mflo rd=LO

                        //______________________________________________FP instructions:
                        /*displayed values are hex, register numbers are dec*/
                        6'b000001: begin    // Fsin
                        	w2fr(inst_rd, fsin(val_frs, val_rt));
                        	$display("Fsin: FR[%0d] in R[%0d] steps --> FR[%0d]", inst_rs, inst_rt, inst_rd);
                        end
                        6'b010011: begin    // Fadd
                            w2fr(inst_rd, ieee754_add(val_frs, val_frt));
                            $display("Fadd: FR[%0d] + FR[%0d] --> FR[%0d]", inst_rs, inst_rt, inst_rd);
                        end
                        6'b010100: begin    // Fsub
			                w2fr(inst_rd, ieee754_add(val_frs, {~val_frt[31], val_frt[30:0]}));
                            $display("Fsub: FR[%0d] - FR[%0d] --> FR[%0d]", inst_rs, inst_rt, inst_rd);
                        end
                        6'b010101: begin    // Fmult
                            w2fr(inst_rd, ieee754_mul(val_frs, val_frt));
                            $display("Fmult: FR[%0d] * FR[%0d] --> FR[%0d]", inst_rs, inst_rt, inst_rd);
                        end
                        6'b010110: begin    // Fabs
                            w2fr(inst_rd, ieee754_abs(val_frs)); 
                            $display("Fabs: |FR[%0d]| --> FR[%0d]", inst_rs, inst_rd);
                        end
                        6'b010111: begin    // Fslt (FR[rs] < FR[rt] ? 1 : 0)
    				        val_2 = ieee754_add(val_frs, {~val_frt[31], val_frt[30:0]});  // FR[rs] - FR[rt];
                            if (val_2[31] == 1'b1) begin
                                w2fr(inst_rd, 32'd1);  // FR[rs] < FR[rt]
                            end else begin
                                w2fr(inst_rd, 32'd0);  // FR[rs] >= FR[rt]
                            end
                            $display("Fslt: FR[%0d] < FR[%0d] --> R[%0d] = %0d", inst_rs, inst_rt, inst_rd, (val_2[31] ? 1 : 0));
                        end
                        6'b011000: begin    // TOcop
                            w2fr(inst_rd, val_rs);
                            $display("TOcop: R[%0d] = %h --> FR[%0d]", inst_rs, val_rs, inst_rd);
                        end
                        6'b011001: begin    // FROMcop
                            write2reg(inst_rd, val_frs);
                            $display("FROMcop: FR[%0d] = %h --> R[%0d]", inst_rs, val_frs, inst_rd);
                        end
                        //________________________________________end of FP instructions/
                        default $display("NOT IMPLEMENTED : rtype[func: %b]", inst_reg[5:0]);
                    endcase
                end
                6'b001000: write2reg(inst_rt, val_rs + inst_imm_sext);  // addi
                6'b101011: begin  // sw *(int*)(offset+rs)=rt
                    data_addr = val_rs + inst_imm_sext;
                    if (data_addr & 3 !== 0)
                        $display(
                            "WARNING : Unaligned data address (%x)",
                            data_addr,
                            "  %x => %x %x",
                            inst_rs,
                            val_rs,
                            inst_imm_sext
                        );
                    $display("sw: R[%0d] = %h --> mem[%0d]", inst_rt, val_rt, (data_addr>>2)&511);
                    data_mem[(data_addr>>2)&511] = val_rt;
                end
                6'b100011: begin                                        // lw rt=*(int*)(offset+rs)
                    data_addr = val_rs + inst_imm_sext;
                    if (data_addr & 3 !== 0)
                        $display(
                            "WARNING : Unaligned data address (%x)",
                            data_addr,
                            "  %x => %x %x",
                            inst_rs,
                            val_rs,
                            inst_imm_sext
                        );
                   
                    $display("lw: mem[%0d] = %h --> R[%0d]", (data_addr>>2)&511, data_mem[(data_addr>>2)&511], inst_rt);
                    write2reg(inst_rt, data_mem[(data_addr>>2)&511]);
                end
                6'b000101: begin                                        // bne if(rs!=rt) pc+=offset
                    ipc += val_rs != val_rt ? inst_imm_sext : 0;
                end
                6'b001010: write2reg(inst_rt, val_rs < inst_imm_sext ? 1 : 0);  // slti rt=rs<imm
                6'b000010: ipc = inst_imm;                              // j pc=target
                default $display("NOT IMPLEMENTED : [opcode: %b]", inst_reg[31:26]);
            endcase
            // c inst_reg[31:26]
        end
    endtask

    //______________________________________________main:
    main _main (
        .clk(clk),
        .rst(rst),
        .Jen(Jen),
        .Jin(Jin),
        .Jout(Jout),
        .InstDone(InstDone),
        .R1(R[1]),
        .R2(R[2]),
        .R3(R[3]),
        .R4(R[4]),
        .R5(R[5]),
        .R6(R[6]),
        .R7(R[7]),
        .R8(R[8]),
        .R9(R[9]),
        .R10(R[10]),
        .R11(R[11]),
        .R12(R[12]),
        .R13(R[13]),
        .R14(R[14]),
        .R15(R[15]),
        .R16(R[16]),
        .R17(R[17]),
        .R18(R[18]),
        .R19(R[19]),
        .R20(R[20]),
        .R21(R[21]),
        .R22(R[22]),
        .R23(R[23]),
        .R24(R[24]),
        .R25(R[25]),
        .R26(R[26]),
        .R27(R[27]),
        .R28(R[28]),
        .R29(R[29]),
        .R30(R[30]),
        .R31(R[31]),
        .FR1(FR[1]),
        .FR2(FR[2]),
        .FR3(FR[3]),
        .FR4(FR[4]),
        .FR5(FR[5]),
        .FR6(FR[6]),
        .FR7(FR[7]),
        .FR8(FR[8]),
        .FR9(FR[9]),
        .FR10(FR[10]),
        .FR11(FR[11]),
        .FR12(FR[12]),
        .FR13(FR[13]),
        .FR14(FR[14]),
        .FR15(FR[15]),
        .FR16(FR[16]),
        .FR17(FR[17]),
        .FR18(FR[18]),
        .FR19(FR[19]),
        .FR20(FR[20]),
        .FR21(FR[21]),
        .FR22(FR[22]),
        .FR23(FR[23]),
        .FR24(FR[24]),
        .FR25(FR[25]),
        .FR26(FR[26]),
        .FR27(FR[27]),
        .FR28(FR[28]),
        .FR29(FR[29]),
        .FR30(FR[30]),
        .FR31(FR[31]),
        .test(test)
    );

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    int i;
    int last_instr;
    int nsteps;
    int j;
    int fail_flag;
    initial begin
        for (i = 0; i < 512; i++) instructions[i] = 0;
        for (i = 100; i < 512; i++) data_mem[i] = 0;
        for (i = 0; i < 32; i++) ireg[i] = 0;
        for (i = 0; i < 32; i++) ifreg[i] = 0;
        ireghi = 0;
        ireglo = 0;
        ipc = 0;
        nsteps = 0;
        //   R TYPE       opcode(6)rt(5)rs(5)rd(5)shmt(5)func(6)
        //   I TYPE           opcode(6)rt(5)rs(5)imm(16)
        //   J TYPE           opcode(6)addr(26)

        // data_mems used by:
        // Matin: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
        data_mem[1]     = 32'b01000001100100011001100110011010; // data_mem[1] = 18.2
        data_mem[2]     = 32'b10111111100110011001100110011010; // data_mem[2] = -1.2
        data_mem[3]     = 32'b00000000000000000000000000000001; // data_mem[3] = 1
        data_mem[4]     = 32'b11000000010010001111010111000011; // data_mem[4] = -3.14
        data_mem[5]     = 32'b00000000000000000000000000000011; // data_mem[5] = 3
        data_mem[6]     = 32'b00111111100000000000000000000000; // data_mem[6] = 1
        data_mem[7]     = 32'b00000000000000000000000000001010; // data_mem[7] = 10
        data_mem[8]     = 32'b01000000100000000000000000000000; // data_mem[8] = 4
        data_mem[9]     = 32'b00000000000000000000000000010100; // data_mem[9] = 20
        data_mem[10]    = 32'b01000000110101000111101011100001; // data_mem[10]= 6.64
        data_mem[11]    = 32'b00000000000000000000000000001000; // data_mem[11] = 8
        data_mem[12]    = 32'b00111100001000111101011100001010; // data_mem[12] = 0.01
        data_mem[13]    = 32'b00000000000000000000000000001111; // data_mem[13] = 15
        data_mem[14]    = 32'b00000000000000000000000000000000; // data_mem[14] = 0
        data_mem[15]    = 32'b00000000000000000000000000000110; // data_mem[15] = 6

        //Fatima: 20,24,28,40,44,52,56,60,68,72
        data_mem[20]     = 32'b01111111100000000000000000000000; // data_mem[20] =  + Infinity
        data_mem[24]     = 32'b01000001010010101000101011101001; // data_mem[24] = 12.658914
        data_mem[28]     = 32'b11111111100000000000000000000000; // data_mem[28] = - Infinity
        data_mem[40]     = 32'b01111111100000100000000000000000; // data_mem[40] = NAN
        data_mem[44]     = 32'b01000001010011110110010001010110; // data_mem[44] = 12.961996
        data_mem[52]     = 32'b10000000010100000100000000100000; // data_mem[52] = denormal
        data_mem[56]     = 32'b01000010000000010000111001010110; // data_mem[56] = 32.264
        data_mem[60]     = 32'b11000010010010101010000111001011; // data_mem[60]= -28.324
        data_mem[68]     = 32'b00000000000000100100000000100000; // data_mem[68] = denormal
        // Shaghayegh: 69, 70, 71, 72, 73
        data_mem[69]     = 32'b00000000010101010101010101010101; // data_mem[69] = 7.836629E-39    (small denormal)
        data_mem[70]     = 32'b01001010010110100101101001011010; // data_mem[70] = 3577494.5       (big normal)
        data_mem[71]     = 32'b00000000000000000000000000000001; // data_mem[71] = 1E-45           (denormal)
        data_mem[72]     = 32'b11000000100000000000000000000000; // data_mem[72] = -4              (normal)
        data_mem[73]     = 32'b11111110100000000000000000000000; // data_mem[73] = -8.507059E37    (normal)
        
        //fadd
        instructions[0]  = 32'b10001100000000010000000001010000; // lw: data_mem[20] --> R[1]
        instructions[1]  = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[2]  = 32'b10001100000000100000000001100000; // lw: data_mem[24] --> R[1]
        instructions[3]  = 32'b00000000010000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[4]  = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3] 
        instructions[5]  = 32'b10001100000000010000000001110000; // lw: data_mem[28] --> R[1]
        instructions[6]  = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[7]  = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3] 
        instructions[8]  = 32'b10001100000000010000000010100000; // lw: data_mem[40] --> R[1]
        instructions[9]  = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[10] = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3] 
        instructions[11] = 32'b10001100000000010000000100010000; // lw: data_mem[68] --> R[1]
        instructions[12] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[13] = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3]
        instructions[14] = 32'b10001100000000010000000011010000; // lw: data_mem[52] --> R[1]
        instructions[15] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[1]
        instructions[16] = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3]
        instructions[17] = 32'b00000000100000010001100000010011; // fadd : FR[1] + FR[4] --> FR[3]
        instructions[18] = 32'b10001100000000100000000001100000; // lw: data_mem[24] --> R[1]
        instructions[19] = 32'b00000000010000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[20] = 32'b10001100000000010000000011100000; // lw: data_mem[56] --> R[1]
        instructions[21] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[22] = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3]
        instructions[23] = 32'b10001100000000010000000011110000; // lw: data_mem[60] --> R[1]
        instructions[24] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[25] = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3]
        instructions[26] = 32'b10001100000000010000000010110000; // lw: data_mem[44] --> R[1]
        instructions[27] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[28] = 32'b00000000010000010001100000010011; // fadd : FR[1] + FR[2] --> FR[3]

        //fsub
        instructions[29] = 32'b10001100000000010000000001010000; // lw: data_mem[20] --> R[1]
        instructions[30] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[31] = 32'b10001100000000100000000001100000; // lw: data_mem[24] --> R[1]
        instructions[32] = 32'b00000000010000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[33] = 32'b00000000010000010001100000010100; // fsub : FR[1] - FR[2] --> FR[3] 
        instructions[34] = 32'b10001100000000010000000001110000; // lw: data_mem[28] --> R[1]
        instructions[35] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[36] = 32'b00000000010000010001100000010100; // fsub : FR[1] - FR[2] --> FR[3] 
        instructions[37] = 32'b10001100000000010000000010100000; // lw: data_mem[40] --> R[1]
        instructions[38] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[39] = 32'b00000000001000100001100000010100; // fsub : FR[1] - FR[2] --> FR[3] 
        instructions[40] = 32'b10001100000000010000000100010000; // lw: data_mem[68] --> R[1]
        instructions[41] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[42] = 32'b00000000010000010001100000010100; // fsub : FR[1] - FR[2] --> FR[3]
        instructions[43] = 32'b10001100000000010000000011010000; // lw: data_mem[52] --> R[1]
        instructions[44] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[1]
        instructions[45] = 32'b00000000010000010001100000010100; // fsub : FR[1] - FR[2] --> FR[3]
        instructions[46] = 32'b00000000100000010001100000010100; // fsub : FR[1] - FR[4] --> FR[3]
        instructions[47] = 32'b10001100000000100000000001100000; // lw: data_mem[24] --> R[1]
        instructions[48] = 32'b00000000010000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[49] = 32'b10001100000000010000000011100000; // lw: data_mem[56] --> R[1]
        instructions[50] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[51] = 32'b00000000010000010001100000010100; // fsub : FR[1] - FR[2] --> FR[3]
        instructions[52] = 32'b10001100000000010000000011110000; // lw: data_mem[60] --> R[1]
        instructions[53] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[54] = 32'b00000000010000010001100000010100; // fsub : FR[1] + FR[2] --> FR[3]
        instructions[55] = 32'b10001100000000010000000010110000; // lw: data_mem[44] --> R[1]
        instructions[56] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[57] = 32'b00000000010000010001100000010100; // fsub : FR[1] - FR[2] --> FR[3]
        

        //fslt
        instructions[58] = 32'b10001100000000010000000001010000; // lw: data_mem[20] --> R[1]
        instructions[59] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[60] = 32'b10001100000000100000000001100000; // lw: data_mem[24] --> R[1]
        instructions[61] = 32'b00000000010000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[62] = 32'b00000000010000010001100000010111; // fsub : FR[1] - FR[2] --> FR[3] 
        instructions[63] = 32'b10001100000000010000000001110000; // lw: data_mem[28] --> R[1]
        instructions[64] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[65] = 32'b00000000010000010001100000010111; // fsub : FR[1] - FR[2] --> FR[3] 
        instructions[66] = 32'b10001100000000010000000100010000; // lw: data_mem[68] --> R[1]
        instructions[67] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[68] = 32'b00000000010000010001100000010111; // fsub : FR[1] - FR[2] --> FR[3]
        instructions[69] = 32'b10001100000000010000000011010000; // lw: data_mem[52] --> R[1]
        instructions[70] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[1]
        instructions[71] = 32'b00000000010000010001100000010111; // fsub : FR[1] - FR[2] --> FR[3]
        instructions[72] = 32'b00000000100000010001100000010111; // fsub : FR[1] - FR[4] --> FR[3]
        instructions[73] = 32'b10001100000000100000000001100000; // lw: data_mem[24] --> R[1]
        instructions[74] = 32'b00000000010000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[75] = 32'b10001100000000010000000011100000; // lw: data_mem[56] --> R[1]
        instructions[76] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[77] = 32'b00000000010000010001100000010111; // fsub : FR[1] - FR[2] --> FR[3]
        instructions[78] = 32'b10001100000000010000000011110000; // lw: data_mem[60] --> R[1]
        instructions[79] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[80] = 32'b00000000010000010001100000010111; // fsub : FR[1] + FR[2] --> FR[3]
        instructions[81] = 32'b10001100000000010000000010110000; // lw: data_mem[44] --> R[1]
        instructions[82] = 32'b00000000001000000001000000011000; // TOcop: R[1] --> FR[2]
        instructions[83] = 32'b00000000010000010001100000010111; // fsub : FR[1] - FR[2] --> FR[3]

        
        //Tocop and FROMcop
        instructions[91] = 32'b100011_00000_00001_0000000000000100; // lw: data_mem[1] --> R[1]
        instructions[92] = 32'b000000_00001_00000_00001_00000_011000; // TOcop: R[1] --> FR[1]
        instructions[93] = 32'b00000000001000000001000000011001; // FROMcop: FR[1] --> R[2]

        //fmult & fabs
        instructions[94] = 32'b100011_00000_00001_0000000011100000;    // lw:     data_mem[56] --> R[1]
        instructions[95] = 32'b000000_00001_00000_00001_00000_011000;  // TOcop:  R[1] --> FR[1]       
        instructions[96] = 32'b000000_00001_00000_00011_00000_010110;  // fabs:   |FR[1]| --> FR[3]            |+normal|       
        instructions[97] = 32'b100011_00000_00010_0000000011110000;    // lw:     data_mem[60] --> R[2]            
        instructions[98] = 32'b000000_00010_00000_00010_00000_011000;  // TOcop:  R[2] --> FR[2] 
        instructions[99] = 32'b000000_00010_00000_00011_00000_010110;  // fabs:   |FR[2]| --> FR[3]            |-normal|              
        instructions[100] = 32'b000000_00010_00001_00011_00000_010101; // fmult : FR[1] * FR[2] --> FR[3]     (-normal * normal = -normal)
        instructions[101] = 32'b100011_00000_00001_0000000001010000;   // lw:     data_mem[20] --> R[1]
        instructions[102] = 32'b000000_00001_00000_00001_00000_011000; // TOcop:  R[1] --> FR[1]
        instructions[103] = 32'b000000_00001_00000_00011_00000_010110; // fabs:   |FR[1]| --> FR[3]            |+inf| 
        instructions[104] = 32'b000000_00010_00001_00011_00000_010101; // fmult : FR[2] * FR[1] --> FR[3]     (inf *  -normal     = -inf)
        instructions[105] = 32'b000000_00000_00001_00011_00000_010101; // fmult : FR[0] * FR[1] --> FR[3]     (inf *     0        = Nan)
        instructions[106] = 32'b000000_00000_00010_00011_00000_010101; // fmult : FR[0] * FR[2] --> FR[3]     (-normal * 0        = -0)
        instructions[107] = 32'b100011_00000_00001_0000000100010100;   // lw:     data_mem[69] --> R[1]
        instructions[108] = 32'b000000_00001_00000_00100_00000_011000; // TOcop:  R[1] --> FR[4]
        instructions[109] = 32'b000000_00100_00000_00011_00000_010110; // fabs:   |FR[4]| --> FR[3]            |+subnormal| 
        instructions[110] = 32'b100011_00000_00001_0000000100011000;   // lw:     data_mem[70] --> R[1]
        instructions[111] = 32'b000000_00001_00000_00101_00000_011000; // TOcop:  R[1] --> FR[5]
        instructions[112] = 32'b000000_00101_00000_00011_00000_010110; // fabs:   |FR[5]| --> FR[3]            |+normal| 
        instructions[113] = 32'b000000_00100_00101_00011_00000_010101; // fmult : FR[4] * FR[5] --> FR[3]     (normal * denormal  = normal)
        instructions[114] = 32'b100011_00000_00001_0000000100011100;   // lw:     data_mem[71] --> R[1]
        instructions[115] = 32'b000000_00001_00000_00001_00000_011000; // TOcop:  R[1] --> FR[1]
        instructions[116] = 32'b000000_00001_00000_00011_00000_010110; // fabs:   |FR[1]| --> FR[3]            |+subnormal| 
        instructions[117] = 32'b000000_00100_00001_00011_00000_010101; // fmult : FR[4] * FR[1] --> FR[3]     (denormal * denormal = 0)
        instructions[118] = 32'b000000_00010_00001_00011_00000_010101; // fmult : FR[2] * FR[1] --> FR[3]     (denormal * normal   = denormal)
        instructions[119] = 32'b100011_00000_00001_0000000010100000;   // lw:     data_mem[40] --> R[1]
        instructions[120] = 32'b000000_00001_00000_00001_00000_011000; // TOcop:  R[1] --> FR[1]
        instructions[121] = 32'b000000_00001_00000_00011_00000_010110; // fabs:   |FR[1]| --> FR[3]            |NaN| 
        instructions[122] = 32'b000000_00100_00001_00011_00000_010101; // fmult : FR[4] * FR[1] --> FR[3]     (  NaN    *  normal  = NaN)
        instructions[123] = 32'b100011_00000_00001_0000000100100000;   // lw:     data_mem[72] --> R[1]
        instructions[124] = 32'b000000_00001_00000_00100_00000_011000; // TOcop:  R[1] --> FR[4]
        instructions[125] = 32'b000000_00100_00000_00011_00000_010110; // fabs:   |FR[4]| --> FR[3]            |-normal| 
        instructions[126] = 32'b100011_00000_00001_0000000100100100;   // lw:     data_mem[73] --> R[1]
        instructions[127] = 32'b000000_00001_00000_00101_00000_011000; // TOcop:  R[1] --> FR[5]
        instructions[128] = 32'b000000_00101_00000_00011_00000_010110; // fabs:   |FR[5]| --> FR[3]            |-normal| 
        instructions[129] = 32'b000000_00100_00101_00011_00000_010101; // fmult : FR[4] * FR[5] --> FR[3]     ( -normal *  -normal  = Inf)
        instructions[130] = 32'b100011_00000_00001_0000000001110000;   // lw:     data_mem[73] --> R[1]
        instructions[131] = 32'b000000_00001_00000_00101_00000_011000; // TOcop:  R[1] --> FR[5]
        instructions[132] = 32'b000000_00101_00000_00011_00000_010110; // fabs:   |FR[5]| --> FR[3]            |-inf| 

	
	    // Fsin:
        instructions[133] = 32'b10001100000000010000000000001000; // lw: data_mem[2] --> R[1]
        instructions[134] = 32'b10001100000000100000000000010000; // lw: data_mem[4] --> R[2]
        instructions[135] = 32'b10001100000000110000000000011000; // lw: data_mem[6] --> R[3]
        instructions[136] = 32'b10001100000001000000000000100000; // lw: data_mem[8] --> R[4]
        instructions[137] = 32'b10001100000001010000000000101000; // lw: data_mem[10] --> R[5]
        instructions[138] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[139] = 32'b00000000010000000001000000011000; // TOcop: R[2] --> FR[2]
        instructions[140] = 32'b00000000011000000001100000011000; // TOcop: R[3] --> FR[3]
        instructions[141] = 32'b00000000100000000010000000011000; // TOcop: R[4] --> FR[4]
        instructions[142] = 32'b00000000101000000010100000011000; // TOcop: R[5] --> FR[5]
        
        instructions[143] = 32'b10001100000000010000000000001100; // lw: data_mem[3] --> R[1]
        instructions[144] = 32'b10001100000000100000000000010100; // lw: data_mem[5] --> R[2]
        instructions[145] = 32'b10001100000000110000000000011100; // lw: data_mem[7] --> R[3]
        instructions[146] = 32'b10001100000001000000000000100100; // lw: data_mem[9] --> R[4]
        instructions[147] = 32'b10001100000001010000000000101100; // lw: data_mem[11] --> R[5]

        instructions[148] = 32'b10001100000001100000000000110000; // lw: data_mem[12] --> R[6]
        instructions[149] = 32'b10001100000001110000000000111000; // lw: data_mem[14] --> R[7]
        instructions[150] = 32'b00000000110000000011000000011000; // TOcop: R[6] --> FR[6]
        instructions[151] = 32'b00000000111000000011100000011000; // TOcop: R[7] --> FR[7]
        instructions[152] = 32'b10001100000001100000000000110100; // lw: data_mem[13] --> R[6]
        instructions[153] = 32'b10001100000001110000000000111100; // lw: data_mem[15] --> R[7]


        instructions[154] = 32'b00000000001000010000100000000001; // fsin: FR[1], R[1] --> FR[1]
        instructions[155] = 32'b00000000010000100001000000000001; // fsin: FR[2], R[2] --> FR[2]
        instructions[156] = 32'b00000000011000110001100000000001; // fsin: FR[3], R[3] --> FR[3]
        instructions[157] = 32'b00000000100001000010000000000001; // fsin: FR[4], R[4] --> FR[4]
        instructions[158] = 32'b00000000101001010010100000000001; // fsin: FR[5], R[5] --> FR[5]
        instructions[159] = 32'b00000000110001100011000000000001; // fsin: FR[6], R[6] --> FR[6]
        instructions[160] = 32'b00000000111001110011100000000001; // fsin: FR[7], R[7] --> FR[7]

      

      
        last_instr = 161;
        nsteps = 161;

        rst = 1;
        #8 rst = 0;
        Jen = 1;
        for (i = 0; i < 512; i++) begin  // D mem
            Jin = data_mem[511-i];
            #2;
        end
        for (i = 0; i < 512; i++) begin
            Jin = instructions[511-i];
            #2;
        end
        Jen = 0;
        rst = 1;
        #2 rst = 0;  // cpu-ex
        fail_flag = 0;
        
        for (i = 0; ipc < last_instr && !fail_flag; i++) begin
            if (!fail_flag) begin
                $display(`CYAN, "_____________________________________________________________________________________________________________________", `RESET);
                $display(`CYAN, "ipc : ", ipc, `RESET);
                exec_internal();
                while (InstDone !== 1) #2;  // waiting until your circuit is ready
                #2;

                for (j = 1; j < 32; j++) if (R[j] !== ireg[j]) fail_flag = 1;
                if (isFsin(instructions[ipc-1])) begin
                    showError(instructions[ipc-1]);
                end
                else for (j = 1; j < 32; j++) if (FR[j] !== ifreg[j]) fail_flag = 1;

                if (fail_flag)  begin
                    $display(`RED, "Expectation   : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                            ireg[1], ireg[2], ireg[3], ireg[4], ireg[5], ireg[6], ireg[7], ireg[29], `RESET);
                    $display(`RED, "Reality       : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                            R[1], R[2], R[3], R[4], R[5], R[6], R[7], R[29], `RESET);
                    $display(`RED, "F-Expectation : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                            ifreg[1], ifreg[2], ifreg[3], ifreg[4], ifreg[5], ifreg[6], ifreg[7], ifreg[29], `RESET);
                    $display(`RED, "F-Reality     : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                            FR[1], FR[2], FR[3], FR[4], FR[5], FR[6], FR[7], FR[29], `RESET);
                    $display(`RED, "FAILED at instruction %0d / %0d", i, nsteps, `RESET);
                end
                else begin  // success
                    $display(`GREEN, "success:", `RESET);
                    $display(`WHITE, "Reality   :  [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                            R[1], R[2], R[3], R[4], R[5], R[6], R[7], R[29], `RESET);
                    $display(`WHITE, "F-Reality :  [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                            FR[1], FR[2], FR[3], FR[4], FR[5], FR[6], FR[7], FR[29], `RESET);

                    if (isFsin(instructions[ipc-1]))
                        $display(`WHITE, "F-Expec.. :  [1]%x [2]%x [3]%x [4]%x [5]%x [6]%x [7]%x [29]%x",
                                ifreg[1], ifreg[2], ifreg[3], ifreg[4], ifreg[5], ifreg[6], ifreg[7], ifreg[29], `RESET);
                end
            end
        end
        if (!fail_flag) begin
            $display(`GREEN, "ACCEPTED", `RESET);
            $display(`GREEN, "%0d / %0d", i, nsteps, `RESET);
        end
        
        $finish(0);
    end
endmodule
