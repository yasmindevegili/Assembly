.data
	pergunta: .asciiz "Forne�a um n�mero: "
	par: .asciiz "O n�mero � par. "
	impar: .asciiz "O n�mero � impar. "
	
.text
	li $v0, 4
	la $a0, pergunta
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #possui o resto da divis�o
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
	