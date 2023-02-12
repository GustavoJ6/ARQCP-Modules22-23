#include <stdio.h>
#include "str_cat.h"

	char str1[40] = "hello";
	char str2[40] = "world";
	char str3[82];
	char *ptr1 = str1;
	char *ptr2 = str2;
	char *ptr3 = str3;

int main(void) {	
	str_cat();
	printf("%s ", str3);
	printf("\n");
	return 0;
}
