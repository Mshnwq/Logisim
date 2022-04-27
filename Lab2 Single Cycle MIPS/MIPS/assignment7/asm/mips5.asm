.data
	n1: .word 64
.text

	lw $s1, n1
	sll $t0,$s1, 2
	sll $t1,$s1, 5
	subu $s2, $t1, $t0
	subu $s2, $s2, $s1
	
	li $v0, 1
	move $a0, $s2
	
	syscall
