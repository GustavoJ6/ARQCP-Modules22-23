.section .data
	
.section .text

	.global fun1				# short fun1(structB *s)
	.global fun2				# short fun2(structB *s)
	.global fun3				# short fun3(structB *s)
	.global fun4				# short fun4(structB *s)
								#                 rdi

#typedef struct {
#	int y;
#	short x;
#} structA;
#
#typedef struct {
#	structA a;
#	structA* b;
#	int x;
#	short z;
#	char c;
#	int y;
#	char e[3];
#} structB;


fun1:
	# prologue
	pushq 	%rbp				# save the base pointer
	movq	%rsp, %rbp			# set the base pointer to the stack pointer

	movw  4(%rdi), %ax			# move the value of s->a.x into %ax
	
	jmp end

fun2:
	# prologue
	pushq 	%rbp				# save the base pointer
	movq	%rsp, %rbp			# set the base pointer to the stack pointer

	movw 20(%rdi), %ax			# move the value of s->z into %ax

	jmp end

fun3:
	# prologue
	pushq 	%rbp				# save the base pointer
	movq	%rsp, %rbp			# set the base pointer to the stack pointer

	leaq 20(%rdi), %rax			# move the address of s->z into %rax

	jmp end

fun4:
	# prologue
	pushq 	%rbp				# save the base pointer
	movq	%rsp, %rbp			# set the base pointer to the stack pointer

	movq 8(%rdi), %rax			# move the address of s->b into %rax
	
	movw 4(%rax), %ax			# move the value of s->b->x into %ax

	jmp end

	
end:	
	# epilogue
	
	movq 	%rbp, %rsp		    # restore the stack pointer
	popq	%rbp				# restore the base pointer
	ret							# return to the caller
