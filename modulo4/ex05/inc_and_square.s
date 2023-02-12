.section .data
	
.section .text

 .global inc_and_square				# int inc_and_square(int *v1,int v2)


inc_and_square:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer

	incl    (%rdi)			# increment the value pointed by the first argument
	
	movl    %esi, %eax		# move the second argument to the eax
	
	imull	%eax 			# eax*eax = eax^2

		
	#epilogue
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
