#include <stdio.h>
#include "frequencies.h"

#define MAX_SIZE 100
#define GRADE_LEVELS 21

int main()
{
	float grades[MAX_SIZE] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
	int n = 11;
	int freq[GRADE_LEVELS];
	
	frequencies(grades,n,freq);
	
	printf("The absolute frequency of the student's grades array is: ");

	for(int i = 0; i < 21; i++)
	{
		printf("%d ", freq[i]);
	}
	return 0;
}
