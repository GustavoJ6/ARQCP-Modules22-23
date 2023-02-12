.section .data
	
.section .text

 .global calculate				# int calculate(int a,int b)


calculate:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer
	
	
	movl 	%edi, %r8d		# a = %edi -> %r8d
	movl	%esi, %r9d		# b = %esi -> %r9d
	
	subl 	%r9d, %r8d		# a - b = r8d (diff)
	
	imull   %edi, %r9d 		# a * b = %r9d (prod)
	
	
	movl    %r9d, %ecx	    # prod -> %ecx - 4th argument
	movl    %esi, %edx		# b -> %edx - 3rd argument
	movl    %edi, %esi	    # a -> %esi - 2nd argument
	movb    $'*', %dil		# '*' -> %dil - 1st argument
	
	pushq	%r8				# push diff to the stack
	pushq	%rsi			#push a to the stack
	pushq	%rdx			#push b to the stack
	pushq	%rcx			#push prod to the stack
	
	call print_result

	popq   %rcx				# pop prod from the stack
	popq   %rdx				# pop b from the stack
	popq   %rsi				# pop a from the stack
	popq   %r8				# pop diff from the stack
	
	movb   $'-', %dil		# '-' -> %dil - 1st argument

	movl  %ecx, %r9d		# prod -> %r9
	
	movl  %r8d, %ecx		# diff -> %ecx - 4th argument
	
	push  %r8				# push diff to the stack
	push  %r9 				# push prod to the stack
	
	call print_result

	popq  %r9				# pop prod from the stack
	popq  %r8				# pop diff from the stack
	
	subl %r9d, %r8d			# diff - prod = %r8d (diff_prod)
	
	movl %r8d, %eax			# diff_prod -> %eax
	
end:	
	#epilogue
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
