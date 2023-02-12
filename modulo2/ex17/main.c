#include <stdio.h>
#include "calculator.h"

int result = 0, firstElement = 0, secondElement = 0;

int main() {
	
	// firstElement + secondElement
	firstElement = 7;
	secondElement = 2;
	printf("Sum: %d + %d = %d\n", firstElement, secondElement, sum());

	
	// firstElement - secondElement
	firstElement = 35;
	secondElement = 12;
	printf("Subtract: %d - %d = %d\n", firstElement, secondElement, subtraction());

	
	// firstElement * secondElement
	firstElement = 33;
	secondElement = 3;
	printf("Multiply: %d * %d = %d\n", firstElement, secondElement, multiplication());

	
	// firstElement / secondElement
	firstElement = 10;
	secondElement = 3;
	printf("Division: %d / %d = %d\n", firstElement, secondElement, division());

	
	// firstElement % secondElement
	firstElement = 10;
	secondElement = 3;
	printf("Modulus: %d %% %d = %d\n", firstElement, secondElement, modulus());

	
	// firstElement ^ 2
	firstElement = 6;
	printf("Power of 2: %d ^ 2 = %d\n", firstElement, power2());

	
	// firstElement ^ 3
	firstElement = -3;
	printf("Power of 3: %d ^ 3 = %d\n", firstElement, power3());


	return 0;
}
