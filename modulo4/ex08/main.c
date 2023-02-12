#include <stdio.h>
#include "calc.h"


int main(void) {
	int a = 2;
	int b = 1;
	int c = -1;
		
	printf("%d\n", calc(a,&b,c));
	
	return 0;
}
