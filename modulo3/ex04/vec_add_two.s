.section .data

	.global num
	.global ptrvec
	
.section .text

 .global vec_add_two     	   	# void vec_add_two(void)

vec_add_two:
	movq 	ptrvec(%rip), %rdi		#place ptrvec in rdi.
	movl 	num(%rip), %ecx			#place num in ecx.
	decl 	%ecx					#decrease ecx to get the (last position-1).
	
loop:
	cmpl 	$0 , %ecx				#compare ecx with 0 to check if the loop has ended.
	jl 		end						#jump to end if less than 0.
	addl 	$2, (%rdi)				#adds 2 to (%rdi).
	addq	$4, %rdi				#adds 4 (bytes) to rdi to move it to the next position.
	decl 	%ecx					#decrease ecx to go to the next position.
	jmp 	loop					#jump unconditionally to loop.
	
end:
	ret
