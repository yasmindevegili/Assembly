.data
	#area para dados da memoria principal
	mensagem: .asciiz "Yasmin Devegili" #mensagem a ser exibida
	
.text
	#area para instru�oes do programa
	li $v0, 4 #instru�ao para impressao de string
	la $a0, mensagem #indicando onde esta a mensagem
	syscall #executar
