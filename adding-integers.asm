.data
	num1:	.word 4
	num2:	.word 5
.text
	lw $t0, num1($zero)
	lw $t1, num2($zero)
	add $t2, $t0, $t1 #t2=t0+t1
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	