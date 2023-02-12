.section .data
	
.section .text
	
 .global join_bits				# int join_bits(int a, int b, int pos) with a in %edi, b in %esi and pos in %edx
				
join_bits:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	movl	$0xFFFFFFFF, %r8d	# mask containing 4 bytes of bits with value 1
	pushq	%r8					# place r8 in the stack
	movl	$31, %r8d			# %r8d = 31 - number of bits
	subl	%edx, %r8d			# 31-pos
	movl	%r8d, %edx			# pos = 31-pos
	popq	%r8					# restore r8 from stack
	movl 	%edx, %ecx			# %ecx = 31-pos
	shrl	%cl, %r8d			# aMask = generalMask >> (31-pos)
	movl	%r8d, %r9d			# save the value of aMask
	notl	%r8d				# bMask = ~aMask
	movl	%edi, %eax			# place a in %eax
	andl	%r9d, %eax			# a & aMask
	andl	%r8d, %esi			# b & bMask
	orl		%esi, %eax			# (a & aMask) or (b & bMask)
		
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret

 .global mixed_sum			# mixed_sum(int a, int b, int pos) with a in %edi, b in %esi and pos in %edx
 
mixed_sum:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	movl	%edi, %ecx		#save the value of a
	movl	%esi, %r8d		#save the value of b
	movl	$0, %r9d		#sum = 0
	
	pushq	%rax			#place rax on the stack
	pushq	%rdx			#place rdx on the stack
	pushq	%rcx			#place rcx on the stack
	pushq	%r8				#place r8 on the stack
	pushq	%r9				#place r9 on the stack
	
	call join_bits
	
	popq	%r9
	addl	%eax, %r9d		#sum += join_bits(a,b,pos)
	popq	%r8				#restore the value of r8
	popq	%rcx			#restore the value of rcx
	popq	%rdx			#restore the value of rdx
	popq 	%rax			#restore the value of rax
	
	movl 	%r8d, %edi		# swap a with b
	movl	%ecx, %esi		# swap a with b
	
	pushq 	%rax			#place rax on the stack
	pushq	%r9				#place r9 on the stack
	call join_bits			
	popq	%r9				#restore the value of r9
	addl 	%eax, %r9d		#sum += join_bits(b,a,pos)
	popq	%rax			#restore the value of rax
	movl 	%r9d, %eax		#place sum in eax


	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
