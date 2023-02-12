.section .data
 .global num
 
.section .text
 .global steps # int steps()
steps:
	movl	num(%rip), %eax		#place num in eax.
	
	movl	$3, %ecx			#place 3 in ecx.
	imull	%ecx 				#multiplies eax with ecx. Result in eax.
	
	addl	$6, %eax 			#adds 6 to eax.
	
	movl	$3, %ecx 			#place 3 in ecx.
	cltd						#converts long to double.
	idivl	%ecx 				#divides eax by ecx.
	
	addl	$12, %eax 			#adds 12 to eax.
	
	subl	num(%rip), %eax 	#subtracts ecx to eax.
	
	subl	$1, %eax 			#subtracts 1 to eax.
	ret
