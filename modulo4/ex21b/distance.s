.section .data

.section .text

 .global distance			# int distance(char* a, char* b)
							#	               rdi		 rsi        

distance:

	#prologue
	pushq %rbp					# save the base pointer
	movq %rsp,%rbp				# set the base pointer to the stack pointer

	movq $0 , %rax				# eax = 0 (distance)

	
loop:

	cmpb $0, (%rdi)				# if (*a == 0) the string has ended
	je aHasEnded				# jump to aHasEnded if true
	cmpb $0, (%rsi)				# if (*b == 0) 
	je differentSizes
	
bHasNotEnded:
	
	movb (%rdi), %r8b			# r8b = *a
	cmpb %r8b, (%rsi)			# if (*a != *b) the strings are different
	je stringsAreEqual			# jump to stringsAreDifferent if true

	incq %rax					# distance++ if they are not equal


stringsAreEqual:

	incq %rdi					# a++
	incq %rsi					# b++
	jmp loop					# loop

	
aHasEnded:	
	cmpb $0, (%rsi)				# if (*b == 0) 
	je end						# jump to end if true
	jne differentSizes			# otherwise jump to differentSizes
	
	
differentSizes:
	movq $-1, %rax				# eax = -1 (distance)
	
end:
	#epilogue
	movq %rbp,%rsp
	popq %rbp
	ret
	