.section .data

	.global ptrvec
	.global num
	
.section .text

 .global array_sort					# array_sort(void)


array_sort:

	movq ptrvec(%rip), %rcx			# rcx = ptrvec 

	movl num(%rip), %r8d			# r8d = num , will be used to decrease until 0 to mark the end of the loop

	
	
	
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
		jg inner_loop					# if not nothing has to be done so it goes back to the beggining of the loop

		

		movw %dx, (%rcx)				# (%rcx) = dx
		movw %ax, (%r9)					# (%r9) = ax

		jmp inner_loop					# goes back to the beggining of the loop

	inner_completed:

		addq $2 , %rcx					# increments rcx to point to the next position of the array

		decl %r8d						# decrements r8d

jmp outer_loop
	
					
end:
	ret