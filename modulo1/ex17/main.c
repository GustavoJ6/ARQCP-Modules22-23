#include <stdio.h>
#include "swap.h"

int main(){

	int size = 3;
	int vec1[] = {1,2,3};
	int vec2[] = {4,5,6};
	int *ptrVec1 = vec1;
	int *ptrVec2 = vec2;
	
	swap(ptrVec1,ptrVec2,size);
	
	for (int i = 0; i < size; i++)
	{
		printf("%d  ",*ptrVec1);
		ptrVec1++;
	}
		printf("\n");

	for (int i = 0; i < size; i++)
	{
		printf("%d  ",*ptrVec2);
		ptrVec2++;
	}
		printf("\n");

	return 0;

}
