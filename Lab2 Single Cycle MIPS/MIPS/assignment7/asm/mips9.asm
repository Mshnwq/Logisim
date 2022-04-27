.data
	n1: .word 20
	n2: .word 10
.text

	lw $t1, n1
	lw $t2, n2

	div $t0,$t1,$t2

	li $v0,1
	move $a0, $t0
	syscall
