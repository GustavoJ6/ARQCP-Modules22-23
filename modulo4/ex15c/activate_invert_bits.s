.section .data
	
.section .text

 .global activate_invert_bits	# int activate_invert_bits(int a, int left, int right)
														#  %rdi		  %rsi		%rdx

activate_invert_bits:

	#prologue
	pushq %rbp					# save the base pointer
	movq %rsp,%rbp				# set the base pointer to the stack pointer

	call activate_bits			# call the activate_bits function -> %rax = a (after activation)
	
	not %eax					# invert the bits of %eax

	#epilogue
	
	movq %rbp,%rsp				# Restore stack pointer
	popq %rbp					# Restore base pointer
	ret
