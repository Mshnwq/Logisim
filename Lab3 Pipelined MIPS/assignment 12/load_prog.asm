.data
.text
	# clear the registers
 	and  $t0, $t0, $zero
	and  $t1, $t1, $zero
	and  $t2, $t2, $zero
	and  $t3, $t3, $zero
 	
        # initializze the values
	addi $t0, $zero, 4      # will go to RAM 
	addi $t1, $zero, 10     # will go to RAM 
	addi $t2, $zero, 8      # will go to RAM
	addi $t3, $zero, 2      # will be used in arithmetic

	# save to RAM
	sw   $t1, 0($t0)        # save 10 to address 4
	sw   $t2, 8($t1)        # save 8  to address 18
	
	# test load from RAM
	lw   $s1, 0($t0)        # load 10 from address 4
	lw   $s2, 8($s1)        # load 8  from address 18
	add  $v0, $s2, $t3      # $v0 = 8 + 2
	sw   $v0, 12($zero)     # save result 10

	sub  $v1, $s2, $v0      # $v1 = 8 - 10
	sw   $v1, 16($zero)     # save result -2
	

	
	
