#include <stdio.h>
#include "vec_add_two.h"

	int num = 4;
	int vec[5] = {1,2,3,4,5};
	int *ptrvec = vec;

int main(void) {	
	vec_add_two();
	for(int i = 0; i<=num; i++){
	printf("%d ", *(vec+i));
}
	printf("\n");
	return 0;
}
