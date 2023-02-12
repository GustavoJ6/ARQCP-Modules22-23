.section .data
 .global x #x corresponding to i
 x:
	.long 2
 .global y #y corresponding to j
 y:
	.long 2
 
.section .text
 .global f
f:
	movl 	x(%rip), %eax	#place x in eax.
	movl	y(%rip), %ecx	#place y in ecx.
	cmpl	%eax,%ecx	#compares ecx with eax.
	je		equals		#jump if equals.
	addl %ecx , %eax 	#adds ecx to eax. Result in eax.
	subl $1, %eax		#subtracts 1 to eax. Result in eax.
	jmp 	end			#jump unconditionally to end.
equals:
	movl $1, %eax		#place 1 in eax.
	jmp end				#jump unconditionally to end.
	
end:
	ret
	
 .global f2
f2:
	movl 	x(%rip), %eax	#place x in eax.
	movl	y(%rip), %ecx	#place y in ecx.
	cmpl 	%ecx, %eax	#compares eax with ecx.
	jg		greaterThan	#jump if greater.
	incl	%ecx		#increments ecx.
	jmp		end2		#jump unconditionally to end2.
greaterThan:
	decl 	%eax		#decrements eax.
	jmp 	end2		#jump unconditionally to end2.
end2:
	imull	%ecx, %eax	#multiplies ecx with eax. Result in eax.
	ret
	
 .global f3
f3:
	movl 	x(%rip), %eax	#place x in eax.
	movl	y(%rip), %ecx	#place y in ecx.
	cmpl 	%eax, %ecx		#compares ecx with eax.
	jge		greaterOrEqualsThan #jumps if greater or equals..
	addl 	%eax, %ecx	#adds eax to ecx. Result in ecx.
	incl 	%eax		#increments eax.
	cdq					#converts double to quad.
	idivl 	%ecx		#divides eax by ecx. Result in eax.
	jmp 	end3		#jump unconditionally to end3.

greaterOrEqualsThan:
	imull	%eax, %ecx 	#multiplies eax with ecx. Result in ecx.
	incl 	%eax	   	#increments eax.
	cdq					#converts double to quad.
	idivl 	%ecx		#divides eax by ecx. Result in eax.
	jmp 	end3		#jump unconditionally to end3.
end3:
	ret

 .global f4
f4:
	movl 	x(%rip), %eax	#place x in eax.
	movl	y(%rip), %ecx	#place y in ecx.
	addl 	%ecx, %eax		#adds ecx to eax. Result in eax.
	cmpl 	$10, %eax		#compares eax with 10.
	jl		lessThan	
	imull 	%ecx			#multiplies eax with ecx. Result in eax.
	cdq						#converts double to quad.
	movl	$3, %ecx	
	idivl 	%ecx			#divides eax by ecx. Result in eax.
	jmp		end4			#jump unconditionally to end4.
lessThan:
	movl 	x(%rip), %ecx	#place x in ecx.
	imull 	$4, %ecx		#multiplies ecx with 4. Result in ecx.
	movl 	x(%rip), %eax	#place x in eax.
	imull 	%ecx , %eax		#multiplies eax with ecx. Result in eax.
	jmp 	end4			#jump unconditionally to end4.
end4:
	ret
	
