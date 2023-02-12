#include <stdio.h>
#include "join_bits.h"


int main(void) {
	int a = 2;
	int b = 4;
	int pos = 1;
	printf("%d \n", join_bits(a,b,pos));
	return 0;
}
