.section .data
 .global op1
 .global op2
 .global res

		.equ CONST, 20
 
.section .text
 .global sum				# void sum(void)
	
 .global sum_v2 
sum_v2:
	movl op1(%rip), %ecx	 #place op1 in ecx
	movl op2(%rip), %eax	 #place op2 in eax
	movl $CONST, %edx 		 #place CONST in edx
	subl %ecx, %edx			 #subtract: edx - ecx. Result is in edx
	subl %ecx, %edx			 #subtract: edx - ecx. Result is in edx
	addl %eax, %edx			 #add eax to edx. Result is in edx
	movl %edx, %eax 	     #copy the result to eax
	ret
