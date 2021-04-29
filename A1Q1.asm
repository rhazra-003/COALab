.data
	numberprompt: .asciiz "Enter two double numbers: \n"
	linefeed: .asciiz "\n"
	add: .asciiz "Addition: \n"
	sub: .asciiz "Subtraction: \n"
	multi: .asciiz "Multiplication: \n"
	divi: .asciiz "Division: \n"
	
.text
	main:
		li $v0, 4
		la $a0, numberprompt
		syscall
				
		jal input
		jal addition
		jal subtract
		jal multiplication
		jal division
		
	
	li $v0, 10
	syscall
	
	input:
		li $v0, 7
		syscall
		mov.d $f2, $f0
		syscall
		jr $ra
	addition:
		li $v0, 4
		la $a0, add
		syscall
		
		li $v0, 3
		add.d $f12, $f0, $f2
		syscall
		
		li $v0, 4
		la $a0, linefeed
		syscall
		
		jr $ra
	subtract:
		li $v0, 4
		la $a0, sub
		syscall
		
		li $v0, 3
		sub.d $f12, $f0, $f2
		syscall
		
		li $v0, 4
		la $a0, linefeed
		syscall
		
		jr $ra		
	multiplication:
		li $v0, 4
		la $a0, multi
		syscall
		
		li $v0, 3
		mul.d $f12, $f0, $f2
		syscall
		
		li $v0, 4
		la $a0, linefeed
		syscall
		
		jr $ra		
	division:
		li $v0, 4
		la $a0, divi
		syscall
		
		li $v0, 3
		div.d $f12, $f0, $f2
		syscall
		
		li $v0, 4
		la $a0, linefeed
		syscall
		
		jr $ra