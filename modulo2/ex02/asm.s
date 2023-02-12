.section .data
 .global op1
 .global op2
 
.section .text
 .global sum # int sum()
sum:
	movl	op1(%rip), %ecx		#place op1 in ecx
	movl	op2(%rip), %eax 	#place op2 in eax
	addl	%ecx, %eax 			#adds ecx to eax.
	ret
