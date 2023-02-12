#include <stdio.h>
#include "asm.h"

int num = 4;
int x = 2;
int vec[5] = {5, 2, 3, 4, 2};
int* ptrvec = vec;

int main(void) {
	printf("%d\n", vec_diff());
	return 0;
}
