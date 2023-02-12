.section .data

	.global ptr1
	.global ptr2
	
	
	
.section .text

 .global str_copy_porto     	   	# void str_copy_porto(void)

str_copy_porto:
	
	movq 	ptr1(%rip), %rdi	    # place ptr1 in rdi
	movq	ptr2(%rip), %rsi		# place ptr2 in rsi.
	
loop:
	movb 	(%rdi), %al				#place (%rdi) in al.
	cmpb	$0, %al					#compare al with the 0 byte.
	je		end						#jump to end if equals.
	cmpb	$'o', %al				#compare al with the character o.
	jne		not_equals				#jump if not equals.
	movb	$'u', (%rsi)			#place the character u in rsi
	incq 	%rdi					#increments rdi.
	incq	%rsi					#increments rsi.
	jmp		loop					#jump unconditionally to loop.
	
not_equals:
	movb 	%al, (%rsi)				#place al in (%rsi)
	incq 	%rdi					#increments rdi.
	incq	%rsi					#increments rsi.
	jmp 	loop					#jump unconditionally to loop.
end:
	movb $0, (%rsi)					#place the 0 byte in (%rsi)
	ret
