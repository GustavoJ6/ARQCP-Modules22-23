#include <stdio.h>
#include "swap.h"

int num = 4;
char vec1[5] = {30, 2, 3, 4, 1};
char vec2[5] = {2, 3, 10, 5, 65};
char* ptr1 = vec1;
char* ptr2 = vec2;

int main(void) {
	swap();
	for(int i = 0; i<=num;i++){
	printf("%d ", vec1[i]);
}
	printf("\n");
for(int j = 0; j<=num;j++){
	printf("%d ", vec2[j]);
}
	printf("\n");
	return 0;
}
