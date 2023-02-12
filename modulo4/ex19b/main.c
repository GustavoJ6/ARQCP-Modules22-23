#include <stdio.h>
#include "add_byte.h"

int main(){
	
	char x = 5;
	
	int vec1[] = { 6, 0xffffffff,0xff,0xfffff0ff,0xfffff8ff,0,4 };
	int vec2[*vec1];
	
	
	add_byte(x, vec1, vec2);

	for (int i = 0; i < *vec1; i++) {
		printf("%d ", vec2[i]);
	}

	printf("\n");
	return 0;
}
