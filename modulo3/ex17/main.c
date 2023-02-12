#include <stdio.h>
#include "array_sort.h"

short* ptrvec;
int num= 9;

int main(void) {
	
    short vec [] = {1,3,6,9,12,15,20,30,53};		// vector to be sorted
	
	ptrvec = vec;									// pointer to string	

	array_sort();									// sort the vector

	// print the sorted vector
	for (int i=0; i<num; i++) {
		printf("%d\n", vec[i]);
	}
	
	return 0;
}