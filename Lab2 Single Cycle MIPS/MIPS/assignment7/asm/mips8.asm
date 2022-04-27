.data
	n1: .word 22
	n2: .word 91
.text

	lw $t1, n1
	lw $t2, n2

	mul $t0,$t1,$t2

	li $v0,1
	move $a0, $t0
	syscall