.section .data

		.global op1
		.global op2

.section .text

 .global test_flags

test_flags:

	movl op1(%rip), %eax			# op1 to %eax
	movl op2(%rip), %ecx			# op2 to %ecx

	addl %ecx, %eax					# add %ecx to %eax , result in %eax

	jc flagActivated				# If the flag is activated then it jumps to flagActivated
	jo flagActivated				# If the flag is activated then it jumps to flagActivated
	
	movq $0, %rax					# 0 to %rax to return 0 (no flags were activated)
	
	jmp end							# Jumps to end
	
	
flagActivated:
	movq $1, %rax					# 1 to %rax to return 1 (One flag)
	
end:	
	ret
