main:
	addi	$sp,$sp,-36
	addi	$s0,$zero,1
	sw		$s0,4($sp)
	addi	$s0,$zero,2
	sw		$s0,8($sp)
	addi	$s0,$zero,3
	sw		$s0,12($sp)
	addi	$s0,$zero,4
	sw		$s0,16($sp)
	
	addi	$s0,$zero,5
	sw		$s0,20($sp)
	addi	$s0,$zero,6
	sw		$s0,24($sp)
	addi	$s0,$zero,7
	sw		$s0,28($sp)
	addi	$s0,$zero,8
	sw		$s0,32($sp)
	
	li		$t2,1
	sll		$t2,$t2,2
	add		$t3,$t3,$t2
	add		$t3,$sp,$t3
	add		$t4,$sp,$t4
	addi	$t4,$t4,20
	
loop:
	add		$t1,$0,$0
	lw		$t5,0($t3)
	lw		$t6,0($t4)
	sw		$t6,0($t3)
	sw		$t5,0($t4)
	add		$t3,$t3,$t2
	add		$t4,$t4,$t2
	addi	$t0,$t0,1
	slt		$t1,$t0,3
	bnez	$t1,loop
	add		$t0,$0,$0
	add		$t3,$0,$0
	add		$t3,$sp,$t3
	addi	$t3,$t3,4
	
print:
	add		$t1,$0,$0
	li		$v0,1
	lw		$a0,0($t3)
	add		$t3,$t3,$t2
	syscall
	slt		$t1,$t0,3
	addi	$t0,$t0,1
	bnez	$t1,print
	j		$31