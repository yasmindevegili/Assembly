.data
	pergunta: .asciiz "Qual seu nome? "
	sauda�ao: .asciiz "Ol�, "
	nome: .space 25
	
.text
	li $v0, 4 #impress�o string
	la $a0, pergunta
	syscall
	
	li $v0, 8 #ler string
	la $a0, nome
	la $a1, 25
	syscall
	
	move $t0, $a0
	
	li $v0, 4 #impress�o string
	la $a0, sauda�ao
	syscall
	
	li $v0, 4 #impress�o string
	move $a0, $t0
	syscall
