#include <stdio.h>
#include "array_sort1.h"

int main(){

	int  array[] = {3,1,2,5,4,8,6};
	int array_size = 7;
	
	
	array_sort1(array,array_size);
	
	printf("The sorted array: \n");
	for(int i = 0; i < array_size; i++){
	
		printf("%d  -  ", array[i]);
	
	}




	return 0;
}
