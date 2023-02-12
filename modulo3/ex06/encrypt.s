.section .data

	.global ptr1
 
	.equ ENCRYPTER_VALUE, 3
	
 
.section .text

 .global encrypt					# encrypt(void)

encrypt:
	
	movq $0, %rcx					# rcx = 0

	movq ptr1(%rip), %rcx			# rcx = ptr1	

	movq $0, %rax				    # rax = 0 , rax will be used as a counter and then it will be the returned value

loop:
		
	cmpb $0, (%rcx)					# if (*rcx == 0) break
	je end

	cmpb $'a', (%rcx)				# Checks if the current char is 'a'
	je loop_final					# If it is, jumps to the final part of the loop
	cmpb $' ', (%rcx)				# Checks if the current char is ' '  (space)
	je loop_final					# If it is, jumps to the final part of the loop
	
	addb $ENCRYPTER_VALUE, (%rcx)	# Adds the value of ENCRYPTER_VALUE to the current char
	incq %rax

loop_final:
	incq %rcx						# else, increments rcx
	jmp loop						# and jumps to loop

					
end:

	ret