.text
	li $t0, 32
	li $t1, 5
	div $t0, $t1
	
	mflo $s0
	mfhi $s1
	
	srl $s2, $t0, 4 #divisao por potencia de 2
	syscall