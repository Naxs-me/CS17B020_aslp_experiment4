main:
	addi	$sp, $sp, -8
	sw	$s0, 0($sp)
	addi	$s0,$zero,0xf0f
	addi	$t0, $t0, 1
	and	$t1, $s0, $t0
check:
	bgtz	$t1, one
	b	Zero
one:
	addi	$s7,$s7,1
	b	loop
Zero:
	addi	$s6,$s6,1
loop:
	addi 	$t2, $t2, 1
	slti	$t3,$t2,32
	beq	$t3,$zero,exit
	addi	$t3,$zero,0
	sll	$t0,$t0,1
	and	$t4,$t0,$s0
	sll	$t1,$t1,1
	beq	$t1,$t4,equal
	move	$t1,$t4
	beq	$t1,$zero,Zero
	bne	$t1,$zero,one
	
exit:
	j	$31
	
equal:
	b	loop
