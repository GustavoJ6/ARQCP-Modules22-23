#include <stdio.h>
#include "encrypt.h"

char* ptr1;

int main(void) {
	
    char string [] = {'1','a','s','4','2','6','7','8','a','0','7','r','t','j','7',' ',0};	// string to be searched
	
	ptr1 = string;																			// pointer to string
	
	printf("The number of changed chars is: %d\n", encrypt());								// print the number of 7's in the string
	
	for (int i = 0; i < 16; i++) {															// print the string
		printf("%c\n", *ptr1);
		ptr1++;
	}
	
	return 0;
}