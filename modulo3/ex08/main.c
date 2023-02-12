#include <stdio.h>
#include "asm.h"
	
	long even = 0;
	int num = 4;
	long vec[5] = {1,2,3,4,5};
	long *ptrvec = vec;

int main(void) {	
	
	printf("%ld ", vec_sum_even());
	printf("\n");
	return 0;
}
