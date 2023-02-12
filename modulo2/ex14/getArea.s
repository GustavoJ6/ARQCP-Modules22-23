.section .data

		.global length1
		length1:
			.long 2
		.global length2
		length2:
			.long 8
		.global height
		height:
			.long 2
		
.section .text

 .global getArea

getArea:
	
	movl length1(%rip), %r8d	#place lenght1 in r8d.
	movl length2(%rip), %ecx	#place lenght2 in ecx.
	movl height(%rip), %eax		#place height in eax.
	
	addl %ecx, %r8d				#adds ecx to r8d.
	
	imull %r8d		 			#mulitplies eax with r8d. Result in eax.
	
	movl $2, %r9d 				#place 2 in r9d.
	
	divl %r9d 		 			#divides  eax by r9d.
	
	ret
	
	

