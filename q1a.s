main:
	addi $sp,$sp,-12
	sw   $s0,8($sp)
	sw   $s1,4($sp)
	sw   $s2,0($sp)
	addi $s0,$zero,15
	addi $s1,$zero,0
	addi $s2,$zero,0
	addi $t0,$zero,0
	addi $t1,$zero,1
L1:     sll  $t3,$t1,$t0
        and  $t2,$s0,$t3
        addi $t0,$t0,1
	beq  $t2,$zero,L2
        j    L3
L2:	addi $s1,$s1,1
	beq  $t0,32,L4
	j    L1
L3:	addi $s2,$s2,1
	beq  $t0,32,L4
	j    L1
L4:     lw   $s2,0($sp)
	lw   $s1,4($sp)
	lw   $s0,8($sp)
	addi $sp,$sp,12
	j    $31	
			
