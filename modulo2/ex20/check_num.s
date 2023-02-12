.section .data
 .global num
 
.section .text
 .global check_num # char check_num()
check_num:
	movl	num(%rip), %eax #place num in eax.
	movl	$2 , %ecx		#place 2 in ecx.
	cdq						#converts double to quad.
	idivl	%ecx			#divides eax by ecx.
	cmpl	$0, %edx		#compares edx with 0.
	je 		even			#jump if equals.
	jne		odd				#jump if not equals.
	jmp 	end				#jump unconditionally to end
even:
	cmpl 	$0, %eax		#compares eax with 0.
	jl 		even_negative	#jump if less.
	movl	$6, %eax		#place 6 in eax.
	jmp 	end				#jump unconditionally to end
odd:
	cmpl	$0, %edx 		#compare edx with 0. Since a division containing a negative number generates a negative rest.
	jl		odd_negative	#jump if less.
	movl	$7, %eax		#place 7 in eax.
	jmp 	end				#jump unconditionally to end
	
even_negative:
	movl 	$4, %eax		#place 4 in eax.
	jmp 	end				#jump unconditionally to end
odd_negative:
	movl $5, %eax			#place 5 in eax.
	jmp end					#jump unconditionally to end
end:
	ret
