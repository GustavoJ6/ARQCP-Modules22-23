.section .data
	
.section .text
	
 .global count_bits_one					# int count_bits_one(int x) with x in %edi


count_bits_one:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	movl	$0,%eax		#counter = 0.
	movl	$16,%ecx	#i=16. i: loop variable.
	
loop:	
	cmpl	$0, %ecx	#compare i with 0
	je		end			#jump to end if i=0
	pushq	%rdi		#place x on the stack.
	andl	$1, %edi	#apply operation AND to x.
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
	
 .global vec_count_bits_one			#int vec_count_bits_one(short *ptr, int num) with *ptr in (%rdi) and num in %esi

vec_count_bits_one:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	movl	$0,	%edx
	
loop1:
	cmpl	$0, %esi			#compare num with 0.
	je 		end1				#jump to end if num = 0.
	pushq	%rdi				#place rdi on the stack
	movw	(%rdi), %di			#make *ptr a parameter 
	pushq	%rax				#place rax on the stack
	pushq	%rdx				#place rdx on the stack
	call 	count_bits_one		#calls function count_bits_one
	popq	%rdx				#gets back the value of rdx
	addl	%eax, %edx			#counter += number of active bits
	popq	%rax				#restore the value of rax
	popq	%rdi				#restore the value of rdi
	addq 	$2, %rdi			#goes to the next short
	decl	%esi				#num--
	jmp 	loop1
	
end1:
	movl	%edx, %eax			#eax = total number of active bits
 	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
