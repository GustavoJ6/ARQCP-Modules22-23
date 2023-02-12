.section .data

	.global ptrvec
	.global num
	
	
	
.section .text

 .global count_max		     	   	# int count_max(void)
 
count_max:
	movq 	ptrvec(%rip), %rdi	    # place ptrvec in rdi.
	movl 	num(%rip), %edx			# place num in edx.
	subl 	$2, %edx				# subtracts 2 to edx so it does not surpass the array size.
	movl 	$0, %eax				# place 0 in eax to clean it.

loop:
	cmpl 	$0,	%edx				#compares edx with 0.
	jl		end						#jump if less than 0.
	movl 	(%rdi), %ecx			#places the first position, (%rdi), in ecx.
	movl	4(%rdi), %r8d			#places the second position, 4(%rdi), in ecx.
	movl 	8(%rdi), %r9d			#places the third position, 8(%rdi), in ecx.
	cmpl	%ecx, %r8d				#compares r8d with ecx (second position with the first position).
	jg		first_condition			#jumps if greater.
	addq 	$4, %rdi				#adds 4 to rdi to go to the next position.
	decl	%edx					#decrements edx (size).
	jmp loop						#jumps unconditionally to loop.
	
first_condition:
	cmpl	%r8d, %r9d				#compares r9d with r8d (third position with second position).
	jl		second_condition		#jumps if less.
	addq 	$4, %rdi				#adds 4 to rdi to go to the next position.
	decl	%edx					#decrements edx (size).
	jmp 	loop					#jumps unconditionally to loop.
	
second_condition:
	incl	%eax					#increments eax (counter).
	addq 	$4, %rdi				#adds 4 to rdi to go to the next position.
	decl	%edx					#decrements edx (size).
	jmp 	loop					#jumps unconditionally to loop.
end:
	ret
