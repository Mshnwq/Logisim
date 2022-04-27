.data
	courseEE: .word 361
.text
	li $v0,1
	lw $a0,courseEE
	syscall