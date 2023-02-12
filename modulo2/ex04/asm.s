.section .data
 .global op1
 .global op2
 .global op3
  op3:
   .quad 0
 .global op4
  op4:
   .quad 0
 
.section .text
 .global sum_v3 # long sum_v3()
sum_v3:
	movq	op3(%rip), %rcx		#place op3 in rcx
	movq	op4(%rip), %rax 	#place op4 in rax
	addq 	%rcx, %rax 			#adds rdx to rax.
	movslq 	op2(%rip), %rcx		#place op2 in rcx.
	subq 	%rcx, %rax 			#subtracts rax with rdx.
	subq 	%rcx, %rax 			#subtracts rax with rcx.
	movslq 	op1(%rip), %rcx		#place op1 in rcx. Changes size from long to quad.
	addq 	%rcx, %rax 			#adds rcx to rax.
	addq 	%rcx, %rax 			#adds rcx to rax.
	ret
