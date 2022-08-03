.data
	breakline: .asciiz "\n"
	erro: .asciiz "ERRO"
.text
.globl main
main: 
	li $t0, -1

imput:
	li $v0, 5
	syscall
	
while:
	beq $v0, $t0, saida
	add $t1, $t1, $v0
	addi $t2, $t2, 1
	j imput

saida:

	li $v0, 1 #soma
	move $a0, $t1 
	syscall
	
	li $v0, 4 #quebra de linha
	la $a0, breakline 
	syscall
	
	beqz $t2, MensagErro #verificando divisão	
	div $t1, $t2 #media
	li $v0, 1
	mflo $a0
	syscall
	
	j end
	
MensagErro:
	li $v0, 4
	la $a0, erro
	syscall

end: 
	li $v0, 10
	syscall