.data
	pergunta: .asciiz "Digite um número: "

.text
.globl main
main:
	li $v0, 4
	la $a0, pergunta
	syscall
	
	li $v0, 5 #leitura do valor
	syscall

	move $t0, $v0 #passa o valor para var t0
	move $a0, $t0 #passa o valor para var a0
	move $v0, $t0 #passa o valor para var v0
	
	jal fibonacci
	
	move $t1, $v0 #resultado está em $t1
	move $a0,$t1   
	 
	li $v0, 1 #print resposta
	syscall

	li $v0,10
	syscall

	fibonacci:

	beqz $a0, caso1   
	beq $a0, 1, caso1

	sub $sp, $sp, 4 
	sw $ra, 0($sp)

	sub $a0,$a0,1 
	jal fibonacci 
	
	add $a0,$a0,1

	lw $ra,0($sp)   
	add $sp,$sp,4

	sub $sp,$sp,4   
	sw $v0,0($sp)
	
	sub $sp,$sp,4   
	sw $ra,0($sp)

	sub $a0,$a0,2   
	jal fibonacci     
	
	add $a0,$a0,2

	lw $ra,0($sp)   
	add $sp,$sp,4

	lw $s7,0($sp)   
	add $sp,$sp,4
	add $v0,$v0,$s7 # f(n - 2) + fib(n-1)
	jr $ra 

	caso1:
	li $v0,1
	jr $ra
