.data
message: .asciiz "Hi!MIPS\n"
.text
main:
jal displayMessage

addi $s0,$zero,5



li $v0,1
add $a0,$zero,$s0
syscall

li $v0,10
Syscall


displayMessage:
li $v0,4
la $a0,message
syscall

jr $ra