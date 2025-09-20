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

            // normalize
            if (mant_addsub[24]) begin
                mant_addsub = mant_addsub >> 1;
                exp_res = exp_res + 1;
            end else begin
                while (mant_addsub[23] == 0 && exp_res > 0 && mant_addsub != 0) begin
                    mant_addsub = mant_addsub << 1;
                    exp_res = exp_res - 1;
                end
            end

            ieee754_add = {sign_res, exp_res, mant_addsub[22:0]};
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
        $display("***");
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
                        /*برای هر دستور زیر، متخصر و مفید توی ترمینال نمایش بدید که چه اتفاقی داره میفته*/
                        6'b000001: begin    // Fsin
                        	case (inst_rt)
                        		5'b00110: begin
                        			// if (inst_rs == 5'b00001) w2fr(inst_rd, 32'b00111111100110011001100110011010); // 3F99999A
                        			if (inst_rs == 5'b00001) w2fr(inst_rd, 32'b00111111011011101001101000011110); // 3F6E9A1E
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b00111111100110011001100110011010);
                        		end
                        		5'b00111: begin
                        			if (inst_rs == 5'b00010) w2fr(inst_rd, 32'b00111111011111111111010110111111);
                        			if (inst_rs == 5'b00101) w2fr(inst_rd, 32'b00111111011011001100110111111001);
                        		end
                        		5'b01000: begin
                        			if (inst_rs == 5'b00100) w2fr(inst_rd, 32'b00000000000000000000000000000000);
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b00000000000000000000000000000000);
                        		end
                        		5'b01001: begin
                        			if (inst_rs == 5'b00001) w2fr(inst_rd, 32'b10111111010101110110101001110110);
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b10111111100000000000000000000000);
                        		end
                        		5'b01010: begin
                        			if (inst_rs == 5'b00010) w2fr(inst_rd, 32'b10111111011111111111010110111111);
                        			if (inst_rs == 5'b00101) w2fr(inst_rd, 32'b10111111011011001100110111111001);
                        		end
                        		5'b01011: begin
                        			if (inst_rs == 5'b00100) w2fr(inst_rd, 32'b10111111001101111010010010100110);
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b10111111001101111010010010100110);
                        		end
                        		5'b01100: begin
                        			if (inst_rs == 5'b00001) w2fr(inst_rd, 32'b00111110110001110110000111011000);
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b00111110110011001100110011001101);
                        		end
                        		5'b01101: begin
                        			if (inst_rs == 5'b00010) w2fr(inst_rd, 32'b10111110011111010101011101110111);
                        			if (inst_rs == 5'b00101) w2fr(inst_rd, 32'b10111110011111010101010101010101);
                        		end
                        		5'b01110: begin
                        			if (inst_rs == 5'b00100) w2fr(inst_rd, 32'b00111111010010001000100000011101);
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b00111111010010001000100000011101);
                        		end
                        		5'b01111: begin
                        			if (inst_rs == 5'b00001) w2fr(inst_rd, 32'b10111111011101101010100111011110);
                        			if (inst_rs == 5'b00011) w2fr(inst_rd, 32'b10111111101001100110011001100110);
                        		end
                        	endcase
                        	$display("\n######Sin(FR[%0d] = %h) in FR[%d] step by taylor series go to FR[%d] = %h ######\n", inst_rt, val_frt, inst_rs, inst_rd, ifreg[inst_rd]);
                        end
                        6'b010011: begin    // Fadd
				        $display("Fadd: FR[%0d] + FR[%0d] --> FR[%0d]", inst_rs, inst_rt, inst_rd);
				        w2fr(inst_rd, ieee754_add(val_frs, val_frt));
                        end
                        6'b010100: begin    // Fsub
                            $display("Fsub: FR[%0d] - FR[%0d] --> FR[%0d]", inst_rs, inst_rt, inst_rd);
			                w2fr(inst_rd, ieee754_add(val_frs, {~val_frt[31], val_frt[30:0]}));
                        end
                        6'b010101: begin    // Fmult
                        $display("FR[%0d] * FR[%0d] --> FR[%0d]", inst_rs, inst_rt, inst_rd);

			    w2fr(inst_rd, ieee754_mul(val_frs, val_frt));
                            
                        end
                        6'b010110: begin    // Fabs
                        $display("|FR[%0d]| --> FR[%0d]", inst_rs, inst_rd);

			    w2fr(inst_rd, ieee754_abs(val_frs));
                            
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
        .FR31(FR[31])
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

        // تا جای ممکن توی این کد کامنت بنویسین تا همه چی واضح باشه
        // :لطفا هر کسی دیتا مموری هایی که استفاده می‌کنه رو بنویسه، تا بقیه ازش استفاده نکن
        // Matin: 1, 
        data_mem[1]     = 32'b01000001100100011001100110011010; // data_mem[1] = 18.2
        
        //Fatima: 20,24,28,40,44,52,56,60,68,72
        //Shaghayegh: 69, 70, 71, 72, 73

        data_mem[20]     = 32'b01111111100000000000000000000000; // data_mem[20] =  + Infinity
        data_mem[24]     = 32'b01000001010010101000101011101001; // data_mem[24] = 12.658914
        data_mem[28]     = 32'b11111111100000000000000000000000; // data_mem[28] = - Infinity
        data_mem[40]     = 32'b01111111100000100000000000000000; // data_mem[40] = NAN
        data_mem[44]     = 32'b01000001010011110110010001010110; // data_mem[44] = 12.961996
        data_mem[52]     = 32'b10000000010100000100000000100000; // data_mem[52] = denormal
        data_mem[56]     = 32'b01000010000000010000111001010110; // data_mem[56] = 32.264
        data_mem[60]     = 32'b11000010010010101010000111001011; // data_mem[60]= -28.324
        data_mem[68]     = 32'b00000000000000100100000000100000; // data_mem[68] = denormal
        ///////
        data_mem[69]     = 32'b00000000010101010101010101010101; // data_mem[69] = 7.836629E-39    (small denormal)
        data_mem[70]     = 32'b01001010010110100101101001011010; // data_mem[70] = 3577494.5       (big normal)
        data_mem[71]     = 32'b00000000000000000000000000000001; // data_mem[71] = 1E-45           (denormal)
        data_mem[72]     = 32'b11000000100000000000000000000000; // data_mem[72] = -4              (normal)
        data_mem[73]     = 32'b11111110100000000000000000000000; // data_mem[73] = -8.507059E37    (normal)
        
        
        // Ahmad: 8, 12, 76, 84, 88, 92, 100, 104, 108, 116, 120, 124, 132, 136, 140
        data_mem[8] 	= 32'b00111111100000000000000000000000; // data_mem[8] = 1
        data_mem[12] 	= 32'b01000000000000000000000000000000; // data_mem[12] = 2
        data_mem[124] 	= 32'b01000000100000000000000000000000; // data_mem[124] = 4
        data_mem[76] 	= 32'b01000000111000000000000000000000; // data_mem[76] = 7
        data_mem[132] 	= 32'b01000001010100000000000000000000; // data_mem[132] = 13
        
        data_mem[84] 	= 32'b00111111100110011001100110011010; // data_mem[84] = 1.2
        data_mem[88] 	= 32'b00111111110010001111010111000011; // data_mem[88] = 1.57
        data_mem[92] 	= 32'b00000000000000000000000000000000; // data_mem[92] = 0
        data_mem[136] 	= 32'b10111111100000000000000000000000; // data_mem[136] = -1
        data_mem[100] 	= 32'b10111111110010001111010111000011; // data_mem[100] = -1.57
        data_mem[104] 	= 32'b10111111010011001100110011001101; // data_mem[104] = -0.8
        data_mem[108] 	= 32'b00111110110011001100110011001101; // data_mem[108] = 0.4
        data_mem[140] 	= 32'b10111110100000000000000000000000; // data_mem[140] = -0.25
        data_mem[116] 	= 32'b00111111011001100110011001100110; // data_mem[116] = 0.9
        data_mem[120] 	= 32'b10111111101001100110011001100110; // data_mem[120] = -1.3


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
        instructions[133] = 32'b10001100000000010000000000100000; // lw: data_mem[8] --> R[1]
        instructions[134] = 32'b10001100000000100000000000110000; // lw: data_mem[12] --> R[2]
        instructions[135] = 32'b10001100000000110000000111110000; // lw: data_mem[124] --> R[3]
        instructions[136] = 32'b10001100000001000000000100110000; // lw: data_mem[76] --> R[4]
        instructions[137] = 32'b10001100000001010000001000010000; // lw: data_mem[132] --> R[5]
        instructions[138] = 32'b00000000001000000000100000011000; // TOcop: R[1] --> FR[1]
        instructions[139] = 32'b00000000010000000001000000011000; // TOcop: R[2] --> FR[2]
        instructions[140] = 32'b00000000011000000001100000011000; // TOcop: R[3] --> FR[3]
        instructions[141] = 32'b00000000100000000010000000011000; // TOcop: R[4] --> FR[4]
        instructions[142] = 32'b00000000101000000010100000011000; // TOcop: R[5] --> FR[5]
        
        instructions[143] = 32'b10001100000000010000000101010000; // lw: data_mem[84] --> R[1]
        instructions[144] = 32'b10001100000000100000000101100000; // lw: data_mem[88] --> R[2]
        instructions[145] = 32'b10001100000000110000000101110000; // lw: data_mem[92] --> R[3]
        instructions[146] = 32'b10001100000001000000001000100000; // lw: data_mem[136] --> R[4]
        instructions[147] = 32'b10001100000001010000000110010000; // lw: data_mem[100] --> R[5]
        instructions[148] = 32'b10001100000001100000000110100000; // lw: data_mem[104] --> R[6]
        instructions[149] = 32'b10001100000001110000000110110000; // lw: data_mem[108] --> R[7]
        instructions[150] = 32'b10001100000010000000001000110000; // lw: data_mem[140] --> R[8]
        instructions[151] = 32'b10001100000010010000000111010000; // lw: data_mem[116] --> R[9]
        instructions[152] = 32'b10001100000010100000000111100000; // lw: data_mem[120] --> R[10]
        
        instructions[153] = 32'b00000000001000000011000000011000; // TOcop: R[1] --> FR[6]
        instructions[154] = 32'b00000000010000000011100000011000; // TOcop: R[2] --> FR[7]
        instructions[155] = 32'b00000000011000000100000000011000; // TOcop: R[3] --> FR[8]
        instructions[156] = 32'b00000000100000000100100000011000; // TOcop: R[4] --> FR[9]
        instructions[157] = 32'b00000000101000000101000000011000; // TOcop: R[5] --> FR[10]
        instructions[158] = 32'b00000000110000000101100000011000; // TOcop: R[6] --> FR[11]
        instructions[159] = 32'b00000000111000000110000000011000; // TOcop: R[7] --> FR[12]
        instructions[160] = 32'b00000001000000000110100000011000; // TOcop: R[8] --> FR[13]
        instructions[161] = 32'b00000001001000000111000000011000; // TOcop: R[9] --> FR[14]
        instructions[162] = 32'b00000001010000000111100000011000; // TOcop: R[10] --> FR[15]
        
        instructions[163] = 32'b00000000001001101100000000000001; // sin: sin(FR(6)) in FR(1) go to FR(16)
        instructions[164] = 32'b00000000011001101100000000000001; // sin: sin(FR(6)) in FR(3) go to FR(16)
        instructions[165] = 32'b00000000010001111100000000000001; // sin: sin(FR(7)) in FR(2) go to FR(16)
        instructions[166] = 32'b00000000101001111100000000000001; // sin: sin(FR(7)) in FR(5) go to FR(16)
        instructions[167] = 32'b00000000100010001100000000000001; // sin: sin(FR(8)) in FR(4) go to FR(16)
        instructions[168] = 32'b00000000011010001100000000000001; // sin: sin(FR(8)) in FR(3) go to FR(16)
        instructions[169] = 32'b00000000001010011100000000000001; // sin: sin(FR(9)) in FR(1) go to FR(16)
        instructions[170] = 32'b00000000011010011100000000000001; // sin: sin(FR(9)) in FR(3) go to FR(16)
        instructions[171] = 32'b00000000010010101100000000000001; // sin: sin(FR(10)) in FR(2) go to FR(16)
        instructions[172] = 32'b00000000101010101100000000000001; // sin: sin(FR(10)) in FR(5) go to FR(16)
        instructions[173] = 32'b00000000100010111100000000000001; // sin: sin(FR(11)) in FR(4) go to FR(16)
        instructions[174] = 32'b00000000011010111100000000000001; // sin: sin(FR(11)) in FR(3) go to FR(16)
        instructions[175] = 32'b00000000001011001100000000000001; // sin: sin(FR(12)) in FR(1) go to FR(16)
        instructions[176] = 32'b00000000011011001100000000000001; // sin: sin(FR(12)) in FR(3) go to FR(16)
        instructions[177] = 32'b00000000010011011100000000000001; // sin: sin(FR(13)) in FR(2) go to FR(16)
        instructions[178] = 32'b00000000101011011100000000000001; // sin: sin(FR(13)) in FR(5) go to FR(16)
        instructions[179] = 32'b00000000100011101100000000000001; // sin: sin(FR(14)) in FR(4) go to FR(16)
        instructions[180] = 32'b00000000011011101100000000000001; // sin: sin(FR(14)) in FR(3) go to FR(16)
        instructions[181] = 32'b00000000001011111100000000000001; // sin: sin(FR(15)) in FR(1) go to FR(16)
        instructions[182] = 32'b00000000011011111100000000000001; // sin: sin(FR(15)) in FR(3) go to FR(16)
        
        /*ADD YOUR INSTRUCTIONS HERE*/

      
        last_instr = 183;    // set this as you want
        nsteps = 183;        // set this as you want

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
                #2;
                while (InstDone !== 1) #2;  // waiting until your circuit is ready

                for (j = 1; j < 32; j++) if (R[j] !== ireg[j]) fail_flag = 1;
                for (j = 1; j < 32; j++) if (FR[j] !== ifreg[j]) fail_flag = 1;
                if (fail_flag)  begin
                    $display(`RED, "Expectation   : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [29]%x [30]%x [31]%x",
                            ireg[1], ireg[2], ireg[3], ireg[4], ireg[5], ireg[29], ireg[30], ireg[31], `RESET);
                    $display(`RED, "Reality       : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [29]%x [30]%x [31]%x",
                            R[1], R[2], R[3], R[4], R[5], R[29], R[30], R[31], `RESET);
                    $display(`RED, "F-Expectation : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [24]%x [30]%x [31]%x",
                            ifreg[1], ifreg[2], ifreg[3], ifreg[4], ifreg[5], ifreg[24], ifreg[30], ifreg[31], `RESET);
                    $display(`RED, "F-Reality     : ", `WHITE, " [1]%x [2]%x [3]%x [4]%x [5]%x [24]%x [30]%x [31]%x",
                            FR[1], FR[2], FR[3], FR[4], FR[5], FR[24], FR[30], FR[31], `RESET);
                    $display(`RED, "FAILED at instruction %0d / %0d", i, nsteps, `RESET);
                end
                else begin  // success
                    $display(`GREEN, "success:", `RESET);
                    $display(`WHITE, "Reality   :  [1]%x [2]%x [3]%x [4]%x [5]%x [29]%x [30]%x [31]%x",
                            R[1], R[2], R[3], R[4], R[5], R[29], R[30], R[31], `RESET);
                    $display(`WHITE, "F-Reality :  [1]%x [2]%x [3]%x [4]%x [5]%x [29]%x [30]%x [31]%x",
                            FR[1], FR[2], FR[3], FR[4], FR[5], FR[29], FR[30], FR[31], `RESET);
                end
            end
        end
        if (!fail_flag) begin
            $display(`YELLOW, "mem : ", `WHITE, "[1f9] : %x [1fa] : %x [1fb] : %x [1fc] : %x [1fd] : %x [1fe] : %x [1ff] : %x", 
                    data_mem[505], data_mem[506], data_mem[507], data_mem[508], data_mem[509], data_mem[510], data_mem[511], `RESET);
            $display(`GREEN, "ACCEPTED", `RESET);
            $display(`GREEN, "%0d / %0d", i, nsteps, `RESET);
        end

        $finish(0);
    end
endmodule
