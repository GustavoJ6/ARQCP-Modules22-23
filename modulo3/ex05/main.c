#include <stdio.h>
#include "vec_sum.h"
#include "vec_avg.h"

long* ptrvec;
short num = 3;
long result;

int main(void) {
	
    long vec[] = {-10,-10,-10};										// vector to be summed
 	
	ptrvec = vec;													// pointer to vec
	
	// Get the result of the vec_sum
	result = vec_sum();
	
	// Print the result
	printf("The total sum of vec is: %ld\n", result);	

	// Calls the vec_avg 
	long vecAvg =  vec_avg();
	
	// Print the vec_avg
	printf("The average of vec is: %ld\n", vecAvg);
	
	return 0;
}
