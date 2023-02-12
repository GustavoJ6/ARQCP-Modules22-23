.section .data
	
.section .text

 .global cube				# long cube(int x)


cube:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer
		
	movslq 	%edi, %rax		# move the first argument into the rax
	movslq  %edi, %rcx		# move the first argument into the rcx

	
	imulq  %rcx				# multiply rcx by rax - argument*argument
	imulq  %rcx				# multiply rcx by rax - (argument*argument)*argument
	
end:	
	#epilogue
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
