.section .data

		.global s1
		.global s2
		
.section .text

 .global crossSumBytes

crossSumBytes:
	
	
	movw s1(%rip), %ax		#load s1 into ax
	movw s2(%rip), %dx		#load s2 into dx
	
	addb %dh, %al			#add the high byte of s2 to the low byte of s1
	addb %dl, %ah			#add the low byte of s2 to the high byte of s1
	
	ret
