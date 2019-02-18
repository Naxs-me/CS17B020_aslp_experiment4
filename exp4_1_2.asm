main:
	addi	$sp, $sp, -4
	sw	$s0, 0($sp)
	addi	$s0, $zero, -7
	#slt	$t0, $s1, $zero
	bltz	$s0, $l0
	b	$l1
	
$l0:
	addi	$v1, $zero, 1
	
$l1:
	addi	$sp, $sp, 4
