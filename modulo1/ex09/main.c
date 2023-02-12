#include <stdio.h>
#include "sort_without_reps.h"

#define MAX_SIZE 100

int main()
{
	int n = 3;
	int src[MAX_SIZE] = {-1,-2,-3};
	int dest[MAX_SIZE];	
	int size = sort_without_reps(src,n,dest);
	
	printf("The array sorted without repetitions is: ");
	for(int i = 0; i<size; i++)
	{
		printf("%d ", *(dest+i));
	}
	
	
	return 0;
}
