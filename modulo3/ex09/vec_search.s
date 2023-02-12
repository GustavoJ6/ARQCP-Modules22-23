.section .data

	.global ptrvec
	.global x
	.global num
	
.section .text

 .global vec_search					# vec_search(void)

vec_search:

	movq ptrvec(%rip), %rax			# rax = ptrvec 

	movl num(%rip), %r8d			# r8d = num , will be used to decrease until 0 to mark the end of the loop

	cmpq $0, %r8					# if num == 0 , then return 0
	je not_found

	movw x(%rip), %r9w				# r9w = x , will be used to compare the value of the current element with x
	
	
loop:
		
	cmpl $0, %r8d				    # if num = 0 then all the elements have been searched and x was not found, so return the initial address of ptrvec
	je not_found

	cmpw %r9w, (%rax)	            # if x = *rax then return rcx
	je end							# jumps to the end

	addq $2, %rax					# sets the address of rax to the next position of the vec

	decl %r8d						# r8d = r8d - 1 , r8d is the number of elements left to search
	
	jmp loop
	

not_found:
	movq $0, %rax					# if x was not found, returns 0
	jmp end
					
end:
	ret