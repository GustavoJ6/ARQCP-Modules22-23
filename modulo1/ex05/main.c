#include <stdio.h>
#include "upper2.h"

#define MAX_SIZE 50

int main(){
	char str[MAX_SIZE] = "LoWeRuPpEr";
	upper2(str);
	printf("All characters in upper case: %s ", str);
	return 0;
}
