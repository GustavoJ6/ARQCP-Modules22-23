#include <stdio.h>
#include "seven_count.h"

char* ptr1;

int main(void) {
	
    char string [] = {'1','7','s','4','2','6','7','8','7','0','7','r','t','j','7','0',0};			// string to be searched
	
	ptr1 = string;																			// pointer to string
	
	printf("The number of 7's in the string is: %d\n", seven_count());						// print the number of 7's in the string
	
	return 0;
}
