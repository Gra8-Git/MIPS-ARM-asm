
.data

#.eqv	MAX_LEN		16384

.data
	localhost: .asciiz	"localhost"

	text:	.ascii		"Hello, world!"
	end:
	buff:	.byte	        0:16384
	ln:	.asciiz		"\n"
.text
.globl main
	main:
	jal server
	
	

	la $a0, 0
	li $v0, 17
	syscall


server:
	li $a0, 80		

	li $v0, 100
	syscall
	move $s0, $v1
	

	li $v0, 112
	move $a0, $s0
	syscall
	move $s1, $v1
	
	
	

	la $a1, buff
	li $a2, 16384

	li $v0, 102
	move $a0, $s1
	syscall

	la $a0, buff
	li $v0, 4
	syscall

	la $a1, text

	la $a2, end
	sub $a2, $a2, $a1

	li $v0, 101
	move $a0, $s1
	syscall

	move $a0, $v0
	li $v0, 1
	syscall

	la $a0, ln
	li $v0, 4
	syscall

	li $v0, 103
	move $a0, $s1
	syscall

	li $v0, 113
	move $a0, $s0
	syscall
	jr $ra		



