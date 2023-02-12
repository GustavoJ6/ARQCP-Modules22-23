#include <stdio.h>
#include "new_salary.h"

int code=21,currentSalary=100;

int main(void) {

	int result = new_salary();

	int expected = 400;
	
	printf("Expected result: %d.\n", expected);
	
	printf("New salary is: %d.\n", result);
	
	return 0;
}
