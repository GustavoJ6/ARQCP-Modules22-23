.section .data
		.global s
 
.section .text

 .global swapBytes

swapBytes:
	
	movw s(%rip), %ax		# Move s value to %ax
	addb %ah, %ah			# Double the value of %ah
	movb %ah, %dl			# Move the byte from %ah to %dl
	movb %al, %ah			# Move the byte from %al to %ah
	movb %dl, %al			# Move the byte from %dl to %al
	
	
	ret
	
 
