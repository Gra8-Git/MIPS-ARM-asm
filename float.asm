.data
	floatnum: .float 0.707
.text
	li 	$v0, 2
	lwc1 	$f12, floatnum   #  .word and Coproc 1
	syscall