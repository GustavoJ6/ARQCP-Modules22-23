.section .data
	
.section .text

 .global sum_n2				# long sum_n2(int n) with n in %edi


sum_n2:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	movq 	$1, %rcx		#counter.
	movq 	$0, %rax		#sum.
	movslq	%edi, %rdi		#resizes edi to rdi.
	
loop:
	cmpq	%rdi, %rcx		#compares the counter with the num (rdi).
	jg		end				#jump to end if equals, meaning n numbers were reached.
	movq	%rcx, %rdx		#save the value of counter.
	imulq	%rcx, %rdx		#multiplies the actual number for itself (to get the square).
	addq	%rdx, %rax		#adds rcx to rax (result to the sum).
	incq	%rcx			#increments rcx to go to the next position.
	jmp 	loop
end:	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
