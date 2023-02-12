.section .data
 .global op1
 .global op2
 .global op3
 
.section .text
 .global sum3ints # long sum3ints()
sum3ints:
	movslq	op1(%rip), %rax 	#place op1 in rax
	movslq 	op2(%rip), %rcx 	#place op2 in rcx
	addq 	%rcx, %rax 			#adds rcx to rax.
	movslq 	op3(%rip), %rcx		#place op3 in rcx.
	addq 	%rcx, %rax 			#adds rcx to rax.
	ret
