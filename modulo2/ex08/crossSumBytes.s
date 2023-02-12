.section .data

		.global s1
		s1:
		.word 0
		.global s2
		s2:
		.word 0
		
.section .text

 .global crossSumBytes

crossSumBytes:
	
	
	movw	s1(%rip), %ax	#place s1 in ax.
	movw	s2(%rip), %dx	#place s2 in dx.
	
	addb	%dh, %al 		#adds dh to al.
	addb	%dl, %ah		#adds dl to ah.
	
	ret
