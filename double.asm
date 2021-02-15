.data
	doublenum:	.double 7.202
	zeronum:	.double 0.0
.text
	ldc1	$f2, doublenum #varible
	ldc1	$f0, zeronum  #varible
	
	li $v0, 3	#print double
	add.d $f12, $f2, $f0 #add two doubles to print(a+b) 
	syscall 
	