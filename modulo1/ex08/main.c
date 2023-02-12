#include <stdio.h>
#include "array_sort2.h"

int main(){

	int  array[] = {3,1,2,5,4,8,6};
	int array_size = 7;
	
	int *ptrArray = &array[0];

	
	
	array_sort2(ptrArray,array_size);
	
	printf("The sorted array: \n");
	for(int i = 0; i < array_size; i++){
		printf("%d  -  ", *ptrArray );
		ptrArray++;
	
	}
	printf("\n");


	return 0;
}

