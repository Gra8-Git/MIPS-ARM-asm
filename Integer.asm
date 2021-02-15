.data
	intnum:	.word 5
.text
	li $v0, 1
	lw $a0, intnum
	syscall
