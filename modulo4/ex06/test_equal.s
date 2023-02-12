.section .data
	
.section .text
	
 .global test_equal					# int test_equal(char *a, char *b) with *a in (%rdi) and *b in (%rsi)


test_equal:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	

	
my_loop:
	movb 	(%rdi), %r8b		# %r8b = *a
	movb	(%rsi), %r9b		# %r9b = *b
	cmpb	$0, %r8b			# check if *a = '\0'
	je		test_end			# jump to test_end if equals.
	cmpb	%r8b, %r9b			# check if *a = *b
	jne		different_strings	# jump to different_strings if not equals.
	incq 	%rdi				# a++
	incq	%rsi				# b++
	jmp 	my_loop				# go back to the loop
	
test_end:
	cmpb	$0, %r9b			# check if  *b = '\0'
	je		equal_strings		# jump to equal_strings if equals.
	jmp		different_strings	# else jump to different_strings.
	
equal_strings:
	movq 	$1, %rax				# set return value to 1.
	jmp 	end						# jump to return.
different_strings:	
	movq 	$0, %rax				# set return valeu to 0.
end:	
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
