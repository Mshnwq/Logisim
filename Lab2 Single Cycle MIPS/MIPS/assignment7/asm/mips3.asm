.data
	num: .word 1945954
.text
	li $v0,1
	lw $a0,num
	syscall