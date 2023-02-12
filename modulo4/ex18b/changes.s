.section .data
	
.section .text
	
 .global changes				# int changes(int *ptr) with *ptr in (%rdi)
				
changes:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp			# allocate 8 bytes on the stack.
	
	movl	(%rdi), %ecx		# saves the value of *ptr.
	andl	$0xFF00, %ecx		# *ptr & 0xFF00.
	movl	%ecx, -8(%rbp)		# saves *ptr & 0xFF00 on the local variable - byteChecker.
	shrl	$8, -8(%rbp)		# byteChecker >> 8.
	cmpl	$15, -8(%rbp)		# compare byteChecker with 15.
	jg		change_byte			# jump to change_byte if byteChecker > 15.
	jmp 	end					# jump unconditionally to end.
	
change_byte:
	xorl	$0xFF0000, (%rdi)	# *ptr = *ptr ^ 0xFF0000.
	
end:
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
