.section .data
 .global i
 .global sum
   sum:
	.long 0
 .global n 
  n:
	.long 2
 
 .equ A,3
 .equ B,3
 
.section .text
 .global sumOperations # int sumOperations()
 
sumOperations:
	movl	n(%rip), %ecx 	#place n in ecx.
	cmpl	$0, %ecx		#compare ecx with 0.
	jne		not_null		#jump if not equals.
	jmp		end				#jump unconditionally to end.
	
not_null:
	movl	n(%rip), %r8d	#place n in r8d.
	movl	sum(%rip), %r9d	#place sum in r9d.
	
loop:
	movl	i(%rip), %eax	#place i in eax.
	imull	%eax, %eax		#multiplies eax with eax. Result in eax.
	movl	$A, %ecx		#place A in ecx.
	imull	%ecx, %eax		#multiplies eax with ecx. Result in eax.
	imull 	%ecx, %eax		#multiplies eax with ecx. Result in eax.
	movl 	$B, %ecx		#place B in ecx.
	cltd					#convert long to double.
	idivl 	%ecx			#divide eax by ecx. Result in eax.
	
	incl 	i(%rip)			#increases the value of i.
	
	decl 	%r8d			#decreases r8d
	
	addl 	%eax, %r9d		#adds eax to r9d. Result in r9d.
	
	cmpl 	$0, %r8d		#compare r8d with 0.
	jne 	loop			#jump if not equals.
	movl 	%r9d, %eax		#place r9d in eax.
	
end:
	ret
