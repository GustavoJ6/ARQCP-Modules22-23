#include <stdio.h>
#include "count_max.h"

int num = 3;
int vec[] = {1,2,3,4};
int *ptrvec = vec;

int main(void) {
		
	printf("%d\n", count_max());
	return 0;
}
