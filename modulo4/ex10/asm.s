.section .data
	
.section .text
	
 .global incr					# int incr(short *p1, char val) with *p1 in (%rdi) and val in %sil


incr:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp			#allocate 16 bytes on the stack for x and y.
	
	movswl	(%rdi),%eax			#(int)*p1
	movl	%eax,-8(%rbp)		#x=(int)*p1
	
	movsbl	%sil, %ecx			#(int)val
	addl	%ecx, -8(%rbp)		#x+val
	movl	-8(%rbp), %edx		#saves the value of x+val
	
	movl	%edx, -16(%rbp)		#y = x + val
	movl	-16(%rbp), %r8d		#save the value of y
	
	movl 	%r8d, (%rdi)		#*p1 = y
	
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret

 .global call_incr				# int call_incr(short w) with w in %di

call_incr:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp			#allocate 16 bytes on the stack for the two local variables.
									
	addw	$3, %di			    # w + 3
	movw	%di, -8(%rbp) 		# x1 = w+3
	leaq	-8(%rbp), %rdi		# turn &x1 into the first parameter.
	movb	$0xC3, %sil			# turn 0xC3 into the second parameter.

	pushq	%rcx
	pushq	%rax
	pushq	%r8
	pushq	%r9
	
	call 	incr
	
	movl 	%eax, -16(%rbp)		# x2 = incr(&x1,0xC3)
	
	popq	%r9
	popq	%r8
	popq	%rax
	popq	%rcx
	
	movswl	-8(%rbp), %eax		#%eax = x1
	addl	-16(%rbp), %eax		#%eax = x1+x2
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
ret
