#include <stdio.h>
#include "sum_and_subtract.h"


int A=0;
short B=0;
char C=0,D=0;

int main(void) {

	printf("Valor de A:");
		scanf("%d",&A);
	
	printf("Valor B:");
		scanf("%hd",&B);
	
	printf("Valor C:");
		scanf("%s",&C);	
		
	printf("Valor D:");
		scanf("%s",&D);	
		
	long long result = sum_and_subtract();
	
	
	printf("Result = %lld\n", result);
	return 0;
}
