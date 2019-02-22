main:
	addi	$sp,$sp,-36
	li		$s0,'A'
	sb		$s0,4($sp)
	li		$s0,'B'
	sb		$s0,8($sp)
	li		$s0,'C'
	sb		$s0,12($sp)
	li		$s0,'D'
	sb		$s0,16($sp)
	
	li		$s0,'E'
	sb		$s0,20($sp)
	li		$s0,'F'
	sb		$s0,24($sp)
	li		$s0,'G'
	sb		$s0,28($sp)
	li		$s0,'H'
	sb		$s0,32($sp)
	
	li		$t2,1
	sll		$t2,$t2,2
	add		$t3,$t3,$t2
	add		$t3,$sp,$t3
	add		$t4,$sp,$t4
	addi	$t4,$t4,20
	
loop:
	add		$t1,$0,$0
	lb		$t5,0($t3)
	lb		$t6,0($t4)
	sb		$t6,0($t3)
	sb		$t5,0($t4)
	add		$t3,$t3,$t2
	add		$t4,$t4,$t2
	addi	$t0,$t0,1
	slt		$t1,$t0,4
	bnez	$t1,loop
	add		$t0,$0,$0
	add		$t3,$0,$0
	add		$t3,$sp,$t3
	addi	$t3,$t3,4
	
print:
	add		$t1,$0,$0
	li		$v0,11
	lb		$a0,0($t3)
	add		$t3,$t3,$t2
	syscall
	slt		$t1,$t0,3
	addi	$t0,$t0,1
	bnez	$t1,print
	j		$31