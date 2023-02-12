#include <stdio.h>
#include "asm.h"

int op1=0, op2=0,res=0;

int main(void) {
	
	printf("Valor op1:");
		scanf("%d",&op1);
	
	printf("Valor op2:");
		scanf("%d",&op2);
	
	int res = sum_v2();
	
	printf("Result = %d\n", res);
	
	
	return 0;
}
