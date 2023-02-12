#include <stdio.h>
#include "count_odd.h"


int main(void) {
	
	char vec[] = {1};
	
	int n = 1;
	
	int result = count_odd(vec,n);
		
	printf("Number of odd number is vec: %d\n", result);
	
	return 0;
}
