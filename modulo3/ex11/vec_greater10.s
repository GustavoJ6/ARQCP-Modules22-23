.section .data

	.global ptrvec
	.global num
	
.section .text

 .global vec_greater10					# vec_greater10(void)


vec_greater10:

	movq ptrvec(%rip), %rcx			# rcx = ptrvec 

	movl num(%rip), %r8d			# r8d = num , will be used to decrease until 0 to mark the end of the loop

	movq $0, %rax					# rax = 0 , rax will be used as a counter
	
	
loop:
		
	cmpl $0, %r8d				    # if num = 0 then all the elements have been iterated
	je end

	cmpl $10, (%rcx)	            # if *rcx > 10 then increments the counter
	jle next_position				# jumps to the normal procedure to complete the loop without incrementing the counter
	
	incq %rax						# increments the counter

next_position:
	
	addq $4, %rcx					# sets the address of rax to the next position of the vec

	decl %r8d						# r8d = r8d - 1 , r8d is the number of elements left to search
	
	jmp loop
	

	
					
end:
	ret