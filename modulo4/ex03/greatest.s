.section .data
	
.section .text

 .global greatest				# int greatest(int a,int b, int c)


greatest:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer

	movl 	%edi, %eax		# move the first argument into the eax
	
	cmpl	%esi, %eax		# if a < b
	jl 		bIsGreatest		# jump to bIsGreatest
	
compareC:	
	cmpl 	%edx, %eax		# if biggetAtTheMoment < c
	jl 		cIsGreatest		# jump to cIsGreatest

compareD:	
	cmpl    %ecx, %eax		# if biggetAtTheMoment < d
	jl 		dIsGreatest		# jump to dIsGreatest
	jmp end
	
bIsGreatest:
	movl	%esi, %eax		# move the second argument into the eax
	jmp compareC

cIsGreatest:
	movl %edx, %eax			# move the third argument into the eax
	jmp compareD

dIsGreatest:
	movl %ecx, %eax			# move the fourth argument into the eax
	
end:	
	#epilogue
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
