#include <stdio.h>
#include "swapbytes.h"

short s = 0;

int main(void) {
	
	printf("Valor s: ");
    
    scanf("%hd", &s);
	
	short result = swapBytes();
	
	printf("Swapped = %hd\n", result);
	
	
	return 0;
}
