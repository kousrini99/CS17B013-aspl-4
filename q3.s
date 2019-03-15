main:
	addi	$sp, $sp, -28
	addi	$s0, $zero,5
	sw	$s0, 4($sp)
	addi	$s0, $zero,10
	sw	$s0, 8($sp)
	addi	$s0, $zero,15
	sw	$s0, 12($sp)
	
	addi	$s0, $zero,20
	sw	$s0, 16($sp)
	addi	$s0, $zero,25
	sw	$s0, 20($sp)
	addi	$s0, $zero,30
	sw	$s0, 24($sp)
	
	addi	$t3, $sp, 4
	addi	$t4, $sp, 16
	
loop:
	add	$t1,$zero, $zero
	lw	$t5, 0($t3)
	lw	$t6, 0($t4)
	sw	$t6, 0($t3)
	sw	$t5, 0($t4)
	addi	$t3, $t3, 4
	addi	$t4, $t4, 4
	addi	$t0, $t0,1
	slt	$t1, $t0, 2
	bnez	$t1, loop
	j	$31




