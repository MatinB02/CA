#402105727
.text:
	li $a0, 43		# binary =  101011  = includes 4 '1's
	
	li $v0, 0
loop:
	and $t0, $a0, 1
	beq $t0, $zero, continue
	addi $v0, $v0, 1
continue:
	srl $a0, $a0, 1
	bne $a0, $zero, loop
