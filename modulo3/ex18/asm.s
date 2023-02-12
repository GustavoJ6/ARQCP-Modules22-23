.section .data

	.global ptrsrc
	.global	ptrdest
	.global num
	.global x
	x:
	.short 0
	
.section .text

 .global array_sort					# array_sort(void)


array_sort:

	movq ptrdest(%rip), %rcx			# rcx = ptrdest 

	movl num(%rip), %r8d				# r8d = num , will be used to decrease until 0 to mark the end of the loop

	
	
	
# The array will be sorted using bubble sort

outer_loop:

	cmpl $0, %r8d
	je end

	movq %rcx, %r9						# copy the address from rcx to r9				

	movl %r8d, %edi						# edi = number of times to iterate the inner loop

inner_loop:

		decl %edi						# decrements edi
	
		cmpl $0, %edi					# if edi == 0, jump to inner_completed
		je inner_completed	

		addq $2 , %r9                   # gets the next position of the array

		movq $0, %rdx					# rdx = 0
		movq $0, %rax					# rax = 0

		movw (%r9), %dx					# dx = (%r9)
		movw (%rcx), %ax				# ax = (%rcx)

		cmpw %dx, %ax				    # checks if the pointed value by r9 > pointed value by rcx
		jl inner_loop					# if not nothing has to be done so it goes back to the beggining of the loop

		

		movw %dx, (%rcx)				# (%rcx) = dx
		movw %ax, (%r9)					# (%r9) = ax

		jmp inner_loop					# goes back to the beggining of the loop


inner_completed:

		addq $2 , %rcx					# increments rcx to point to the next position of the array

		decl %r8d						# decrements r8d

jmp outer_loop
	
					
end:
	ret

 .global exists
 
exists:
	movq 	ptrdest(%rip), %rdi	    # place ptrdest in rdi.
	movw	x(%rip), %dx			# place x in dx.
	movl 	num(%rip), %r9d			# place num in r9d
	movl 	$0, %eax				# place 0 in eax.
	
loop:
	cmpl	$0, %r9d				#compare r9d with 0.
	je		check					#jump to check if equals.
	movw	(%rdi), %cx				#place (%rdi) in cx.
	cmpw	%dx, %cx				#compares cx with dx.
	je		equals					#jump if equals.
	addq 	$2, %rdi				#adds 2 to rdi to move it to the next position.
	decl 	%r9d					#decrements r9d.
	jmp		loop					#jump unconditionally to loop.
	
equals:
	incl	%eax					#increments eax (counter).
	addq 	$2, %rdi				#adds 2 to rdi to move it to the next position.
	decl	%r9d					#decrements r9d (size).
	jmp 	loop					#jump unconditionally to loop.
	
check:
	cmpl	$1, %eax				#compares eax with 1.
	jge		duplicate				#jump to duplicate if greater or equals.
	movl	$0, %eax				#place 0 in eax.
	jmp 	end1					#jump unconditionally to end.
duplicate:							
	movl 	$1, %eax				#place 1 in eax.
end1:
	ret
	
	

 .global sort_without_reps			#int sort_without_reps(void)
 
sort_without_reps:
	movq 	ptrsrc(%rip), %rdi	    # place ptrsrc in rdi.
	movq	ptrdest(%rip), %rsi		# place ptrdest in rsi.
	movl	num(%rip), %edx			# place num in edx.
	movq 	$0, %rax				# place 0 in eax to clear it.
	
loop1:
	cmpl	$0, %edx				#compares edx with 0.
	je		end2					#jump if equals.
	
	pushq	%rdx					#pushes rdx.
	pushq	%rax					#pushes rax.
	pushq	%rcx					#pushes rcx.
	pushq	%rdi					#pushes rdi.
	pushq	%rsi					#pushes rsi.
				
	movw 	(%rdi), %r8w			#place (%rsi) in r8w.
	movw 	%r8w, x(%rip)			#place r8w in x.
	
	call	exists					#calls function exists.
	
	cmpl	$0, %eax				#compares eax with 0.
	je		copy					#jump if equals meaning it doesn't have duplicates.
	
	popq	%rsi					#pops rsi.
	popq	%rdi					#pops rdi.
	popq	%rcx					#pops rcx.
	popq	%rax					#pops rax.
	popq	%rdx					#pops rdx.
	addq 	$2, %rdi				#adds 2 to rdi, to move to the next position.
	decl	%edx					#decrements edx (size)
	jmp 	loop1					#jumps unconditionally to loop1
		
copy:
	popq 	%rsi					#pops rsi.
	popq	%rdi					#pops rdi.
	popq	%rcx					#pops rcx.
	popq	%rax					#pops rax.
	popq	%rdx					#pops rdx.
	movw	%r8w, (%rsi)			#place r8w in (%rsi).
	addq 	$2, %rdi				#adds 2 to rdi, to move to the next position.
	addq	$2, %rsi				#adds 2 to rsi, to move to the next position.
	incl 	%eax					#increments eax (to compute the number of added elements)
	decl	%edx					#decrements edx (size)
	jmp 	loop1					#jump unconditionally to loop1

	
	
end2:
	movq 	ptrsrc(%rip), %rdi	    # place ptrsrc in rdi.
	movq	ptrdest(%rip), %rsi		# place ptrdest in rsi.

	pushq 	%rcx					#pushes rcx.
	pushq	%r8  					#pushes r8.
	pushq	%rdi					#pushes rdi.
	pushq	%r9						#pushes r9.
	pushq	%rdx					#pushes rdx.
	pushq	%rax					#pushes rax.
	
	call array_sort					#calls function array_sort.
	
	popq	%rax					#pops rax.
	popq	%rdx					#pops rdx.
	popq	%r9						#pops r9.
	popq	%rdi					#pops rdi.
	popq	%r8						#pops r8.
	popq	%rcx					#pops rcx.
	ret
