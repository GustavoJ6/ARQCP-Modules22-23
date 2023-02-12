.section .data

	.global ptr1
	.global ptr2
	.global num
	
	
	
.section .text

 .global swap		     	   		# void swap(void)
 
swap:
	movq 	ptr1(%rip), %rdi	    # place ptr1 in rdi
	movq	ptr2(%rip), %rsi		# place ptr2 in rsi
	movl	num(%rip), %edx			# place num in edx
	
loop:
	cmpl	$0, %edx				#compare cl with 0.
	je		end						#jump to loop if equals.
	movb 	(%rdi), %r8b				#place (%rdi) in cl.
	movb	(%rsi), %r9b
	movb 	%r8b, (%rsi)
	movb 	%r9b, (%rdi)
	incq 	%rdi
	incq 	%rsi
	decl 	%edx
	jmp		loop					#jump unconditionally to loop.
	
end:
	ret
