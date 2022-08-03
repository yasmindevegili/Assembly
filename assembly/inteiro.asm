.data
	inteiro: .word 13

.text
	li $v0, 1
	lw $a0, inteiro
	syscall