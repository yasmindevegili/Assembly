.data
	pergunta: .asciiz "Forneça um número: "
	par: .asciiz "O número é par. "
	impar: .asciiz "O número é impar. "
	
.text
	li $v0, 4
	la $a0, pergunta
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #possui o resto da divisão
	beq $t1, $zero, imprimePar
	li $v0, 4
	la $a0, impar
	syscall
	
	li $v0, 10
	syscall
	
	imprimePar: 
	li $v0, 4
	la $a0, par
	syscall
	