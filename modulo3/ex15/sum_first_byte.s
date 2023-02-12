.section .data

	.global ptrvec
	.global num
	
.section .text

	.global sum_first_byte			# sum_first_byte(void)

sum_first_byte:
	
	movq ptrvec(%rip), %rcx			# rcx = ptrvec 

	movl num(%rip), %r8d			# r8d = num , will be used to decrease until 0 to mark the end of the loop
	
	movq $0, %rax				    # rax = 0 , will be used to store and return the sum of all the first bytes, from each element
	
	
	
loop:
		
	cmpl $0, %r8d				    # if num = 0 then all the elements have iterated and the loop ends
	je end

	movsbl (%rcx), %edx			    # edx = *rcx , the first byte of the current element

	addq %rdx, %rax				    # rax += edx , add the first byte of the current element to the sum
	
	addq $8, %rcx					# sets the address of rcx to the next position of the vec

	decl %r8d						# r8d = r8d - 1 , r8d is the number of elements left to search
	
	
	jmp loop
	

					
end:
	ret