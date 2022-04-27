.data
	char: .byte 'c'
	
.text
	li $v0, 4
	la $a0,char
	syscall