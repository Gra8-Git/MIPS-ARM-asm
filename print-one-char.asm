.data
	charone: .byte 'm'
.text
	li $v0, 4  #print(
	la $a0, charone  #value)
	syscall		# ;
	