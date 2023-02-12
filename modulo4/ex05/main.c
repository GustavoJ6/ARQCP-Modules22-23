#include <stdio.h>
#include "inc_and_square.h"


int main(void) {
	int a = 5;
	int *v1 = &a;

	int v2 = 3;
	
	v2 = inc_and_square(v1, v2);
		
	printf("%d - %d\n", a, v2);
	
	return 0;
}
