.section .data
	
.section .text

.global locate_greater				# int locate_greater(Student* s, int minimum, int* greater_grades)
									#                           rdi ,       rsi,	rdx


# typedef struct {
#    short number; - 2
#    char age; - 1 +1 padding
#    int grades[5]; - 20
#    char name[60]; - 60
#    char address[100];
#} Student;


locate_greater:
	# prologue
	pushq 	%rbp				# save the base pointer
	movq	%rsp, %rbp			# set the base pointer to the stack pointer

	
	leaq	4(%rdi), %rcx		# rcx = grades - move the address of the first position of the grades array into rcx
	movl	$0, %eax			# eax = 0 - will be used to count the number of grades added to greater_grades

	movq $5, %r8				# r8 = 5, will be used to iterate the grades array
	


	
gradeChecker:

	cmpl %esi,(%rcx)		# compare the value of the current grade with the minimum
	jle nextGrade				# if the current grade is less than or equal to the minimum, jump to the next grade
	
	addl $1, %eax				# increment the number of grades added to greater_grades
	
	movl (%rcx), %r9d		    # move the value of the current grade into r9d
	movl %r9d, (%rdx)			# move the value of the current grade into greater_grades
	
	addq $4, %rdx				# increment the address of greater_grades by 4

	
nextGrade:

	addq $4, %rcx			# grades++
	
	decq %r8				# r8--
	jnz gradeChecker		# if rdx != 0, jump to gradeChecker

	
end:	
	# epilogue
	
	movq 	%rbp, %rsp		    # restore the stack pointer
	popq	%rbp				# restore the base pointer
	ret							# return to the caller
