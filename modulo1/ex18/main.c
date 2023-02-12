#include <stdio.h>
#include "compress_shorts.h"

#define MAX_SIZE 100


int main()
{
	short shorts[MAX_SIZE] = {1,2,3,4};
	int n_shorts = 4;
	int integers[MAX_SIZE];
	
	compress_shorts(shorts,n_shorts,integers);
	
	printf("The array of compressed shorts is: ");
	
	for(int i=0; i<(n_shorts/2); i++)
	{
		printf("%d " , *(integers+i));
	}
	
	printf("\n");
	
	return 0;
}
