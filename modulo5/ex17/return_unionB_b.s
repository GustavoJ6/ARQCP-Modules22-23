.section .text
	.global return_unionB_b	# char return_unionB_b(structA **matrix, int i, int j) with **matrix in (%rdi), i in %rsi and j in %rdx

return_unionB_b:
	movl	%esi, %ecx				# save i
    imull	$8, %ecx				# i * 8 bytes (structA * size)

    movl    %edx, %r8d				# save j
    imull	$32, %r8d				# j * 32 bytes (structA size)
    addl	$24, %r8d				# j * 32 bytes + 24 bytes (offset of ub in structA)

    movq    (%rdi, %rcx, 1), %rax	# matrix[i]
    movb    (%rax, %r8, 1), %al		# matrix[i][j].ub.b
    ret
