.data
	sauda�ao: .asciiz "Ol�. Forne�a sua idade: "
	saida: .asciiz "Sua idade �: "
.text
	li $v0, 4 #impress�o de string
	la $a0, sauda�ao
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall
	
	move $t0, $v0
	
	li $v0, 4 #impress�o de string
	la $a0, saida
	syscall
	
	li $v0, 1 #impress�o inteiros
	move $a0, $t0
	syscall