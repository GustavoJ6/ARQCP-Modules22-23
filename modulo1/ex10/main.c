#include <stdio.h>
#include "odd_sum.h"

#define MAX_SIZE 50


int main()
{
	int p[MAX_SIZE] = {0,21,24,52};
	printf("%d\n" , odd_sum(p));
	return 0;
}
