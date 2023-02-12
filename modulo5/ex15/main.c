#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

int main() {
    // DISCLAIMER: All the code commented would generate warnings when compiling the exercise
	// The purpose of them existing is to easily test different scenarios to see the outcome
	

	// Create a new stack with a negative initial capacity 
	//stack* sE = stack_create(-1);
	
	// Create a new stack with an initial capacity of 1
    stack* s = stack_create(1); 
	
    // printf("\n\nTrying to pop from empty stack...\n");
    // stack_pop(s);
	
	// Push 3 items onto the stack
    stack_push(s, 10);
    stack_push(s, 20);
    stack_push(s, 30);

	// Print the results of popping the stack
    printf("\nPoping the stack...\n\n");
    printf("Pop n1 -> %ld\n", stack_pop(s)); // prints 30
    printf("Pop n2 -> %ld\n", stack_pop(s)); // prints 20
    printf("Pop n3 -> %ld\n\n", stack_pop(s)); // prints 10

	// Destroy the stack to free all memory associated with it
    stack_destroy(s);
	
    return 0;
}
