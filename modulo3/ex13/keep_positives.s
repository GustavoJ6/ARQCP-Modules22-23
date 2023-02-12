.section .data

	.global ptrvec
	.global num
	
.section .text

	.global keep_positives			# keep_positives(void)

keep_positives:
	
	movq ptrvec(%rip), %rcx			# rcx = ptrvec 

	movl num(%rip), %r8d			# r8d = num , will be used to decrease until 0 to mark the end of the loop
	
	movq $0, %rdx					# rdx = 0 , will be used to increase until num to keep track of the current index
	
	
	
loop:
		
	cmpl $0, %r8d				    # if num = 0 then all the elements have iterated and the loop ends
	je end

	cmpw $0, (%rcx)					# if ptrvec[index] >= 0 then the element is positive and it is kept
	jge next_position				# jumps to the part of the last part of the loop

	movw %dx, (%rcx)			    # rcx = index

	
next_position:	
	
	addq $2, %rcx					# sets the address of rcx to the next position of the vec

	decl %r8d						# r8d = r8d - 1 , r8d is the number of elements left to search

	incw %dx				     	# dx = dx + 1 , dx is the current index of the vec
	
	jmp loop
	

					
end:
	ret