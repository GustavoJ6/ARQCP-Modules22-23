.section .data

.section .text

 .global add_byte			# void add_byte(char x, int* vec1, int* vec2)
							#	               rdi		  rsi        rdx

add_byte:

	#prologue
	pushq %rbp					# save the base pointer
	movq %rsp,%rbp				# set the base pointer to the stack pointer

	movl (%rsi), %ecx 			# ecx = vec1[0] = size of vec1
	movl %ecx, (%rdx)			# vec2[0] = ecx

	cmpl $0, %ecx				# if ecx == 0
	je end
	
	addq $4, %rsi					# vec1++
	addq $4, %rdx					# vec2++
	movl $0, %eax				# eax = 0 (iterator)
	
loop:
	
	cmpl %ecx, %eax				# if (eax == ecx)
	je end						# jump to end
	
	movl (%rsi), %r8d			# r8d = vec1[eax]
	andb $0xFF, %r8b			# r8b = r8b & 0xFF
	
	addb %dil, %r8b				# r8b = r8b + x
	
	movl $0xFFFFFF00, %r9d		# r9d = 0xFFFFFF00 (mask)
	andl (%rsi), %r9d			# r9d = r9d & vec1[eax]
	
	orl %r9d, %r8d				# r8d = r8d | r9d
	
	movl %r8d, (%rdx)			# vec2[eax] = r9d
	
	addq $4, %rsi					# vec1++
	addq $4, %rdx					# vec2++
	incl %eax					# eax = eax + 1	- iterator++
	jmp loop					# jump to loop

	
end:
	#epilogue
	movq %rbp,%rsp
	popq %rbp
	ret
	