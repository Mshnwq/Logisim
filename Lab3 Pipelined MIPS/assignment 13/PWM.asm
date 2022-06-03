.data
.text
 	
			# clear the registers
			and  $t0, $t0, $zero
			and  $t1, $t1, $zero
			and  $t2, $t2, $zero
			and  $t3, $t3, $zero
			
			# initializze the values
			addi $t1, $zero, 23	# Duty Cycle
			addi $t2, $zero, 100   
		   
	
pulse_loop:		ori $t0, $t0, 1     
L1:			addi $t3, $t3, 1
			bne $t3, $t1, L1
			and $t0, $t0, $zero
			
L2:			addi $t3, $t3, 1
			bne $t3, $t2, L2
			and $t3, $t3, $zero
    
			j  pulse_loop		# repeat



	
	
	
