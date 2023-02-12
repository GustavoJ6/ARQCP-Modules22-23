#include <stdio.h>
#include "copy_vec.h"

#define MAX_SIZE 100


int main(){

	int vec1 [MAX_SIZE] = {1011, 1213, 1415,1617};
	int vec2 [MAX_SIZE];
	int n = 2;
	
	copy_vec(vec1,vec2,n);
	printf("The copied numbers are: ");
	for(int i=0; i<n; i++){
		printf("%d ",vec2[i]);
	}
	printf("\n");

	return 0;
}
