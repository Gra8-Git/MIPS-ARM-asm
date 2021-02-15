.data
	doublenum:	.double 7.202
	zeronum:	.double 0.0
.text
	ldc1 $f2,  doublenum
	ldc1 $f0,  zeronum
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall