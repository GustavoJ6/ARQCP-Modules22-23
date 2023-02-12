typedef struct stack {
    long* elements;     // array to hold all the elements in the stack
    int current_size;   // current number of elements in the stack
    int max_size;       // maximum number of elements the stack can hold
} stack;

// [CREATE] Create a new stack with the given initial capacity
stack* stack_create(int capacity);

// [DESTROY] Destroy the given stack, freeing all memory associated with it
void stack_destroy(stack* s);

// [PUSH] Push a given element onto the stack
void stack_push(stack* s, long element);

// [POP] Pop the top element off the stack and return it
long stack_pop(stack* s);