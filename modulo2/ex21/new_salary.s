.section .data

		.global code
		.global currentSalary
		
		.equ CODE_20, 20
		.equ CODE_21, 21
		.equ CODE_22, 22
		.equ CODE_20_RAISE, 400
		.equ CODE_21_RAISE, 300
		.equ CODE_22_RAISE, 200
		.equ OTHER_CODE_RAISE, 150
		
.section .text

		.global new_salary

new_salary:

	movq $0, %rax					# rax = 0
	movq $0, %rcx					# rcx = 0
	
	movw currentSalary(%rip), %ax	# load currentSalary into cx
	movw code(%rip), %cx			# load code into dx

	
	cmpw $CODE_20, %cx		# compare code to CODE_20_RAISE
	je raiseManager					# if equal, jump to raiseManager
	
	cmpw $CODE_21, %cx		# compare code to CODE_21_RAISE
	je raiseEngineer				# if equal, jump to raiseEngineer

	cmpw $CODE_22, %cx		# compare code to CODE_22_RAISE
	je raiseTechnician				# if equal, jump to raiseTechnician
	
	jmp raiseOthers					# if none of the above, jump to raiseOthers	
	

	

raiseManager:

	addw $CODE_20_RAISE, %ax		# add CODE_20_RAISE to ax
	jmp end							# jump to the end


raiseEngineer:

	addw $CODE_21_RAISE, %ax		# add CODE_21_RAISE to ax
	jmp end							# jump to the end

raiseTechnician:

	addw $CODE_22_RAISE, %ax		# add CODE_22_RAISE to ax					
	jmp end							# jump to the end

raiseOthers:

	addw $OTHER_CODE_RAISE, %ax		# add OTHER_CODE_RAISE to ax
	jmp end							# jump to the end

	
end:
	movswl %ax, %eax				# convert ax to eax
	ret
