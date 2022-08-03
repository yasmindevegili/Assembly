.data
	maior: .asciiz "O número é maior que zero. "
	menor: .asciiz "O número é menor que zero. "
	igual: .asciiz "O número é igual a zero. "

.text
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beqz $t0, ImprimaIgual

	bgtz $t0, ImprimaMaior
	
	bltz $t0, ImprimaMenor
	
	ImprimaIgual:
	li $v0, 4
	la $a0, igual
	syscall
	
	li $v0, 10
	syscall
	
	ImprimaMaior:
	li $v0, 4
	la $a0, maior
	syscall
	
	li $v0, 10
	syscall
	
	ImprimaMenor:
	li $v0, 4
	la $a0, menor
	syscall