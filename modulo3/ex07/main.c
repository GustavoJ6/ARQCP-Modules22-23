#include <stdio.h>
#include "decrypt.h"
#include "decrypt.h"

char* ptr1;

int main(void) {
	
    char string [] = {'1','a','s','4','2','6','7','8','a','0','7','r','t','j','7',' ',0};	// string to be searched
	
	ptr1 = string;																			// pointer to string	

	printf("The number of decrypted chars is: %d\n", decrypt());							// print the number of 7's in the string
	
	for (int i = 0; i < 16; i++) {															// print the string
		printf("%c\n", *ptr1);
		ptr1++;
	}
	
	return 0;
}