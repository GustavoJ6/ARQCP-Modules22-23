.section .data

		.global length1
		.global length1
		.global height
		
.section .text

 .global getArea

getArea:
	
	movl length1(%rip), %r8d	# r8d = length1
	movl length2(%rip), %ecx	# ecx = length2
	movl height(%rip), %eax		# eax = height
	
	addl %ecx, %r8d				# r8d = length1 + length2
	
	mull %r8d				    # result in %eax
	
	movl $2, %r9d 				# assign value 2 to %r9d
	
	divl %r9d 					# divide  %eax by %r9d
	
	ret
	
	

