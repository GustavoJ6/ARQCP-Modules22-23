.section .data

	.global ptrvec
	.global num
	
	
	
.section .text

 .global vec_zero		     	   	# void vec_zero(void)
 
vec_zero:
	movq 	ptrvec(%rip), %rdi	    # place ptrvec in rdi
	movl	num(%rip), %edx			# place num in edx
	movq 	$0, %rax					# place 0 in al. Initialize the register.
	
loop:
	cmpl	$0, %edx				#compare cl with 0.
	je		end						#jump to loop if equals.
	movl 	(%rdi), %ecx				#place (%rdi) in cl.
	cmpl	$100, %ecx				#compare cl with 100.
	jge		greater_or_equals		#jump if greater or equals.
	addq	$4, %rdi
	decl 	%edx
	jmp		loop					#jump unconditionally to loop.
	
greater_or_equals:
	movl 	$0, (%rdi)				#place 0 in (%rdi).
	incb	%al						#adds 1 to al.
	addq	$4,	%rdi				#increments rdi
	decl 	%edx
	jmp		loop					#jump unconditionally to loop
	
	
end:
	ret
