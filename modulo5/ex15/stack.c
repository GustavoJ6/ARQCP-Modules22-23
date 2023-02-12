#include <stdio.h>
#include <stdlib.h>

// DISCLAIMER: All the code commented would generate warnings when compiling the exercise
// The purpose of them existing is to easily test different scenarios to see the outcome


typedef struct stack {
	long* elements;     // array to hold all the elements in the stack
	int current_size;   // current number of elements in the stack
	int max_size;       // maximum number of elements the stack can hold
} stack;

// [CREATE] Create a new stack with the given initial capacity
stack* stack_create(int InitCapacity) {
	//if (InitCapacity < 0) {
	//	printf("ERROR - Initial capacity must be >= 0");
	//	return;
	//}
	//else {
		stack* newStack = malloc(sizeof(stack));
		newStack->elements = malloc(InitCapacity * sizeof(long));
		newStack->current_size = 0;
		newStack->max_size = InitCapacity;
		return newStack;
	//}
}

// [DESTROY] Destroy the given stack, freeing all memory associated with it
void stack_destroy(stack* s) {
	free(s->elements);
	free(s);
}

// [PUSH] Push a given element onto the stack
void stack_push(stack* s, long item) {
	// Check if the stack is full
	if (s->current_size == s->max_size) {
		// If so, double the stack's capacity
		s->max_size *= 2;

		// Store the pointer to the old array
		long* oldArray = s->elements;
		// Attempt to reallocate memory for the new array
		s->elements = realloc(s->elements, s->max_size * sizeof(long));
		// If the reallocation failed
		if (s->elements == NULL) {
			// Restore the old array
			s->elements = oldArray;
			// Print an error message
			printf("ERROR - Failed to reallocate memory for stack, push was not successful.\n");
			return;
		}
	}
	// Add the new item to the stack
	s->elements[s->current_size] = item;
	// Increment the current size
	s->current_size++;
}

// [POP] Pop the top element off the stack and return it
long stack_pop(stack* s) {
	// Check if the stack is empty
	if (s->current_size == 0) {
		// If so, return 0
		printf("ERROR - The Stack is empty\n");
		return 99999.9; // Return 99999 to indicate an error
	}
	else {
		// Decrement the current size
		s->current_size--;
		// Return the value at the top of the stack
		return s->elements[s->current_size];
	}
}
