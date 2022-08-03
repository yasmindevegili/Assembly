.data
	saudaçao: .asciiz "Olá. Forneça sua idade: "
	saida: .asciiz "Sua idade é: "
.text
	li $v0, 4 #impressão de string
	la $a0, saudaçao
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall
	
	move $t0, $v0
	
	li $v0, 4 #impressão de string
	la $a0, saida
	syscall
	
	li $v0, 1 #impressão inteiros
	move $a0, $t0
	syscall