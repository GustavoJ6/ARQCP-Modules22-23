.section .data
	
.section .text
	
 .global calc					# int calc(int a, int *b, int c) with a in %edi, *b in (%rsi) and c in %edx


calc:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp			#allocate 8 bytes on the stack for the variable z.
	
	
	imull	$2, %edi			# a * 2
	subl	(%rsi), %edi		# a * 2 - (*b)
	movl	%edi, -8(%rbp)		# z = a * 2 - (*b)
	subl	$4, %edx			# c - 4
	movl	%edx, %eax			# %eax = (c-4)
	imull	-8(%rbp)			# (c-4) * z
	

end:	
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
