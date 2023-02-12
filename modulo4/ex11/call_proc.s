.section .data
	
.section .text

 .global call_proc				# int call_proc(int,int,short,char)


call_proc:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer


	# call_proc(int a, int b, short c, char d)
	
	# int x1 = a, int x2 = b, short x3 = c, char x4 = d
	# a = %rdi, b = %rsi, c = %rdx, d = %rcx 

	subq $32, %rsp			# allocate space for the return value

	
	movq %rdi, -8(%rbp)		# save a in the stack
	movq %rsi, -16(%rbp)	# save b in the stack
	movq %rdx, -24(%rbp)	# save c in the stack
	movq %rcx, -32(%rbp)	# save d in the stack
	
	
	# prepare the parameter to call proc(x1,&x1,x2,&x2,x3,&x3,x4,&x4)
	
	leaq -8(%rbp), %rsi		# rsi = &x1
	
	movl -16(%rbp), %edx	# edx = x2
	leaq -16(%rbp), %rcx	# rcx = &x2

	movw -24(%rbp), %r8w	# di = x3
	leaq -24(%rbp), %r9		# r9 = &x3
	
	movb -32(%rbp), %r10b	# r10b = x4
	leaq -32(%rbp), %r11	# r11 = &x4

	pushq %r10				# push x4
	pushq %r11				# push &x4
	
	
	call proc				# proc(x1,&x1,x2,&x2,x3,&x3,x4,&x4)
	addq $16, %rsp			# get the stack back to the original state
	
	movl (%rsi), %eax		# eax = x1
	addl (%rcx), %eax		# eax = x1 + x2
	
	movq -32(%rbp), %r10		# r10b = x4
	movsbl %r10b, %r10d		# r10d = (int)x4
	
	movq (%r9), %r8		# r8d = x3
	movswl %r8w, %r8d		# r8d = (int)x3
	
	subl %r10d, %r8d		# r8d = x3 - x4
	
	imull %r8d				# eax = (x1 + x2) * (x4 - x3)
	
		
	#epilogue
	
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
