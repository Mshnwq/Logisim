.data
.text
 	
 	# clear the registers
 	and  $t0, $t0, $zero
	and  $t1, $t1, $zero
	and  $t2, $t2, $zero
 	
        # initializze the values
	addi $t1, $zero, 121 # dividend
	addi $t2, $zero, 12   # divisor
	
div_loop:
	slt $t3, $t2, $t1        #checks if $t2 > $t1
	beq $t3, $zero, end      #if first number < second number, break
	
	sub $t1, $t1, $t2        #subtract $t2 from $t1
	addi $t0, $t0, 1         #add one to qutiont
	
	bne $t1, $t2, div_loop   #if $t1 equalls $t2, subtract then break

	
	#the case of no remainder
        sub $t1, $t1, $t2        #subtract $t2 from $t1
        addi $t0, $t0, 1         #add one to qutiont
        
        j  end                   #break
        
end:	


	
	
	
