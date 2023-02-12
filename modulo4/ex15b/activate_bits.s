.section .data
	
.section .text

 .global activate_bits			# int activate_bits(int a, int left, int right)	
								#                    %rdi    %rsi     %rdx

activate_bits:

	#prologue
	pushq %rbp					# save the base pointer
	movq %rsp,%rbp				# set the base pointer to the stack pointer
	
	
	movl $0,%eax 				# eax = 0 (mask)
													
	movl %edx,%r10d				# r10 = right
	movl $0,%ecx				# ecx = 0 (iterator)
	
		
# Create a mask that is 1's from left to right
rightBits:
	cmpl %ecx,%r10d				# if (iterator == right)
	je continuation				# jump to continuation

	shll %eax					# eax = eax << 1
	incl %eax					# eax += 1

	incl %ecx					# iterator++
	jmp rightBits				# jump to the beginning of the loop
	
continuation:
	orl %eax,%edi			 	# eax = eax | a - Applying the mask
	movl $0,%eax 			 	# eax = 0 (reset mask)
	
	movl %esi,%r10d				# r10 = left
	movl $31,%ecx				# ecx = 31 (iterator)
	
leftBits:
	cmpl %ecx,%r10d				# if (iterator == left)
	je end						# jump to end
	
	incl %eax					# eax += 1
	rorl %eax					# rotate eax right by 1
		
	decl %ecx					# iterator--
	jmp leftBits				# jump to the beginning of the loop
		
end:
	orl %edi,%eax				# eax = eax | a - Applying the mask

	#epilogue
	movq %rbp,%rsp
	popq %rbp
	
	ret
