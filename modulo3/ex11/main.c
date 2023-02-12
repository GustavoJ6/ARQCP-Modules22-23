#include <stdio.h>
#include "vec_greater10.h"

int* ptrvec;
int num= 12;

int main(void) {
	
    int vec [] = {1,22,3,33,52,6,7,8,9,10,11,12};
	
	ptrvec = vec;																			// pointer to vec	

	printf("The number of elements greater than 10 is: %d\n", vec_greater10());				// print the number of 7's in the vec
	
	return 0;
}