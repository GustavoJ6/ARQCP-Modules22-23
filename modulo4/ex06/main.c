#include <stdio.h>
#include "test_equal.h"


int main(void) {
	char vec_a[] = "isep";
	char vec_b[] = "isep";
	char *a = vec_a;
	char *b = vec_b;
		
	printf("%d\n", test_equal(a,b));
	return 0;
}
