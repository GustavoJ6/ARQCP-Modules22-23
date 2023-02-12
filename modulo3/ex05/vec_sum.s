.section .data

 .global ptrvec						# pointer of the vec with short num elements       
 .global num	
 
.section .text
	
 .global vec_sum					# vec_sum(void)

vec_sum:
	
	movq $0, %rcx					# rcx = 0

	movq ptrvec(%rip), %rcx			# ecx = ptrvec - stores the initial address of vec	

	movq $0, %rax				    # rax = 0 , rax will be used as a "variable" totalSum, having the total sum and then it will be the returned value

	movswl num(%rip), %r8d

loop:

	cmpl $0, %r8d
	je end

	addq (%rcx), %rax				# adds *rcx to eax (total)

	decl %r8d
	addq $8, %rcx					# increments rcx
	jmp loop						# and jumps to loop
	

end:
	ret