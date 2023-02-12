#include <stdio.h>
#include "calculate.h"


void print_result(char op, int o1, int o2, int res)
{
	printf("%d %c %d = %d\n", o1, op, o2, res);
}


int main(void) {
	
	int a = 10;
	
	int b = 5;
	
	int result = calculate(a,b);
		
	printf("Result: %d\n", result);
	
	return 0;
}
