#include <stdio.h>
#include "activate_bits.h"

int main(){
	
	// Call the function and get the result
	int result = activate_bits(0,31,0);
	
	// Print the result
	printf("Result: %x \n",result);
	
	return 0;
}
