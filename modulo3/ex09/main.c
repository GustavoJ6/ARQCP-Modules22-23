#include <stdio.h>
#include "vec_search.h"

short* ptrvec;
short x = 52;
int num= 12;

int main(void) {
	
    short vecToBeSearched [] = {1,22,3,4,52,6,7,8,9,10,11,12};
	
	ptrvec = vecToBeSearched;																			// pointer to vec	

	printf("The address is: %p\n", vec_search());							// print the number of 7's in the string
	
	return 0;
}