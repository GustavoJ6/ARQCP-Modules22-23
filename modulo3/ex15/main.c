#include <stdio.h>
#include "sum_first_byte.h"

long* ptrvec;
int num= 4;

int main(void) {
	
    long vec [] = {127,127,127,127};														// vec with the elements
	
	ptrvec = vec;																			// pointer to vec	

	printf("The sum of the first bytes of the elements of the array is: %d\n", sum_first_byte()); // print the sum of the first bytes of the elements of the array

	return 0;
}