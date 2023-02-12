.section .data

	.global even
	.global ptrvec
	.global num
	
	
	
.section .text

 .global test_even     	   	# long test_even(void)
 
test_even:
	movq even(%rip), %rax
	movq $2, %rcx
	cqto
	idivq %rcx
	cmpq $0, %rdx
	jne	odd
	movq $1, %rax
	jmp end
odd:
	movq $0, %rax
	
end:
	ret

 
 .global vec_sum_even     	   	# long vec_sum_even(void)
 
vec_sum_even:
	movq 	ptrvec(%rip), %rdi		#place ptrvec in rdi.
	movl 	num(%rip), %ecx			#place num in ecx.
	movq 	$0, %r8
	decl 	%ecx					#decrease ecx to get the (last position-1).
	
loop:
	cmpl 	$0 , %ecx				#compare ecx with 0 to check if the loop has ended.
	jl		end1					#jump to end if less than 0.
	
	
	pushq 	%rax
	pushq 	%rcx
	pushq 	%rdx
	
	movq	(%rdi), %rdx
	movq 	%rdx, even(%rip)
	
	call 	test_even
	
	cmpq	$1, %rax
	je		sum_even
	
	popq 	%rdx
	popq 	%rcx
	popq	%rax
	addq	$8, %rdi
	decl 	%ecx					#decrease ecx to go to the next position.
	jmp 	loop					#jump unconditionally to loop.
	
	
sum_even:
	addq 	(%rdi), %r8
	popq 	%rdx
	popq 	%rcx
	popq	%rax
	addq	$8, %rdi
	decl 	%ecx					#decrease ecx to go to the next position.
	jmp 	loop
	
end1:
	movq %r8, %rax
	ret
