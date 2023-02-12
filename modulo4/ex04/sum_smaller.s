.section .data
	
.section .text

 .global sum_smaller				# int sum_smaller(int num1, int num2, int *smaller) with num1 in %edi, num2 in %esi and *smaller in (%rdx)


sum_smaller:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
	cmpl 	%edi, %esi				# check if num2 > num1
	jg		second_greater			# jump to second_greater if num2 > num1
	movl	%esi, (%rdx)			# *smaller = num2
	jmp 	end
	
second_greater:
	movl 	%edi, (%rdx)			# *smaller = num1
	jmp 	end
	
end:	
	addl	%edi, %esi				# num1+num2
	movl	%esi, %eax				# %eax = num1 + num2
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
