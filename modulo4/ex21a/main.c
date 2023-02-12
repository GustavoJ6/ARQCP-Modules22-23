#include <stdio.h>
#include "distance.h"

int main(){
	
	char s1[] = "Hello";
	char s2[] = "Helli";

	int distanceRes = distance(s1, s2);
	
	printf("Distance: %d\n", distanceRes);
	
	return 0;
}

