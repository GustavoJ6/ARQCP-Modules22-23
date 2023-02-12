.section .data

		.global current
		.global desired
		
		.equ DECREASE_ONE, 240
		.equ INCREASE_ONE, 180
		
.section .text

		.global needed_time

needed_time:
	
	mov $0, %rax					#rax = 0
	mov $0, %r9						#r9 = 0
	
	movb desired(%rip), %al			#al = desired
	movb current(%rip), %r9b		#r9b = current

	movsbl %al, %eax				#eax = desired
	movsbl %r9b, %r9d				#r9d = current
	
	cmpl %r9d, %eax					 #compare current and desired
	jg increase_temperature			 # if the current is lower then increase temperature
	jl decrease_temperature			 #else increase temperature
	je no_change_temperature		 #else no change temperature

decrease_temperature:

	subl %eax, %r9d					 #r9d = r9d - eax

	movl %r9d,%eax					 #eax = r9d

	movl $DECREASE_ONE, %r8d		 #r8d = DECREASE_ONE

	imull %r8d						 #eax = eax * r8d


	jmp end							 #jump to end

increase_temperature:

	subl %r9d, %eax				   	 #subtract desired from current
	
	movl $INCREASE_ONE, %r8d		 #r8d = 180
	
	imull %r8d						 #eax = eax * 180
	
	jmp end							 #jump to end
	
no_change_temperature:

	movl $0, %eax					 #eax = 0
	jmp end							 #jump to end
		
end:
	ret
