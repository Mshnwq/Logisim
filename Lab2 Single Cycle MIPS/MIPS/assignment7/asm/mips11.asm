.data
	m1: .asciiz " Quotient\n"
	m2: .asciiz " Remainder\n"
	m3: .asciiz " is"
.text
	main:
		ori $t1, $zero, 19
		ori $t2, $zero, 3
		div $t1, $t2
		mflo $s0
		mfhi $s1
		li $v0, 1
		move $a0, $s0
		syscall
		jal prcedure
		li $v0,4
		la $a0, m1
		syscall 
		li $v0, 1 
		move $a0, $s1
		syscall
		jal prcedure
		li $v0,4
		la $a0, m2
		syscall
	li $v0,10
	syscall
	prcedure:
		li $v0,4
		la $a0,m3
		syscall
	jr $ra
