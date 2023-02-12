#include <stdio.h>
#include "changes.h"


int main(void) {
	int pointed = 4;
	int *ptr = &pointed;
	changes(ptr);
	printf("%d \n", *ptr);
	return 0;
}
