.data
	myMessage: .asciiz "Hello MIPS"
	
.text

	li $v0,4
	la $a0,myMessage
	
	syscall