.data
	n1: .word 23
	n2: .word 32
.text

	lw $t1, n1
	lw $t2, n2

	mult $t1,$t2
	
	mflo $t0
	
	li $v0,1
	move $a0, $t0
	syscall