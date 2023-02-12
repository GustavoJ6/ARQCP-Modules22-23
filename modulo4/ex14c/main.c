#include <stdio.h>
#include "reset_2bits.h"


int main(void) {
	int pos = 1;
	int num = 1;
	int *ptr = &num;
	printf("%d \n", reset_2bits(ptr, pos));
	return 0;
}
