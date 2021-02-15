.data
	mymessage: .asciiz "hello world"
.text
	li $v0, 4 #set register inprinting mode print( 
	la $a0, mymessage #print varible mymessgar);
	syscall  #end operation  ;
