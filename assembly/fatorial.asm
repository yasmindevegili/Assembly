.text
.globl main

main:
	li $v0, 5
	syscall
	
	move $t0, $v0
	li $t1, 1
	
while: 
	blez $t0, saida
	mult $t0, $t1
	mflo $t1
	addi $t0, $t0, -1
		
	j while
	
saida:
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0,10
	syscall
	
	
	
		
