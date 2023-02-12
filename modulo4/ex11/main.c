#include <stdio.h>
#include "proc.h"
#include "call_proc.h"

int main(void) {
	
	int a = 1;
	
	int b = 1;

	short c = 1;

	char d = 1;
	
	int result = call_proc(a,b,c,d);
		
	printf("Result: %d\n", result);
	
	printf("\nExpected: -2\n");
	return 0;
}
