#include <stdio.h>
#include "sum_multiples_x.h"


int main(void) {
	char pointed[] = {4,2};
	int x = 2;
	char *vec = pointed;
	printf("%d \n", sum_multiples_x(vec, x));
	return 0;
}
