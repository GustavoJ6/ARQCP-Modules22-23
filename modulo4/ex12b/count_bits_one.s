.section .data
	
.section .text
	
 .global count_bits_one					# int count_bits_one(int x) with x in %edi


count_bits_one:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	movl	$0,%eax		#counter = 0.
	movl	$32,%ecx	#i=32. i - loop variable.
	
loop:	
	cmpl	$0, %ecx	#compare i with 0
	je		end			#jump to end if i=0
	pushq	%rdi		#place x on the stack.
	ANDl	$1, %edi	#apply operation AND to x.
	cmpl	$1, %edi	#check if bit is 1.
	je		increment	#jump to increment if equal.
	popq	%rdi		# return x to its original value
	sar		%edi		# x>>1 
	
	decl	%ecx		#i--
	jmp 	loop
	
increment:
	popq	%rdi		# return x to its original value
	incl	%eax		#counter++
	sar		%edi		# x>>1 
	decl	%ecx		#i--
	jmp 	loop
		
end:
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
