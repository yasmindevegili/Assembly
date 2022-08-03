.data
	pergunta: .asciiz "Digite um valor inteiro: "

.text
	li $t0, 1
	li $t1, 2
	
.globl main
main: 
	
	li $v0, 4
	la $a0, pergunta
	syscall
	
	li $v0, 5
	syscall

	bnez $v0, caso1
	beq $v0, 1, caso1
	beq $v0, 2, caso2
	bgt $v0, 2, while	
caso1: 
	add $t2, $t2, $t0
	j saida
	
caso2:
	add $t2, $t2, $t1
	j saida
	
while: 
	beqz $v0, saida
	addi $t3, $t2, -1
	addi $t4, $t2, -2
	add $t2, $t3, $t4
	addi $v0, $v0, -1
	syscall 

saida:
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
	
