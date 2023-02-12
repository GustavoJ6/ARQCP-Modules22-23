#include <stdio.h>
#include "frequencies.h"

char* ptrgrades;
int num = 1;
int* ptrfreq;

int main(void) {
	
    char grades [] = {1};	// array with the grades
	
	ptrgrades = grades;								// pointer to grades

	int absoluteFreq [21] = {0};				    // array with the absolute frequencies
	
	ptrfreq = absoluteFreq;							// pointer to absoluteFreq
	
	frequencies();									// call the function frequencies
	
	// print the absoluteFreq
	for (int i = 0; i < 21; i++) {
		printf("%d - %d\n",i, absoluteFreq[i]);
	}

	return 0;
}