.section .data
	
	.equ C8BitMask , 0xFF
	.equ C16BitMask , 0xFFFF
	.equ C8BitShift , 8
	.equ C24BitShift , 24

.section .text

 .global greater_date			# unsigned int greater_date(unsigned int date1, unsigned int date2) 
								#										  %rdi                 %rsi     

greater_date:

	#prologue
	pushq %rbp					# save the base pointer
	movq %rsp,%rbp				# set the base pointer to the stack pointer

	movl %edi, %eax				# move date1 to eax
	movl %esi, %edx				# move date2 to edx

	
	# check if the year is greater
	shrl $C8BitShift,%eax		# shift eax to the right by 8 bits
	shrl $C8BitShift,%edx		# shift edx to the right by 8 bits
	
	andl $C16BitMask,%eax		# apply the mask to the eax to get the year
	andl $C16BitMask,%edx		# apply the mask to the edx to get the year

	cmpl %eax,%edx				# compare the years
	jg year2greater				# if year1 < year2, jump to year2greater
	jl year1greater				# if year1 > year2, jump to year1greater
	je check_month				# if the year is equal jump to check_month
	
year1greater:
	movl %edi, %eax				# move date1 to eax
	jmp end						# jump to end
	
year2greater:
	movl %esi, %eax				# move date2 to eax
	jmp end						# jump to end
	
check_month:

	movl %edi, %eax				# move date1 to eax
	movl %esi, %edx				# move date2 to edx
	
	# check if the month is greater
	
	andl $C8BitMask,%eax		# apply the mask to the eax to get the month
	andl $C8BitMask,%edx		# apply the mask to the edx to get the month
	
	cmpl %eax,%edx				# compare the months
	jg month2greater			# if month1 < month2 jump to month2greater
	jl month1greater			# if month1 > month2 jump to month1greater
	je check_day				# if the month is equal jump to check_day
	
month1greater:
	movl %edi, %eax				# move date1 to eax
	jmp end						# jump to end
	
month2greater:
	movl %esi, %eax				# move date2 to eax
	jmp end						# jump to end
	
check_day:

	movl %edi, %eax				# move date1 to eax
	movl %esi, %edx				# move date2 to edx
	
	# check if the day is greater
	shrl $C24BitShift,%eax		# shift eax to the right by 8 bits
	shrl $C24BitShift,%edx		# shift edx to the right by 8 bits

	
	andl $C8BitMask,%eax		# apply the mask to the eax to get the day
	andl $C8BitMask,%edx		# apply the mask to the edx to get the day
	
	cmpl %eax,%edx				# compare the days
	jg day2greater				# if day1 < day2 jump to day2greater
	jl day1greater				# if day1 > day2 jump to day1greater
	je same_date
	
day1greater:
	movl %edi, %eax				# move date1 to eax
	jmp end						# jump to end
	
day2greater:
	movl %esi, %eax				# move date2 to eax
	jmp end						# jump to end
	
same_date:
	movl %edi, %eax				# move date1 to eax
	jmp end						# jump to end
	

end:
	#epilogue
	movq %rbp,%rsp
	popq %rbp
	ret
