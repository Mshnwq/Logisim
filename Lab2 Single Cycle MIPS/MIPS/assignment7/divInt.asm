.data

.text
addi $t0,$zero,44

addi $t1,$zero,5

div $t0, $t1

mflo $s0
mfhi $s1


li $v0,1
add $a0, $zero, $s0
syscall

li $v0,1
add $a0, $zero, $s1
syscall