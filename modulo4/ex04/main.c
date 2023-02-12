#include <stdio.h>
#include "sum_smaller.h"


int main(void) {
	int num1 = 2;
	int num2 = 3;
	int smaller;
		
	printf("%d\n", sum_smaller(num1, num2, &smaller));
	printf("%d\n", smaller);
	
	return 0;
}
