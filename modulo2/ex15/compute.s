.section .data

		.global A
		.global B
		.global C
		.global D
		
.section .text

 .global compute

compute:
	
	movl A(%rip), %eax		# eax = A
	movl B(%rip), %r9d		# r9d = B
	movl C(%rip), %r10d		# r10d = C
	movl D(%rip), %r11d		# r11d = D
	
	mull %r9d 			    # A*B result in eax
	
	subl %r10d, %eax	    # (A*B) "-C" result in eax
	
	cdq						# sign extend eax to edx:eax
	
	cmpl  $0, %r11d			# compares D to 0
	je divisor_zero			# jump to divisor_zero if D = 0

	idivl %r11d			    # eax / r11d result in eax
	jmp end					# jump to end
	
.divisor_zero:
	movq $0, %rax			# eax = 0
	jmp end					# jump to end

.end:
	ret
