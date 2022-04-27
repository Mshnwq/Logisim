.data
	n1: .word 441
	m1: .ascii " Quotient\n"
	n2: .word 22
	m2: .ascii " Remainder\n"
.text
	lw $t1, n1
	lw $t2, n2
	div $t1, $t2
	mflo $s0
	mfhi $s1
	li $v0, 1
	move $a0, $s0
	syscall
	li $v0,4
	la $a0, m1
	syscall
	li $v0, 1
	move $a0, $s1
	syscall
	li $v0,4
	la $a0, m2
	syscall
