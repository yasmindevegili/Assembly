.text
	li $t0, 12
	li $t1, 10
	mul $s0, $t0, $t1 #multiplicaçao
	
	li $v0, 1 #exibir
	move $a0, $s0 #movendo o resultado para uma variavel para imprimir
	
	sll $t2, $s0, 5 #shif left para multiplicar por potência de 2
	syscall