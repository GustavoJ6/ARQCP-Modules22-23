.section .data
 .global A
 .global B
 
.section .text
 .global isMultiple # int isMultiple()
isMultiple:
	movl 	A(%rip), %eax 	#place op1 in ecx
	movl 	B(%rip), %ecx 	#place op2 in eax
	cltd					#convert long to double.
	cmpl	$0, %ecx		#compare ecx with 0.
	jne 	not_null		#jump if not equals.
	jmp 	end				#jump unconditionally to end.
not_null:
	idivl 	%ecx			#divides eax by ecx.
	cmpl 	$0, %edx		#compare edx with 0.
	je 		multiple		#jump if equals.
	movl 	$0, %eax		#place 0 in eax.
	jmp 	end				#jump unconditionally to end.
multiple:
	movl	$1, %eax		#place 1 in eax.
	jmp 	end				#jump unconditionally to end.
end:
	ret
