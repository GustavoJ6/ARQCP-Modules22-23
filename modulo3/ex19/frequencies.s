.section .data

	.global ptrgrades
	.global ptrfreq
	.global num
	
.section .text

	.global frequencies				# frequencies(void)

frequencies:
	
	movq ptrgrades(%rip), %rcx		# rcx = ptrgrades

	movq ptrfreq(%rip), %rdx		# rdx = ptrfreq , base
	
	movq %rdx, %rax					# rax = rdx

	movl num(%rip), %r8d			# r8d = num , will be used to decrease until 0 to mark the end of the loop
	
	movl $21, %r9d			    	# r9d = num , will be used to decrease until 0 to mark the end of the loop
	
loop_set_0:	
	
	cmpl $0, %r9d				    # if num = 0 then all the elements have iterated and the loop ends
	je loop

    movl $0, (%rax)	 
	addq $4, %rax					# rax = rax + 4
	
	decl %r9d	
	jmp loop_set_0
	

	
loop:
		
	cmpl $0, %r8d				    # if num = 0 then all the elements have iterated and the loop ends
	je end
	
	movq $0, %rax				    # rax = 0 
	
	movb (%rcx), %al				# al = *ptrgrades

	movq $0, %r9					# r9 = 0 
	
	incl (%rdx,%rax,4)				# ptrfreq[al] = ptrfreq[al] + 1
	
	addq $1, %rcx					# sets the address of rcx to the next position of the array
	
	decl %r8d						# r8d = r8d - 1 , r8d is the number of elements left to iterate
	
	jmp loop
	
	
end:
	ret