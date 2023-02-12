#include <stdio.h>
#include "reset_bit.h"


int main(void) {
	int pos = 1;
	int num = 1;
	int *ptr = &num;
	printf("%d \n", reset_bit(ptr, pos));
	return 0;
}
