.data
	m1: .asciiz " Quotient\n"
	m2: .asciiz " Remainder\n"
.text
	main:
		addi $a1, $zero, 17
		addi $a2, $zero, 2
		jal divide
		move $a0, $v0
		jal dispInt
		la $a0, m1
		jal dispMessage
		move $a0, $v1
		jal dispInt
		la $a0, m2
		jal dispMessage
	li $v0,10
	syscall
	
	dispMessage:
		li $v1, 4
		syscall
	jr $ra
	dispInt:
		li $v0, 1
		syscall
	jr $ra
	divide:
		div $a1, $a2
		mflo $v0
		mfhi $v1
	jr $ra
