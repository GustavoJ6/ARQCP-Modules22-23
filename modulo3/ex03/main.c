#include <stdio.h>
#include "str_copy_porto2.h"

	char str1[100] = "brOoOo";
	char str2[100];
	char *ptr1 = str1;
	char *ptr2 = str2;

int main(void) {	
	str_copy_porto2();
	printf("%s ", str2);
	printf("\n");
	return 0;
}
