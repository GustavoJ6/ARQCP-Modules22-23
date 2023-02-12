#include <stdio.h>
#include "keep_positives.h"

short* ptrvec;
unsigned short num= 12;

int main(void) {
	
    short vec [] = {1,-2,3,4,-1,6,7,8,-6,10,11,12}; // vector to be searched
	
	ptrvec = vec;					            	// pointer to vec	

	keep_positives();								// call the function

    // Print the vector
	for (int i=0; i<num; i++) {
		printf("%d\n", vec[i]);
	}
	
	
	return 0;
}