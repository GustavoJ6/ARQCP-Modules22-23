#include <stdio.h>
#include "asm.h"

int num = 5;
short vecsrc[] = {1,1,1,1,2};
short vecdest[] = {};
short *ptrsrc = vecsrc;
short *ptrdest = vecdest;

int main(void) {
		
	printf("%d\n", sort_without_reps());
	
	for (int i = 0; i < num; i++) {
		printf("%hd ", ptrdest[i]);
	}
	printf("\n");
	
	return 0;
}
