.section .data
	
.section .text
	
 .global reset_bit				# int reset_bit(int *ptr, int pos) with *ptr in (%rdi) and pos in %esi
				
reset_bit:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp			#allocate 8 bytes on the stack for the variable bitChecker.
	
	movl 	(%rdi), %r8d		#save the value of *ptr
	movl	%esi,	%ecx		#place pos in %ecx
	sarl	%cl, %r8d			#*ptr>>pos
	movl	%r8d, -8(%rbp)		#bitChecker = (*ptr >> pos)
	andl	$1, -8(%rbp)		#bitChecker & 1
	cmpl	$1, -8(%rbp)		#check if (bitChecker & 1) == 1
	je		change_bit			#jump to change_bit if equals
	movl 	$0, %eax			#return 0
	jmp		end					#jump unconditionally to end
	
change_bit:
	movl	$1, %edx			#place the mask on %edx
	sall	%cl, %edx			#1 << pos
	xorl	%edx, (%rdi)		#*ptr = *ptr ^ (1-pos)
	movl	$1, %eax			#return 1
	
end:	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret

 .global reset_2bits			#void reset_2bits(int *ptr, int pos) with *ptr in (%rdi) and pos in %esi
 
reset_2bits:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	call 	reset_bit			#calls function to perform it normally
	movl	$31, %ecx			#place 31 on %ecx
	subl	%esi, %ecx			#31-n
	movl	%ecx, %esi			#pos = 31-n
	call	reset_bit			#calls reset_bit to perform it with 31-n 
	
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
