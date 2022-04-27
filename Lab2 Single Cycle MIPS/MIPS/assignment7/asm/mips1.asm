.data
	message: .asciiz "Wlecome to MIPS"
	
.text
	li $v0,4
	la $a0, message
	
	syscall