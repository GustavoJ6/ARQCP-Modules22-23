#include <stdio.h>
#include "upper1.h"

#define MAX_SIZE 10

int main(){
	char str[MAX_SIZE] = "LoWeRuPpEr";
	upper1(str);
	printf("All characters in upper case: %s ", str);
	return 0;
}
