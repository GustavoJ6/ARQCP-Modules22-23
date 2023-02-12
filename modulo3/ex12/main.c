#include <stdio.h>
#include "vec_zero.h"

	int num = 4;
	int vec[5] = {100, 10, 400, 250, 5};
	int *ptrvec = vec;

int main(void) {	
	printf("%u ", vec_zero());
	printf("\n");
	return 0;
}
