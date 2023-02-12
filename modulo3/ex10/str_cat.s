.section .data

	.global ptr1
	.global ptr2
	.global ptr3
	
	
	
.section .text

 .global str_cat     	   	# void str_cat(void)
 
str_cat:
	movq 	ptr1(%rip), %rdi	    # place ptr1 in rdi
	movq	ptr2(%rip), %rsi		# place ptr2 in rsi
	movq	ptr3(%rip), %rax		# place ptr3 in rax.
	
loop1:
	movb 	(%rdi), %cl				#place (%rdi) in cl.
	cmpb	$0, %cl					#compare cl with the 0 byte.
	je		loop2					#jump to loop2 if equals.
	movb 	%cl, (%rax)				#place cl in (%rax)
	inc 	%rdi					#increments rdi.
	inc		%rax					#increments rax.
	jmp		loop1					#jump unconditionally to loop1.
	
loop2:
	movb 	(%rsi), %cl				#place (%rsi) in cl.
	movb 	%cl, (%rax)				#place cl in (%rax)
	cmpb	$0, %cl					#compare cl with the 0 byte.
	je		end						#jump to end if equals.
	inc 	%rsi					#increments rsi.
	inc		%rax					#increments rax.
	jmp		loop2					#jump unconditionally to loop2
	
	
end:
	ret
