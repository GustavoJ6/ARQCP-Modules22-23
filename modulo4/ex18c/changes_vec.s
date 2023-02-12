.section .data
	
.section .text
	
 .global changes				# int changes(int *ptr) with *ptr in (%rdi)
				
changes:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp			#allocate 8 bytes on the stack.
	
	movl	(%rdi), %ecx		#saves the value of *ptr.
	andl	$0xFF00, %ecx		#*ptr & 0xFF00.
	movl	%ecx, -8(%rbp)		#saves *ptr & 0xFF00 on the local variable - byteChecker.
	shrl	$8, -8(%rbp)		#byteChecker >> 8.
	cmpl	$15, -8(%rbp)		#check if byteChecker > 15.
	jg		change_byte			#jump to change_byte if greater.
	jmp 	end					#jump unconditionally to end.
	
change_byte:
	xorl	$0xFF0000, (%rdi)	#*ptr = *ptr ^ 0xFF0000.
	
end:
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret

 .global changes_vec			#void changes_vec(int *ptrvc, int num) with *ptrvec in (%rdi) and num in %esi

changes_vec:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
loop:
	cmpl	$0, %esi			#compare num with 0
	je		end1				#jump to end when num = 0
	call	changes				#calls function changes with *ptrvec as a parameter
	addq	$4, %rdi			#*ptrvec++
	decl	%esi				#num--
	jmp 	loop
	
end1:	
		#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
