.section .data

		.global firstElement
		.global	secondElement
		
	result:
		.int 0
		
.section .text

	.global sum
	.global subtraction
	.global multiplication
	.global division
	.global modulus
	.global power2
	.global power3


sum:

	movl firstElement(%rip), %eax      # eax = firstElement
	movl secondElement(%rip), %r9d	   # r9d = secondElement
	
	addl %r9d, %eax				       # eax = eax + r9d
	
	movl %eax, result(%rip)			   # result = eax
	
	jmp end							   # jump to end

subtraction:
	
	movl firstElement(%rip), %eax      # eax = firstElement
	movl secondElement(%rip), %r9d	   # r9d = secondElement
	
	subl %r9d, %eax				       # eax = eax - r9d
	
	movl %eax, result(%rip)			   # result = eax
	
	jmp end							   # jump to end
					
multiplication:

	movl firstElement(%rip), %eax      # eax = firstElement
	movl secondElement(%rip), %r9d	   # r9d = secondElement
	
	imull %r9d					       # eax = eax * r9d
	
	movl %eax, result(%rip)			   # result = eax
	
	jmp end

division:

	movl firstElement(%rip), %eax      # eax = firstElement
	movl secondElement(%rip), %r9d	   # r9d = secondElement
	
	cdq								   # sign extend eax to edx:eax
			
	cmpl  $0, %r9d					   # compares r9d with 0
	je divisor_zero					   # if r9d == 0, jump to divisor_zero

	idivl %r9d						   # eax / r11d result in eax
	
	jmp end							   # jump to end
	
	
modulus:

	movl firstElement(%rip), %eax       # eax = firstElement
	movl secondElement(%rip), %r9d	    # r9d = secondElement
	
	cdq									# sign extend eax to edx:eax
	
	cmpl  $0, %r9d					    # compares r9d with 0
	je divisor_zero					    # if r9d == 0, jump to divisor_zero

	idivl %r9d						    # eax / r11d result in eax and remainder
	
	movl %edx, result(%rip)			    # result = edx
	
	jmp end								# jump to end

power2:

	movl firstElement(%rip), %r8d       # r8d = firstElement
	movl firstElement(%rip), %eax		# eax = firstElement
	
	imull %r8d							# eax = eax * r8d
	
	movl %eax, result(%rip)			    # result = eax
	
	jmp end								# jump to end
	
power3:

	movl firstElement(%rip), %r8d       # r8d = firstElement
	movl firstElement(%rip), %eax		# eax = firstElement
	
	imull %r8d							# eax = eax * r8d
	imull %r8d							# eax = eax * r8d
	
	movl %eax, result(%rip)			    # result = eax
	
	jmp end								# jump to end
	
	
divisor_zero:
	movq $0, result(%rip)				# result = 0
	jmp end								# jump to end
	
end:
	ret
