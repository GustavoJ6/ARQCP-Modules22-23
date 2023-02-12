.section .data

 .global ptr1       
  
	.equ CHAR_TO_COUNT, '7'
	
 
.section .text

 .global seven_count				# seven_count(void)

seven_count:
	
	movq $0, %rcx					# rcx = 0

	movq ptr1(%rip), %rcx			# rcx = ptr1	

	movq $0, %rax				    # rax = 0 , rax will be used as a counter and then it will be the returned value

loop:

	cmpb $0, (%rcx)					# if (*rcx == 0) break
	je end

	cmpb $CHAR_TO_COUNT, (%rcx)		# Compares the char to count with the value in the memory pointed by rcx
	je count						# If they are equal, jumps to count
	incq %rcx						# else, increments rcx
	jmp loop						# and jumps to loop
	
	
count:

	incq %rax						# Increments the counter
	incq %rcx						# Increments the pointer
	jmp loop						# Jumps to the loop

end:

	ret