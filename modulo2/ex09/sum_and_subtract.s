.section .data

		.global A
		.global B
		.global C
		.global D
		
.section .text

 .global sum_and_subtract

sum_and_subtract:
	
	
	movl A(%rip), %eax		# eax = A
	movslq %eax, %rax		# From 32bit to 64bit
	
	movw B(%rip), %cx		# cx = B
	movswq %cx, %rcx		# From 16bit to 64bit
	
	movb C(%rip), %dl		# dl = C
	movsbq %dl, %rdx		# From 8bit to 64bit
	
	movb D(%rip), %r8b		# r8b = D
	movsbq %r8b, %r8		# From 8bit to 64bit
	
	
	
	addq %rdx, %rax		    # C+A - dest = A
	subq %r8, %rax		    # A-D - dest = A
	addq %rcx, %rax			# A+B - dest = A
	
	ret
	
	

