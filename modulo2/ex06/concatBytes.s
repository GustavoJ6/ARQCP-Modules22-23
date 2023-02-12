.section .data
 .global byte1

 .global byte2

 
.section .text
 .global concatBytes # short concatBytes()
concatBytes:
	movb byte1(%rip), %al #place byte1 in al.
	movb byte2(%rip), %ah #place byte2 in ah.
	ret
