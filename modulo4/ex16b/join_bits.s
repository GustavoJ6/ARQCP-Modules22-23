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
		
end:
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
