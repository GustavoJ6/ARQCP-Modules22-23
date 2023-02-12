.section .data

	.global ptrvec
	.global x
	.global num
	
	
	
.section .text

 .global exists		     	   		# int exists(void)
 
exists:
	movq 	ptrvec(%rip), %rdi	    # place ptrvec in rdi.
	movl	x(%rip), %edx			# place x in edx.
	movl 	num(%rip), %r9d			# place num in r9d
	movl 	$0, %eax				# place 0 in eax.
	
loop:
	cmpl	$0, %r9d				#compare r9d with 0.
	je		check					#jump to check if equals.
	movl	(%rdi), %ecx			#place (%rdi) in ecx.
	cmpl	%edx, %ecx				#compares ecx with edx.
	je		equals					#jump if equals.
	addq 	$4, %rdi				#adds 4 to rdi to move it to the next position.
	decl 	%r9d					#decreases r9d.
	jmp		loop					#jump unconditionally to loop.
	
equals:
	incl	%eax					#increment eax (counter).
	addq 	$4, %rdi				#adds 4 to rdi to move it to the next position.
	decl	%r9d					#decrement edx (size).
	jmp 	loop					#jump unconditionally to loop.
	
check:
	cmpl	$1, %eax				#compares eax with 1.
	jg		duplicate				#jump to duplicate if greater.
	movl	$0, %eax				#place 0 in eax.
	jmp end							#jump unconditionally to end.
duplicate:							
	movl 	$1, %eax				#place 1 in eax.
end:
	ret
	
 .global vec_diff
 
vec_diff:
	movq 	ptrvec(%rip), %rsi	    # place ptrvec in rdi.
	movl	num(%rip), %edx			# place num in edx.
	movl 	$0, %eax				# place 0 in eax
	
loop1:
	cmpl	$0, %edx				#compares edx with 0
	je		end1					#jump if equals.
	
	pushq	%rdx					#pushes rdx
	pushq	%rax					#pushes rax
	pushq	%rcx					#pushes rcx
				
	movl 	(%rsi), %r8d			#place (%rsi) in r8d
	movl 	%r8d, x(%rip)			#place r8d in x
	
	call	exists					#calls function exists
	
	cmpl	$0, %eax				#compares eax with 0
	je		compute					#jump if equals
	
	popq	%rcx					#pops rcx
	popq	%rax					#pops rax
	popq	%rdx					#pops rdx
	addq 	$4, %rsi				#adds 4 to rsi, to move to the next position
	decl	%edx					#decreases edx (size)
	jmp 	loop1					#jumps unconditionally to loop1
		
compute:
	popq	%rcx					#pops rcx
	popq	%rax					#pops rax
	popq	%rdx					#pops rdx
	incl 	%eax					#increments eax (to compute the number of not duplicates)
	addq 	$4, %rsi				#adds 4 to rsi, to move to the next position
	decl	%edx					#decreases edx (size)
	jmp 	loop1					#jump unconditionally to loop1
	
	
end1:
	ret
