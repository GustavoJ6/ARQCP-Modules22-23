#include <stdio.h>
#include "functions.h"

int i, j, h;

int main(){
	printf("Results in Assembly\n");
	printf("%d\n",f());
	printf("%d\n",f2());
	printf("%d\n",f3());
	printf("%d\n",f4());
	printf("Results in C\n");
	printf("%d\n",f_c());
	printf("%d\n",f2_c());
	printf("%d\n",f3_c());
	printf("%d\n",f4_c());
	return 0;
}

int f_c(){
	i=2;
	j=2;
	h=0;
	if (i == j)
	h = i - j + 1;
	else
	h = i + j -1;
	return h;
}

int f2_c(){
	i=2;
	j=2;
	h=0;
	if (i > j)
	i = i - 1;
	else
	j = j + 1;
	h = j * i;
	return h;
}

int f3_c(){
	i=2;
	j=2;
	h=0;
	int g=0;
	int r=0;	
	if (i >= j) {
		h = i * j;
		g = i + 1;
	} else {
		h = i + j;
		g = i + j + 2;
	}
	r = g / h;
	return r;
}

int f4_c(){
	i=2;
	j=2;
	h=0;
	if (i + j < 10)
	h = 4 * i * i;
	else
	h = j * j / 3;
	return h;
}
