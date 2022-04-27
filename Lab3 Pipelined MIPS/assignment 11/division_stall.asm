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
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard
	slt $t3, $t2, $t1        #checks if $t2 > $t1
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard
	beq $t3, $zero, end      #if first number < second number, break
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard
	
	sub $t1, $t1, $t2        #subtract $t2 from $t1
	addi $t0, $t0, 1         #add one to qutiont
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard
	
	bne $t1, $t2, div_loop   #if $t1 equalls $t2, subtract then break
	and $t4, $zero, $zero    #delay to avoid hazard
	and $t4, $zero, $zero    #delay to avoid hazard

	
	
	#the case of no remainder
        sub $t1, $t1, $t2        #subtract $t2 from $t1
        addi $t0, $t0, 1         #add one to qutiont
        
        j  end                   #break
        
end:	


	
	
	
