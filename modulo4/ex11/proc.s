.section .text

 .global proc				# int proc(int,int*,int,int*,short,short*,char,char*)


proc:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer
	
	
	addl %edx,(%rsi)		# *p1 = x1 + x2
	
	subl %edi,(%rcx)		# *p2 = x2 - x1
	
	addw %dx,(%r9)			# *p3 = x2 + x3
	
	movb 24(%rbp),%al		# move x4 to al
	
	movb $3, %r11b
	
	imulb %r11b				# multiply rax by 3
	
	pushq %rcx				# save p2
	movq 16(%rbp), %rcx 	# move p4 to rcx
	movb %al, (%rcx)		# move al(x4 * 3) to *p4
	popq %rcx				# restore p2
	

	
end:	
	#epilogue
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
