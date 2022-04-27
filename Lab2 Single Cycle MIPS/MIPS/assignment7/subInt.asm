.data
	number1: .word 20
	number2: .word 8
.text
	lw $t0,number1
	lw $t1, number2
	sub $t2,$t0,$t1  #t2=t0-t1=20-8=12
	
	li $v0,1
	move $a0,$t2
	syscall
