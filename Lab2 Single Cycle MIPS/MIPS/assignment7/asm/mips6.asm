.data

.text
	
	# clear the registers
and  $t1, $t1, $zero
	and  $t2, $t2, $zero
	and  $t3, $t3, $zero
	
	# initializze the values
	addi $t1, $zero, 121  # dividend
	addi $t2, $zero, 12   # divisor
	
	sub $t0, $t1, $t2
	
	#beq $t1, $t2, label
	
	li $v0,1
	move $a0, $t1
	syscall
	
	li $v0,1
	move $a0, $t2
	syscall
	
	li $v0,1
	move $a0, $t3
	syscall
