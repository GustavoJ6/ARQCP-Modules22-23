.section .data
   
 .global num	
 
.section .text
	
 .global vec_avg					# vec_avg(void)

vec_avg:
	
	call vec_sum					# vec_sum() returns sum in %eax

	movswq num(%rip), %rcx

	cmpq $0, %rcx
	je division_by_0
	
	cqo      						# sign extend %eax to %rdx:%rax
	
	idiv %rcx						# divide rdx:rax by rcx, store quotient in rax, remainder in rdx

	jmp end							# jump to end 


division_by_0:
	movl $0, %eax
	jmp end

end:
	ret

