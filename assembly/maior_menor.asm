.data
	maior: .asciiz "O n�mero � maior que zero. "
	menor: .asciiz "O n�mero � menor que zero. "
	igual: .asciiz "O n�mero � igual a zero. "

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